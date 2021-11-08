package com.ruoyi.system.service.impl;

import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.IWebIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @Description: TODO
 * @author: zy
 * @date: 2021年03月21日 9:07
 */
@Service
@Transactional
public class WebIndexServiceImpl implements IWebIndexService {

    @Autowired
    private ISysUserService userService;

    @Override
    public boolean registerSave(SysUser user) {
        String pcode = user.getPcode();
        user.setRoleId(2L);
        Long[] roleids = new Long[1];
        roleids[0] = 2L;
        user.setRoleIds(roleids);
        user.setDeptId(103L);
        user.setCreateBy("register");
        user.setPcode(StringUtils.isEmpty(pcode)?"000000":pcode);
        user.setToken(10);
        user.setCreateTime(new Date());
        userService.insertUser(user);
        SysUser parentUser = userService.selectUserByPcode(user.getPcode());
        if(parentUser == null){
            user.setPcode("000000");
            parentUser = userService.selectUserByPcode("000000");
        }
        parentUser.setToken(parentUser.getToken()+1);
        userService.updateUserInfo(parentUser);
        return true;
    }
}
