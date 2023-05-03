const expressAsyncHandler = require("express-async-handler");
const connection = require("../database/connect");

const get_rating_book= expressAsyncHandler(async (req, res)=> {
    try {
        // Use connection.execute() to execute a SQL statement that selects all rows from the rating table where the book_id matches the request query's book_id parameter
        const [rows]= await connection.execute("SELECT * FROM rating WHERE book_id =? ", [req.query?.book_id])
        return res.status(200).json(rows)
    } catch (error) {
        return res.status(500).json(error)
    }
})

module.exports= get_rating_book