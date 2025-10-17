const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app1!Working Version'));
app.listen(port, () => console.log('app1 listening on ' + port));
