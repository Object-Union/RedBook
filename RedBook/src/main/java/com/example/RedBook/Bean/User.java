package com.example.RedBook.Bean;

import lombok.*;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.List;

@Entity
@Getter
@Setter
@Component
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private String avatarUrl;

    @ElementCollection
    @CollectionTable(name = "user_like",
            joinColumns = @JoinColumn(name = "user_id",referencedColumnName = "id")
    )
    @Column(name = "article_id")
    private List<Integer> likedArticle;
}
