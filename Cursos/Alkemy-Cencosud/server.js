const http = require('http');
const host = 'localhost';
const port = 3001;
const server = http.createServer((req, res) => {
    console.log('ha realizado una peticion');
});
server.listen(port, () => {
    console.log(`El puerto es ${port}`);
});