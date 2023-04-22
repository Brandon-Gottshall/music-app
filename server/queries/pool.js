const {Pool} = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'airplanes-api.c1h1sdcooewq.us-east-1.rds.amazonaws.com',
  database: 'music',
  password: 'nebulanebula',
  port: 5432
});

module.exports = () => pool;