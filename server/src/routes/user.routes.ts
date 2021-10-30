import consola from 'consola';
import { Router } from 'express';
import { getRepository } from 'typeorm';
import { Order, User } from '../models';

const user = Router();

user.get('/:id', async (req, res) => {
  const userRepository = getRepository(User);
  try {
    const foundUser = await userRepository.findOne(req.params.id, {
      relations: ['orders'],
    });
    res
      .status(200)
      .json(
        foundUser || { message: `No user with ${req.params.id} as id found.` }
      );
  } catch (err) {
    consola.error(err);
  }
});

user.get('/points/add/:id', async (req, res) => {
  const userRepository = getRepository(User);
  try {
    const foundUser = await userRepository.findOne(req.params.id, {
      relations: ['orders'],
    });
    foundUser.points += 50;
    if (foundUser) {
      const updatedUser = await userRepository.save(foundUser);
      res.status(200).json(
        { updatedUser } || {
          message: `No user with ${req.params.id} as id found.`,
        }
      );
    }
  } catch (err) {
    consola.error(err);
  }
});

user.get('/points/del/:id', async (req, res) => {
  const userRepository = getRepository(User);
  try {
    const foundUser = await userRepository.findOne(req.params.id, {
      relations: ['orders'],
    });
    if (foundUser.points > 0) {
      foundUser.points -= 50;
    }
    if (foundUser) {
      const updatedUser = await userRepository.save(foundUser);
      res.status(200).json(
        { updatedUser } || {
          message: `No user with ${req.params.id} as id found.`,
        }
      );
    }
  } catch (err) {
    consola.error(err);
  }
});

user.get('/', async (req, res) => {
  const userRepository = getRepository(User);
  try {
    const foundUsers = await userRepository.find({
      relations: ['orders', 'images'],
    });
    res
      .status(200)
      .json({ users: foundUsers } || { message: `No users are in the DB` });
  } catch (err) {
    consola.error(err);
  }
});

user.post('/', async (req, res) => {
  const userRepository = getRepository(User);
  if (!req.body) {
    res
      .status(406)
      .send('Send a JSON type body with the method POST in this endpoint.');
  } else {
    try {
      const createdUser = await userRepository.save(req.body);
      res.status(201).json({ status: 'CREATED', createdUser });
    } catch (err) {
      consola.error(err);
    }
  }
});

user.delete('/:id', async (req, res) => {
  const userRepository = getRepository(User);

  try {
    const deletedUser = await userRepository.findOne(req.params.id, {
      relations: ['orders'],
    });

    if (deletedUser) {
      const orderRepository = getRepository(Order);
      deletedUser.orders.forEach(async order => {
        await orderRepository.delete(order.id);
      });
      await userRepository.remove(deletedUser);
    }

    res.status(202).json({ status: 'DELETED', deletedUser });
  } catch (err) {
    consola.error(err);
  }
});

export { user };
