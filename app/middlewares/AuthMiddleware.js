function authMiddleware(req, res, next) {
  // Implementasi autentikasi user
  // ...

  next();
}

module.exports = authMiddleware;
