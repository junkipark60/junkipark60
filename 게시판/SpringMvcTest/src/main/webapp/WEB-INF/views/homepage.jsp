<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%-- <c:url var="bootstrap" value="/css/bootstrap.min.css" />
        <link href="${ bootstrap }" rel="stylesheet"> --%>
        <link rel="stylesheet" href="/css/bootstrap.min.css">
<title>Insert title here</title>
</head>

<body>

<!-- Background image -->

  <div
    class="p-5 text-center bg-image"
    style="
      background-image: url('https://blog.mozilla.org/firefox/files/2020/05/Zoom-background-2.jpg');
      
    "
  >
    <div class="mask" style="background-color: rgba(0, 0, 0, 0.6); height:800px;">
      <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-white">
          <h1 class="mb-3">Hello!</h1>
          <h4 class="mb-3">The time on the server is ${serverTime}.</h4>
          <a class="btn btn-outline-light btn-lg" href="/home" role="button"
            >리스트 보러가기</a
          >
        </div>
      </div>
    </div>
  </div>
  <!-- Background image -->

  


</body>
</html>

