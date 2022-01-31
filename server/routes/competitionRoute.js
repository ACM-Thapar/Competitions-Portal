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
  const compId = req.body.compId;
  if (compId == 'hackathon') {
    if (req.body.filter1 == 'team_members' && req.body.filter2 == 'fees') {
      const team_size = req.body.team_size;
      const fees = req.body.fees;
      if (fees == 'paid') {
        if (team_size == '1') {
          const competitions = await Competition.find({
            teamSize: 'Team Size Individual Participation ',
            compId: 'hackathon',
            $nor: [{ fees: ' Registration Fee  Free ' }],
          });
          console.log(competitions);
          res.status(200).json({ success: true, data: competitions });
        } else if (team_size == '2') {
          const competitions = await Competition.find({
            teamSize: 'Team Size 2 Members ',
            compId: 'hackathon',
            $nor: [{ fees: ' Registration Fee  Free ' }],
          });
          res.status(200).json({ success: true, data: competitions });
        } else {
          const competitions = await Competition.find({
            teamSize: 'Team Size 1 - 4 Members ',
            compId: 'hackathon',
            $nor: [{ fees: ' Registration Fee  Free ' }],
          });
          res.status(200).json({ success: true, data: competitions });
        }
      }
      if (fees == 'free') {
        if (team_size == '1') {
          const competitions = await Competition.find({
            teamSize: 'Team Size Individual Participation ',
            compId: 'hackathon',
            $or: [{ fees: ' Registration Fee  Free ' }],
          });
          console.log(competitions);
          res.status(200).json({ success: true, data: competitions });
        } else if (team_size == '2') {
          const competitions = await Competition.find({
            teamSize: 'Team Size 2 Members ',
            compId: 'hackathon',
            $or: [{ fees: ' Registration Fee  Free ' }],
          });
          res.status(200).json({ success: true, data: competitions });
        } else {
          const competitions = await Competition.find({
            teamSize: 'Team Size 1 - 4 Members ',
            compId: 'hackathon',
            $or: [{ fees: ' Registration Fee  Free ' }],
          });
          res.status(200).json({ success: true, data: competitions });
        }
      }
    } else if (req.body.filter1 == 'team_members') {
      const team_size = req.body.team_size;
      if (team_size == '1') {
        const competitions = await Competition.find({
          teamSize: 'Team Size Individual Participation ',
          compId: 'hackathon',
        });
        console.log(competitions);
        res.status(200).json({ success: true, data: competitions });
      } else if (team_size == '2') {
        const competitions = await Competition.find({
          teamSize: 'Team Size 2 Members ',
          compId: 'hackathon',
        });
        res.status(200).json({ success: true, data: competitions });
      } else {
        const competitions = await Competition.find({
          teamSize: 'Team Size 1 - 4 Members ',
          compId: 'hackathon',
        });
        res.status(200).json({ success: true, data: competitions });
      }
    } else if (req.body.filter2 == 'fees') {
      const fees = req.body.fees;
      if (fees == 'paid') {
        const competitions = await Competition.find({
          $nor: [{ fees: ' Registration Fee  Free ' }],
          compId: 'hackathon',
        });
        res.status(200).json({ success: true, data: competitions });
      } else {
        const competitions = await Competition.find({
          $or: [{ fees: ' Registration Fee  Free ' }, { fees: '' }],
          compId: 'hackathon',
        });
        res.status(200).json({ success: true, data: competitions });
      }
    }
  } else if (compId == 'cp') {
    if (req.body.filter1 == 'team_members' && req.body.filter2 == 'fees') {
      const team_size = req.body.team_size;
      const fees = req.body.fees;
      if (fees == 'paid') {
        if (team_size == '1') {
          const competitions = await Competition.find({
            teamSize: 'Individual',
            compId: 'cp',
            $nor: [{ fees: 'Free' }, { fees: '' }],
          });
          console.log(competitions);
          res.status(200).json({ success: true, data: competitions });
        } else if (team_size == '2') {
          const competitions = await Competition.find({
            teamSize: { $not: 'Individual' },
            compId: 'cp',
            $nor: [{ fees: 'Free' }, { fees: '' }],
          });
          res.status(200).json({ success: true, data: competitions });
        } else {
          const competitions = await Competition.find({
            teamSize: { $not: 'Individual' },
            compId: 'cp',
            $nor: [{ fees: 'Free' }, { fees: '' }],
          });
          res.status(200).json({ success: true, data: competitions });
        }
      }
      if (fees == 'free') {
        if (team_size == '1') {
          const competitions = await Competition.find({
            teamSize: 'Individual',
            compId: 'cp',
            $or: [{ fees: 'Free' }, { fees: '' }],
          });
          console.log(competitions);
          res.status(200).json({ success: true, data: competitions });
        } else if (team_size == '2') {
          const competitions = await Competition.find({
            teamSize: { $not: 'Individual' },
            compId: 'cp',
            $or: [{ fees: 'Free' }, { fees: '' }],
          });
          res.status(200).json({ success: true, data: competitions });
        } else {
          const competitions = await Competition.find({
            teamSize: { $not: 'Individual' },
            compId: 'cp',
            $or: [{ fees: 'Free' }, { fees: '' }],
          });
          res.status(200).json({ success: true, data: competitions });
        }
      }
    } else if (req.body.filter1 == 'team_members') {
      const team_size = req.body.team_size;
      if (team_size == '1') {
        const competitions = await Competition.find({
          compId: 'cp',
          teamSize: 'Individual',
        });
        console.log(competitions);
        res.status(200).json({ success: true, data: competitions });
      } else if (team_size == '2') {
        const competitions = await Competition.find({
          compId: 'cp',
          teamSize: { $not: 'Individual' },
        });
        res.status(200).json({ success: true, data: competitions });
      } else {
        const competitions = await Competition.find({
          compId: 'cp',
          teamSize: { $not: 'Individual' },
        });
        res.status(200).json({ success: true, data: competitions });
      }
    } else if (req.body.filter2 == 'fees') {
      const fees = req.body.fees;
      if (fees == 'paid') {
        const competitions = await Competition.find({
          compId: 'cp',
          $nor: [{ fees: ' Free' }, { fees: '' }],
        });
        res.status(200).json({ success: true, data: competitions });
      } else {
        const competitions = await Competition.find({
          compId: 'cp',
          $or: [{ fees: 'Free' }, { fees: '' }],
        });
        res.status(200).json({ success: true, data: competitions });
      }
    }
  }
});

module.exports = router;
