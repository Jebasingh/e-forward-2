<%@ page import="java.io.*,java.util.*,java.sql.* " %>
<% 
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
String sql;
sql="Select * from registerstud where regno='"+request.getParameter("inputRoll")+"' AND password='"+request.getParameter("inputPassword")+"'";
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
Statement st=con.createStatement();
rs=st.executeQuery(sql);
while(rs.next())
{session=request.getSession(true);
    session.setAttribute("roll",(String)rs.getString("regno"));
     session.setAttribute("name",(String)rs.getString("name"));
     response.sendRedirect("homeStudent.jsp");return;
}
response.sendRedirect("sign_in.html");//Wrong IOnfo
%>
