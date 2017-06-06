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
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javasctipt" src="<%=path %>/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>

		<script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
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
           <%-- function borrow(id,classroomName){
               var timeFrom = document.getElementById("timeFrom").value;
               var timeTo = document.getElementById("timeTo").value;
	                if(timeFrom == ""){
	                   alert("开始时间为空");
	                   return false;
	                   }
	               if(timeTo == ""){
	                   alert("结束时间为空");
	                   return false;
	                   } 
                   window.location.href="<%=path %>/borrowlogView.action?classroomId="+id;
               }
 --%>
           function borrow(id,classNo)
		    {
        	   var timeFrom = document.getElementById("timeFrom").value;
               var timeTo = document.getElementById("timeTo").value;
	                if(timeFrom == ""){
	                   alert("开始时间为空");
	                   return false;
	                   }
	               if(timeTo == ""){
	                   alert("结束时间为空");
	                   return false;
	                   } 
		        <%-- var url="<%=path %>/admin/borrow/borrowlogAdd.jsp?classroomId="+id+"&timeFrom='"+timeFrom+"'&timeTo='"+timeTo+"'"; --%>
		        <%-- var url="<%=path %>/admin/borrow/borrowlogAdd.jsp?classroomId=1&timeFrom=2016-02-03 13:19:42&timeTo=2016-02-17 13:19:36";
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:300});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","");
	            pop.build();
	            pop.show(); --%>
	            window.location.href="<%=path %>/admin/borrow/borrowlogAdd.jsp?classroomId="+id+"&timeFrom="+timeFrom+"&timeTo="+timeTo+"&classroomNo="+classNo;
		    }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="100%">
			<tr><td>空闲教室查询</td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			</table>
			<form action="<%=path%>/classroomBorrowMana.action">
				<table>
					<tr><td>教室编号</td><td><input type="text" name="classNo" value="${classNo}"/></td>
						<td>借用开始时间</td><td><input type="text" name="timeFrom" id="timeFrom" value="${timeFrom}" readonly="readonly" class="Wdate"  type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm:ss'})"/></td>
						<td>借用结束时间</td><td><input type="text" name="timeTo" id="timeTo" value="${timeTo}"  readonly="readonly" class="Wdate"  type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd HH:mm:ss'})"/></td>
						<td><input value="查询" type="submit"/></td>
					</tr>
					<tr></tr>
					<tr></tr>
					<tr></tr>
				</table>
			</form>
			<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="33" background="<%=path %>/img/tbg.gif">&nbsp;空闲教室&nbsp;</td>
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
						<c:if test="${sessionScope.userType eq '1' }">
							<a href="#" onclick="borrow(<s:property value="#obj.id"/>,<s:property value="#obj.classNo"/>)" class="pn-loperator">借用</a>&nbsp;&nbsp;
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
