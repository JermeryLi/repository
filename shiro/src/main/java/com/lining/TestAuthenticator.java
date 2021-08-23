package com.lining;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.realm.text.IniRealm;
import org.apache.shiro.subject.Subject;

import java.security.Security;


/**
 * @author lining
 * @date 2021/8/18 19:25
 */
public class TestAuthenticator {
    public static void main(String[] args) {
        //1. 创建安全管理器对象
        DefaultSecurityManager securityManager = new DefaultSecurityManager();
        //2. 给安全管理器设置realm
        securityManager.setRealm(new IniRealm("classpath:shiro.ini"));
        //3. 全局安全工具类 SecurityUtils 设置安全管理器
        SecurityUtils.setSecurityManager(securityManager);
        //4. 关键对象 subject主体
        Subject subject = SecurityUtils.getSubject();
        //5. 创建令牌
        UsernamePasswordToken token = new UsernamePasswordToken("lining", "lining");

        try {
            System.out.println(subject.isAuthenticated());
            subject.login(token);
            System.out.println(subject.isAuthenticated());
        } catch (AuthenticationException e) {
            e.printStackTrace();
        }
    }
}
