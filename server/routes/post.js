const express = require('express')
const User = require('../models/user')
const Post = require('../models/post')
const auth = require('../middleware/auth')
const multer = require('multer')

const router = new express.Router()

const postImage = multer({
  limits: {
    fileSize: 3000000
  },
  fileFilter (req, file, cb) {
    if (!file.originalname.match(/\.(jpg|png|JPG|PNG|JPEG|jpeg)$/)) {
      return cb(new Error('This is not a correct format of the file'))
    }

    cb(undefined, true)
  }
})

router.post(
  '/createpost',
  auth,
  postImage.array('postImage', 3),
  async (req, res) => {
    const imagesArray = []

    req.files.forEach((element) => imagesArray.push(element.buffer))
    const post = new Post({
      creatorId: req.session.clientId,
      title: req.body.title,
      name: req.body.name,
      description: req.body.description,
      startDate: req.body.startDate,
      endDate: req.body.endDate,
      posterUrl: req.body.posterUrl,
      homepageUrl: req.body.homepageUrl,
      registerUrl: req.body.registerUrl,
      images: imagesArray
    })
    try {
      await post.save()
      res.status(201).json({ success: true, data: post })
    } catch (e) {
      res.status(400).json({ success: false, data: e })
    }
  }
)

router.get('/fetchposts', async (req, res) => {
  try {
    const posts = await Post.find({})
    res.status(200).json({ success: true, data: posts })
  } catch (e) {
    res.status(400).json({ success: false, data: e })
  }
})

router.post('/updatepost', auth, async (req, res) => {
  const post = await Post.findOne({ _id: req.body.postId })

  if (!post) {
    return res.status(400).json({ success: false, data: 'No Such Post' })
  }
  if (post.creatorId.valueOf() !== req.session.clientId) {
    return res.status(400).json({ success: false, data: 'Not Your Post' })
  }

  post.title = req.body.title || post.title
  post.name = req.body.name || post.name
  post.description = req.body.description || post.description
  post.startDate = req.body.startDate || post.startDate
  post.endDate = req.body.endDate || post.endDate
  post.posterUrl = req.body.posterUrl || post.posterUrl
  post.homepageUrl = req.body.homepageUrl || post.homepageUrl
  post.registerUrl = req.body.tregisterUrltle || post.registerUrl

  try {
    const updatedPost = await post.save()
    res.status(200).json({ success: true, data: 'Updated' })
  } catch (e) {
    res.status(400).json({ success: false, data: e })
  }
})

router.delete('/deletepost', auth, async (req, res) => {
  const post = await Post.findOne({ _id: req.body.postId })

  if (!post) {
    return res.status(400).json({ success: false, data: 'No Such Post' })
  }
  if (post.creatorId.valueOf() !== req.session.clientId) {
    return res.status(400).json({ success: false, data: 'Not Your Post' })
  }

  Post.findByIdAndDelete(req.body.postId, function (err, docs) {
    if (err) {
      console.log(err)
    } else {
      res.status(200).json({ success: true, data: 'Post Deleted' })
    }
  })
})

router.get('/userposts', auth, async (req, res) => {
  try {
    const posts = await Post.find({ creatorId: req.session.clientId })
    res.status(200).json({ success: true, data: posts })
  } catch (e) {
    res.status(400).json({ success: false, data: e })
  }
})

module.exports = router
