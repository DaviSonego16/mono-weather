const express = require('express');
const router = express.Router();
const controller = require('../controllers/dataController');

router.get('/data', controller.getAll);
router.get('/buscar/:id', controller.getOne);

module.exports = router;
