<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Project1 Table1 Datasheet</title>
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
            	    <h2>
            			<strong>Project 1 </strong>
		            	<span>Table 1</span>
		            </h2>
		            <input class="search1" type="text" placeholder="Search... ">
		        </div>
		        <!-- /page header -->
		          
                <!-- content main container -->
      		    <div class="main">

		            <!-- Insert , structure ,import,export -->
		            <div class="row cards">
		            	
		            	<a href="#"><button type="button" class="btn btn-default  active">Datasheet</button></a>
		            	<a href="pro1_t1_structure.jsp"><button type="button" class="btn btn-default">Structure</button></a>
		            	<a href="pro1_t1_insert.jsp"><button type="button" class="btn btn-default">Insert</button></a>
		            	<a href="pro1_t1_import.jsp"><button type="button" class="btn btn-default">Import</button></a>
		            	<a href="pro1_t1_export.jsp"><button type="button" class="btn btn-default">Export</button></a>
		            	<a href="#" class="page-refresh"><button type="button" class="btn btn-default">Refresh</button></a>
		            
		            </div>
		            <!-- Insert , structure ,import,export -->
		  
          			<!-- Tables -->
            		<div class="row cards">
	         	  	
						<div class="tile-body no-vpadding">
			             		<div class="table-responsive table-1" >
			               		<table class="table table-custom table-sortable nomargin">
			                   		<thead class="center">
			     		                   <tr>
			       	                	   <th class="sortable sort-numeric sort-asc">ID</th>
			           	            	   <th class="sortable sort-alpha">Project</th>
			               	        	   <th class="sortable">Priority</th>
			                   	    	   <th class="sortable sort-amount">Status</th>
			                       		</tr>
			                     		</thead>
			                      		<tbody>
			                       		<tr>
			                         			<td>1</td>
			                         			<td>Graphic Layout for client</td>
			                         			<td>High priority</td>
			                          			<td>Good</td>
			                        		</tr>
			                        		<tr>
				                        	<td>2</td>
				                          	<td>Make website responsive</td>
				                          	<td>High priority</td>
			                          			<td>Good</td>
				                        </tr>
				                        <tr>
				                          	<td>3</td>
				                          	<td>Clean css/html/js code</td>
				                          	<td>High priority</td>
			                          			<td>Good</td>
				                        </tr>
				                        <tr>
				                          	<td>4</td>
				                          	<td>Database Optimization</td>
				                          	<td>High priority</td>
			                          			<td>Good</td>
				                        </tr>
				                        <tr>
				                        	<td>5</td>
				                        	<td>Database Migration</td>
				                        	<td>High priority</td>
			                          			<td>Good</td>
				                        </tr>
				                        <tr>
				                          	<td>6</td>
				                          	<td>Email server backup</td>
				                          	<td>High priority</td>
			                          			<td>Good</td>
				                        </tr>
			                      		</tbody>
			                    	</table>
			                  	</div>
			                </div>
					 
			           	</div>
			           	<!-- /cards -->
			           
			         </div>
			         <!-- /content container -->

		        </div>
        		<!-- Page content end -->
              
	        </div>
	        <!-- tab-content -->

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