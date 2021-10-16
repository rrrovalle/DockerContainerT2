const { Pool } = require('pg');

const cliente = new Pool({
    user: "postgres",
    password: "postgres",
    host: "postgresql",
    port: 5432,
    database: "dbTrabalho"
});

module.exports = cliente;