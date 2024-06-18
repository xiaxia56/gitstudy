package org.example.service;
import org.example.model.User;

public interface UserSerivce {
    void insetUser(User user);
    void updataUserpassword(User user);
    void delectUser(User user);
    boolean validateUser(User user);
    boolean validateUsername(String username);
}
