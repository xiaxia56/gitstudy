package org.example.dao;

import org.example.model.Dormitory;

import java.util.List;

public interface DormitoryDaomapper {
    List<Dormitory> selectUser();
    void updateUser(Dormitory dormitory);
    void insertUser(Dormitory dormitory);
    void deleteUser(int id);
    Dormitory selectUserId(int id);
}
