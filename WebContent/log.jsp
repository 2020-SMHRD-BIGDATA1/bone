<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<style>
	.a{
		margin-left: 100px;
		margin-top: 50px;
	}
	#c {
		width: 300px;
	}
</style>
<body class="is-preload">
	<form action="loginservice" method="post" class="a">
	ID<input id="c" type="text" name="ID"><br> 
	PW<input id="c" type="password" name="PW"><br> 
	<input type="submit" value="�α���">
	<a href="join.jsp" class="button special">ȸ�� ����</a>
	</form>

</body>
</html>