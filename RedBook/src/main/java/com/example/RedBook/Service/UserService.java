package com.example.RedBook.Service;

import com.example.RedBook.Bean.User;
import com.example.RedBook.Repository.ArticleRepository;
import com.example.RedBook.Repository.UserRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service(value = "UserService")
public class UserService {
    @Resource(name = "UserRepository")
    UserRepository userRepository;

    @Resource(name = "ArticleRepository")
    ArticleRepository articleRepository;

    public Boolean LikeOrUnlike(Integer articleId, Integer userId) {
        Integer id = userRepository.findLikeById(userId, articleId);
        Integer likes = articleRepository.getLikesByArticleId(articleId);
        if (id != null) {
            articleRepository.updateArticleLikes(articleId, likes - 1);
            return userRepository.deleteLikeNotes(id) != null;
        } else {
            articleRepository.updateArticleLikes(articleId, likes + 1);
            return userRepository.insertLikeNotes(userId, articleId) != null;
        }
    }

    public User getUser(Integer userId) {
        return userRepository.findUserById(userId);
    }
}
