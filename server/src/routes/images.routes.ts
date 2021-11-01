import consola from 'consola';
import { Router } from 'express';
import { getRepository } from 'typeorm';
import { Image, Order } from '../models';
import multer from 'multer';
import path from 'path';
import fs from 'fs';
import { NFTStorage, File } from 'nft.storage';

function checkFileExtention(fileName: String) {
  let extention = fileName.substring(fileName.lastIndexOf('.') + 1);
  return extention;
}

const token = process.env.NFT_API_KEY;
const nftClient = new NFTStorage({ token });

const image = Router();

try {
  const storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, path.resolve('images'));
    },
    filename: (req, file, cb) => {
      cb(null, req.body.name + '.' + checkFileExtention(file.originalname));
    },
  });

  const upload = multer({ storage });

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

  image.post(
    '/upload',
    async (req, res, next) => {
      if (!req.body) {
        return res.status(400).json({ message: 'No Request Body found.' });
      } else {
        const imageOrder = await getRepository(Order).findOne(req.body.id, {
          relations: ['user'],
        });
        req.body.name = imageOrder.name;
        req.body.user = imageOrder.user;
        req.body.order = imageOrder;
        next(null);
      }
    },
    upload.single('product_image'),
    async (req, res, next) => {
      const fileName =
        req.body.name + '.' + checkFileExtention(req.file.originalname);
      consola.log(JSON.stringify(req.file));
      consola.log(req.body);
      const exists = fs.existsSync(path.resolve('images', fileName));

      if (exists) {
        const meta = await nftClient.store({
          name: req.body.name + '.' + checkFileExtention(req.file.originalname),
          //@ts-ignore
          description: req.order.synopsis,
          image: new File(
            [fs.readFileSync(path.resolve('iamges', fileName))],
            fileName,
            {
              type: 'image/jpg',
            }
          ),
          properties: JSON.stringify(req.body.order),
        });

        consola.info(meta.url);
        const imageAdded = await getRepository(Image).create({
          name: req.body.name,
          ammount: req.body.ammount,
          order: req.body.order,
          user: req.body.user,
          url: meta.url,
        });
      }
    }
  );

  image.post('/upload', (req, res) => {});
} catch (err) {
  consola.error(err);
}

export { image };
