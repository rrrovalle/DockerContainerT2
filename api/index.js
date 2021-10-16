const express = require("express");
//const routes = require("./routes");
const con = require('./connection');

const app = express();

const PORT = 8080;

app.get('/', async (req, res) => {

    const $teste = await con.query("select * from departamentos")

    const $result = $teste.rows;
    console.log($result);
    res.send($result);
})


// app.use(express.json());
// app.use(routes);

app.listen(PORT);