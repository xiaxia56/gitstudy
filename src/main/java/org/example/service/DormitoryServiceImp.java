package org.example.service;

import org.example.dao.DormitoryDaomapper;
import org.example.model.Dormitory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DormitoryServiceImp implements DormitoryService {
    private DormitoryDaomapper dormitoryDaoMapper;
    public void setDormitoryDaomapper(DormitoryDaomapper dormitoryDaomapper) {
        this.dormitoryDaoMapper = dormitoryDaomapper;
    }

    @Override
    public List<Dormitory> selectUser() {
        return dormitoryDaoMapper.selectUser();
    }

    @Override
    public void updateUser(Dormitory dormitory) {
        dormitoryDaoMapper.updateUser(dormitory);
    }

    @Override
    public void insertUser(Dormitory dormitory) {
        dormitoryDaoMapper.insertUser(dormitory);
    }

    @Override
    public void deleteUser(int id) {
        dormitoryDaoMapper.deleteUser(id);
    }

    @Override
    public Dormitory selectUserId(int id) {
        return dormitoryDaoMapper.selectUserId(id);
    }
}
