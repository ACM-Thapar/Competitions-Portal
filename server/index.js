const express = require('express')
const session = require('express-session')
const redis = require('redis')
const connectRedis = require('connect-redis')
const bcrypt = require('bcryptjs')
const userRoutes = require('./routes/user')
const postRoutes = require('./routes/post')

const auth = require('./middleware/auth')

const User = require('./models/user')
require('./db/mongoose')

const redisClient = redis.createClient(6379)
const app = express()
const port = process.env.PORT || 5000

app.use(express.json())
app.use(express.urlencoded({ extended: true }));

const RedisStore = connectRedis(session)



app.use(session({
    store: new RedisStore({client: redisClient}),
    secret: 'secret',
    saveUninitialized:false,
    resave:false,
    cookie:{
        secure:false, // change to true on production
        httpOnly:true,
        maxAge:1000 * 60 * 60 * 24

    }
}))

app.use(userRoutes)
app.use(postRoutes)

app.listen(port, ()=>{
    console.log('Server is running on ' + port)
})