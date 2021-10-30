import consola from 'consola';
import { Router } from 'express';
import { getRepository } from 'typeorm';
import { Image } from '../models';
import { join } from 'path';
import {} from 'nft.storage';
const image = Router();

image.get('/', async (req, res) => {
  try {
    const foundImages = await getRepository(Image).find({
      relations: ['user'],
    });
    res.status(200).json({ images: foundImages });
  } catch (err) {
    consola.error(err);
  }
});

image.post('/upload', (req, res) => {});

export { image };
