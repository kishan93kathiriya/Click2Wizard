<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<c:forEach items="${sessionScope.list}" var="i">
						
						<form action="<%=request.getContextPath()%>/Servlet" method="post">
							<button class="col-md-3 block tile" type="submit">
								<div>
								  	<strong><h3>${i.tbl_name}</h3></strong>
								  	<strong>Size</strong>: 35.4 kb <br>
								  	<strong>No. of Tables</strong>: 24 
								</div>
							</button>	
						</form>
						</c:forEach>
						
</body>
</html>