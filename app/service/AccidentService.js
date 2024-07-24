const AccidentRepository = require("../repositories/AccidentRepository");

class AccidentService {
  static async insert(data) {
    return await AccidentRepository.insert(data);
  }

  static async getAll() {
    return await AccidentRepository.getAll();
  }

  static async getById(id) {
    return await AccidentRepository.getById(id);
  }

  static async update(id, data) {
    return await AccidentRepository.update(id, data);
  }

  static async delete(id) {
    return await AccidentRepository.delete(id);
  }

  static async getChartReport(tahun) {
    return await AccidentRepository.getChartReport(tahun);
  }

  static async approved(id, data) {
    return await AccidentRepository.approved(id, data);
  }

  // service air
  static async getIntensitasAirAll() {
    return await AccidentRepository.getIntensitasAirAll();
  }
  static async insertIntensitasAir(data) {
    return await AccidentRepository.insertIntensitasAir(data);
  }
  static async updateIntensitasAir(id, data) {
    return await AccidentRepository.updateIntensitasAir(id, data);
  }
  static async deleteIntensitasAir(id) {
    return await AccidentRepository.deleteIntensitasAir(id);
  }
  static async getIntensitasAirByTahun(tahun) {
    return await AccidentRepository.getIntensitasAirByTahun(tahun);
  }

   // Solid Waste
   static async getSolidWasteAll() {
    return await AccidentRepository.getSolidWasteAll();
  }
  static async insertSolidWaste(data) {
    return await AccidentRepository.insertSolidWaste(data);
  }
  static async updateSolidWaste(id, data) {
    return await AccidentRepository.updateSolidWaste(id, data);
  }
  static async deleteSolidWaste(id) {
    return await AccidentRepository.deleteSolidWaste(id);
  }
  static async getSolidWasteByTahun(tahun) {
    return await AccidentRepository.getSolidWasteByTahun(tahun);
  }

  //GHG
     static async getGhgAll() {
      return await AccidentRepository.getGhgAll();
    }
    static async insertGhg(data) {
      return await AccidentRepository.insertGhg(data);
    }
    static async updateGhg(id, data) {
      return await AccidentRepository.updateGhg(id, data);
    }
    static async deleteGhg(id) {
      return await AccidentRepository.deleteGhg(id);
    }
    static async getGhgByTahun(tahun) {
      return await AccidentRepository.getGhgByTahun(tahun);
    }

    //Tabel Konversi 2024
    static async getTabelKonversi2024All() {
      return await AccidentRepository.getTabelKonversi2024All();
    }
    static async insertTabelKonversi2024(data) {
      return await AccidentRepository.insertTabelKonversi2024(data);
    }
    static async updateTabelKonversi2024(id, data) {
      return await AccidentRepository.updateTabelKonversi2024(id, data);
    }
    static async deleteTabelKonversi2024(id) {
      return await AccidentRepository.deleteTabelKonversi2024(id);
    }
    static async getTabelKonversi2024ByTahun(tahun) {
      return await AccidentRepository.getTabelKonversi2024ByTahun(tahun);
    }

    //Tabel Konversi 2019
    static async getTabelKonversi2019All() {
      return await AccidentRepository.getTabelKonversi2019All();
    }
    static async insertTabelKonversi2019(data) {
      return await AccidentRepository.insertTabelKonversi2019(data);
    }
    static async updateTabelKonversi2019(id, data) {
      return await AccidentRepository.updateTabelKonversi2019(id, data);
    }
    static async deleteTabelKonversi2019(id) {
      return await AccidentRepository.deleteTabelKonversi2019(id);
    }
    static async getTabelKonversi2019ByTahun(tahun) {
      return await AccidentRepository.getTabelKonversi2019ByTahun(tahun);
    }

  // ReportHistory
  static async getReportHistoryAll() {
    return await AccidentRepository.getReportHistoryAll();
  }
  static async insertReportHistory(data) {
    return await AccidentRepository.insertReportHistory(data);
  }
  static async updateReportHistory(id, data) {
    return await AccidentRepository.updateReportHistory(id, data);
  }
  static async deleteReportHistory(id) {
    return await AccidentRepository.deleteReportHistory(id);
  }
  static async getReportHistoryByTahun(tahun) {
    return await AccidentRepository.getReportHistoryByTahun(tahun);
  }

  static async getChartReportHistoryByTahun(tahun) {
    return await AccidentRepository.getChartReportHistoryByTahun(tahun);
  }

  //new
  static async getChartReportHistoryFrekuensiKecelakaanByTahun(tahun) {
    return await AccidentRepository.getChartReportHistoryFrekuensiKecelakaanByTahun(
      tahun
    );
  }
  static async getChartReportHistoryFrekuensiRateByTahun(tahun) {
    return await AccidentRepository.getChartReportHistoryFrekuensiRateByTahun(
      tahun
    );
  }
  static async getChartReportHistorySeverityRateByTahun(tahun) {
    return await AccidentRepository.getChartReportHistorySeverityRateByTahun(
      tahun
    );
  }

  static async getChartIntensitasAirByTahun(tahun) {
    return await AccidentRepository.getChartIntensitasAirByTahun(tahun);
  }
  static async getChartSolidWasteByTahun(tahun) {
    return await AccidentRepository.getChartSolidWasteByTahun(tahun);
  }
  static async getChartGhgByTahun(tahun) {
    return await AccidentRepository.getChartGhgByTahun(tahun);
  }

}

module.exports = AccidentService;
