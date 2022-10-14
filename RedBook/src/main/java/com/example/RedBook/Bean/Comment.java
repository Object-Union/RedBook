package com.example.RedBook.Bean;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Getter
@Setter
@Component
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "article_comment")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public Integer articleId;

    private String comment;

    private LocalDate date;

    @ManyToOne(optional = false)
    @JoinColumn(name = "user_id")
    private User user;
}
