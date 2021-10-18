const conn = require("../connection");

module.exports = {
    async list(req, res) {

        const result = await conn.query("select * from departamentos")

        res.render('./views/departamentos', {
            items: result.rows
        });
    }
}