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
@Table(name = "article")
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ElementCollection
    @CollectionTable(name = "article_picture",
            joinColumns = @JoinColumn(name = "article_id",referencedColumnName = "id")
    )
    @Column(name = "url")
    private List<String> pictures;

    private String title;

    private String context;

    private Integer likes;

    @ManyToOne(optional = false)
    @JoinColumn(name = "user_id")
    private User user;
}
