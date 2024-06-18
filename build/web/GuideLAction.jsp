<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("username");
    String pwd=request.getParameter("password");
    
    String query="select * from guide where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
     

     
%>
      <script type='text/javascript'>
          window.alert("Login Successful...!!");
          window.location="GuideHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="Guide.html";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>