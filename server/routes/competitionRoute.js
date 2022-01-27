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

router.post('/filter', async (req, res) => {
  if (req.body.filter == 'team_members') {
    const team_size = req.body.team_size;
    if (team_size == '1') {
      const competitions = await Competition.find({
        teamSize: 'Team Size Individual Participation ',
      });
      console.log(competitions);
      res.status(200).json({ success: true, data: competitions });
    } else if (team_size == '2') {
      const competitions = await Competition.find({
        teamSize: 'Team Size 2 Members ',
      });
      res.status(200).json({ success: true, data: competitions });
    } else {
      const competitions = await Competition.find({
        teamSize: 'Team Size 1 - 4 Members ',
      });
      res.status(200).json({ success: true, data: competitions });
    }
  } else if (req.body.filter == 'fees') {
    const fees = req.body.fees;
    if (fees == 'paid') {
      const competitions = await Competition.find({
        $nor: [{ fees: ' Registration Fee  Free ' }, { fees: 'Free' }],
      });
      res.status(200).json({ success: true, data: competitions });
    } else {
      const competitions = await Competition.find({
        $or: [
          { fees: ' Registration Fee  Free ' },
          { fees: 'Free' },
          { fees: '' },
        ],
      });
      res.status(200).json({ success: true, data: competitions });
    }
  }
});

module.exports = router;
