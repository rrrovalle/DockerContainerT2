const conn = require("../connection");

module.exports = {
    async list(req, res) {
        const result = await conn.query("select * from concursos")

        res.render('./views/concursos', {
            items: result.rows
        });
    }
}