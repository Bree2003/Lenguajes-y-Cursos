console.log(true & false)
const namevacio = ""
if (namevacio) {
    console.log("vacio")
} else {
    console.log("vacio")
}
for (let i = 0; i < 5; i++) {
    console.log(i)
}
// valores falsies: "", 0, null, undefined, NaN

const http = require('node:http');

const hostname = '127.0.0.1';
const port = 3001;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello, World!\n');
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});