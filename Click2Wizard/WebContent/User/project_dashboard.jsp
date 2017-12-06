<%@page import="project.pro_bord_servlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%String pro_name=(String)session.getAttribute("p");
   
    
		System.out.println(pro_name+"  Pro1.jsp");
		%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>

<head>
    <title><%out.println(pro_name);%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8" />

    <!-- All css files -->
    <%@ include file="z_css.jsp" %>
    <!-- All css files end -->
    
  </head>

<body class="bg-1">

	
	<!-- Preloader -->
    <div class="mask">
    	<div id="loader"></div>
    </div>
    <!--/Preloader -->



    <!-- Wrap all page content here -->
	<div id="wrap">


    	<!-- Make page fluid -->
    	<div class="row">


	        <!-- Fixed navbar -->
	        <%@ include file="header.jsp" %>
	        <!-- Fixed navbar end -->
	    
	        <!-- Page content -->
	        <div id="content" class="col-md-12">
	          	
	          	
	          	<!-- page header -->
	          	<div class="pageheader">
		        			        
			        <form action="<%=request.getContextPath() %>/cre_tbl_servlet" method="post">
			        	<h2><strong><%out.println(pro_name);%></strong></h2>
				        
			        	<input class="search1" type="text" name="tbl_name" placeholder="Enter New Table Name... ">
			        	
			        	<input type="hidden" name="flag" value="create">
			        	
			            
			            <input type="hidden" name="pro_name" value="<%out.print(pro_name);%>">
			            <button type="submit" class="btn btn-info btn-sm">Create</button>
			            
			            <button class="btn btn-default btn-sm">Import Table</button>
				    	<button class="btn btn-default btn-sm">Export Project</button>
			    	</form>
			    	
			    	
		        </div>
		        <!-- /page header -->
          
          
          		<!-- content main container -->
          		<div class="main">

            		<!-- cards -->
		            <div class="row cards">
						
						<c:forEach items="${sessionScope.list}" var="i">
					
 						<form action="<%=request.getContextPath()%>/Servlet" method="post">
 							<input type="hidden" name="tbl_name" value="${i.tbl_name}">
 							<input type="hidden" name="flag" value="go_tbl">
							<button class="col-md-3 block tile" type="submit">
								<div>
								  	<strong><h3>${i.tbl_name}</h3></strong>${i.tbl_name}
								  	<strong>Size</strong>: 35.4 kb <br>
								  	<strong>No. of Tables</strong>: 24 
								</div>
 							</button>	
 						</form>
						</c:forEach>
						
            		</div>
            		<!-- /cards -->
            
          		</div>
          		<!-- /content container -->

	        </div>
	        <!-- Page content end -->
   	    
      	</div>
	    <!-- Make page fluid-->

    </div>
    <!-- Wrap all page content end -->



    <section class="videocontent" id="video"></section>



    <!-- All script files -->
    <%@ include file="z_script.jsp" %>
    <!-- All script files end -->

    
</body>

</html>