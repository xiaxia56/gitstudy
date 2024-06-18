package org.example.dao;

import org.example.model.User;

public interface UserDaomapper {
    void insetUser(User user);
    void updataUserpassword(User user);
    void delectUser(User user);
    User findByUsername(String username);
    boolean validateUser(User user);
}
