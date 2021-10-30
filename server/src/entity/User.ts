import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  OneToMany,
  Index,
  CreateDateColumn,
} from 'typeorm';
import { Order } from './Orders';

@Entity()
export class User {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'string', nullable: true })
  sawo_id: string;

  @Column({ type: 'string', nullable: true })
  name: string;

  @Column({ default: 0 })
  views: number;

  @Column({ nullable: true })
  age: number;

  @Column({ default: 0 })
  donation_count: number;

  @Column({ nullable: false, default: 'idividual' })
  type: string;

  @CreateDateColumn()
  created_on: Date;

  @OneToMany(() => Order, order => order.user)
  orders: Order[];
}
