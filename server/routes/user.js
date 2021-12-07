const express = require('express')
const User = require('../models/user')
const auth = require('../middleware/auth')
const bcrypt = require('bcryptjs')


const router = new express.Router()


router.post('/login', async (req,res) =>{

    const {email, password} = req.body

    const user = await User.findOne({email})

    if(!user){
        return res.statusCode(400).send("No User with this Email")
    }

    const isMatch = await bcrypt.compare(password, user.password)

    if(isMatch){
        req.session.isAuth = true;
        req.session.clientId = user._id
        res.status(201).send(user)
    }else{
        res.status(401).send("Unauthenticated")
    }


   
})

router.post('/register', async (req,res) =>{

    const {email, password} = req.body
    let user = await User.findOne({email})
    
    if(user){
        return res.statusCode(400).send("Already Registered Email")
    }

    const hashedPwd = await bcrypt.hash(password,8)

    user = new User({
        email,
        password: hashedPwd
    })

    try{
        await user.save()
        //const token = await user.generateAuthToken()
        res.status(201).send(user)
    }catch(e){
        res.status(400).send(e)
    }


   
})

router.get('/profile',auth, async (req, res) => {

    try{

        const userId = req.session.clientId
        const user = await User.findOne({_id:userId})
        res.status(201).send(user)
    
    }catch(e){
        res.status(401).send(e)
    }
})

router.post('/logout', auth, (req,res) => {
    req.session.destroy((err) =>{
        if(err){
            throw err
        }
        res.send(200)
    })
})

module.exports = router