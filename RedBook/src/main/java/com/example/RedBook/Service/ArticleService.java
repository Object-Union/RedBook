package com.example.RedBook.Service;

import com.example.RedBook.Bean.Article;
import com.example.RedBook.Repository.ArticleRepository;
import com.github.binarywang.java.emoji.EmojiConverter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service(value = "ArticleService")
public class ArticleService {
    @Resource(name = "ArticleRepository")
    ArticleRepository articleRepository;

    public static final EmojiConverter emojiConverter = EmojiConverter.getInstance();

    public Page<Article> RandomArticles(Integer pageNo) {
        return articleRepository.findAll(PageRequest.of(pageNo - 1, 3));
    }

    public Article GetArticleDetails(Integer articleId) {
        Article article = articleRepository.findArticleById(articleId);
        article.setContext(emojiConverter.toUnicode(article.getContext()));
        return article;
    }

    public Integer GetPageCounts() {
        return articleRepository.countArticles() / 3 + (articleRepository.countArticles() % 3 == 0 ? 0 : 1);
    }

}
