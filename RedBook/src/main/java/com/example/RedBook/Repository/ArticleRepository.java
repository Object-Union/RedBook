package com.example.RedBook.Repository;

import com.example.RedBook.Bean.Article;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository(value = "ArticleRepository")
public interface ArticleRepository extends JpaRepository<Article, Integer> {
//    @Query(nativeQuery = true, value = "SELECT * FROM `article` WHERE id >= (SELECT floor(RAND() * (SELECT MAX(id) FROM `article`))) ORDER BY id LIMIT 6")
//    Page<Article> getArticleRandomly();

    @Query(nativeQuery = true, value = "select likes from article where id = ?1")
    Integer getLikesByArticleId(Integer articleId);

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update article set likes = ?2 where article.id = ?1")
    void updateArticleLikes(Integer articleId, Integer likes);

    Article findArticleById(Integer articleId);

    @Query(nativeQuery = true, value = "select count(*) from article")
    Integer countArticles();
}
