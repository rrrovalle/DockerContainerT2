const conn = require("../connection");

module.exports = {
    async list(req, res) {
        const result = await conn.query("select * from inscricao_etapas")

        res.render('./views/inscricaoEtapas', {
            items: result.rows
        });
    }
}