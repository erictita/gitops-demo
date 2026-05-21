const http = require('http');

const port = 3000;

http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Gitops is good for deployment!\n');
}).listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});