const conn = require("../connection");

module.exports = {
    async list(req, res) {
        const result = await conn.query("select * from cargos")

        res.render('./views/cargos', {
            items: result.rows
        });
    }
}