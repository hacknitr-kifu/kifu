import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  ManyToOne,
  OneToMany,
} from 'typeorm';
import { User, Image } from '.';

@Entity()
export class Order {
  @PrimaryGeneratedColumn('increment')
  id: number;

  @Column({ nullable: false })
  name: string;

  @Column({ type: 'text', nullable: true })
  synopsis: string;

  @Column({ type: 'text', nullable: true })
  address: string;

  @Column({ default: 1, nullable: false })
  ammount: number;

  @Column({ nullable: false, default: 'PROCCESSING' })
  status: string;

  @CreateDateColumn()
  createdOn: string;

  @ManyToOne(() => User, user => user.orders)
  user: User;

  @OneToMany(() => Image, image => image.user)
  images: Image[];
}
