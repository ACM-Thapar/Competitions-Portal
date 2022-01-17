const mongoose = require('mongoose');

const competitionSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  organizer: {
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
  prize: {
    type: String,
    required: true,
  },
  teamSize: {
    type: String,
    required: true,
  },
  registrationDeadline: {
    type: String,
    required: true,
  },
  imageUrl: {
    type: String,
    required: true,
  },
  price: {
    type: String,
    required: false,
  },
  isPaid: {
    type: Boolean,
    required: true,
  },
});

const Competition = mongoose.model('Competition', competitionSchema);

module.exports = Competition;
