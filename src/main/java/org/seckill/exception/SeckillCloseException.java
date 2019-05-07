package org.seckill.exception;

/**
 * @Author: 黄文伟
 * @description: 秒杀关闭异常
 * @Date:Created in 22:27 2019/5/3
 */
public class SeckillCloseException extends SeckillException{
    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
