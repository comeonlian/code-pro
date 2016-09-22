package com.game.bmanager.service;

import java.util.List;

import com.game.bmanager.entity.Customer;
import com.game.modules.service.GenericManager;

public interface CustomerManager extends GenericManager<Customer, Long> {

    public boolean delAll(List<Long> ids);

    /**
     * 根据customid查找客户
     */
    public Customer getByCustomerid(String customerid);

    /**
     * 校验客户id唯一性
     */
    public boolean isCustomidUnique(String customerid, String oldName);

    /**
     * 根据最少启用状态查找列表
     */
    public List<Customer> getAllByPassdevice(int passdevice);
}
