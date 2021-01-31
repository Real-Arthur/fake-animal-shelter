const express = require('express');
const router = express.Router();
const pool = require('../modules/pool')
// gets animals depending on type specified in params from database
// only returns pets that haven't been adopted
router.get('/', (req, res) => {
  console.log('working');
});
module.exports = router;