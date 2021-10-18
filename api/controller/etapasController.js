const conn = require("../connection");

module.exports = {
    async list(req, res) {
        
        const result = await conn.query("select * from etapas")

        res.render('./views/etapas', {
            items: result.rows
        });
    }
}