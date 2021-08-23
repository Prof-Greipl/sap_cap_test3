const
    node_port = 8080,
    express = require('express'),
    app = express(),
    http = require('http'),
    server = http.createServer(app),
    os = require('os');

app.get('/', (req, res) => {
    res.send(`Hello Dieter from ${os.hostname()}`)
});


