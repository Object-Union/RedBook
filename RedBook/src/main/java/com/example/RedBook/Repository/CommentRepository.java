package com.example.RedBook.Repository;

import com.example.RedBook.Bean.Comment;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

@Repository(value = "CommentRepository")
public interface CommentRepository extends JpaRepository<Comment, Integer> {
    Page<Comment> findCommentsByArticleIdOrderByIdDesc(Integer articleId, Pageable pageable);

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "insert into `article_comment` (article_id, comment, user_id, date) VALUES (?1,?2,?3,?4)")
    void insertAComment(Integer articleId, String comment, Integer userId, LocalDate now);
}
