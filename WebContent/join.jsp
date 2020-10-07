<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Transit by TEMPLATED</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/skel.min.js"></script>
	<script src="js/skel-layers.min.js"></script>
	<script src="js/init.js"></script>
	
	
</head>
<body style="text-align: center;">
	<div class="join">
		<h1>회원가입</h1>
		ID<input type="text" id="join1"><button onclick="IDcheck()">중복확인</button>
		<p id="idcheck"></p>
		PW<input type="password" id="join2">
		PW확인<input type="password" id="join3">
		전화번호<input type="text" id="join4">
		성별<input type="text" id="join5">
		<button onclick="join()">회원가입</button>
	</div>
	<% MemDAO dao=new MemDAO(); %>
	<script>
		var check="";
		function IDcheck(){
			<% ArrayList<String> list=dao.getIDList();%>
			var idlist=[];
			<% for(int i=0; i<list.size(); i++){%>
			idlist.push('<%= list.get(i) %>');
			<% } %>
			
			for(var i=0; i<idlist.length; i++){
				if($('#join1').val()==idlist[i]){
					$('#idcheck').html('사용 불가능한 아이디입니다.');
					return;
				}
			}
			$('#idcheck').html('사용 가능한 아이디입니다.');
			check=$('#join1').val();
		}
		
		function join(){
			if(check==""){
				alert("ID 중복확인을 해주세요.")
				return;
			}else if(check!=$('#join1').val()){
				alert("ID 중복확인을 다시 해주세요.")
				check="";
				return;
			}else if($('#join2').val()!=$('#join3').val()){
				alert("비밀번호와 확인된 비밀번호가 다릅니다.")
				return;
			}
			for(var i=1; i<=5; i++){
				if($('#join'+i).val()==""){
					alert("필수항목을 모두 입력해주세요.")
					return;
				}
			}
			window.location.href = 'joinService.jsp?id='+$('#join1').val()+
			'&pw='+$('#join2').val()+'&tel='+$('#join4').val()+
			'&sex='+$('#join5').val();
		}
	</script>
</body>
</html>