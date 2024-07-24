/**
 * Fungsi untuk mengirim respons sukses.
 * @param {Object} res - Objek response dari Express.js
 * @param {Object} data - Data yang ingin dikirimkan
 * @param {String} message - Pesan yang ingin disampaikan
 * @param {Object} meta - Objek meta untuk informasi tambahan seperti pagination
 */
function sendResponList(
  res,
  status = "SUCCES",
  data,
  message = "Success",
  meta = {},
  code = 200
) {
  res.status(code).json({
    status,
    message,
    data,
    meta,
  });
}

function sendRespon(
  res,
  status = "SUCCESS",
  data,
  message = "Success",
  code = 200
) {
  // Buat objek response tanpa variabel data jika data null
  const responseObject = {
    status,
    message,
  };

  // Tambahkan variabel data ke objek response jika data tidak null
  if (data !== null) {
    responseObject.data = data;
  }

  res.status(code).json(responseObject);
}
const meta = { prev: 0, next: null, page: 0 };

/**
 * Fungsi untuk mengirim respons error.
 * @param {Object} res - Objek response dari Express.js
 * @param {String} message - Pesan error yang ingin disampaikan
 * @param {Number} statusCode - HTTP status code
 */
function sendError(res, status, message, statusCode) {
  res.status(statusCode).json({
    status: status,
    message,
  });
}

module.exports = { sendRespon, sendResponList, sendError, meta };
