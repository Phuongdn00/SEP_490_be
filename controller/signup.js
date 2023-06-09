const connection = require("../database/connect")
const asyncHandler = require('express-async-handler')
const {v4}= require("uuid")
const md5 = require("md5")
const nodemailer = require('nodemailer');
const verifyMail = require("../utils/mail");

// Define a function to generate random integer within a given range
function randomIntFromInterval(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min)
}

// Create an object with two methods: signUp and verifyEmail
const signup = {
    // The signUp method is an asynchronous function that takes request and response objects as input
    signUp: asyncHandler(async (req, res)=> {
        try {
            // Execute a MySQL query to insert new user data into the database
           const [rows]= await connection.execute("INSERT INTO user(user_id, user_name, user_email, user_phone, user_password, user_address, role, time_created) VALUES(?, ?, ?, ?, ?, ?, ?, ?)", [v4(), req.body.userName, req.body.email, req.body.phone, md5(req.body.password), req.body.address, 1, new Date()])
           // If the query is successful, return a success response to the client
           return res.status(200).json({signup: true, redirect: "/login"})
        } catch (error) {
            console.log(error)
            return res.status(400).json({signup: false, exist: false, verify_email: false, mess: "Đã xảy ra lỗi không xác định, vui lòng thử lại hoặc liên hệ admin"})
        }
    }),
    // The verifyEmail method is an asynchronous function that takes request and response objects as input
    verifyEmail: asyncHandler(async (req, res)=> {
        try {
            // Execute a MySQL query to check if the email already exists in the user table
            const [rows]= await connection.execute("SELECT * FROM user WHERE user_email= ?", [req.body.email])
            if(rows.length > 0) {
                // If the email exists, return a response indicating the email exists
                return res.status(200).json({exist: true})
            }
            else {
                // If the email doesn't exist, generate a verification code and send it to the email address
                const verifyCode= randomIntFromInterval(100000, 999999)
                const [rows1]= await connection.execute("DELETE FROM verify_email WHERE email= ?", [req.body.email])
                const result= await verifyMail(req.body.email, verifyCode)
                const [rows2]= await connection.execute("INSERT INTO verify_email VALUES (?, ?)",[req.body.email, verifyCode])
                return res.status(200).json({exist: false})
            }
        } catch (error) {
            console.log(error)
            return res.status(400).json({verify_email: false})
        }
    }),
} 

module.exports= signup