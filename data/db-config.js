// db-config
const Knex = require('knex');
const knexfile = require('../knexfile.js');
const knexConfig = knexfile.development;

module.exports = Knex(knexConfig);