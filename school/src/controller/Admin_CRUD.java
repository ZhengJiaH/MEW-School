package controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import dao.UserPass;
import service.Service_AdmImpl;
import service.Service_select1Impl;

@Controller
@RequestMapping(value="/admin")
public class Admin_CRUD {
	@Resource
	private Service_select1Impl service_select1Impl;
	@Resource
	private Service_AdmImpl service_AdmImpl;
	
	//修改界面1
	@RequestMapping(value="/update1")
	public String update_1(@RequestParam(value="update") String str
			,Model model) {
		UserPass userpass=service_AdmImpl.select_one(str);
		model.addAttribute("userpass", userpass);
		return "admin_update";
	}
	@RequestMapping(value="/update1",method=RequestMethod.POST)
	public String update_2(UserPass userpass,Model model) {
		service_AdmImpl.update_one(userpass);
		List<UserPass> list=service_select1Impl.select1();
		model.addAttribute("list", list);
		return "admin_00";
	}
	//管理人员删除
	@RequestMapping(value="/delete1")
	public String delete_1(@RequestParam(value="delete") String dele
			,Model model) {
		service_AdmImpl.delete_adm(dele);
		List<UserPass> list=service_select1Impl.select1();
		model.addAttribute("list", list);
		return "admin_00";
	}
	@RequestMapping(value="/insert1")
	public String insert_1() {
		return "admin_insert1";
	}
	@RequestMapping(value="/insert2",method=RequestMethod.POST)
	public String insert_2(UserPass userpass,Model model) {
		service_AdmImpl.insert_one(userpass);
		List<UserPass> list=service_select1Impl.select1();
		model.addAttribute("list", list);
		return "admin_00";
	}
	@RequestMapping(value="/fanhui")
	public String fanhui() {
		return "choice";
	}
}
