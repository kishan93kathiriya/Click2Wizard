
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
    
    <script language="javascript">
    	var j=1;

    	function addRow(tableID)
		{
    		var k=0;
    		var table=document.getElementById(tableID);
		    var rowCount=table.rows.length;
		    
		    var row=table.insertRow(rowCount);
		    var colCount=table.rows[0].cells.length;
		
		    for(var i=0;i<colCount;i++)
		    {
		         var newcell=row.insertCell(i);
		         newcell.innerHTML=table.rows[1].cells[i].innerHTML;
		         switch(newcell.childNodes[0].type)    
		        { 
		         //   case"text":newcell.childNodes[0].value="";
		            case"text":newcell.childNodes[0].name="text"+j;
		            break;
		            
		           // case"checkbox":newcell.childNodes[0].checked=false;
		            case"checkbox":newcell.childNodes[0].name="ch"+j+k;
		            k++;
		            break;
		            
		            
		            case"select":newcell.childNodes[0].selectedIndex=0;
		            case"select":newcell.childNodes.name="select"+j;
					break;
		        }
		    }
		    j++;
		}
		
		function deleteRow(tableID)
		{
		    try
		    {
		        var table=document.getElementById(tableID);
		        var rowCount=table.rows.length;
		        for(var i=0;i<rowCount;i++)
		        {
		            var row=table.rows[i];
		            var chkbox=row.cells[0].childNodes[0];
		            if(null!=chkbox&&true==chkbox.checked)
		            {
		                if(rowCount<=1)
		                {
		                    alert("Cannot delete all the rows.");
		                    break;
		                }
		                table.deleteRow(i);
		                rowCount--;
		                i--;
		            }
		        }
		    }
		    catch(e)
		    {
		        alert(e);
		    }
		}
		
		
	</script>
    
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
	          
			<%	String s= (String)session.getAttribute("tbl_name");
				String pro_name= (String)session.getAttribute("p");	%>
				
		        <!-- page header -->
		        <div class="pageheader">
		     	    <h2>
	            		<strong><%out.print(pro_name);%></strong>
	            		<span><%out.print(s);%></span>
	            	</h2>
	           		<input class="search1" type="text" placeholder="Search... ">
	          	</div>
	          	<!-- /page header -->
          
          		<!-- content main container -->
          		<div class="main">

            
	    	        <!-- Insert , structure ,import,export -->
    		        <div class="row cards">
		            	
		            	<a href="pro1_t1_datasheet.jsp"><button type="button" class="btn btn-default">Datasheet</button></a>
		            	<a href="#"><button type="button" class="btn btn-default active">Structure</button></a>
		            	<a href=""><button type="button" class="btn btn-default">Insert</button></a>
		            	<a href="pro1_t1_import.jsp"><button type="button" class="btn btn-default">Import</button></a>
		            	<a href="pro1_t1_export.jsp"><button type="button" class="btn btn-default">Export</button></a>
		            	<a href="#" class="page-refresh"><button type="button" class="btn btn-default">Refresh</button></a>
		            
		            </div>
		            <!-- Insert , structure ,import,export -->
		            
		            <form action="<%=request.getContextPath() %>/cre_tbl_servlet" method="post">
		            	 
		            	<input type="hidden" name="pro_name" value="<%out.print(pro_name);%>">
	            		<input type="hidden" name="tbl_name" value="<%out.print(s);%>">
	            		<input type="hidden" name="flag" value="create">
	            		
	            		<!-- Tables -->
	            		<div class="row cards">
	         	  			<div class="tile-body no-vpadding">
			              		<div class="table-responsive table-1">
			                		<table id="dataTable" class="table table-custom table-sortable nomargin">
								        <thead>
			      		                   <tr>
			        	                	   <th class="sortable" style="width:80px">Action</th>
			            	            	   <th class="sortable sort-numeric sort-asc">Field Name</th>
			            	            	   <th class="sortable sort-alpha">Datatype</th>
			                	        	   <th class="sortable sort-alpha">Size</th>
			                	        	   <th class="sortable"style="width:50px;">PK</th>
			                    	    	   <th class="sortable sort-amount" style="width: 50px;">NN</th>
			                    	    	   <th class="sortable sort-amount" style="width: 50px;">AI</th>
			                        		</tr>
			                      		</thead>
								        <tbody>
								        <tr>
								            <td><input type="checkbox" name="ch00"></td>
								            <td><input type="text" name="text0"></td>
								            <td>
								                <select style="font-size:17px;" name="select0">
								                    <option value="1">INTEGER</option>
								                    <option value="2">CHAR</option>
								                    <option value="3">VARCHAR</option>
								                    <option value="4">TEXT</option>
								                    <option value="5">NUMERIC</option>
								                    <option value="6">DATE</option>
								                    <option value="7">FLOAT</option>
								                    <option value="8">TIME</option>
								                    <option value="9">BINARY</option>
								                    <option value="10">IMAGE</option>
								                    <option value="11">YEAR</option>
								                </select>
								            </td>
								            <td><input type="text" name="text2" placeholder="size" style="font-size:17px;"></td>
								            <td><input type="checkbox" name="ch01"></td>
								            <td><input type="checkbox" name="ch02"></td>
								            <td><input type="checkbox" name="ch03"></td>
								            
								        </tr>
								  		</tbody>
								    </table>
								    
								    <input type="button" value="Add Row" onclick="addRow('dataTable')">
								    <input type="button" value="Delete Row" onclick="deleteRow('dataTable')">
			                		
			                		
			                		<!-- <table class="table table-custom table-sortable nomargin">
			                    		<thead>
			      		                   <tr>
			        	                	   <th class="sortable sort-numeric sort-asc">Field Name</th>
			            	            	   <th class="sortable sort-alpha">Datatype</th>
			                	        	   <th class="sortable"style="width:50px;">PK</th>
			                    	    	   <th class="sortable sort-amount" style="width: 50px;">NN</th>
			                    	    	   <th class="sortable sort-amount" style="width: 50px;">AI</th>
			                        		</tr>
			                      		</thead>
			                       		<tbody>
			                        		<tr>
			                          			<td>Id</td>
			                          			<td><select name="filed1">
														<option value="int">Int</option>
														<option value="Varchar">Varchar</option>
														<option value="Numeric">Numeric</option>
														<option value="text">Text</option>
														<option value="Date">Date</option>
														<option value="float">Float</option>
													</select>
												</td>
			                          			<td><input type="checkbox" name="private_key"></td>
			                           			<td><input type="checkbox" name="not_null"></td>
			                           			<td><input type="checkbox" name="auto_incr"></td>
			                         		</tr>
			                         		<tr>
					                        	<td>Project</td>
					                          	<td><select name="filed2">
														<option value="int">Int</option>
														<option value="Varchar">Varchar</option>
														<option value="Numeric">Numeric</option>
														<option value="text">Text</option>
														<option value="Date">Date</option>
														<option value="float">Float</option>
													</select>
												</td>
					                          	<td><input type="checkbox" name="private_key"></td>
			                           			<td><input type="checkbox" name="not_null"></td>
			                           			<td><input type="checkbox" name="auto_incr"></td>
					                        </tr>
					                        <tr>
					                          	<td>Priority</td>
					                          	<td><select name="filed3">
														<option value="int">Int</option>
														<option value="Varchar">Varchar</option>
														<option value="Numeric">Numeric</option>
														<option value="text">Text</option>
														<option value="Date">Date</option>
														<option value="float">Float</option>
													</select>
												</td>
					                          	<td><input type="checkbox" name="private_key"></td>
			                           			<td><input type="checkbox" name="not_null"></td>
			                           			<td><input type="checkbox" name="auto_incr"></td>
					                        </tr>
					                        <tr>
					                          	<td>Status</td>
					                          	<td><select name="filed4">
														<option value="int">Int</option>
														<option value="Varchar">Varchar</option>
														<option value="Numeric">Numeric</option>
														<option value="text">Text</option>
														<option value="Date">Date</option>
														<option value="float">Float</option>
													</select>
												</td>
					                          	<td><input type="checkbox" name="private_key"></td>
			                           			<td><input type="checkbox" name="not_null"></td>
			                           			<td><input type="checkbox" name="auto_incr"></td>
					                        </tr>
			                       		</tbody>
			                     	</table> -->
			                   	</div>
			                </div>
						 	<!-- End of table -->
	          			</div>
				        <!-- /content container -->
						<button type="submit" class="btn btn-info btn-sm">Submit</button>
					</form>
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