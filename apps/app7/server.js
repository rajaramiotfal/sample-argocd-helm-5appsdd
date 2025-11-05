const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app2!'));
app.listen(port, () => console.log('app2 listening on ' + port));
