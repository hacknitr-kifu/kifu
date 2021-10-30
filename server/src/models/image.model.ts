import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  ManyToOne,
} from 'typeorm';
import { Order, User } from '.';

@Entity()
export class Image {
  @PrimaryGeneratedColumn('increment')
  id: number;

  @Column({ nullable: false })
  name: string;

  @Column({ default: 1, nullable: false })
  ammount: number;

  @Column({ type: 'text', nullable: false })
  url: string;

  @CreateDateColumn()
  createdOn: string;

  @ManyToOne(() => User, user => user.images)
  user: User;

  @ManyToOne(() => Order, order => order.images)
  order: Order;
}
