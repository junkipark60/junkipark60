<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
	<!-- <script src="./js/jquery-3.6.0.min.js"></script> -->
	<script src="resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>
	Hello world!  
</h1>


<P>  The time on the server is ${serverTime}. </P>
<button type="button"  onclick="show()" >눌러볼까!</button>
<div style="margin-top:15px;">
아이디:<input id="id" value=""/>
비밀번호:<input id="pw" value=""/>
<button type="button" onclick="submit()">확인</button>
</div>

<p style="margin-top:20px;">숫자정렬해보기</p>
<table>
	<tr>
		<td>
		<input id="number"/>
		</td>
	</tr>
	<tr>
		<td>
		<input id="number1"/>
		</td>
	</tr>
	<tr>
		<td>
		<input id="number2"/>
		</td>
	</tr>
	<tr>
		<td>
		<input id="number3"/>
		</td>
	</tr>
</table>

<button type = "button" onclick="align()">숫자 정렬하기</button>
<input id="alignNumber">

<div style=margin-top:20px;>
<input id = "switch" value="숫자인기 문자인지 판별해주는놀이">
<button type="button" onclick="result()">결과</button>

</div>
</body>

<script>
function result(){
	
	var input = $('#switch').val();
	
	if(typeof input){
		alert('숫자입니다.')
	} else{
		alert('문자입니다.')
	}
}

function align(){
	var alNum = [$('#number').val(),$('#number1').val(),$('#number2').val(),$('#number3').val()];
	
	console.log(alNum.sort(function (a,b){
		return a-b;
	}));
	
	
	 var a = alNum.sort(function(a,b){return a-b;});
	$('#alignNumber').val(a);
	
	
	
	
}
function show(){
	alert('한번 눌러서 확인해봅시다');
}
function submit(){
	var id = $('#id').val();
	var pw = $('#pw').val();
	
	if(id==''){
		alert('아이디를 입력해 주세요')
		}else if(pw==''){
			alert('패스워드를 입력해주세요')
		}else{
			alert('확인되었습니다.'+id+','+pw)
			location.href='/'
		}
}
</script>


</html>
