const mongoose = require('mongoose')


mongoose.connect("mongodb+srv://prabs3257:manhaton@cluster0.fepe1.mongodb.net/acm-portal?retryWrites=true&w=majority", (err) => {
  
    if (err) throw err;
    console.log("Connected to MongoDB");
});