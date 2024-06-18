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
                                <a class="nav-link tm-nav-link" href="GuideHome.jsp">Home <span class="sr-only">(current)</span></a>
                              </li>
                              <li class="nav-item ">
                                <a class="nav-link tm-nav-link" href="ViewTourists.jsp">Tourists</a>
                              </li>
                               <li class="nav-item ">
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
                <h3>Welcome to 'Guide Home'</h3>
                     </center>
                    
                        <p align="justify" style="margin-top:100px;">Goa is a major tourist destination which pulls thousands of tourists every year. Goa is known for its beautiful beaches and hospitality. There are a number of monuments and landmarks depicting the cultural, history and development of Goa. Due to high inflow of domestic as well as international tourists, the manpower required to guide the tourist on these landmark is not sufficient and sometimes lack in the information that need to be given and highlighted to the tourist. Hence we propose the problem of developing a mobile application which renders information about the monument or landmark just by taking their live pictures as inputs. In other word, the application should allow the user to click a photograph and based on the picture it should display information about the monument/landmark. The application should also notify the user about such monuments/landmarks in the vicinity. The app should also allow the user to give their inputs about the object and also add to knowledge creation about the monuments/landmark. The app should also be able to keep statics about the number of users referring to the monument/landmark along with details of the users.</p>        
                   
                  
               
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