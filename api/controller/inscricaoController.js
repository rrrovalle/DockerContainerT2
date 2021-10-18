const conn = require("../connection");

module.exports = {
    async list(req, res) {
        const result = await conn.query("select * from inscricao")

        res.render('./views/inscricao', {
            items: result.rows
        });
    }
}