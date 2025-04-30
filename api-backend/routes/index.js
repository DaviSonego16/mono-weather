const express = require('express');
const router = express.Router();
const controller = require('../controllers/dataController');

router.get('/data', controller.getAll);

module.exports = router;
