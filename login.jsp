<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("Username");   
        String password = request.getParameter("Password");
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/animalrescue","root","aravind123");    
        PreparedStatement pst = con.prepareStatement("Select username,password from signup where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
        response.sendRedirect("home.html");
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println(e);       
   }      
%>