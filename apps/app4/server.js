const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app4!'));
app.listen(port, () => console.log('app4 listening on ' + port));
