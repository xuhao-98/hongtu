package com.zjy.spring.mapper;

import com.zjy.spring.model.user_info;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {
    public List<user_info> SelUserDao(user_info user);
    public  int InsUserDao(user_info user);
    public  int UpUserDao(user_info user);
    public int DelUserDao(user_info user);
}
