<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="javascript">
           function del(id,status)
           {
                   window.location.href="<%=path %>/borrowlogUpdate.action?id="+id+"&status="+status;
           } 
                
       </script>
	</head>
		
	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="33" background="<%=path %>/img/tbg.gif">&nbsp;用户管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td  >教室编号</td>
					<td  >借用状态</td>
					<td  >借用人</td>
					<td  >用途</td>
					<td  >借用开始时间</td>
					<td  >借用结束时间</td>
					<c:if test="${sessionScope.userType==0}">
					<td  >操作</td>
					</c:if>
		        </tr>	
				<c:forEach items="${request.borrowList }" var="obj">
					<tr>
					<td bgcolor="#FFFFFF" align="center">
						${obj.classroomNo}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					<c:if test="${obj.status eq '0'}">申请中</c:if>
					<c:if test="${obj.status eq '1'}">已批复</c:if>
					<c:if test="${obj.status eq '2'}">未通过</c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">${obj.userName}</td>
					<td bgcolor="#FFFFFF" align="center">${obj.yongTu}</td>
					<td bgcolor="#FFFFFF" align="center">
						${obj.timeFrom}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${obj.timeTo}
					</td>
					<td  bgcolor="#FFFFFF" align="center">	
					<c:if test="${sessionScope.userType==0 && obj.status eq '0'}">
						<a href="#" onclick="del(${obj.id},1)"  class="pn-loperator">同意</a>
						<a href="#" onclick="del(${obj.id},2)"  class="pn-loperator">驳回</a>
					</c:if>	
					</td>		
					</tr>
				</c:forEach>
			</table>
		
	</body>
</html>
