const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app6!Working Version'));
app.listen(port, () => console.log('app6 listening on ' + port));
