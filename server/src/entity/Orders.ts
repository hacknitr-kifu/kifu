import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  ManyToOne,
  Index,
  CreateDateColumn,
} from 'typeorm';
import { User } from './User';

@Entity()
export class Order {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ type: 'string', nullable: true })
  name: string;

  @Column({ type: 'string', nullable: true })
  description: string;

  @Column({ default: 1 })
  ammount: number;

  @Column({ type: 'string', nullable: true, default: 'processing' })
  status: string;

  @CreateDateColumn()
  created_on: Date;

  @ManyToOne(() => User, user => user.orders)
  user: User;
}
