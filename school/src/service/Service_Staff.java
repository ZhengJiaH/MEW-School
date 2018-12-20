package service;

import java.util.List;
import dao.Staff;

public interface Service_Staff {
	public List<Staff> select_staff();   //查询普通员工
	public Staff select_staffOne(String string);   //查询一个普通员工
	public void insert_One(Staff staff);		//添加一个员工
	public void delete_sta(String string);		//删除员工
	public void update_put(Staff staff);		//修改一个员工
}
