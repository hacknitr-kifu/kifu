import 'reflect-metadata';
import consola from 'consola';
import { createConnection } from 'typeorm';
import { config } from 'dotenv';
import app from './app';

config();
consola.info('Loaded .ENV');
createConnection().then(() => consola.info('Connected To Rodent'));

async function main() {
  app.listen(process.env.PORT, () =>
    consola.info(`SERVER STARTED AT ${process.env.PORT}`)
  );
}

main();
