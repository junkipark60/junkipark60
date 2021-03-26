<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<h1>리스트</h1>
		<h4>상세보기</h4>

	

	<div class = "container">
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">번호</span> 
		<input
			type="text" class="form-control" placeholder="Username" id="formControlReadonly"  readonly
			aria-label="Username" aria-describedby="basic-addon1" value="${single.id }"  />
	</div>
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">이름</span> 
		<input
			type="text" class="form-control" placeholder="Username" id="formControlReadonly"  readonly
			aria-label="Username" aria-describedby="basic-addon1" value="${single.name }" />
	</div>
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">주소</span> 
		<input
			type="text" class="form-control" placeholder="Username" id="formControlReadonly"  readonly
			aria-label="Username" aria-describedby="basic-addon1"  value="${single.address }" />
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">소개글</span> 
		<input
			type="text" class="form-control" placeholder="Username" id="formControlReadonly"  readonly
			aria-label="Username" aria-describedby="basic-addon1"  value="${single.content }" />
	</div>
	<table>
		<tr>
			<th><a href="<c:url value='/home/delete/${ single.id }' />"
					class="btn btn-danger">삭제하기</a></th>
					
			<th><a href="<c:url value='/home/modify/${ single.id }' />"
					class="btn btn-danger">수정하기</a></th>
					
			<th><a href="<c:url value='/home'/>"
					class="btn btn-danger">목록으로 돌아가기</a></th>
		</tr>
	</table>
</div>
	
</body>
<script src="/jquery/jquery-3.6.0.min.js"></script>

</html>