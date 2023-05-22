<%-- 
    Document   : calory
    Created on : 7 Nov, 2022, 10:46:49 AM
    Author     : Jaiswal Vikas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
 <style>
       
body {
  background-color: #AFEEEE;

}
</style>
<%
        String age=request.getParameter("age");
        String customRadioInline1=request.getParameter("customRadioInline1");
          String weight=request.getParameter("weight");
            String height=request.getParameter("height");
              String Fitness_Goal=request.getParameter("Fitness_Goal");
     
    
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sonali?autoReconnect=true & useSSL=false","root","root");
      
      
      
      PreparedStatement ps=con.prepareStatement("INSERT INTO calory VALUES(?,?,?,?,?)");
   
      ps.setString(1,age);
      ps.setString(2,customRadioInline1);
       ps.setString(3,weight);
        ps.setString(4,height);
         ps.setString(5,Fitness_Goal);
      int i=ps.executeUpdate();
 
      if(i>0)
      {  System.out.println("data received");
          %>
        
          <h1>You are successful</h1>
                  <jsp:forward page="meal.html" />
          <%
              }
else
{
System.out.println("Bas ab nhi jhela ja rha hai");
          %>
          <h1>Something is wrong</h1>
     
<%  String redirectURL = "calory.html";
            response.sendRedirect(redirectURL);
      }
           
    %>

    %>
