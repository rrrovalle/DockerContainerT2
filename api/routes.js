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

const link = '/trabalho_a2';

routes.get(`${link}`, indexController.list);

routes.get(`${link}/departamento`, departamentoController.list);

routes.get(`${link}/cargos`, cargosController.list);

routes.get(`${link}/inscricao`, inscricaoController.list);

routes.get(`${link}/etapas`, etapasController.list);

routes.get(`${link}/departamentos_cargos`, departamentoCargosController.list);

routes.get(`${link}/inscricao_etapas`, inscricaoEtapasController.list);

routes.get(`${link}/cargos_concuros`, cargosConcursosController.list);
