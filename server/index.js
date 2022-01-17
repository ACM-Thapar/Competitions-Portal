const envConfig = {
  path: process.env.NODE_ENV === 'production' ? 'prod.env' : '.env',
};

require('dotenv').config(envConfig);

const cors = require('cors');
const express = require('express');
const session = require('express-session');
const redis = require('redis');
const connectRedis = require('connect-redis');
const bcrypt = require('bcryptjs');
const userRoutes = require('./routes/user');
const postRoutes = require('./routes/post');
const competitionRoutes = require('./routes/competitionRoute');

const auth = require('./middleware/auth');

const User = require('./models/user');
require('./db/mongoose');

const redisClient = redis.createClient(6379);
const app = express();
const port = process.env.PORT || 5000;

app.use(cors());

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

const RedisStore = connectRedis(session);

app.use(
  session({
    store: new RedisStore({ client: redisClient }),
    secret: 'secret',
    saveUninitialized: false,
    resave: false,
    cookie: {
      secure: false, // change to true on production
      httpOnly: true,
      maxAge: 1000 * 60 * 60 * 24,
    },
  }),
);

app.use('/user', userRoutes);
app.use('/post', postRoutes);
app.use('/competitions', competitionRoutes);

app.listen(port, () => {
  console.log('Server is running on ' + port);
});
