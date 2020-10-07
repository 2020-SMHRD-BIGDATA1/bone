<%@page import="com.model.MemDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	ID<input type="text" id="join1"><button onclick="IDcheck()">중복확인</button>
	<p id="idcheck" class="a"></p>
	
	<button onclick="id()">ㅁ</button>
	<% MemDAO dao=new MemDAO(); %>
	<script>
		function id(){
			$('.a').html("가나")
		}
		function IDcheck(){
			<% ArrayList<String> list=dao.getIDList();%>
			var idlist=[];
		<%  for(int i=0; i<list.size(); i++){%>
			idlist.push('<%= list.get(i) %>');
			<% } %>
			
			var join1 = document.getElementById("join1").value;
			alert(idlist)
			alert(join1)
			for(var i=0; i<idlist.length; i++){
				$('#idcheck').html('사용 불가능한 아이디입니다.');
				if(join1==idlist[i]){
					$('#idcheck').html('사용 불가능한 아이디입니다.');
					return;
				}
			}


			
			
			
			
			
			}
		
		
		
	</script>
</body>
</html>