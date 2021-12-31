<%-- 
    Document   : client
    Created on : 29 Dec, 2021, 10:01:36 AM
    Author     : mailp
--%>


<%@page import="java.net.*,java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                String regno = request.getParameter("regno");
                String sname = request.getParameter("sname");
                String scgpa = request.getParameter("scgpa");
                String semail = request.getParameter("semailid");
                out.println("<h2>Details uploaded successfully</h2>");
                Socket s = new Socket("127.0.0.1",999);
                //BufferedReader br = new BufferedReader(new InputStreamReader(s.getInputStream()));
                PrintWriter pw = new PrintWriter(s.getOutputStream(),true);
                //pw.println("R");
                pw.println(regno);
                //pw.println("R");
                pw.println(sname);
                //pw.println("R");
                pw.println(scgpa);
                //pw.println("R");
                pw.println(semail);
                out.print("<button><a href='details.jsp'>View Details</a></button>");
                s.close();
            }
            catch(Exception e){
                out.print("<h2>"+e+"</h2>");
            }
        %>
    </body>
</html>
