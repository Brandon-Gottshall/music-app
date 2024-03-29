const pool = require('../pool');

// Get all Artists
const artists = (request, response) => {
  pool().query('SELECT * FROM artists ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
}

module.exports = {
  artists
}