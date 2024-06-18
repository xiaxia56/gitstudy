package org.example.service;

import org.example.model.Dormitory;

import java.util.List;

public interface DormitoryService {
    List<Dormitory> selectUser();
    void updateUser(Dormitory dormitory);
    void insertUser(Dormitory dormitory);
    void deleteUser(int id);
    Dormitory selectUserId(int id);
}
