const express = require('express');
const server = express();
server.get('/', (req, res) => {
    res.send("<h1>Hola mundo</h1>");
});
server.listen(3001, () => {
    console.log('el puesto');
});