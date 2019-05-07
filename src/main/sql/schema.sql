-- 数据库初始化操作

--创建数据库
CREATE DATABASE seckill;
--使用数据库
use seckill;
--创建秒杀库存表
CREATE TABLE seckill(
`seckill_id` bigint not null AUTO_INCREMENT COMMENT '商品库存id',
`name` varchar(120) not null comment '商品名称',
`number` int not null comment '商品数量',
`start_time` timestamp not null comment '秒杀开始时间',
`end_time` timestamp not null comment '秒杀结束时间',
`create_time` timestamp not null default current_timestamp comment '创建时间',
primary key (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

--初始化数据
insert into
  seckill(name, number, start_time, end_time)
values
  ('3000元秒杀P30 Pro', 100, '2019-05-03 00:00:00', '2019-05-04 00:00:00'),
  ('2000元秒杀小米8', 500, '2019-05-03 00:00:00', '2019-05-04 00:00:00'),
  ('1000元秒杀honor 9', 300, '2019-05-03 00:00:00', '2019-05-04 00:00:00'),
  ('1000元秒杀iPhone XR', 200, '2019-05-03 00:00:00', '2019-05-04 00:00:00');

--秒杀成功明细表
create table success_killed(
`seckill_id` bigint not null comment '商品库存id',
`user_Phone` bigint not null comment '用户手机号码',
`state` tinyint not null default -1 comment '状态码：-1 无效，0 成功，1 已付款，2已发货',
`create_time` timestamp not null default current_timestamp comment '创建时间',
primary key (seckill_id, user_phone),
key idx_create_time(create_time)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

