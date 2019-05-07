package org.seckill.exception;

/**
 * @Author: 黄文伟
 * @description: 秒杀业务相关异常
 * @Date:Created in 22:29 2019/5/3
 */
public class SeckillException extends RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
