<%@ page import="java.io.*,java.util.*,java.sql.* " %>
        
<%                                       
Class.forName("com.mysql.jdbc.Driver");
String sql;
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
Statement st=con.createStatement();
out.println(request.getParameter("fwdid")+session.getAttribute("staffid") );
if(Integer.parseInt((String)request.getParameter("fwdid"))==Integer.parseInt((String)session.getAttribute("staffid")))
{
    out.println("Hello");
    String sql1="Insert into accept(reqid) values('"+request.getParameter("reqid")+"')";  //insert into accept table of HOD
    st.executeUpdate(sql1);
    sql="update requestsub set reqstatus=4 where reqid='"+request.getParameter("reqid")+"'";
    st.executeUpdate(sql);
    response.sendRedirect("pendingRequest.jsp");
    return;
}
else if(Integer.parseInt(request.getParameter("fwdid"))>1)  //else forward it to DEAN and UPDATE the STATUS
{
    
sql="Insert into forward(reqid,staffid,fwdid) values("+request.getParameter("reqid")+","+session.getAttribute("staffid")+","+request.getParameter("fwdid")+")";
st.executeUpdate(sql);
sql="update requestsub set reqstatus=2 where reqid='"+request.getParameter("reqid")+"'";
st.executeUpdate(sql);
response.sendRedirect("pendingRequest.jsp");
return;
}

%>
