const expresss = require('express');

const planetsRouter = require('./planets/planets.router');
const launchesRouter = require('./launches/launches.router');

const api = expresss.Router();

api.use('/planets', planetsRouter);
api.use('/launches', launchesRouter);

module.exports = api;