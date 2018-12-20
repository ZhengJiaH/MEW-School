package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.Staff;
import service.Service_StaffImpl;

@Controller
@RequestMapping(value="/staff")
public class Staff_CRUD {
	@Resource
	private Service_StaffImpl service_StaffImpl;
	@RequestMapping(value="/list")
	public String select_list(Model model) {     //查询所有员工
		List<Staff> list=service_StaffImpl.select_staff();
		model.addAttribute("list", list);
		return "staff_00";
	}
	@RequestMapping(value="/fanhui")  //返回页面
	public String fanhui() {
		return "choice";
	}
	@RequestMapping(value="/minute")	//详情页面
	public String minute(@RequestParam(value="minute") String minute
			,Model model) {
		Staff staff=service_StaffImpl.select_staffOne(minute);
		model.addAttribute("staff", staff);
		return "staff_minute";
	}
	@RequestMapping(value="/insertOne")  //跳转到添加页面
	public String insertOne() {
		return "staff_insertOne";
	}
	@RequestMapping(value="/insert",method=RequestMethod.POST)  //进行添加
	public String insert_One(MultipartFile file
			,HttpServletRequest request
			,Model model
			,@RequestParam(value="id") String id
			,@RequestParam(value="name") String name
			,@RequestParam(value="sex") String sex
			,@RequestParam(value="age") String age
			,@RequestParam(value="path") String path
			,@RequestParam(value="department") String department
			,@RequestParam(value="idcard") String idcard) throws Exception {
		String imgPath=request.getServletContext().getRealPath("/img");
		file.transferTo(new File(imgPath+File.separator+file.getOriginalFilename()));
		System.out.println(imgPath);
		//String imgpath=imgPath+File.separator+file.getOriginalFilename();
		String imgpath="/school/img/"+file.getOriginalFilename();
		Staff staff=new Staff();
		staff.setAge(age);
		staff.setDepartment(department);
		staff.setId(id);
		staff.setIdcard(idcard);
		staff.setImgpath(imgpath);
		staff.setName(name);
		staff.setPath(path);
		staff.setSex(sex);
		System.out.println(imgpath);
		service_StaffImpl.insert_One(staff);
		List<Staff> list=service_StaffImpl.select_staff();
		model.addAttribute("list", list);
		return "staff_00";
	}
	@RequestMapping(value="/fanhuiList")	//返回
	public String fanhuiList(Model model) {
		List<Staff> list=service_StaffImpl.select_staff();
		model.addAttribute("list", list);
		return "staff_00";
	}
	@RequestMapping(value="/delete_sta")	//删除一个员工
	public String delete_sta(@RequestParam(value="delete") String string,Model model) {
		service_StaffImpl.delete_sta(string);
		List<Staff> list=service_StaffImpl.select_staff();
		model.addAttribute("list", list);
		return "staff_00";
	}
	@RequestMapping(value="/modify")  //跳转修改信息页面
	public String modify(@RequestParam(value="modify") String minute
			,Model model) {
		Staff staff=service_StaffImpl.select_staffOne(minute);
		model.addAttribute("staff", staff);
		return "staff_modify";
	}
	
	@RequestMapping(value="/put",method=RequestMethod.POST)  //进行保存
	public String put_00(MultipartFile file
			,HttpServletRequest request
			,Model model
			,@RequestParam(value="id") String id
			,@RequestParam(value="name") String name
			,@RequestParam(value="age") String age
			,@RequestParam(value="path") String path
			,@RequestParam(value="department") String department
			,@RequestParam(value="idcard") String idcard) throws Exception {
		String imgPath=request.getServletContext().getRealPath("/img");
		file.transferTo(new File(imgPath+File.separator+file.getOriginalFilename()));
		//String imgpath=imgPath+File.separator+file.getOriginalFilename();
		String imgpath="/school/img/"+file.getOriginalFilename();
		Staff staff=new Staff();
		staff.setAge(age);
		staff.setDepartment(department);
		staff.setId(id);
		staff.setIdcard(idcard);
		staff.setImgpath(imgpath);
		staff.setName(name);
		staff.setPath(path);
		service_StaffImpl.update_put(staff);
		List<Staff> list=service_StaffImpl.select_staff();
		model.addAttribute("list", list);
		return "staff_00";
	}
}
