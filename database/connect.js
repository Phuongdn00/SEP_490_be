// const { Sequelize } = require('sequelize');

// const sequelize= new Sequelize({
//     host: "localhost",
//     username: "root",
//     password: "",
//     database: "quan_ly_thu_vien"
// })

const mysql= require("mysql2/promise")

const connection= mysql.createPool({

    host: "ql479.main-hosting.eu",
    user: "u291392387_root10",
    password: "abc12345!A",
    database: "u291392387_library_system",
    port:4306
})

module.exports= connection
