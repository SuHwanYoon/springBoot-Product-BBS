<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Product List</h2>
Number of registered products:${fn:length(list) }<!-- need table  -->
<table width="100%">
<tr>
	<c:forEach var="row" items="${list }" varStatus="vs">
		<td style="width:20%; word-break:break-word; vertical-align:botton;">
			<c:choose>
				<c:when test="${row.filename != '-' }">
					<img alt="" width="100px" height="100px" src="/resources/images/${row.filename }">
				</c:when>
				<c:otherwise>
					[Product image not registered]<br/>
				</c:otherwise>
			</c:choose>
			Product Name:${row.product_name }<br/>
			Price:<fmt:formatNumber value="${row.price }" pattern="#.####"/>yen
		</td>
		<c:if test="${vs.count mod 5==0 }">
			</tr><tr>
		</c:if>
	</c:forEach>
</tr>
</table>
</body>
</html>