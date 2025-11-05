const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app5!'));
app.listen(port, () => console.log('app5 listening on ' + port));
