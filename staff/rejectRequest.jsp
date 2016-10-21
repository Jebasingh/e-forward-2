<%@ page import="java.io.*,java.util.*,java.sql.* " %>
        
<%                                       
Class.forName("com.mysql.jdbc.Driver");
String sql;
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
Statement st=con.createStatement();
sql="Insert into rejectlist(reqid,comments,staffid) values('"+session.getAttribute("reqid")+"','"+request.getParameter("comments")+"','"+session.getAttribute("staffid")+"')";
st.executeUpdate(sql);
sql="update requestsub set reqstatus=5 where reqid='"+session.getAttribute("reqid")+"'";
st.executeUpdate(sql);
response.sendRedirect("pendingRequest.jsp");
%>