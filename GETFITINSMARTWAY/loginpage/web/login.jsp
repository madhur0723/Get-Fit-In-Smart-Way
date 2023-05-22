<%-- 
    Document   : login
    Created on : 31 Oct, 2022, 12:15:09 PM
    Author     : MADHUR GAHANE
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <style>
 body {
/*  background-color: #A9F1DF;*/
  background-image: url('image2.jpg');
  
  background-color: #cccccc; /* Used if the image is unavailable */
  height: 500px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover;
  }
</style>
<%
    String UserId=request.getParameter("UserId");
    String Pass = request.getParameter("Pass");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/masstech?autoReconnect=true & useSSL=false","root","root");
    Statement stmt=con.createStatement();
    ResultSet rs = stmt.executeQuery("select *from user Where UserId='"+ UserId +"' AND Pass='"+Pass+"'");
              if(rs.next()) {
//                   String redirectURL = "view.html";
//            response.sendRedirect(redirectURL);
                  %>
                  <h1 style="text-align: center;color:deepskyblue">You are successfully Login   "<%=UserId%>"</h1>
                   <jsp:include page="calory.html"></jsp:include>   
                  <%
                   
    %>
    <%
            }
              else
              {
                  %>
                  
               <form  style="text-align: center">
<!--                   <style> else {background-image: url('Image.jpg');}</style>-->
                  
                  <h1 style="color:red;"> Wrong username and password</h1>
                  
                    <a  style="color:blue;" input type="button"  value="submit" href="registration.html">Register First</a>
               </form>
                    <%
              }
 
    
 %>