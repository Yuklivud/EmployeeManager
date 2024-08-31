package com.spring.mvc.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {
    @Around("execution(* com.spring.mvc.dao.*.*(..))")
    public Object aroundAllRepositoryMethods(ProceedingJoinPoint pjp) throws Throwable {
        String methodName = pjp.getSignature().getName();
        System.out.println("Begin of " + methodName);

        Object target = pjp.proceed();

        System.out.println("End of " + methodName);

        return target;
    }
}
