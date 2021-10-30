import { Router } from 'express';
import { image } from './images.routes';
import { order } from './order.routes';
import { user } from './user.routes';

const router = Router();

router.use('/user', user);
router.use('/order', order);
router.use('/image', image);

export { router };
