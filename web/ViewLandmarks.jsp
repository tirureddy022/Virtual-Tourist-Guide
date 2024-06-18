<%-- 
    Document   : GuideHome
    Created on : 3 Apr, 2021, 11:54:14 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
     <link href="table.css" rel="stylesheet" />
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
                              <li class="nav-item  ">
                                <a class="nav-link tm-nav-link" href="GuideHome.jsp">Home <span class="sr-only">(current)</span></a>
                              </li>
                              <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="ViewTourists.jsp">Tourists</a>
                              </li>
                               <li class="nav-item active">
                                <a class="nav-link tm-nav-link" href="ViewLandmarks.jsp">Add Landmarks</a>
                              </li>
                               <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="Landmarks.jsp">Landmarks</a>
                              </li>
                                <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="T_History.jsp">Tourist History</a>
                              </li>
                              <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="Guide.html">Logout</a>
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
        
        
        <!-- Main -->
        <main>
            <!-- Welcome section -->
            <section class="tm-welcome">
                <center>
                <h3 style='margin-top: 100px;'>Add  Landmark Here</h3>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <form action="UploadMark" method="post" enctype="multipart/form-data">
                 <table>
                       <tr>
                           <th>Select Category</th><td><select name='category' required="">
                                   <option></option>
                                     <option value="Temples">Temples</option>
                                     <option value="Beaches">Beaches</option>
                                     <option value="Hotels">Hotels</option>
                                      <option value="Restaurants">Restaurants</option>
                               </select></tD>
                     </tr>
                     <tr>
                         <th>Landmark Name</th><td><input type='text' name='landmark' required=''></tD>
                     </tr>
                     <tr>
                         <th>Landmark Location</th><td><input type='text' name='address' required=''></tD>
                     </tr>
                        <tr>
                         <th>Landmark Description</th><td><textarea cols='50' rows='10' name='description' required=''></textarea></tD>
                     </tr>
                       <tr>
                         <th>Landmark Image</th><td><input type='file' name='image' required=''></tD>
                     </tr>
                      <tr>
                         <th></th><td><input type='submit' value='Upload'></tD>
                     </tr>
                </table>
                </form>
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