const expressAsyncHandler = require("express-async-handler");
const connection = require("../database/connect")

const detail_blogs= expressAsyncHandler(async (req, res)=> {
    try {
        const {blogId }= req.query
        const [rows]= await connection.execute("SELECT * FROM blogs WHERE id= ?", [blogId])
        return res.status(200).json({image: rows[0]?.image, content: rows[0]?.content, title: rows[0]?.title})
    } catch (error) {
        return res.status(500).json(error)
    }
})

module.exports= detail_blogs