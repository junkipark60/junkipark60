package com.test.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.service.TestService;
import com.test.vo.TestVO;

@Controller
public class HomeController {

	Logger logger;
	
	@Autowired
	TestService testService;

	@RequestMapping(value="/home", method=RequestMethod.GET)
	public String index(TestVO testVO, Model model) throws SQLException, IOException {

		List<TestVO> list  = testService.getlist(testVO);
		model.addAttribute("list",list);

		return "/home";

	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register()throws SQLException,IOException{
		return "/register";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home() {

		return "/homepage";
	}

	/*@RequestMapping(value="/home/insert", method=RequestMethod.GET)
	public String insert(TestVO testVO,Model model) {
		testMapper.insert(testVO);
		model.addAttribute("insert",testVO);
		System.out.println("insert......");
		return "redirect:/home";

	}*/

	@RequestMapping(value="/home/insert", method=RequestMethod.GET)
	public String insert(TestVO testVO) throws SQLException, IOException {
		testService.insert(testVO);

		return "redirect:/home ";
	}
	
	@RequestMapping(value="/home/delete/{list.id}", method=RequestMethod.GET)
	public String delete(@PathVariable("list.id") int id) throws SQLException, IOException{
		testService.delete(id);
		
		
		return "redirect:/home";
	}
	
	@RequestMapping(value="/home/read/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable("id") int id ,Model model )throws SQLException,IOException{
		TestVO single = testService.edit(id);
		
		model.addAttribute("single", single);
		return "/read";

	
	}
	
	@RequestMapping(value="/home/modify/{id}", method=RequestMethod.GET)
	public String modify(@PathVariable("id") int id, Model model)throws SQLException,IOException{
		TestVO single = testService.edit(id);
		model.addAttribute("single", single);
		
		return "/modify";
	}
	
	

	@RequestMapping(value="/home/update", method=RequestMethod.GET)
	public String update(TestVO testVO) throws SQLException, IOException {
		
		testService.update(testVO);
		return "redirect:/home";
		
	}
}
