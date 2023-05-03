// const { Sequelize } = require('sequelize');

// const sequelize= new Sequelize({
//     host: "localhost",
//     username: "root",
//     password: "",
//     database: "quan_ly_thu_vien"
// })

const mysql= require("mysql2/promise")

const connection= mysql.createPool({
    host: "151.106.124.151",
     user: "u291392387_root10",
    password: "GIangvippro1!",
    database: "u291392387_library_system",
    // host: "localhost",
    //user: "root",
    // password: "",
    //database: "quan_li_thu_vien",
})

module.exports= connection
