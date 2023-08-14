package com.test.ybh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.test.ybh.dto.CodeDTO;

@Repository
public interface CodeDAO extends JpaRepository<CodeDTO, Long>{
	@Query(value = 
			"SELECT * FROM codedto WHERE parent_code_seq = 0"
			, nativeQuery = true)
	public List<CodeDTO> findByParent();
	
	@Query(value = 
			"SELECT * FROM codedto WHERE parent_code_seq != 0"
			, nativeQuery = true)
	public List<CodeDTO> findByChild();
	
}
