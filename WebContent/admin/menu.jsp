<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'menu.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/css/base.css" type="text/css" />
	<link rel="stylesheet" href="<%=path %>/css/menu.css" type="text/css" />
	<style type="text/css">
	    div {
			padding:0px;
			margin:0px;
		}
		
		body {
		 scrollbar-base-color:#207697;
		 scrollbar-arrow-color:#FFFFFF;
		 scrollbar-shadow-color:#c1ea8b;
		 padding:0px;
		 margin:auto;
		 text-align:center;
		 background-color:#207697;
		}
		
		dl.bitem {
			width:148px;
			margin:0px 0px 5px 4px;
		}
		
		dl.bitem dt {
		  background:url(<%=path %>/img/menubg.gif);
		  height:26px;
		  line-height:26px;
		  text-align:center;
		  cursor:pointer;
		}
		
		dl.bitem dd {
		  padding:3px 3px 3px 3px;
		  background-color:#fff;
		}
		
		.fllct
		{
			float:left;
			
			width:90px;
		}
		
		.flrct
		{
			padding-top:3px;
			float:left;
		}
		
		div.items
		{
			line-height:22px;
			background:url(<%=path %>/img/arr4.gif) no-repeat 10px 9px;
		}
		
		span.items
		{
			padding:10px 0px 10px 22px;
			background:url(<%=path %>/img/arr4.gif) no-repeat 10px 12px;
		}
		
		ul {
		  padding-top:3px;
		}
		
		li {
		  height:22px;
		}
		
		.sitemu li {
			padding:0px 0px 0px 22px;
			line-height:24px;
			background:url(<%=path %>/img/arr4.gif) no-repeat 10px 9px;
		}
	</style>
	<script language='javascript'>var curopenItem = '1';</script>
	<script language="javascript" type="text/javascript" src="<%=path %>/js/menu.js"></script>
	<base target="main" />
  </head>
  
  <body target="main">
	<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
	  <tr>
	    <td style='padding-left:3px;padding-top:8px' valign="top">
	      <c:if test="${sessionScope.userType==0}">
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>用户信息管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/userMana.action' target='main'>用户信息管理</a> </li>
	            <li><a href='<%=path %>/admin/user/userAdd.jsp' target='main'>用户信息录入</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>教室信息管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/classroomMana.action' target='main'>教室信息管理</a> </li>
	            <li><a href='<%=path %>/admin/classroom/classroomAdd.jsp' target='main'>教室信息录入</a> </li>
	          </ul>
	        </dd>
	      </dl>
	       <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>教室借用管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/borrowlogMana.action' target='main'>教室借用审核</a> </li>
	            <%-- <li><a href='<%=path %>/classroomBorrowMana.action' target='main'>教室借用</a> </li> --%>
	          </ul>
	        </dd>
	      </dl>
	       <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>密码管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admintById.action?userId=${sessionScope.admin.userId}' target='main'>修改密码</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      </c:if>
	      <c:if test="${sessionScope.userType==1}">
		      <dl class='bitem'>
		        <dt onClick='showHide("items1_1")'><b>教室信息管理</b></dt>
		        <dd style='display:block' class='sitem' id='items1_1'>
		          <ul class='sitemu'>
		            <li><a href='<%=path %>/classroomMana.action' target='main'>教室信息管理</a> </li>
		          </ul>
		        </dd>
		      </dl>
		      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>教室借用管理</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/borrowlogMana.action?userId=${sessionScope.yuangong.id}' target='main'>我的借用情记录</a> </li>
	            <li><a href='<%=path %>/classroomBorrowMana.action' target='main'>教室借用</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      </c:if>
		</td>
	  </tr>
	</table>
  </body>
</html>
