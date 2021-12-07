const mongoose = require('mongoose')


const postSchema = new mongoose.Schema({
    
    creatorId : {
        type: mongoose.Types.ObjectId,
        required: true,
    },
    title: {
        type: String,
        required: true,
        
    },
    name: {
        type: String,
        required: true,
        
    },
    description: {
        type: String,
        required: true,
        
    },
    startDate: {
        type: String,
        required: true,
        
    },
    endDate: {
        type: String,
        required: true,
        
    },
    posterUrl: {
        type: String,
        required: true,
        
    },
    homepageUrl: {
        type: String,
        required: true,
        
    },
    registerUrl: {
        type: String,
        required: true,
        
    },
    images:[{
        type: Buffer
    }],
   

    
})


const Post = mongoose.model('Post', postSchema)

module.exports = Post
