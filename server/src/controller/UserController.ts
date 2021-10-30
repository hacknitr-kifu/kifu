import { getRepository } from 'typeorm';
import { NextFunction, Request, Response } from 'express';
import { User } from '../entity/User';
import { Order } from '../entity/Orders';

export class UserController {
  private userRepository = getRepository(User);

  async all(request: Request, response: Response, next: NextFunction) {
    try {
      return this.userRepository.find({ relations: ['orders'] });
    } catch (err) {
      console.log(err);
      response.json(err);
    }
  }

  async one(request: Request, response: Response, next: NextFunction) {
    try {
      return this.userRepository.findOne(request.params.id);
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }

  async save(request: Request, response: Response, next: NextFunction) {
    try {
      return this.userRepository.save(request.body);
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }

  async remove(request: Request, response: Response, next: NextFunction) {
    try {
      let userToRemove = this.userRepository.findOne(request.params.id, {
        relations: ['orders'],
      });

      const orderRepository = getRepository(Order);
      (await userToRemove).orders.forEach(order => {
        orderRepository.remove(order);
      });

      return await this.userRepository.remove(await userToRemove);
    } catch (err) {
      response.json(err);
      console.log(err);
    }
  }
}
