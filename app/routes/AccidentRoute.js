const express = require("express");
const routerAccident = express.Router();

const AccidentController = require("../controller/AccidentController");

routerAccident.get("/test", AccidentController.test);

/**
 * accident logic
 */

routerAccident.post("/", AccidentController.insert);
routerAccident.put("/approved/:id", AccidentController.approved);
routerAccident.delete("/:id", AccidentController.delete);

routerAccident.get("/", AccidentController.getAll);
routerAccident.get(
  "/get_chart_report/:tahun",
  AccidentController.getChartReport
);

//Intensitas Air
routerAccident.get("/intensitas_air", AccidentController.getIntensitasAirAll);
routerAccident.get(
  "/intensitas_air/:tahun",
  AccidentController.getIntensitasAirByTahun
);
routerAccident.post("/intensitas_air", AccidentController.insertIntensitasAir);
routerAccident.put(
  "/intensitas_air/:id",
  AccidentController.updateIntensitasAir
);
routerAccident.delete(
  "/intensitas_air/:id",
  AccidentController.deleteIntensitasAir
);


//Solid Waste
routerAccident.get("/solidwaste", AccidentController.getSolidWasteAll);
routerAccident.get(
  "/solidwaste/:tahun",
  AccidentController.getSolidWasteByTahun
);
routerAccident.post("/solidwaste", AccidentController.insertSolidWaste);
routerAccident.put(
  "/solidwaste/:id",
  AccidentController.updateSolidWaste
);
routerAccident.delete(
  "/solidwaste/:id",
  AccidentController.deleteSolidWaste
);

//GHG
routerAccident.get("/ghg", AccidentController.getGhgAll);
routerAccident.get(
  "/ghg/:tahun",
  AccidentController.getGhgByTahun
);
routerAccident.post("/ghg", AccidentController.insertGhg);
routerAccident.put(
  "/ghg/:id",
  AccidentController.updateGhg
);
routerAccident.delete(
  "/ghg/:id",
  AccidentController.deleteGhg
);

//Tabel Konversi 2019
routerAccident.get("/tabelkonversi2019", AccidentController.getTabelKonversi2019All);
routerAccident.get(
  "/tabelkonversi2019/:tahun",
  AccidentController.getTabelKonversi2019ByTahun
);
routerAccident.post("/tabelkonversi2019", AccidentController.insertTabelKonversi2019);
routerAccident.put(
  "/tabelkonversi2019/:id",
  AccidentController.updateTabelKonversi2019
);
routerAccident.delete(
  "/ghg/:id",
  AccidentController.deleteTabelKonversi2019
);

//Tabel Konversi 2024
routerAccident.get("/tabelkonversi2024", AccidentController.getTabelKonversi2024All);
routerAccident.get(
  "/tabelkonversi2024/:tahun",
  AccidentController.getTabelKonversi2024ByTahun
);
routerAccident.post("/tabelkonversi2024", AccidentController.insertTabelKonversi2024);
routerAccident.put(
  "/tabelkonversi2024/:id",
  AccidentController.updateTabelKonversi2024
);
routerAccident.delete(
  "/tabelkonversi2024/:id",
  AccidentController.deleteTabelKonversi2024
);

//Report History

routerAccident.get("/report_history", AccidentController.getReportHistoryAll);
routerAccident.get(
  "/report_history/:tahun",
  AccidentController.getReportHistoryByTahun
);
routerAccident.post("/report_history", AccidentController.insertReportHistory);
routerAccident.put(
  "/report_history/:id",
  AccidentController.updateReportHistory
);
routerAccident.delete(
  "/report_history/:id",
  AccidentController.deleteReportHistory
);
routerAccident.get(
  "/chart_jam_hilang/:tahun",
  AccidentController.getChartReportHistoryByTahun
);

//new
routerAccident.get(
  "/chart_rate_kecelakaan/:tahun",
  AccidentController.getChartReportHistoryFrekuensiKecelakaanByTahun
);

routerAccident.get(
  "/chart_frequency_rate/:tahun",
  AccidentController.getChartReportHistoryFrekuensiRateByTahun
);

routerAccident.get(
  "/chart_severity_rate/:tahun",
  AccidentController.getChartReportHistorySeverityRateByTahun
);

routerAccident.get(
  "/chart_intensitas_air/:tahun",
  AccidentController.getChartIntensitasAirByTahun
);

routerAccident.get(
  "/chart_solid_waste/:tahun",
  AccidentController.getChartSolidWasteByTahun
);

routerAccident.get(
  "/chart_ghg/:tahun",
  AccidentController.getChartGhgByTahun
);

routerAccident.get("/:id", AccidentController.getById);

module.exports = routerAccident;
