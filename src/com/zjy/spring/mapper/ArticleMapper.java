package com.zjy.spring.mapper;

import com.zjy.spring.model.tm_info;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
@Repository
public interface ArticleMapper{
    public ArrayList<tm_info> SelArtDao(tm_info tm);
    public int UpArtDao(tm_info tm);
    public int InsArtDao(tm_info tm);
    public int DelArtDao(tm_info tm);
    public ArrayList<tm_info> SearchArtDao(tm_info tm);
}
