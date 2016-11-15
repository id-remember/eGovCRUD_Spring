<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	/**
	 * @Class Name : StudentList.jsp
	 * @Description : Student List 화면
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
</head>
<body>
	<form:form commandName="searchVO" name="listForm" id="listForm"
		method="post">
		<input type="hidden" name="number" />
		<div id="content_pop">
			<!-- List -->
			<div id="table">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<colgroup>
						<col />
						<col />
					</colgroup>
					<c:forEach var="result" items="${resultList}" varStatus="status">
						<tr>
							<td align="center" class="listtd"><c:out
									value="${result.number}" /></a>&nbsp;</td>
							<td align="center" class="listtd"><c:out
									value="${result.name}" />&nbsp;</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!-- /List -->
		</div>
	</form:form>
</body>
</html>
