import consola from 'consola';
import { Router } from 'express';
import { getRepository } from 'typeorm';
import { Order, User } from '../models';

const order = Router();

order.get('/:id', async (req, res) => {
  const orderRepository = getRepository(Order);
  try {
    const foundOrder = await orderRepository.findOne(req.params.id, {
      relations: ['user'],
    });
    res
      .status(200)
      .json(
        foundOrder || { message: `No order with ${req.params.id} as id found.` }
      );
  } catch (err) {
    consola.error(err);
  }
});

order.get('/', async (req, res) => {
  const orderRepository = getRepository(Order);
  try {
    const foundOrders = await orderRepository.find();
    res
      .status(200)
      .json({ orders: foundOrders } || { message: `No orders are in the DB` });
  } catch (err) {
    consola.error(err);
  }
});

order.post('/:id', async (req, res) => {
  const orderRepository = getRepository(Order);
  if (!req.body) {
    res
      .status(406)
      .send('Send a JSON type body with the method POST in this endpoint.');
  } else {
    try {
      const userConcerned = await getRepository(User).findOne(req.params.id);
      const { name, ammount, synopsis, address } = req.body;
      const createdOrder = await orderRepository.save({
        name,
        ammount,
        address,
        synopsis,
        user: userConcerned,
      });
      res.status(201).json({ status: 'CREATED', createdOrder });
    } catch (err) {
      consola.error(err);
    }
  }
});

order.delete('/:id', async (req, res) => {
  const orderRepository = getRepository(Order);

  try {
    const deletedOrder = await orderRepository.findOne(req.params.id, {
      relations: ['user'],
    });

    if (deletedOrder) {
      await orderRepository.remove(deletedOrder);
    }

    res.status(202).json({ status: 'DELETED', deletedOrder });
  } catch (err) {
    consola.error(err);
  }
});

export { order };
