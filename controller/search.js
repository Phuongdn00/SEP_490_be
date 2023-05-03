const expressAsyncHandler = require("express-async-handler")
const connection = require("../database/connect")
const Fuse= require("fuse.js")
const _= require("lodash")
const options = {
    // Define an array of keys to be used in the search
    keys: [
      "book_name",
      "author_name",
      "category_name"
    ]
  };
  
const search= expressAsyncHandler(async (req, res)=> {
    // Perform a join operation across the book, category_book, category, and author tables
    const [rows]= await connection.execute("SELECT DISTINCT * FROM category_book INNER JOIN book ON book.book_id = category_book.book_id INNER JOIN category ON category.category_id = category_book.category_id INNER JOIN author ON author.author_id = book.author_id")
    // Create a new instance of Fuse using the search keys defined in the options object
    // console.log(rows)
    
    const fuse = new Fuse(_.uniqBy(rows, 'book_id'), options);
    
    // Perform a search using the query parameter provided in the request and return the result as a JSON response
    return res.status(200).json(fuse.search(req.query.query))
})

module.exports= search