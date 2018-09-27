package com.sxt.bookstore.annotation;

import java.lang.annotation.*;

@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Dao {
    /**
     * 对应的实体Bean
     *
     * @return 对应的实体Bean名字
     */
    String value();
}
