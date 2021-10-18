const conn = require("../connection");

module.exports = {
    async list(req, res) {
        
        const result = await conn.query("select * from departamentos_cargos")

        res.render('./views/departamentosCargos', {
            items: result.rows
        });
    }
}