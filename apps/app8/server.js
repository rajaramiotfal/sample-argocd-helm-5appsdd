const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app8!'));
app.listen(port, () => console.log('app8 listening on ' + port));
