import 'reflect-metadata';
import { createConnection } from 'typeorm';
import express, { Request, Response } from 'express';
import { User } from './entity/User';
import { Routes } from './routes';

createConnection()
  .then(async connection => {
    // create express app
    const app = express();
    app.use(express.json());

    // register express routes from defined application routes
    Routes.forEach(route => {
      (app as any)[route.method](
        route.route,
        (req: Request, res: Response, next: Function) => {
          const result = new (route.controller as any)()[route.action](
            req,
            res,
            next
          );
          if (result instanceof Promise) {
            result.then(result =>
              result !== null && result !== undefined
                ? res.send(result)
                : undefined
            );
          } else if (result !== null && result !== undefined) {
            res.json(result);
          }
        }
      );
    });

    app.listen(80);

    // await connection.manager.save(
    //   connection.manager.create(User, {
    //     name: 'Ansh Bhalala',
    //     created_on: `${Date.now()}`,
    //     age: 17,
    //   })
    // );

    console.log('On port 80');
  })
  .catch(error => console.log(error));
