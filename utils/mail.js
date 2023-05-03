const nodemailer= require("nodemailer")
const moment= require("moment")

// create nodemailer transporter object with gmail service and authentication
const transporter= nodemailer.createTransport({
    service: "gmail",
    auth: {
        user: "thuvienfudn@gmail.com",
        pass: "wyxiaiqdiyzgxlfg"
    }
})

// define function to send verification email
const verifyMail= async (email, code)=> {
    try {
        // send email with specified content to specified email address
        const result= await transporter.sendMail({from: process.env.EMAIL_PROVIDER, to: email, subject: "Verify your email", text: "Your code is: "+ code})
        return result
        
    } catch (error) {
        return error
    }
}

const sendOverdueMail= async (email, data)=> {
    try {
        const result= await transporter.sendMail({from: process.env.EMAIL_PROVIDER, to: email, subject: "Notifications overdue", html: `
            <div>The book you borrowed has expired</div>
            <br />
            <div>Book's name: <strong>${data?.book_name}</strong></div>
            <br />
            <div>Time book: <strong>${moment(data?.time_book).format("DD-MM-YYYY HH:MM:ss")}</strong></div>

        `})
        return result
        
    } catch (error) {
        return error
    }
}

module.exports= verifyMail
module.exports= sendOverdueMail