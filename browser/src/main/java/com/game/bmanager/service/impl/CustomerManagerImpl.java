package com.game.bmanager.service.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.bmanager.entity.Customer;
import com.game.bmanager.service.CustomerManager;
import com.game.modules.orm.GenericDao;
import com.game.modules.orm.hibernate.GenericDaoHibernate;
import com.game.modules.service.impl.GenericManagerImpl;
import com.game.services.ServiceException;

@Service("customerManager")
public class CustomerManagerImpl extends GenericManagerImpl<Customer, Long> implements CustomerManager {

    private GenericDao<Customer, Long> customerDao;
    private static Logger logger = LoggerFactory.getLogger(CustomerManagerImpl.class);

    /**
     * 注入hibernate的sessionFactory构建dao
     * 
     * @param sessionFactory
     */
    @Autowired
    public CustomerManagerImpl(SessionFactory sessionFactory) {
        this.customerDao = new GenericDaoHibernate<Customer, Long>(Customer.class, sessionFactory);
        this.dao = this.customerDao;
    }

    public boolean delAll(List<Long> ids) {
        try {
            for (Long id : ids) {
                // 逻辑删除
                Customer customer = dao.get(id);
                customer.setCustomerid(customer.getCustomerid() == null ? "" : customer.getCustomerid() + "old");
                customer.setStatus(-1);
                dao.save(customer);
            }
            return true;
        } catch (ServiceException e) {
            logger.error(e.getMessage(), e);
            return false;
        }
    }

    public boolean isCustomidUnique(String customid, String oldName) {
        return dao.isPropertyUnique("customerid", customid, oldName);
    }

    @Override
    public Customer getByCustomerid(String customerid) {
        Customer customer = dao.findUniqueBy("customerid", customerid);
        return customer;
    }

    @Override
    public List<Customer> getAllByPassdevice(int passdevice) {
        return dao.find("from Customer where passdevice=" + passdevice);
    }

}