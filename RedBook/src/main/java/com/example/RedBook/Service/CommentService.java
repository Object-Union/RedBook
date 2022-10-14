package com.example.RedBook.Service;

import com.example.RedBook.Bean.Comment;
import com.example.RedBook.Repository.CommentRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDate;

@Service(value = "CommentService")
public class CommentService {
    @Resource(name = "CommentRepository")
    CommentRepository commentRepository;

    public Page<Comment> GetComments(Integer articleId) {
        Page<Comment> comments = commentRepository.findCommentsByArticleIdOrderByIdDesc(articleId, PageRequest.of(0, 10));
        for (Comment comment : comments) {
            comment.setComment(ArticleService.emojiConverter.toUnicode(comment.getComment()));
        }
        return comments;
    }

    public Page<Comment> AddComment(Integer articleId, String comment, Integer userId) {
        comment = ArticleService.emojiConverter.toAlias(comment);
        commentRepository.insertAComment(articleId, comment, userId, LocalDate.now());
        return GetComments(articleId);
    }
}
