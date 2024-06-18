package org.example.service;

import org.example.dao.UserDaomapper;
import org.example.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImp implements UserSerivce{
    private UserDaomapper userDaoMapper;
    public void setUserDaoMapper(UserDaomapper userDaoMapper) {
        this.userDaoMapper = userDaoMapper;
    }
    @Override
    public void insetUser(User user) {
        userDaoMapper.insetUser(user);
    }

    @Override
    public void updataUserpassword(User user) {
        userDaoMapper.updataUserpassword(user);
    }

    @Override
    public void delectUser(User user) {
        userDaoMapper.delectUser(user);
    }

    @Override
    public boolean validateUser(User user) {
        User user1 = userDaoMapper.findByUsername(user.getUsername());
        return user1!=null&&user1.getPassword().equals(user.getPassword());
    }

    @Override
    public boolean validateUsername(String username) {
        User user = userDaoMapper.findByUsername(username);
        return user!=null&&user.getUsername().equals(username);
    }
}
