<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE>
<html>
<head>
    <title>Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	          	<form action="<%=request.getContextPath() %>/Servlet" method="post">
	        		<div class="pageheader">
	            		<h2><i class="fa fa-tachometer"></i> Projects
	            		<input class="search1 " type="text" name="pro_name" placeholder="Enter New Project Name... ">
		            	<button type="submit" class="btn btn-info btn-sm">Create</button>
		            	<input type="hidden" name="flag" value="cre_pro">
	          		</div>
	          	</form>
	          	<!-- /page header -->
          
         
          		<!-- content main container -->
          		<div class="main">

            		<!-- cards -->
		            <div class="row cards">
		     						
						
						
						<c:forEach items="${sessionScope.list}" var="i">
						<%-- <form action="<%=request.getContextPath()%>/pro_bord" method="post">
							<button>X</button>
							<input type="hidden" name="flag" value="delete">
						</form> --%>
						<form action="<%=request.getContextPath()%>/Servlet" method="post">
							<input type="hidden" name="pro_name" value="${i.pro_name}">
							<input type="hidden" name="flag" value="go_pro">
							<button class="col-md-3 block tile" type="submit">
								<div>
								  	<strong><h3>${i.pro_name}</h3></strong>
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