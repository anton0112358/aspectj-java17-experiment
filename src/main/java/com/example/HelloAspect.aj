package com.example;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.JoinPoint;
@Aspect
public class HelloAspect {
    @Before("execution(* com.example.HelloWorld.sayHello(..))")
    public void logBefore(JoinPoint joinPoint) {
        System.out.println("Method: " + joinPoint.getSignature().getName() + " is about to be called");
    }
}