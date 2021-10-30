import { getRepository } from 'typeorm';
import { NextFunction, Request, Response } from 'express';
import { Order } from '../entity/Orders';
import { User } from '../entity/User';

export class OrderController {
  private orderRepository = getRepository(Order);

  async all(request: Request, response: Response, next: NextFunction) {
    try {
      return this.orderRepository.find({ relations: ['user'] });
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }

  async one(request: Request, response: Response, next: NextFunction) {
    try {
      return this.orderRepository.findOne(request.params.id);
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }

  async save(request: Request, response: Response, next: NextFunction) {
    try {
      await getRepository(User)
        .findOne(request.body.user)
        .then(async User => {
          console.log(User);

          const order = await this.orderRepository.save({
            name: request.body.name,
            ammount: request.body.ammount,
            description: request.body.description,
            status: request.body.status,
            user: User,
          });

          response.json(order);
          return order;
        });
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }

  async remove(request: Request, response: Response, next: NextFunction) {
    try {
      const order = this.orderRepository.findOne(request.params.id);

      await this.orderRepository.remove(await order);

      return order;
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }
}
