const express = require("express");
const routes = express.Router();

const indexController = require("./controller/indexController");
const departamentoController = require("./controller/departamentoController");
const cargosController = require("./controller/cargosController");
const inscricaoController = require("./controller/inscricaoController");
const etapasController = require("./controller/etapasController");
const departamentoCargosController = require("./controller/departamentoCargosController");
const inscricaoEtapasController = require("./controller/inscricaoEtapasController");
const cargosConcursosController = require("./controller/cargosConcursosController");
const concursosController = require("./controller/concursosController");

const PATH = '/trabalho_a2';

routes.get(`${PATH}`, indexController.list);

routes.get(`${PATH}/departamentos`, departamentoController.list);

routes.get(`${PATH}/cargos`, cargosController.list);

routes.get(`${PATH}/inscricao`, inscricaoController.list);

routes.get(`${PATH}/etapas`, etapasController.list);

routes.get(`${PATH}/departamentosCargos`, departamentoCargosController.list);

routes.get(`${PATH}/inscricaoEtapas`, inscricaoEtapasController.list);

routes.get(`${PATH}/cargosConcursos`, cargosConcursosController.list);

routes.get(`${PATH}/concursos`, concursosController.list);

module.exports = routes;