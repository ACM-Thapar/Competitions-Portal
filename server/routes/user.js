const express = require('express')
const User = require('../models/user')
const auth = require('../middleware/auth')
const bcrypt = require('bcryptjs')
const multer = require('multer')


const router = new express.Router()


const profilePic = multer({
    limits:{
        fileSize:3000000
    },
    fileFilter(req,file,cb){
        if(!file.originalname.match(/\.(jpg|png|JPG|PNG|JPEG|jpeg)$/))
            return cb(new Error('This is not a correct format of the file'))
  
        cb(undefined,true)
    }
  })


router.post('/login', async (req,res) =>{

    const {email, password} = req.body

    const user = await User.findOne({email})

    if(!user){
        return res.statusCode(400).json({success:false , data : "No User With This Email"})
    }

    const isMatch = await bcrypt.compare(password, user.password)

    if(isMatch){
        req.session.isAuth = true;
        req.session.clientId = user._id
        res.status(200).json({success:true , data : user})
    }else{
        res.status(401).json({success:false , data : "Unauthenticated"})
    }


   
})

router.post('/register', profilePic.single("profilePic"), async (req,res) =>{

    const {email, password} = req.body
    let user = await User.findOne({email})
    
    if(user){
        return res.statusCode(400).json({success:false , data : "Already Registered Email"})
    }

    // const hashedPwd = await bcrypt.hash(password,8)

    user = new User({
        email,
        password,
        name:req.body.name,
        phoneNo:req.body.phoneNo,
        profilePic : req.file.buffer,

    })

    try{
        await user.save()
        
        res.status(201).json({success:true , data : user})
    }catch(e){
        
        res.status(400).json({success:false , data : e})
    }


   
})

router.get('/profile',auth, async (req, res) => {

    try{

        const userId = req.session.clientId
        const user = await User.findOne({_id:userId})
        res.status(200).json({success:true , data : user})
    
    }catch(e){
        res.status(401).json({success:false , data : e})
    }
})

router.post('/logout', auth, (req,res) => {
    req.session.destroy((err) =>{
        if(err){
            throw err
        }
        res.status(200).json({success:true , data : "Successfully Logged Out"})
    })
})

module.exports = router
