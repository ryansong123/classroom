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
           function userDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?id="+id;
               }
           }
           function userAdd()
           {
               window.location.href="<%=path %>/admin/user/userAdd.jsp";
           }
           
            function userQuanxian(id)
		    {
		        var url="<%=path %>/admin/user/userQuanxian.jsp?id="+id;
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","");
	            pop.build();
	            pop.show();
		    }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="33" background="<%=path %>/img/tbg.gif">&nbsp;用户管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">姓名</td>
					<td width="10%">性别</td>
					<td width="10%">年龄</td>
					<td width="10%">住址</td>
					<td width="10%">联系方式</td>
					<td width="10%">权限</td>
					<td width="10%">登陆账号</td>
					<td width="10%">登陆密码</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.userList" id="user">
				<tr align='center' bgcolor="#FFFFFF"  height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.name"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.sex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.age"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.address"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.tel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					  <c:if test="${ user.quanxian eq ''}">
					            <a style="color: red" href="#" onclick="userQuanxian(<s:property value="#user.id"/>)">分配权限</a>
					    </c:if>
					   <c:if test="${ user.quanxian eq '1'}">
					         已分配
					    </c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.loginname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.loginpw"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="userDel(<s:property value="#user.id"/>)" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加" style="width: 80px;" onclick="userAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
