
const expressAsyncHandler = require("express-async-handler");
const connection = require("../database/connect");

const edit_blogs= expressAsyncHandler(async (req, res)=> {
    try {
        const {image, title, content, blogId}= req.body
        const [rows]= await connection.execute("UPDATE blogs SET image= ?, title= ?, content= ? WHERE id= ?", [image, title, content, blogId])
        return res.status(200).json({update: true})
    } catch (error) {
        return res.status(500).json(error)
    }
})

module.exports= edit_blogs