<%-- 
    Document   : GuideHome
    Created on : 3 Apr, 2021, 11:54:14 AM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Virtual Tourist Guide</title>
    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet" /> 
    <link href="css/all.min.css" rel="stylesheet" /> 
    <link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/templatemo-new-vision.css" rel="stylesheet" />

</head>
<body>
    <!-- Page Header -->
    <div class="container-fluid">
        <div class="tm-site-header">
            <div class="row">
                <div class="col-12 tm-site-header-col">
                    <div class="tm-site-header-left">
                        <i class="far fa-2x  tm-site-icon"></i>
                        <h1 class="tm-site-name">Virtual Tourist Guide</h1>
                    </div>
                    <div class="tm-site-header-right tm-menu-container-outer">
                        
                        <!--Navbar-->
                        <nav class="navbar navbar-expand-lg">
                        
                          <!-- Collapse button -->
                          <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
                            aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span class="dark-blue-text"><i
                                class="fas fa-bars fa-1x"></i></span></button>
                        
                          <!-- Collapsible content -->
                          <div class="collapse navbar-collapse tm-nav" id="navbarSupportedContent1">
                        
                            <!-- Links -->
                            <ul class="navbar-nav mr-auto">
                              <li class="nav-item active ">
                                <a class="nav-link tm-nav-link" href="UserHome.jsp">Home <span class="sr-only">(current)</span></a>
                              </li>
                              <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="Viewprofile.jsp">View Profile</a>
                              </li>
                              
                              <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="Users.html">Logout</a>
                              </li>
                              
                            </ul>
                            <!-- Links -->
                        
                          </div>
                          <!-- Collapsible content -->
                        
                        </nav>
                        <!--/.Navbar-->
                    </div>
                </div>
            </div>
        </div>
        <%
         String id=(String)session.getAttribute("id");
       String username=(String)session.getAttribute("username");
        String email=(String)session.getAttribute("email");
        
        
        %>
        
        <!-- Main -->
        <main>
            <!-- Welcome section -->
            <section class="tm-welcome">
                <center>
               
                <h4 style="float:right;">Tourist Name: <%=username%></h4>
                   <h3 style="float:left;">Welcome to 'Tourist Home'</h3>  
                <hr>
                
                
                <h4 style="margin-top:100px;">** Search Monuments Here **</h4>
                
                     <div class="col-lg-6 mb-5 tm-contact-box">
                      <div class="tm-contact-form-wrap">
                        <form id="contact-form" action="SearchAction.jsp" method="post" class="tm-contact-form">
                            <div class="form-group">
                              <input type="text" id="contact_name" name="name" class="form-control rounded-0 border-top-0 border-right-0 border-left-0" placeholder="Temples/Beaches/Restaurants/Hotel..etc" required="" />
                            </div>
                          
                    
                           
                    
                            <div class="form-group mb-0" style="float:left;">
                              <button type="submit" class="btn rounded-0 d-block ml-auto tm-btn-primary">
                               Search 
                              </button>
                                 
                            </div>
                            
                          </form>
                      </div>                    
                    </div>
                     </center>
               
                <div class="row pb-5">
                  <div class="mapouter">
                      <div class="gmap_canvas">

                              </div>
                  </div>
                </div>
               
            </section>
            
            <footer>
                Copyright &copy; Virtual Tourist Guide
            </footer>
            
        </main>
    </div>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>