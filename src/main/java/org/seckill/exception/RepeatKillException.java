package org.seckill.exception;

/**
 * @Author: 黄文伟
 * @description: 重复秒杀异常
 * @Date:Created in 22:24 2019/5/3
 */
public class RepeatKillException extends SeckillException{
    public RepeatKillException(String message) {
        super(message);
    }

    public RepeatKillException(String message, Throwable cause) {
        super(message, cause);
    }
}
