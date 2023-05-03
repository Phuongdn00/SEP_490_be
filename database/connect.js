const mysql= require("mysql2/promise")

const connection= mysql.createPool({
    host: "151.106.124.151",
    user: "u291392387_root10",
    password: "123456Aaa!",
    database: "u291392387_library_system",
    // host: "localhost",
    // user: "root",
    // password: "",
    // database: "quan_li_thu_vien",
})

module.exports= connection