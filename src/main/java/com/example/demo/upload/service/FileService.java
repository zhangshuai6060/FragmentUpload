package com.example.demo.upload.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.upload.dao.FileMapper;
import com.example.demo.upload.entity.FileDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileService {

    @Autowired
    private FileMapper fileMapper;

    //保存文件
    public void save(FileDTO file1){
        //根据 数据库的 文件标识来查询 当前视频 是否存在
        LambdaQueryWrapper<FileDTO> lambda = new QueryWrapper<FileDTO>().lambda();
        lambda.eq(FileDTO::getFileKey,file1.getFileKey());
        List<FileDTO> fileDTOS = fileMapper.selectList(lambda);
        //如果存在就话就修改
        if(fileDTOS.size()!=0){
            //根据key来修改
            LambdaQueryWrapper<FileDTO> lambda1 = new QueryWrapper<FileDTO>().lambda();
            lambda1.eq(FileDTO::getFileKey,file1.getFileKey());
            fileMapper.update(file1,lambda1);
        }else
        {
            //不存在就添加
            fileMapper.insert(file1);
        }
    }

    //检查文件
    public List<FileDTO> check(String key){
        LambdaQueryWrapper<FileDTO> lambda = new QueryWrapper<FileDTO>().lambda();
        lambda.eq(FileDTO::getFileKey,key);
        List<FileDTO> dtos = fileMapper.selectList(lambda);
        return dtos;
    }

}
