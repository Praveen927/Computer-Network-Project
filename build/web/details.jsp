<%-- 
    Document   : details
    Created on : 29 Dec, 2021, 10:36:44 PM
    Author     : mailp
--%>

<%@page import="java.net.*,java.io.*,java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Student;user=Praveen;password=12345");
            Statement st = con.createStatement();
            ResultSet rs;
            try{
                rs = st.executeQuery("Select * from Student");
                out.print("<style>table, th, td { border:1px solid black; border-collapse:collapse;}</style>");
                out.print("<center><table><tr><th>Name</th><th>Email</th><th>Register No</th><th>CGPA</th></tr>");
                while(rs.next())
                    out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
                out.print("</table></center>");
            }
            catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
//hzowutyxjeavrsvs