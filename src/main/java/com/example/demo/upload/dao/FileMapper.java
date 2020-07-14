package com.example.demo.upload.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.upload.entity.FileDTO;
import org.springframework.stereotype.Repository;

@Repository
public interface FileMapper extends BaseMapper<FileDTO> {
}