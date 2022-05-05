
<%@page import="java.sql.*,java.util.*,javax.swing.*,java.lang.*"%>

<%
String name=request.getParameter("Name");
String location=request.getParameter("Location");
String district=request.getParameter("District");
String landmark=request.getParameter("Landmark");
String contactnumber=request.getParameter("Contactnumber");
String description=request.getParameter("Description");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/animalrescue","root","aravind123");
    Statement st=con.createStatement();
	String sql="insert into animal (name,location,district,landmark,contactnumber,description) values (?,?,?,?,?,?)";
    PreparedStatement statement=con.prepareStatement(sql);
	statement.setString(1,name);
    statement.setString(2,location);
    statement.setString(3,district);
	statement.setString(4,landmark);
	statement.setString(5,contactnumber);
	statement.setString(6,description);
    statement.executeUpdate();
    
	%>
<script type="text/javascript">
    alert("Inserted Successfully");
</script>
<%
	
	con.close();
}  
catch(Exception e)
{
	out.println(e);
}
%>
