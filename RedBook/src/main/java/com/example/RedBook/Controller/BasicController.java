package com.example.RedBook.Controller;

import com.example.RedBook.Bean.Article;
import com.example.RedBook.Bean.Comment;
import com.example.RedBook.Bean.User;
import com.example.RedBook.Service.ArticleService;
import com.example.RedBook.Service.CommentService;
import com.example.RedBook.Service.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class BasicController {

    @Resource(name = "ArticleService")
    ArticleService articleService;

    @Resource(name = "CommentService")
    CommentService commentService;

    @Resource(name = "UserService")
    UserService userService;

    @RequestMapping("/home")
    public List<Article> Home(Integer pageNo) {
        return articleService.RandomArticles(pageNo).getContent();
    }

    @RequestMapping("/like")
    public Boolean LikeArticle(Integer articleId, Integer userId) {
        return userService.LikeOrUnlike(articleId, userId);
    }

    @RequestMapping("/detail")
    public Article ArticleDetail(Integer articleId) {
        return articleService.GetArticleDetails(articleId);
    }

    @RequestMapping("/getComments")
    public List<Comment> GetComments(Integer articleId) {
        return commentService.GetComments(articleId).getContent();
    }

    @RequestMapping("/addComment")
    public List<Comment> AddComment(Integer articleId, String comment, Integer userId) {
        return commentService.AddComment(articleId, comment, userId).getContent();
    }

    @RequestMapping("/getUser")
    public User userInfo(Integer userId) {
        return userService.getUser(userId);
    }

    @RequestMapping("/GetArticlesPageCounts")
    public Integer getPageCounts() {
        return articleService.GetPageCounts();
    }
}
