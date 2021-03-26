<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<meta charset="UTF-8">



<title>Insert title here</title>
</head>
<body>
	<h1>리스트</h1>
	
	
	<div class = "container">
	<form action='<c:url value="/home/update"/>' method="get" id="update">
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">번호</span> 
		<input
			type="text" class="form-control" placeholder="Username" name="id" id="formControlReadonly"  readonly 
			aria-label="Username" aria-describedby="basic-addon1" value="${single.id }"  />
	</div>
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">이름</span> 
		<input
			type="text" class="form-control" placeholder="Username" name="name"
			aria-label="Username" aria-describedby="basic-addon1" value="${single.name }" />
	</div>
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">주소</span> 
		<input
			type="text" class="form-control" placeholder="Username" name="address"
			aria-label="Username" aria-describedby="basic-addon1"  value="${single.address }" />
	</div>

	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon1">소개글</span> 
		<input
			type="text" class="form-control" placeholder="Username" name="content"
			aria-label="Username" aria-describedby="basic-addon1"  value="${single.content }" />
	</div>
	<table>
		<tr>
			<th><a href="<c:url value='/home/delete/${ single.id }' />"
					class="btn btn-danger">삭제하기</a></th>
					
			<th><a href="<c:url value='/home'/>"
					class="btn btn-danger">목록으로 돌아가기</a></th>
		</tr>
	</table>
	<button type="button" class="btn btn-primary" data-mdb-toggle="modal"
		data-mdb-target="#exampleModal" id="modalBtn">저장</button>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">수정하시겠습니까?</h5>
					
				</div>
				<div class="modal-body">변경사항이 수정됩니다</div>
				<div class="modal-footer">
					<button type="button" id="modalClose" class="btn btn-secondary"
						data-mdb-dismiss="modal">닫기</button>
						
						<!-- 버튼이 폼ㅌㅐ그 안에 있으므로 정보가 전달이 된다. -->
					<button type="submit" class="btn btn-primary">저장</button>
				</div>
			</div>
		</div>
	</div>
		</form>
</div>
	
	
	
		<%-- 	<%-- 		<th><input type="text" name="id" value="${single.id }" /></th>
					<th><input type="text" name="name" value="${single.name }" /></th>
					<th><input type="text" name="address" value="${single.address }" /></th>

					<th><a href="<c:url value='/home/delete/${ single.id }' />"
						class="btn btn-danger">삭제하기</a></th> --%>

			<%-- 		<th><a href="<c:url value='/home'/>" class="btn btn-danger">목록</a></th>
				</tr>
			</table>
			<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-mdb-toggle="modal"
		data-mdb-target="#exampleModal" id="modalBtn">저장</button>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">수정하시겠습니까?</h5>
					
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" id="modalClose" class="btn btn-secondary"
						data-mdb-dismiss="modal">Close</button>
						
						<!-- 버튼이 폼ㅌㅐ그 안에 있으므로 정보가 전달이 된다. -->
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
		</form>
	</div> --%> 

	

</body>
<script src="/jquery/jquery-3.6.0.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script>
	
	//모달창 키고 끄기
	$(document).ready(function(){
		$('#modalBtn').click(function(e){
			e.preventDefault();
			$('#exampleModal').modal('show');
		});
		$('#modalBtn').click(function(e){
			e.preventDefault();
			$('#modalClose').click(function(e){
				$('#exampleModal').modal('hide');
			});
		});
	});
</script>


</html>