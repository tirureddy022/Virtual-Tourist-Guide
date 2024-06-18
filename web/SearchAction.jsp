<%-- 
    Document   : GuideHome
    Created on : 3 Apr, 2021, 11:54:14 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
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
        
        String name=request.getParameter("name");
        %>
        
        <!-- Main -->
        <main>
            <!-- Welcome section -->
            <section class="tm-welcome">
                <center>
               <h4 style="float:right;">Tourist Name: <%=username%></h4>
                   <h3 style="float:left;">Welcome to 'Tourist Home'</h3>  
                <hr>
                
                <h3 style='margin-top: 100px;'>Search Results For "<%=name%>"</h3>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <table>
                 
                    
                    <table>
                   
                <%try{
                   ResultSet r1=Queries.getExecuteQuery("select * from landmark where name like '%"+name+"%'");
                   if(r1.next()){
                   String category=r1.getString("category");    
        Queries.getExecuteUpdate("insert into history values(null,'"+username+"','"+name+"','"+category+"',now(),'1')");
                   }
            ResultSet r=Queries.getExecuteQuery("select * from landmark where name like '%"+name+"%' or category like '%"+name+"%'");        
while(r.next()){               
%>
                       <tR>
                           <td><b>Name: </b><%=r.getString("name")%></td></tr>
                       <tr><td><b>Location:</b> <%=r.getString("address")%></td></tr>
                       <tr> <td><b>Image:</b> <image src="view.jsp?id=<%=r.getString("id")%>" width="250" height="250"/></td></tr>
                       <tr>  <td><b>Description:</b> <%=r.getString("description")%></td></tr>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                       <%
                   }
                }catch(Exception e){
                    out.println(e);
}%>
                
                </table>
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