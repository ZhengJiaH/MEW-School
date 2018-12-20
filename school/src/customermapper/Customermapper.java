package customermapper;

import java.util.*;

import dao.Staff;
import dao.UserPass;

public interface Customermapper {
	public List<UserPass> select1();
	public void delete_adm(String str);
	public UserPass select_one(String str); //管理员查询一个
	public void update_one(UserPass userpass);//修改管理人员
	public void insert_one(UserPass userpass); //添加一个管理人员
	
	public List<Staff> select_staff();   //查询普通员工
	public Staff select_staffOne(String string);   //查询一个普通员工
	public void insert_One(Staff staff);		//添加一个员工
	public void delete_sta(String string);		//删除员工
	public void update_put(Staff staff);		//修改一个员工
}
