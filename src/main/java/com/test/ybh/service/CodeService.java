package com.test.ybh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.ybh.dao.CodeDAO;
import com.test.ybh.dto.CodeDTO;

@Service
public class CodeService {
	
	@Autowired CodeDAO dao;
	
	public List<CodeDTO> selectAllParentCode(){
		return dao.findByParent();
	};
	
	public List<CodeDTO> selectAllChildCode(){
		return dao.findByChild();
	};
	

}
