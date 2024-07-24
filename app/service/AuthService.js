const AuthRepository = require("../repositories/AuthRepository");

class AuthService {
  static async insert(data) {
    return await AuthRepository.insert(data);
  }

  static async getAll() {
    return await AuthRepository.getAll();
  }

  static async getRole() {
    return await AuthRepository.getRole();
  }

  static async getById(id) {
    return await AuthRepository.getById(id);
  }

  static async update(id, data) {
    return await AuthRepository.update(id, data);
  }

  static async delete(id) {
    return await AuthRepository.delete(id);
  }

  static async login(email, password) {
    return await AuthRepository.login(email, password);
  }
}

module.exports = AuthService;
