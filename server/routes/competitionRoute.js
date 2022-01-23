const express = require('express');

const Competition = require('../models/competition');

const router = express.Router();

router.get('/getcompetitions', async (req, res) => {
  try {
    const competitions = await Competition.find({});
    res.status(200).json({ success: true, data: competitions });
  } catch (e) {
    res.status(400).json({ success: false, data: e });
  }
});

module.exports = router;
