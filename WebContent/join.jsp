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
		<h1>ȸ������</h1>
		ID<input type="text" id="join1"><button onclick="IDcheck()">�ߺ�Ȯ��</button>
		<p id="idcheck"></p>
		PW<input type="password" id="join2">
		PWȮ��<input type="password" id="join3">
		��ȭ��ȣ<input type="text" id="join4">
		����<input type="text" id="join5">
		<button onclick="join()">ȸ������</button>
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
					$('#idcheck').html('��� �Ұ����� ���̵��Դϴ�.');
					return;
				}
			}
			$('#idcheck').html('��� ������ ���̵��Դϴ�.');
			check=$('#join1').val();
		}
		
		function join(){
			if(check==""){
				alert("ID �ߺ�Ȯ���� ���ּ���.")
				return;
			}else if(check!=$('#join1').val()){
				alert("ID �ߺ�Ȯ���� �ٽ� ���ּ���.")
				check="";
				return;
			}else if($('#join2').val()!=$('#join3').val()){
				alert("��й�ȣ�� Ȯ�ε� ��й�ȣ�� �ٸ��ϴ�.")
				return;
			}
			for(var i=1; i<=5; i++){
				if($('#join'+i).val()==""){
					alert("�ʼ��׸��� ��� �Է����ּ���.")
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