package com.example.demo.upload.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;


@Data
@TableName(value = "file")
public class FileDTO {
    /**
    * id
    */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
    * 相对路径
    */
    private String path;

    /**
    * 文件名
    */
    private String name;

    /**
    * 后缀
    */
    private String suffix;

    /**
    * 大小|字节B
    */
    private Integer size;


    /**
    * 创建时间
    */
    private Long createdAt;

    /**
    * 修改时间
    */
    private Long updatedAt;

    /**
    * 已上传分片
    */
    private Integer shardIndex;

    /**
    * 分片大小|B
    */
    private Integer shardSize;

    /**
    * 分片总数
    */
    private Integer shardTotal;

    /**
    * 文件标识
    */
    private String fileKey;

}