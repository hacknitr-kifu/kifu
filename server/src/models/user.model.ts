import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  CreateDateColumn,
} from 'typeorm';
import { Order, Image } from '.';

@Entity()
export class User {
  @PrimaryGeneratedColumn('increment')
  id: number;

  @Column({ nullable: false })
  name: string;

  @Column({ nullable: false })
  age: number;

  @Column({ nullable: false, default: 0 })
  points: number;

  @Column({ nullable: false })
  timesDonated: number;

  @Column({ nullable: false })
  type: string;

  @CreateDateColumn()
  createdOn: string;

  @OneToMany(() => Order, order => order.user)
  orders: Order[];

  @OneToMany(() => Image, image => image.user)
  images: Image[];
}
