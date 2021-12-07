const mongoose = require('mongoose')


const userSchema = new mongoose.Schema({
    
    email: {
        type: String,
        required: true,
        trim:true,
        unique:true,
        lowercase:true,
        
    },
    password: {
        type: String,
        required: false,
        trim: true,
        minlength:6
    },
   

    
})


const User = mongoose.model('User', userSchema)

module.exports = User