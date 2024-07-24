// Update with your config settings.

/**
 * @type { Object.<string, import("knex").Knex.Config> }
 */

module.exports = {
  development: {
    client: "mysql", // Specifies the SQL database client (MySQL)
    connection: {
      host: "localhost", // Database host (default: localhost)
      user: "root", // Database user (default for MySQL: root)
      password: "root", // Password for the database user (no password by default)
      database: "db_report",
      dateStrings: true, // Name of the database
    },
    migrations: {
      directory: __dirname + "/db/migrations", // Path to the directory containing migration files
    },
    seeds: {
      directory: __dirname + "/db/seeds", // Path to the directory containing seed files
    },
  },

  staging: {
    client: "mysql", // Specifies the SQL database client (MySQL)
    connection: {
      host: "localhost", // Database host (default: localhost)
      user: "root", // Database user (default for MySQL: root)
      password: "root", // Password for the database user (no password by default)
      database: "db_report", // Name of the database
    },
    migrations: {
      directory: __dirname + "/db/migrations", // Path to the directory containing migration files
    },
    seeds: {
      directory: __dirname + "/db/seeds", // Path to the directory containing seed files
    },
  },

  production: {
    client: "mysql", // Specifies the SQL database client (MySQL)
    connection: {
      host: "localhost", // Database host (default: localhost)
      user: "root", // Database user (default for MySQL: root)
      password: "root", // Password for the database user (no password by default)
      database: "db_report", // Name of the database
    },
    migrations: {
      directory: __dirname + "/db/migrations", // Path to the directory containing migration files
    },
    seeds: {
      directory: __dirname + "/db/seeds", // Path to the directory containing seed files
    },
  },
};
