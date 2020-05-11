package com.zjy.spring.serviceImpl;

import com.zjy.spring.mapper.ArticleMapper;
import com.zjy.spring.model.tm_info;
import com.zjy.spring.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ArticleServiceImpl implements ArticleService {
    private ArticleMapper articleMapper;
    @Autowired
    public void setArticleMapper(ArticleMapper articleMapper) {
        this.articleMapper = articleMapper;
    }

    @Override
    public int InsArtService(tm_info tm) {
        return articleMapper.InsArtDao(tm);
    }

    @Override
    public List<tm_info> SelArtService(tm_info tm) {
        return articleMapper.SelArtDao(tm);
    }

    @Override
    public int DelArtService(tm_info tm) {
        return articleMapper.DelArtDao(tm);
    }

    @Override
    public List<tm_info> SearchArtDao(tm_info tm) {
        return articleMapper.SearchArtDao(tm);
    }
}
