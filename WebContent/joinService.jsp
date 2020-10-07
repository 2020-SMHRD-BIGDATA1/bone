<%@page import="com.model.MemDAO"%>
<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setContentType("text/html; charset=UTF-8"); 
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String tel=request.getParameter("tel");
		String sex=request.getParameter("sex");
		MemDTO dto=new MemDTO(id, pw, tel, sex);
		MemDAO dao=new MemDAO();
		int cnt=dao.join(dto);
	%>
	<script>
		if(<%=cnt>0%>){
			opener.location.reload();
			window.close('joinService.jsp');
			/* window.location.href='Main.jsp'; */
		}	
		else{			
			alert("회원가입에 실패하였습니다.");	
			window.location.href='join.jsp';
		}
	</script>
</body>
</html>