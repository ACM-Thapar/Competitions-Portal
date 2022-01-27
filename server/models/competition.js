const mongoose = require('mongoose');

const competitionSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  organizer: {
    type: String,
    required: true,
  },
  prize: {
    type: String,
    
  },
  link: {
    type: String,
    required: true,
  },
  fees: {
    type: String,
    
  },
  desc: {
    type: String,
    
  },
  teamSize: {
    type: String,
    
  },
  timeLeft: {
    type: String,
    
  },
  duration: {
    type: String,
    
  },
  startDate: {
    type: String,
    
  },
  compId: {
    type: String,
    
  },
  
});

const Competition = mongoose.model('Competition', competitionSchema);

module.exports = Competition;
