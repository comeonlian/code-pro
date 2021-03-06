package com.t35.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.t35.dao.InvestreportMapper;
import com.t35.pojo.Borrow;
import com.t35.pojo.Investreport;
import com.t35.pojo.User;
import com.t35.pojo.query.BasePage;
import com.t35.pojo.query.Condition;
import com.t35.service.InvestreportService;


@Service
public class InvestreportServiceImpl implements InvestreportService {

	@Resource
	private InvestreportMapper investreportMapper;
	
	public List<Borrow> queryAllBorrow(BasePage basePage) {
		// TODO Auto-generated method stub

		basePage.setPageIndex((basePage.getPageNo()-1)*basePage.getPageSize());
		return investreportMapper.queryAllBorrow(basePage);

	}

	@Override
	public List<Borrow> queryPage() {
		// TODO Auto-generated method stub
		return investreportMapper.queryPage();
	}

	@Override
	public List<Borrow> query(Condition condition) {
		// TODO Auto-generated method stub
		return investreportMapper.query(condition);
	}

	@Override
	public Borrow queryById(Borrow borrow) {
		// TODO Auto-generated method stub
		return investreportMapper.queryById(borrow);
	}

	@Override
	public User getAllUserInFo(Borrow borrow) {
		// TODO Auto-generated method stub
		return investreportMapper.getAllUserInFo(borrow);
	}

	@Override
	public List<Investreport> getInvestreport(Borrow borrow) {
		// TODO Auto-generated method stub
		return investreportMapper.getInvestreport(borrow);
	}

	@Override
	public User getUser(User user) {
		// TODO Auto-generated method stub
		return investreportMapper.getUser(user);
	}

	@Override
	public void saveInvestreport(Investreport investreport) {
		// TODO Auto-generated method stub
		investreportMapper.saveInvestreport(investreport);
	}

	@Override
	public List<Investreport> findAllExcle() {
		// TODO Auto-generated method stub
		return investreportMapper.findAllExcle();
	}
}
