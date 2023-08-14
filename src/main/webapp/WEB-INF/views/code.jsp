<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<style>
	html{
		width:99%; margin: auto;
	}
	.fc44{ color:red; }
	.code_div{ display: flex;}
	.code_div_1{ width: 70%; padding-right: 50px;}
	.table th{font-size: 10pt;}
	.code_div_2{ width:40%; }
	.code_div_2, .code_div_2 table{width: 100%;}
	.btn_div{text-align: right;}
</style>

<script>
	var btn_temp;

	function selectedTr(rowNum){
		$("#a_tr_" + btn_temp).removeClass();
		btn_temp = rowNum;
		
		$("#a_tr_" + rowNum).addClass("table-primary");
	}
	
	

	/*
	여기서 2번째 리스트 그려주기
	function (){
		
	}
	<c:choose>
					<c:when test="${childCodeList.size() == 0}">
						<tr><td>코드를 등록해주세요.</td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="list" items="${childCodeList}">
							<tr id="a_tr_${list.rowNum}">
								<td><input type="checkbox" id="a_chk_${list.rowNum}"></td>
								<td>${list.rowNum}</td>
								<td><input type="text" value="${list.code}" id="a_code_${list.rowNum}"></td>
								<td><input type="text" value="${list.codeNm}" id="a_codeNm_${list.rowNum}"></td>
								<td><input type="text" value="${list.orderNo}" id="a_orderNo_${list.rowNum}"></td>
								<td><select id="b_useYn_${list.rowNum}"><option value="Y">Y</option><option value="N">N</option></select></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
	
	*/
	
</script>
</head>
<body>
<h1>코드 관리</h1>

<div class="code_div">
	<div class="code_div_1">
		<!-- 버튼 -->	
		<div class="btn_div">
			<button type="button" class="btn btn-primary">추가</button>
			<button type="button" class="btn btn-success">저장</button>
			<button type="button" class="btn btn-danger">삭제</button>
		</div>
	<!-- 테이블 -->
	<table class="table table-striped">
			<thead>
				<tr>
					<th class="ck_type2"><input type="checkbox" id="chk_all_a" onclick="chkAll()"></th>
					<th>번호</th>
					<th>코드<span class="fc44">*</span></th>
					<th>코드명<span class="fc44">*</span></th>
					<th>정렬순서<span class="fc44">*</span></th>
					<th>사용여부<span class="fc44">*</span></th>
					<th></th>
				</tr>
			</thead>
			<tbody id="code_table_a">
				<c:choose>
					<c:when test="${parentCodeList.size() == 0}">
						<tr><td>코드를 등록해주세요.</td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="list" items="${parentCodeList}">
							<tr id="a_tr_${list.rowNum}">
								<td><input type="checkbox" id="a_chk_${list.rowNum}"></td>
								<td>${list.rowNum}</td>
								<td><input type="text" value="${list.code}" id="a_code_${list.rowNum}"></td>
								<td><input type="text" value="${list.codeNm}" id="a_codeNm_${list.rowNum}"></td>
								<td><input type="text" value="${list.orderNo}" id="a_orderNo_${list.rowNum}"></td>
								<td><select id="a_useYn_${list.rowNum}"><option value="Y">Y</option><option value="N">N</option></select></td>
								<td><button type="button" class="btn btn-warning" onclick="selectedTr(${list.rowNum})">선택</button></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	
	<div class="code_div_2">
		<!-- 버튼 -->	
		<div class="btn_div">
			<button type="button" class="btn btn-primary">추가</button>
			<button type="button" class="btn btn-success">저장</button>
			<button type="button" class="btn btn-danger">삭제</button>
		</div>
		<!-- 테이블 -->
		<table class="table table-striped">
			<thead>
				<tr>
					<th class="ck_type2"><input type="checkbox" id="chk_all_b" onclick="chkAll()"></th>
					<th>번호</th>
					<th>코드<span class="fc44">*</span></th>
					<th>코드명<span class="fc44">*</span></th>
					<th>정렬순서<span class="fc44">*</span></th>
					<th>사용여부<span class="fc44">*</span></th>
				</tr>
			</thead>
			<tbody id="code_table_b">
				<c:choose>
					<c:when test="${childCodeList.size() == 0}">
						<tr><td>코드를 등록해주세요.</td></tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="list" items="${childCodeList}">
							<tr id="a_tr_${list.rowNum}">
								<td><input type="checkbox" id="a_chk_${list.rowNum}"></td>
								<td>${list.rowNum}</td>
								<td><input type="text" value="${list.code}" id="a_code_${list.rowNum}"></td>
								<td><input type="text" value="${list.codeNm}" id="a_codeNm_${list.rowNum}"></td>
								<td><input type="text" value="${list.orderNo}" id="a_orderNo_${list.rowNum}"></td>
								<td><select id="b_useYn_${list.rowNum}"><option value="Y">Y</option><option value="N">N</option></select></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>