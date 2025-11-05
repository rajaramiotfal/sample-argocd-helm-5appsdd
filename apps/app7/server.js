const express = require('express');
const app = express();
const port = process.env.PORT || 8080;
app.get('/', (_req, res) => res.send('Hello from app7!'));
app.listen(port, () => console.log('app7 listening on ' + port));
