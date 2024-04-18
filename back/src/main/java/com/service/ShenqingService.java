package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShenqingEntity;
import java.util.Map;

/**
 *  服务类
 */
public interface ShenqingService extends IService<ShenqingEntity> {

     PageUtils queryPage(Map<String, Object> params);

}