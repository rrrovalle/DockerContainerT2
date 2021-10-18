const express = require("express");
const routes = require("./routes");
const path = require('path');

const app = express();

const PORT = 8080;

app.set('views', path.join(__dirname, '/'));
app.set('view engine', 'ejs');

app.use(routes);

app.listen(PORT);