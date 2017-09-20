<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery Easyui Demo</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/easyui/demo.css">
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=path%>/easyui/jquery.easyui.min.js"></script>
</head>
<body>
	<h2>Interactive Messager</h2>
	<p>Click on each button to display interactive message box.</p>
	<div style="margin:20px 0;">
		<a href="#" class="easyui-linkbutton" onclick="confirm1();">Confirm</a>
		<a href="#" class="easyui-linkbutton" onclick="prompt1()">Prompt</a>
	</div>
	<script>
		function confirm1(){
			$.messager.confirm('My Title', 'Are you confirm this?', function(r){
				if (r){
					alert('confirmed: '+r);
				}
			});
		}
		function prompt1(){
			$.messager.prompt('My Title', 'Please type something', function(r){
				if (r){
					alert('you type: '+r);
				}
			});
		}
	</script>
</body>
</html>