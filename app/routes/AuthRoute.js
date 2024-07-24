const express = require("express");
const routerAuth = express.Router();

const AuthController = require("../controller/AuthController");

routerAuth.get("/test", AuthController.test);

/**
 * auth logic
 */

//put
routerAuth.put("/:id", AuthController.update);

//delete
routerAuth.delete("/:id", AuthController.delete);

//get
routerAuth.get("/", AuthController.getAll);
routerAuth.get("/roles", AuthController.getRole);
routerAuth.get("/:id", AuthController.getById);

//post
routerAuth.post("/login", AuthController.login);
routerAuth.post("/", AuthController.insert);

module.exports = routerAuth;
