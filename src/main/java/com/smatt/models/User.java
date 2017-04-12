package com.smatt.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by smatt on 22/03/2017.
 */
@Document(collection = "users")
public class User {

    @Id
    private String id;

    private String name;

    private String email;

    private String username;

    private String password;

    private String profile_pic = "";

    public User() {}

    public User(String username, String password) {
        this.username = username;
        this.password =  password;
    }




    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String toString() {
        return "Name: " + name + ", Email: " + email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isCredentialsValid() {
        return getEmail().isEmpty() && getPassword().isEmpty();
    }



}
