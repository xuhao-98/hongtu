package com.zjy.spring.service;

import com.zjy.spring.model.tm_info;

import java.util.List;

public interface ArticleService {
    public List<tm_info> SelArtService(tm_info tm);
    public List<tm_info> SearchArtDao(tm_info tm);
    public int InsArtService(tm_info tm);
    public int DelArtService(tm_info tm);
}
