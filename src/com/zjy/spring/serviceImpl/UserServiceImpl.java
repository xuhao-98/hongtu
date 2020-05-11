package com.zjy.spring.serviceImpl;

import com.zjy.spring.mapper.UserMapper;
import com.zjy.spring.model.user_info;
import com.zjy.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private UserMapper userMapper;
    @Autowired
    public void setUserMapper(com.zjy.spring.mapper.UserMapper userMapper) {
        this.userMapper = userMapper;
    }


    @Override
    public List<user_info> SelUserImpl(user_info user) {
        return userMapper.SelUserDao(user);
    }

    @Override
    public int InsUserImpl(user_info user) {
        return userMapper.InsUserDao(user);
    }

    @Override
    public int UpUserImpl(user_info user) {
        return userMapper.UpUserDao(user);
    }

    @Override
    public int DelUserImpl(user_info user) {
        return userMapper.DelUserDao(user);
    }

    @Override
    public int LoginImpl(user_info user) {
        List<user_info> list =userMapper.SelUserDao(user);
        if (list.size()!=0) {
            return list.get(0).getUser_type();
        }
        else
        {
            return -1;
        }
    }

    @Override
    public boolean CheckUserImpl(user_info user) {
        List<user_info> list =userMapper.SelUserDao(user);
        if (list.size()!=0) {
            return true;
        }
        else
        {
            return false;
        }

    }
}
