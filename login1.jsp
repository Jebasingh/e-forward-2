<%@ page import="java.io.*,java.util.*,java.sql.* " %>
<% 
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
String sql;
sql="Select * from registerstaff where staffid='"+request.getParameter("staffid")+"' AND password='"+request.getParameter("pwd")+"'";
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
Statement st=con.createStatement();
rs=st.executeQuery(sql);
while(rs.next())
{session=request.getSession(true);
    session.setAttribute("staffid",(String)rs.getString("staffid"));
     session.setAttribute("name",(String)rs.getString("name"));
     response.sendRedirect("\\staff\\homeStaff.jsp");return;
}
response.sendRedirect("staff_signin.html");//Wrong IOnfo
%>
