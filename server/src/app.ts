import { router } from './routes';
import express from 'express';

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use(router);

export default app;
