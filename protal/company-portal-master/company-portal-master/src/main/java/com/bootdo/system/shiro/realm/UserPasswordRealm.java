package com.bootdo.system.shiro.realm;


import com.bootdo.common.config.ApplicationContextRegister;
import com.bootdo.common.utils.ShiroUtils;
import com.bootdo.common.utils.StringUtils;
import com.bootdo.system.dao.UserDao;
import com.bootdo.system.domain.UserDO;
import com.bootdo.system.service.MenuService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.pam.UnsupportedTokenException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 用户密码登录realm
 */
@Slf4j
public class UserPasswordRealm extends AuthorizingRealm {

//    @Autowired
//    private UserService userService;

    @Override
    public String getName() {
        return LoginType.USER_PASSWORD.getType();
    }

    @Override
    public boolean supports(AuthenticationToken token) {
        if (token instanceof UserToken) {
            return ((UserToken) token).getLoginType() == LoginType.USER_PASSWORD;
        } else {
            return false;
        }
    }

    @Override
    public void setAuthorizationCacheName(String authorizationCacheName) {
        super.setAuthorizationCacheName(authorizationCacheName);
    }

    @Override
    protected void clearCachedAuthorizationInfo(PrincipalCollection principals) {
        super.clearCachedAuthorizationInfo(principals);
    }



    /**
     * 认证信息.(身份验证) : Authentication 是用来验证用户身份
     *
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
        log.info("---------------- 用户密码登录 ----------------------");

        if (!supports(authcToken)) {
            throw new UnsupportedTokenException("Token not supported by this realm");
        }

        String username = (String)authcToken.getPrincipal();
        Map<String,Object> map = new HashMap<>(16);
        map.put("username",username);
        String password = new String((char[]) authcToken.getCredentials());
        UserDao userMapper = ApplicationContextRegister.getBean(UserDao.class);

        // 查询用户信息
        List<UserDO> userList = userMapper.list(map);
        if (userList.isEmpty()) {
            throw new UnknownAccountException("账号或密码不正确");
        }
        UserDO user = userList.get(0);

//        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
//        String name = token.getUsername();
        // 从数据库获取对应用户名密码的用户
//        User user = userService.getUserByName(name);

        // 密码错误
        // if (!password.equals(user.getPassword())) {
        //    throw new IncorrectCredentialsException("账号或密码不正确");
        //  }
        if (user == null || !StringUtils.equals(password, user.getPassword())) {
            throw new IncorrectCredentialsException("账号或密码不正确");
        }

        // 用户为锁定状态
        if ( user.getStatus() == 0) {
            throw new DisabledAccountException("账号已被锁定,请联系管理员");
        }
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                user, //用户
                user.getPassword(), //密码
                getName()  //realm name
        );
        return authenticationInfo;

    }


    /**
     * 授权
     */
//    @Override
//    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
//        Long userId = ShiroUtils.getUserId();
//        MenuService menuService = ApplicationContextRegister.getBean(MenuService.class);
//        Set<String> perms = menuService.listPerms(userId);
//        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
//        info.setStringPermissions(perms);
//        return info;
//    }
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }



}
