const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(bodyParser.json());
app.use(cors());

app.get('/', (req, res) => {
	console.log('Request feito!')
	res.json({ working: true, NAME: "Renan" });
});

const { PORT = 3000 } = process.env;
app.listen(PORT, () => {
	console.log('running on', PORT);
});