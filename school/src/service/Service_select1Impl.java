package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import customermapper.Customermapper;
import dao.UserPass;


@Service
public class Service_select1Impl implements Service_select1 {
	@Resource
	private Customermapper customermapper;
	@Override
	public List<UserPass> select1() {
		// TODO Auto-generated method stub
		List<UserPass> list=customermapper.select1();
		return list;
	}

}
