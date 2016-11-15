<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
 /**
  * @Class Name : StudentRegister.jsp
  * @Description : Student Register 화면
  * @Modification Information
  * 
  * @author 1.201600001
  * @since 2016.11.14
  * @version 1.0
  * @see
  *  
  * Copyright (C) All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="text/javaScript" language="javascript" defer="defer">
<!--
/* 글 목록 화면 function */
function fn_egov_selectList() {
   	document.getElementById("detailForm").action = "<c:url value='/student/StudentList.do'/>";
   	document.getElementById("detailForm").submit();		
}

/* 글 등록 function */
function fn_egov_save() {	
	frm = document.getElementById("detailForm");

	/* TODO Validation기능 보완 */
	
  	frm.action = "<c:url value="/student/addStudent.do"/>";
    frm.submit();

}

// -->
</script>
</head>
<body>

<form:form commandName="studentVO" name="detailForm" id="detailForm" >
<div id="content_pop">
	<div id="table">
	<table width="100%" border="1" cellpadding="0" cellspacing="0" >
		<colgroup>
			<col width="150"/>
			<col width=""/>
		</colgroup>
			
		<tr>
			<th>number</th>
			<td>
				<form:input path="number" cssClass="txt"/>
				&nbsp;<form:errors path="number" />
			</td>
		</tr>	
		<tr>
			<th>name</th>
			<td>
				<form:input path="name" cssClass="txt"/>
				&nbsp;<form:errors path="name" />
			</td>
		</tr>	
	</table>
  </div>
	<div id="sysbtn">
		<ul>
			<li><span class="btn_blue_l"><a href="javascript:fn_egov_selectList();">List</a></span></li>
			<li><span class="btn_blue_l"><a href="javascript:fn_egov_save();"><c:out value="등록"/></a></span></li>
			<li><span class="btn_blue_l"><a href="javascript:document.detailForm.reset();">Reset</a></span></li></ul>
	</div>
</div>
</form:form>
</body>
</html>

