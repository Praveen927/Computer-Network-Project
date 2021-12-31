
import java.io.*;
import java.net.*;
import java.sql.*;
import smtppack.*;

public class server{
    public static void main(String[] args) throws Exception{
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Student;user=Praveen;password=12345");
        Statement st = con.createStatement();
        try{
            ServerSocket ss = new ServerSocket(999);
            while(true){
                Socket s = ss.accept();
                BufferedReader br = new BufferedReader(new InputStreamReader(s.getInputStream()));
                //PrintWriter pw = new PrintWriter(s.getOutputStream(),true);
                String name,mail,reg;
                float cgpa;
                reg = br.readLine();
                name = br.readLine();
                cgpa = Float.parseFloat(br.readLine());
                mail = br.readLine();
                //ss.close();
                System.out.println(name+" "+mail+" "+reg+" "+cgpa);
                st.executeUpdate("Insert into Student(NAME,REGNO,CGPA,EMAIL) values("+"'"+name+"',"+reg+","+cgpa+",'"+mail+"')");
                System.out.println("Details Uploaded");
                SMTP obj = new SMTP();
                obj.funccall("mailpraveen927@gmail.com", "hzowutyxjeavrsvs", mail, "CN Project", "Due to your mokka jokes...your're not selected");
            }
        }
        catch(Exception e){
            System.out.print(e);
        }
    }
    
}
