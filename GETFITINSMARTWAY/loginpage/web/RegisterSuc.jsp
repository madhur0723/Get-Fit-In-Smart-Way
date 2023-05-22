<%-- 
    Document   : RergisterSuc
    Created on : 31 Oct, 2022, 12:16:59 PM
    Author     : comp
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <style>
       
body {
  background-color: #AFEEEE;

}
</style>
<%
        String UserId=request.getParameter("UserId");
        System.out.print(UserId);
        String EmailId=request.getParameter("EmailId");
        System.out.println(EmailId);
        String Pass=request.getParameter("Pass");
        System.out.println(Pass);
    
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MassTech?autoReconnect=true & useSSL=false","root","root");
      PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?)");
      ps.setString(1,UserId);
      ps.setString(2,EmailId);
      ps.setString(3,Pass);
      int i=ps.executeUpdate();
      if(i>0)
      {
          %>
          <h1>You are successfully registered</h1>
                  <jsp:forward page="registration.html" />
          <%
              }
else
{
          %>
          <h1>Not Register</h1>
          <%
      }
            String redirectURL = "start.html";
            response.sendRedirect(redirectURL);
    %>

    %>
