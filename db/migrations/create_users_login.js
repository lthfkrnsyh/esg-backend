exports.up = function (knex) {
  return knex.schema.createTable("users_login", function (table) {
    table.bigIncrements("id").primary();
    table.text("name").notNullable();
    table.text("email").notNullable();
    table.text("password").notNullable();
    table.text("phone_number").notNullable();
    table.text("address").notNullable();
    table.text("role").notNullable();
    table.text("date_create").notNullable().collate("utf8mb4_0900_ai_ci");
    table.text("date_update").nullable().collate("utf8mb4_0900_ai_ci");
  });
};

exports.down = function (knex) {
  return knex.schema.dropTable("users_login");
};
