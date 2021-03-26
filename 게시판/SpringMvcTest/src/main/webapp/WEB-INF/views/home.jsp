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
	<div class="contatiner">


	
		
			
	
	
	<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">이름</th>
      <th scope="col">주소</th>
      <th scope="col"><button type="button" onclick="location.href='/register'" class="btn btn-sm btn-primary"> 등록하기</button></th>
    </tr>
    <tr>
				<c:forEach items="${list}" var="list">
					<tr>
						<th><c:out value="${list.id }" /></th>
						<th><c:out value="${list.name }" /></th>
						<th><c:out value="${list.address }" /></th>
						<th><a href="<c:url value='/home/read/${ list.id }' />" class="btn btn-sm btn-danger">상세보기</a></th>
						</c:forEach>
					</tr>

				
  </thead>
</table>
</div>
</body>
<script src="/jquery/jquery-3.6.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script type="text/javascript">
	

</script>
</html>