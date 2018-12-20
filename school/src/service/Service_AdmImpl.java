package service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import customermapper.Customermapper;
import dao.UserPass;
@Service
public class Service_AdmImpl implements Service_Adm {
	@Resource
	private Customermapper customermapper;
	@Override
	//管理员删除
	public void delete_adm(String str) {
		// TODO Auto-generated method stub
		customermapper.delete_adm(str);
	}
	
	//管理员查询1个
	@Override
	public UserPass select_one(String str) {
		// TODO Auto-generated method stub
		UserPass userpass=customermapper.select_one(str);
		return userpass;
	}
	
	//修改
	@Override
	public void update_one(UserPass userpass) {
		// TODO Auto-generated method stub
		customermapper.update_one(userpass);
	}

	@Override
	public void insert_one(UserPass userpass) {
		// TODO Auto-generated method stub
		customermapper.insert_one(userpass);
	}

}
