var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/buscarMedidasPiloto", function (req, res) {
    medidaController.buscarMedidasPiloto(req, res);
});

router.get("/buscarMedidasEquipe", function (req, res) {
    medidaController.buscarMedidasEquipe(req, res);
})

module.exports = router;