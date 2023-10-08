const express = require("express");
const adminController = require("../controllers/adminController");
const auth = require("../middleware/auth");

const router = express.Router();

// admin login post - postAdminLogin
router.post("/", adminController.postAdminLogin);

// HR manager add post - postAddHRM
router.post("/addHR", adminController.postAddHRM);

// get HR manager details
router.get("/getHRM", adminController.getHRM);

router.get("/getDetails", adminController.getDetails);

module.exports = router;
