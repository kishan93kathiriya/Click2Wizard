<ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>

              <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>
                
                <ul class="menu">
                  
                  <li class="active">
                    <a href="index.jsp">
                      <i class="fa fa-tachometer"></i> Dashboard
                    </a>
                  </li>

                  <li class="dropdown">
                    <a href="project.jsp" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-list"></i> Projects <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                    
	                    <c:forEach items="${sessionScope.list}" var="i">
						 	<li class="dropdown">
								<form action="<%=request.getContextPath()%>/Servlet" method="post" style="margin-bottom:0px">
									<input type="hidden" name="pro_name" value="${i.pro_name}">
									<input type="hidden" name="flag" value="go_pro">
									<button class="pro_name" type="submit">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                        			<!-- <i class="fa fa-caret-right"></i>  -->
		                        			${i.pro_name} 
		                        			<!-- <b class="fa fa-plus dropdown-plus"></b> -->
		                        		</a>
									</button>	
								</form>
							</li>
						</c:forEach>
                     
                     	
						
                      <!-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          <i class="fa fa-caret-right"></i> Project 1 <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        
                        <ul class="dropdown-menu">
	                      <li>
	                        <a href="pro1_t1_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 1
	                        </a>
	                      </li>
	                      <li>
	                        <a href="project1_table2_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 2
	                        </a>
	                      </li>
	                      <li>
	                        <a href="project1_table3_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 3
	                        </a>
	                      </li>
	                    </ul>
                      </li>
                      
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          <i class="fa fa-caret-right"></i> Project 2 <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
	                      <li>
	                        <a href="project2_table1_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 1
	                        </a>
	                      </li>
	                      <li>
	                        <a href="project2_table2_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 2
	                        </a>
	                      </li>
	                    </ul>
                      </li>
                      
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          <i class="fa fa-caret-right"></i> Project 3 <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
	                      <li>
	                        <a href="project3_table1_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 1
	                        </a>
	                      </li>
	                      <li>
	                        <a href="project3_table2_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 2
	                        </a>
	                      </li>
	                      <li>
	                        <a href="project3_table3_datasheet.jsp">
	                          <i class="fa fa-caret-right"></i> Table 3
	                        </a>
	                      </li>
	                    </ul>
                      </li> -->
                      
                    </ul>
                  </li>
               	</ul>
              </li>              
            
            </ul>
