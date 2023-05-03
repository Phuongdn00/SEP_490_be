const expressAsyncHandler = require("express-async-handler");
const connection = require("../database/connect");

const get_most_popular_book= expressAsyncHandler(async(req, res)=> {
    try {
        const [rows]= await connection.execute("SELECT * FROM book INNER JOIN author ON author.author_id = book.author_id ORDER BY book.book_rating LIMIT 10")
        if(rows.length >0 ) {
            return res.status(200).json(rows)
        }
        else {
            return res.status(200).json([])
        }
    } catch (error) {
        console.log(error)
        return res.status(200).json([])
    }
    
})

module.exports= get_most_popular_book