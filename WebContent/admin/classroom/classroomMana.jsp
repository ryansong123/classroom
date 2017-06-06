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
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		 
        <script language="javascript">
           function del(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/classroomDel.action?id="+id;
               }
           }
           function view(id)
           {
                   window.location.href="<%=path %>/borrowlogView.action?classroomId="+id;
           }
           function classroomAdd()
           {
               window.location.href="<%=path %>/admin/classroom/classroomAdd.jsp";
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path%>/classroomMana.action">
				<table>
					<tr><td>教室编号</td><td><input type="text" name="classNo" value="${classNo}"/></td><td><input value="查询" type="submit"/></td></tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
				</table>
			</form>
			<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="33" background="<%=path %>/img/tbg.gif">&nbsp;教室管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td  >教室编号</td>
					<td  >操作</td>
		        </tr>	
				<s:iterator value="#request.classroomList" id="obj">
				<tr align='center' bgcolor="#FFFFFF"  height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#obj.classNo"/>
					</td>
				
					<td  bgcolor="#FFFFFF" align="center">
						<c:if test="${sessionScope.userType eq '0' }">
							<a href="#" onclick="del(<s:property value="#obj.id"/>)" class="pn-loperator">删除</a>&nbsp;&nbsp;
						</c:if>
						<a href="#" onclick="view(<s:property value="#obj.id"/>)" class="pn-loperator">借用记录</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			<c:if test="${sessionScope.userType eq '0' }">
				<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
				  <tr>
				    <td>
				      <input type="button" value="添加" style="width: 80px;" onclick="classroomAdd()" />
				    </td>
				  </tr>
			    </table>
		    </c:if>
	</body>
</html>
