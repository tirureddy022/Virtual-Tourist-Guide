<%-- 
    Document   : RegAction
    Created on : Jan 18, 2020, 2:53:23 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String uname=request.getParameter("username");
String pwd=request.getParameter("password");
try{
    int count=0;
    
  String query="select count(*) from tourist where email='"+email+"'and username='"+uname+"'";
       ResultSet r=Queries.getExecuteQuery(query);
       while(r.next()){
     count=r.getInt(1);   
       }
       if(count==0){
         int i=Queries.getExecuteUpdate("insert into tourist values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+pwd+"')");
         if(i>0){
            %>
       <script type="text/javascript">
           window.alert("User Register SuccessFully..!!");
           window.location="Users.html";
           </script>
          <%
    }else{
 %>
       <script type="text/javascript">
           window.alert("User Registration Failed..!!");
           window.location="UserRegister.html";
           </script>
          <%
}
       }else{
%>
       <script type="text/javascript">
           window.alert("Email And UserName Doesn't Exist..!!");
           window.location="UserRegister.html";
           </script>
          <%
}
    
}catch(Exception e){
    out.println(e);
}



%>