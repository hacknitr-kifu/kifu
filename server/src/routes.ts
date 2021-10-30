import { UserController } from './controller/UserController';
import { OrderController } from './controller/OrderController';

export const Routes = [
  {
    method: 'get',
    route: '/users',
    controller: UserController,
    action: 'all',
  },
  {
    method: 'get',
    route: '/users/:id',
    controller: UserController,
    action: 'one',
  },
  {
    method: 'post',
    route: '/users',
    controller: UserController,
    action: 'save',
  },
  {
    method: 'delete',
    route: '/users/:id',
    controller: UserController,
    action: 'remove',
  },
  {
    method: 'get',
    route: '/orders',
    controller: OrderController,
    action: 'all',
  },
  {
    method: 'get',
    route: '/orders/:id',
    controller: OrderController,
    action: 'one',
  },
  {
    method: 'post',
    route: '/orders',
    controller: OrderController,
    action: 'save',
  },
  {
    method: 'delete',
    route: '/orders/:id',
    controller: OrderController,
    action: 'remove',
  },
];
