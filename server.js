import express from 'express';
import { handler } from './build/handler.js';

const app = express();
const port = 3000;

app.get('/expressroute', (req, res) => {
	res.send('This is an express route');
});

app.use(handler);

app.listen(port, () => {
	console.log(`Server is running on port ${port}`);
});
