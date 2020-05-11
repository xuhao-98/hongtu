package com.zjy.spring.service;

import com.zjy.spring.model.user_info;
import org.springframework.stereotype.Service;

import java.util.List;
public interface UserService {
    public int LoginImpl(user_info user);
    public List<user_info> SelUserImpl(user_info user);
    public  int InsUserImpl(user_info user);
    public  int UpUserImpl(user_info user);
    public int DelUserImpl(user_info user);
    public boolean CheckUserImpl(user_info user);
}
