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
		<h4>등록하기</h4>


	
	
	
	<div class = "container">
	
	<form action='<c:url value="/home/insert"/>' method="get" id="insert">
	
	<!-- 이름넣는곳 -->
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1" >이름</span> 
		<input
			type="text" class="form-control" placeholder="name" name="name"
			 aria-describedby="basic-addon1"/>
			
	</div>
	<!-- 이름넣는곳  끝-->
	
	<!-- 주소 넣는곳 -->
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">주소</span> 
		
		
		<!-- <input type="text" class="form-control" placeholder="address"  aria-describedby="basic-addon1" data-mdb-toggle="dropdown"/>	 -->
		
		
		<span  class="form-control" id="basic-addon1" style="background-color:white;">
		
		<select name="address" id="input2"
					class="btn btn-lilght btn-sm dropdown-toggle"
					data-mdb-toggle="dropdown" aria-expanded="false" style="width:100%;" >
					
					<option value="">시</option>
						<option value="서울">서울</option>
						<option value="수원">수원</option>
						<option value="안양">안양</option>
						</select>
						
			
			</span>
		
	</div>
	<!-- 주소넣는곳 끝-->
	
	<!-- 소개글 넣는곳 -->
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">소개글</span> 
		<input
			type="text" class="form-control" placeholder="content" name="content"
			aria-label="Username" aria-describedby="basic-addon1"  />
	</div>
	
	<!-- 소개글 넣는곳 끝 -->
	<table>
		<tr>
		
					
			<th><a href="<c:url value='/home'/>"
					class="btn btn-danger">목록으로 돌아가기</a></th>

			<!--form 태그 안에 넣어서 데이터 전송하기 -->					
			<th><span><button type="submit" id="save" class="btn btn-danger">저장</button></span></th>
		</tr>
	</table>
		
	</form>
</div>
	
	
	
	
</body>
<script src="/jquery/jquery-3.6.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</html>