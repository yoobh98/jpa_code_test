package com.test.ybh.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.test.ybh.service.CodeService;

@Controller
public class CodeController {
	
	@Autowired CodeService ser;
	
	@GetMapping("code")
	public String code(Model model) {
		model.addAttribute("parentCodeList", ser.selectAllParentCode());
		model.addAttribute("childCodeList", ser.selectAllChildCode());
		return "code";
	}
	
}
