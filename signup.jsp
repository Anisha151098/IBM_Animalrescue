<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("Username");
String email=request.getParameter("Email");
String password=request.getParameter("Password");
String address=request.getParameter("Address");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/animalrescue", "root", "aravind123");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into signup(username,email,password,address)values('"+username+"','"+email+"','"+password+"','"+address+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>