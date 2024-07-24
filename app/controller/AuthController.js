var bcrypt = require("bcrypt");
const saltRounds = 10;
const {
  sendRespon,
  sendResponList,
  sendError,
  meta,
} = require("../../helper/ResponseHelper");
const { param, body, query, validationResult } = require("express-validator");
const AuthService = require("../service/AuthService");
const jwt = require("jsonwebtoken");

const tokenMidelWare = (req, res, next) => {
  try {
    const token =
      req.headers.authorization && req.headers.authorization.split(" ")[1];
    if (!token) {
      return sendError(res, "Error", "Unavailable Token", 401);
    }

    jwt.verify(token, "Confidential", (err, decoded) => {
      if (err) {
        if (err.name === "TokenExpiredError") {
          return sendError(res, "Error", "Expired Token", 401);
        } else {
          return sendError(res, "Error", "Invalid Token", 401);
        }
      }
      // If token is valid, proceed to the next middleware or route handler
      next();
    });
  } catch (e) {
    // Catch any synchronous errors and return an error response
    return sendError(res, "Error", "Token tidak tersedia", 401);
  }
};

class AuthController {
  static test = [
    async (req, res) => {
      res.json({ data: "ini adalah data test" });
    },
  ];

  static getAll = [
    // tokenMidelWare,
    async (req, res) => {
      try {
        const apps = await AuthService.getAll();
        console.log(`upi log => ${JSON.stringify(apps)}`);
        if (apps.data.length > 0) {
          sendResponList(
            res,
            apps.status,
            apps.data,
            apps.message,
            apps.meta,
            apps.code
          );
        } else {
          sendRespon(res, apps.status, {}, apps.message, apps.code);
        }
      } catch (error) {
        console.error("Error:", error);
        sendRespon(res, "ERROR", {}, "An error occurred", 500);
      }
    },
  ];

  static getRole = [
    tokenMidelWare,
    async (req, res) => {
      try {
        const apps = await AuthService.getRole();
        console.log(`upi log => ${JSON.stringify(apps)}`);
        if (apps.data.length > 0) {
          sendResponList(
            res,
            apps.status,
            apps.data,
            apps.message,
            apps.meta,
            apps.code
          );
        } else {
          sendRespon(res, apps.status, {}, apps.message, apps.code);
        }
      } catch (error) {
        console.error("Error:", error);
        sendRespon(res, "ERROR", {}, "An error occurred", 500);
      }
    },
  ];

  static getById = [
    tokenMidelWare,
    async (req, res) => {
      const id = req.params.id;

      const app = await AuthService.getById(id);

      console.log(`upi log => ${JSON.stringify(app)}`);
      if (app.code == 200) {
        delete app.data.password;
        sendRespon(res, app.status, app.data, app.message, app.code);
      } else {
        sendRespon(res, app.status, null, app.message, app.code);
      }
    },
  ];

  static insert = [
    body("name").trim().notEmpty().withMessage("name is required"),
    body("email").trim().notEmpty().withMessage("email is required"),
    body("password").trim().notEmpty().withMessage("password is required"),
    body("phone_number").trim().notEmpty().withMessage("phone is required"),
    body("address").trim().notEmpty().withMessage("address is required"),
    body("role").trim().notEmpty().withMessage("role is required '1' for ROOT, '2' for ADMIN "),
    async (req, res) => {
      const { name, email, password, phone_number, address, role } = req.body;
      const hash = await bcrypt.hash(password, saltRounds);

      const app = await AuthService.insert({
        name: name,
        email: email,
        password: hash,
        phone_number: phone_number,
        address: address,
        role: role,
        date_create: new Date(),
        date_update: null,
      });

      console.log(`upi log => ${JSON.stringify(app)}`);
      if (app.code == 201) {
        sendRespon(res, app.status, null, app.message, app.code);
      } else {
        sendRespon(res, app.status, null, app.message, app.code);
      }
    },
  ];

  static update = [
    body("name").trim().notEmpty().withMessage("name is required"),
    body("email").trim().notEmpty().withMessage("email is required"),
    body("password").trim().notEmpty().withMessage("password is required"),
    body("phone_number").trim().notEmpty().withMessage("phone is required"),
    body("address").trim().notEmpty().withMessage("address is required"),
    body("role").trim().notEmpty().withMessage("role is required '1' for ROOT, '2' for ADMIN "),
    async (req, res) => {
      const id = req.params.id;
      const { name, email, password, phone_number, address, role } = req.body;

      const app = await AuthService.update(id, {
        name: name,
        email: email,
        password: password,
        phone_number: phone_number,
        address: address,
        role: role,
        date_create: new Date(),
      });

      console.log(`upi log => ${app}`);
      if (app.code == 200) {
        sendRespon(res, app.status, null, app.message, app.code);
      } else {
        sendRespon(res, app.status, null, app.message, app.code);
      }
    },
  ];

  static delete = [
    async (req, res) => {
      const id = req.params.id;

      const app = await AuthService.delete(id);

      console.log(`upi log => ${app}`);
      if (app.code == 200) {
        sendRespon(res, app.status, null, app.message, app.code);
      } else {
        sendRespon(res, app.status, null, app.message, app.code);
      }
    },
  ];

  static login = [
    body("email").trim().notEmpty().withMessage("email is required"),
    body("password").trim().notEmpty().withMessage("password is required"),
    async (req, res) => {
      let password = req.body.password;
      let email = req.body.email;
  
      console.log(`Login attempt: email=${email}, password=${password}`);
  
      if (email.trim() === "" || password.trim() === "") {
        return res
          .status(400)
          .json({ error: "Email dan password harus diisi" });
      } else {
        const app = await AuthService.login(email, password);
        console.log("Login response:", JSON.stringify(app));
        if (app.code == 200) {
          sendRespon(res, app.status, app.data, app.message, app.code);
        } else {
          sendRespon(res, app.status, null, app.message, app.code);
        }
      }
    },
  ];  
}

module.exports = AuthController;
