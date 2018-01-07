<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function goto_check_order(){
	window.location.href="http://localhost:8080/client/goto_check_order.do";
}
function change_shfxz(flag,id){
	var shfxz="";
	if(flag){
		/* 设置选中状态 */
		shfxz=1;
	}else{
		shfxz=0;
	}
	$.post("change_shfxz.do",{shfxz:shfxz,id:id},function(data){
		$("#cartlist").html(data);
	});
}
</script>
<title>硅谷商城</title>
</head>
<body>
<center>
<div id="cartlist">
	<jsp:include page="cart_list_inner.jsp"></jsp:include>
</div>

	<button onclick="goto_check_order()">结算</button>
</center>
</body>
</html>