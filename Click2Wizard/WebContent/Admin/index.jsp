<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
<link rel="stylesheet" href="assets/js/vendor/modals/css/component.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.pack.js"></script>
<link rel="stylesheet" href="css/modality.css">
    <!-- All css files -->
    <%@ include file="z_css.jsp" %>
    <!-- All css files end -->
        <script type="text/javascript">
          function passValue(x) {
          		var n = x.toString();
                document.getElementById("ppid").value=document.getElementById("id"+n).innerHTML;
                document.getElementById("ppfn").value=document.getElementById("fn"+n).innerHTML;
                document.getElementById("ppln").value=document.getElementById("ln"+n).innerHTML;
                document.getElementById("ppemail").value=document.getElementById("email"+n).innerHTML;
                document.getElementById("pppw").value=document.getElementById("pw"+n).innerHTML;
                document.getElementById("pppn").value=document.getElementById("pn"+n).innerHTML;
                document.getElementById("ppcn").value=document.getElementById("cn"+n).innerHTML;
              	document.getElementById("ppusertype").value=document.getElementById("usertype"+n).innerHTML;
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
	        
	        
	  <!-- Custom Models -->
			 <!-- Custom Modals -->
			 <div class="md-modal md-effect-16 md-greensea colorize-overlay" id="modal-16">
      <div class="md-content" id="#yourModalId">
        <h4>Edit User Details<a style="margin-left: 25%;text-align: right;" class="md-close btn btn-danger"><i class="fa fa-times-circle"></i></a></h4>
        
        <div>
        <!-- Start PopUp Menu -->    
        
	<form action="<%=request.getContextPath() %>/popupServlet" method="post">
                  <div class="tile-body">
                    
                    <div class="row">
                    
                    	<input name="ppid" type="hidden"  id="ppid" >
               
                      <div class="form-group col-sm-4">
                        <label>First Name</label>
                        <input  type="text" class="form-control" id="ppfn" name="ppfn"/>
                      </div>
                      <div class="form-group col-sm-4">
                        <label>Last Name</label>
                        <input type="text" class="form-control" id="ppln" name="ppln"/>
                      </div>
                      <div class="form-group col-sm-4">
                        <label>Email</label>
                        <input type="text" class="form-control" id="ppemail" name="ppemail"/>
                      </div>

                    </div>

                    <div class="row">

                      <div class="form-group col-sm-4">
                        <label>Password</label>
                        <input type="text" class="form-control" id="pppw" name="pppw"/>
                      </div>
                      <div class="form-group col-sm-4">
                        <label>Phone No.</label>
                        <input type="text" class="form-control" id="pppn" name="pppn"/>
                      </div>
                      <div class="form-group col-sm-4">
                        <label>Country</label>
                        <input type="text" class="form-control" id="ppcn" name="ppcn"/>
                      </div>

                    </div>

		 
		
			      <button type="submit" id="popupdate"  name="flag" value="update"  style="float: left;margin-left: 320px" class="btn btn-danger">
			      	
			      	Update
			      </button>
			      <button type="submit" id="popdelete"  name="flag" style="float: left;" value="delete" class="btn btn-danger">
			      	
			      	Delete
			      </button>
					<!-- <script type="text/javascript" >
					    
					    function update(){
							
					    	document.getElementById("flag1").value="update";
					    }
					    function delete1(){
							
					    	document.getElementById("flag1").value="delete";
					    } -->
					    
					    
					    </script>
				

                  </div>
                  <!-- /tile body -->
               </form>

 
 
 

   <!-- /End PopUp Menu -->

        </div>
      </div>
    </div>
    
    <div class="md-overlay"></div><!-- the overlay element -->
	  <!-- /Custom Modals -->

       

	          <!-- page header -->
	          <div class="pageheader">
	            <h2><i class="fa fa-cubes"></i> Click 2 Wizard
	            <span>Dynamic database system</span></h2>
	          </div>
	          <!-- /page header -->
	          
	          
	          <div class="col-md-12">
                
                
                <!-- tile -->
                <section class="tile">


                  <!-- tile header -->
                  <div class="tile-header">
                    <h1><strong>Database Users</strong></h1>
                    <div class="controls">
                      <a href="#" class="minimize"><i class="fa fa-chevron-down"></i></a>
                      <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                      <a href="#" class="remove"><i class="fa fa-times"></i></a>
                    </div>
                  </div>
                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body nopadding">
                    <table class="table" id="example">
                      <thead>
                        <tr>
                        <th>Id</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Email-Address</th>
                          <th>Password</th>
                          <th>Phone No.</th>
                          <th>Country</th>
                          <th>UserType</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>

			<c:forEach items="${sessionScope.list}" var="i" varStatus="count"> 
            	
                        <tr>
                          <td id="id${count.index}">${i.id}</td>
                          <td id="fn${count.index}">${i.fn}</td>
                          <td id="ln${count.index}">${i.ln}</td>
                          <td id="email${count.index}">${i.email}</td>
                          <td id="pw${count.index}">${i.pw}</td>
                          <td id="pn${count.index}">${i.pn}</td>
                          <td id="cn${count.index}">${i.cn}</td>
                          <td id="usertype${count.index}">${i.usertype}</td>
                          <td>
                         
                      <!-- Edit Button -->    <button class="btn btn-success bottommargin md-trigger" data-modal="modal-16"  onclick="passValue(${count.index})">

                      								<i class="fa fa-pencil-square-o" ></i>
                      							</button>
                  
	                       </td>
                        </tr>
         </c:forEach>
                          </tbody>
                    </table>

                  </div>
                  <!-- /tile body -->

                </section>
                <!-- /tile -->

              </div>
              <!-- /col 12 -->
	
	        </div>
	        <!-- Page content end -->

      </div>
      <!-- Make page fluid-->

    </div>
    <!-- Wrap all page content end -->


<!-- All script files -->
    <%@ include file="z_script.jsp" %>
        <script src="../../code.jquery.com/jquery.js"></script>
   
    <script src="assets/js/vendor/modals/classie.js"></script>
    <script src="assets/js/vendor/modals/modalEffects.js"></script>
     <script src="js/modality.min.js"></script>
    
    <script src="assets/js/minimal.min.js"></script>
    
    
  </body>

</html>