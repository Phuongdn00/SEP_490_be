const express= require("express")
const cors= require("cors")
const router = require("./route/route")
const http= require("http")
require('dotenv').config()
const app= express()
const httpServer= http.createServer(app)
const { Server } = require("socket.io")
const connection = require("./database/connect")
const io= new Server(httpServer)
const cron = require('node-cron');
const sendOverdueMail = require("./utils/mail_over_due")

app.use(express.json())
app.use(express.urlencoded({
    extended: true
}))
app.use(express.static(__dirname+ "/assets"))
app.use(cors())
app.use(function(req, res, next) {
    const authHeader= req.headers.authorization
    if(authHeader) {
        const token= authHeader.split(" ")[1]
        req.token= token
    }
    next()
})
app.use(router)

io.on("connection", socket=> {
    socket.on("open_chat_connection", (data)=> {
        socket.join(data?.roomId)
    })
    socket.on("send_new_message", (data)=> {
        io.in(data?.conversation_id).emit("receive_new_message", data)
        connection.execute("INSERT INTO message(sender_id, message, conversation_id, time_created) VALUES(?, ?, ?, ?)", [data?.sender_id, data?.message, data?.conversation_id, data?.time_created])
    })
    socket.on("send_request_borrow_book", async (data)=> {
        await connection.execute("INSERT INTO notification(type, seen, sender) VALUES(0, 0, ?)", [data?.sender])
        io.emit("new_request_borrow", {amount: 1})
    })

})



const cron = require('node-cron');

cron.schedule('*/30 * * * *', async () => {
    const [row1]= await connection.execute("DELETE FROM history WHERE state= 1 AND is_borrow= 0 AND TIMESTAMPDIFF(MINUTE, time_approve, NOW()) >= 3")
    const [rows]= await connection.execute("UPDATE history SET state= 4 WHERE state=1 AND is_borrow= 1 AND TIMESTAMPDIFF(DAY, STR_TO_DATE(`time_approve`, '%Y-%m-%d %H:%i:%s'), NOW()) > `borrow_time`")
});


cron.schedule('*/3 * * * *', async () => {
    // console.log("start cron")
    const [rows]= await connection.execute("SELECT history.history_id, user.user_email, book.book_name, history.time_book FROM history INNER JOIN user ON user.user_id= history.user_id INNER JOIN book_in_book ON book_in_book.book_in_book_id = history.book_id INNER JOIN book ON book.book_id = book_in_book.book_id WHERE history.state= 4 AND history.send_mail= 0")
    if(rows?.length> 0) {
        rows?.map(async item=> {
            const result= await sendOverdueMail(item?.user_email, {book_name: item?.book_name, time_book: item?.time_book})
            // console.log(result)
            const [rows1]= await connection.execute("UPDATE history SET send_mail= 1 WHERE history_id= ?", [item?.history_id])
        })

    }
});

httpServer.listen(4000, ()=> console.log("Server run on port 4000"))