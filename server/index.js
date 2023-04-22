// import express
const express = require('express');

// import CORS
const cors = require('cors');

// import All Get Routes
const get = require('./queries/get');

const app = express();
const port = 3000;

app.use(cors());

// Test Route
app.get('/', (req, res) => {
    res.send('Hello World!');
});

// Get All Artists Route
app.get('/artists', get.artists);

app.listen(port, () => {
    console.log(`Server listening at http://localhost:${port}`);
});
