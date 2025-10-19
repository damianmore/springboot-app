package com.springbootapp.entity;
import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name="users")
public class User {
    @Id
    private long id;

    private String username;
    private String name;
    private String email;
    private String avatarUrl;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private GithubRecord githubRecord;


}
