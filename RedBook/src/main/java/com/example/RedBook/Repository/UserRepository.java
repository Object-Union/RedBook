package com.example.RedBook.Repository;

import com.example.RedBook.Bean.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository(value = "UserRepository")
public interface UserRepository extends JpaRepository<User, Integer> {
    @Query(nativeQuery = true, value = "select id from `user_like` where article_id = ?2 and user_id = ?1")
    Integer findLikeById(Integer articleId, Integer userId);

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "insert into `user_like` (id, user_id, article_id) values (null,?1,?2)")
    Integer insertLikeNotes(Integer articleId, Integer userId);

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "delete from `user_like` where id = ?1")
    Integer deleteLikeNotes(Integer id);

    User findUserById(Integer id);
}
