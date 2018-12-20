package service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import customermapper.Customermapper;
import dao.Staff;
@Service
public class Service_StaffImpl implements Service_Staff {
	@Resource
	private Customermapper customermapper;
	@Override
	public List<Staff> select_staff() {
		// TODO Auto-generated method stub
		List<Staff> list=customermapper.select_staff();
		return list;
	}
	@Override
	public Staff select_staffOne(String string) {
		// TODO Auto-generated method stub
		Staff staff=customermapper.select_staffOne(string);
		return staff;
	}
	@Override
	public void insert_One(Staff staff) {
		// TODO Auto-generated method stub
		customermapper.insert_One(staff);
	}
	@Override
	public void delete_sta(String string) {
		// TODO Auto-generated method stub
		customermapper.delete_sta(string);
	}
	@Override
	public void update_put(Staff staff) {
		// TODO Auto-generated method stub
		customermapper.update_put(staff);
	}

}
