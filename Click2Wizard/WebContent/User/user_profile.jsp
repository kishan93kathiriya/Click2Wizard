<% String user_name=(String)session.getAttribute("username"); %>
<ul class="nav navbar-nav quick-actions">
				
				<li class="dropdown divided user" id="current-user">
                <div class="profile-photo">
                  <img src="assets/images/profile-photo.jpg" alt />
                </div> 
                <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                  <%out.println(user_name);%><i class="fa fa-caret-down"></i>
                </a>
                
                <ul class="dropdown-menu arrow settings">

                  <li>
                    
                    <h3>Backgrounds:</h3>
                    <ul id="color-schemes">
                      <li><a href="#" class="bg-1"></a></li>
                      <li><a href="#" class="bg-2"></a></li>
                      <li><a href="#" class="bg-3"></a></li>
                      <li><a href="#" class="bg-4"></a></li>
                      <li><a href="#" class="bg-5"></a></li>
                      <li><a href="#" class="bg-6"></a></li>
                      <li><a href="#" class="bg-7"></a></li>
                      <li><a href="#" class="bg-8"></a></li>
                      <li class="title">Solid Backgrounds:</li>
                      <li><a href="#" class="solid-bg-1"></a></li>
                      <li><a href="#" class="solid-bg-2"></a></li>
                      <li><a href="#" class="solid-bg-3"></a></li>
                      <li><a href="#" class="solid-bg-4"></a></li>
                      <li><a href="#" class="solid-bg-5"></a></li>
                      <li><a href="#" class="solid-bg-6"></a></li>
                    </ul>


                  </li>

                  <li class="divider"></li>



                  <li>

                    <div class="form-group videobg-check">
                      <label class="col-xs-8 control-label">Video BG</label>
                      <div class="col-xs-4 control-label">
                        <div class="onoffswitch greensea small">
                          <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="videobg-check">
                          <label class="onoffswitch-label" for="videobg-check">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                          </label>
                        </div>
                      </div>
                    </div>

                    <ul id="videobackgrounds">
                      <li class="title">Choose type:</li>
                      <li><a href="#" class="video-bg-1"></a></li>
                      <li><a href="#" class="video-bg-2"></a></li>
                      <li><a href="#" class="video-bg-3"></a></li>
                      <li><a href="#" class="video-bg-4"></a></li>
                      <li><a href="#" class="video-bg-5"></a></li>
                      <li><a href="#" class="video-bg-6"></a></li>
                      <li><a href="#" class="video-bg-7"></a></li>
                      <li><a href="#" class="video-bg-8"></a></li>
                      <li><a href="#" class="video-bg-9"></a></li>
                      <li><a href="#" class="video-bg-10"></a></li>
                    </ul>

                  </li>


                  <li class="divider"></li>

                  <li>
                    <a href="#"><i class="fa fa-user"></i> Profile</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                  </li>

                  <li class="divider"></li>

					<form action="<%=request.getContextPath() %>/cre_tbl_servlet" method="post">
	                  <li>
	                  	
	                    	<!-- <a href="#"><i class="fa fa-power-off"></i> Logout</a> -->
	                    	<button type="submit" class="fa fa-power-off" style="background: white;border: none;"> Logout</button>
	                    	<input type="hidden" name="flag" value="logout">
	                  	
	                  </li>
                  	</form>
                </ul>
              </li>

            </ul>
