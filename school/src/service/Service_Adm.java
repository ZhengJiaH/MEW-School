package service;

import dao.UserPass;

public interface Service_Adm {
	public void delete_adm(String str);
	public UserPass select_one(String str);  //管理员查询一个
	public void update_one(UserPass userpass);//修改管理人员
	public void insert_one(UserPass userpass); //添加一个管理人员
}
