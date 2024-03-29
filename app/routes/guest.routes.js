const { authJwt } = require("../middleware");
const controller = require("../controllers/guest.controller");

module.exports = function (app) {
  app.use(function (req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });

  app.post(
    "/api/guest/create",
    [authJwt.verifyToken],
    controller.insertGuest
  );
  
  app.get(
    "/api/guest/findall",
    [authJwt.verifyToken],
    controller.getAllGuest
  );
};
