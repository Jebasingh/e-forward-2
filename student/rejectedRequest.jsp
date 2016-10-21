<%@ page import="java.io.*,java.util.*,java.sql.* " %>
<%                                       
Class.forName("com.mysql.jdbc.Driver");
String sql="";
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
Statement st=con.createStatement();


%>
<html>
    <head>
        <title>
            E-Forwarding Portal
        </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link src="stylesheet" href="../css/ourStyle.css">
    </head>
    <body>
        <div >
            <!-- Header-->
            <div class="col-lg-12 ourBody rounded" style="background-image: url('../images/bg1.jpg');color: black;">
                <div class="row ">
                    <div class="col-lg-2">
                        <img src="../images/logo.png" class="img-responsive">
                    </div>
                    <div class="col-lg-8">
                        <br/><h2>E - Forwarding Portal</h2>
                        <h3>Department of Information Science and Technology</h3>
                    </div>
                    
                    <div class="col-lg-2">
                        <br/><br/>
                        <button id="dLabel" class="btn btn-default btn-lg" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 30px;">
                            <span class="glyphicon glyphicon-align-justify" ></span>
                          </button>
                          <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li role="presentation" ><a href="homeStudent.jsp">Home </a></li>
                                   <li role="presentation" ><a href="reqsub.jsp">Request Submission</a></li>
                                   <li role="presentation" ><a href="reqsta.jsp">Request Status</a></li>
                                   <li role="presentation" ><a href="reqhist.jsp">History </a></li>
                                   <li role="presentation" ><a href="acceptedRequestStud.jsp">Accepted Request </a></li>
                                   <li role="presentation" ><a href="rejectedRequest.jsp">Rejected Request </a></li>
                                   <li role="presentation" ><a href="logout.jsp">Logout </a></li>
                          </ul>
                    </div>
                </div>
            </div>
            
            <!--Heading  Content-->
            <div class="bodyBackgr" style="height: 200px;">
                <div class="container"><br/><h1><br/>Rejected Requests</h1></div> 
            </div>
            <!--Body Content-->
            <div class="bodyBackgr" style="background-color: lightgoldenrodyellow;">
                <div class="container" >
                                <br/>
                                <br/>
                                Welcome, <b> <% out.println(session.getAttribute("name"));%></b> <br/>
                                <br/>
                </div>
                <div class="container">
                               <br/>
                               <br/>
                               <%
                                   String strin="";
                                   
                                    sql="SELECT * FROM requestsub where fromStud='"+session.getAttribute("roll")+"'  AND reqstatus=5";
                                     strin="displayCommentsPage.jsp";
                                   
                                   
                                   ResultSet rs=st.executeQuery(sql);
                               out.println("<table class='table table-bordered'><tr><th>Request ID</th><th> Subject</th><th>Time</th></tr>");
                        while(rs.next()){
                            String status="Processing";int status1=rs.getInt("reqstatus");
                            switch(status1)
                        {
                            case 0: {status="Processing";break;}
                            case 1: {status="Processing - Class Advisor Forwarded";break;}
                            case 2: {status="Processing - HOD ";break;}
                            case 3: {status="Processing - Dean ";break;}
                            case 4: {status ="Accepted";break;}
                            case 5: {status ="Rejected";break;}
                        }
                        out.println("<tr>");
                       
                        
                        String method="GET";
                        out.println("<td><form method='"+method+"' action='"+ strin +"'><input type='hidden' name='reqid' value="+rs.getInt("reqid")+" > <input type='submit' value= " +rs.getInt("reqid")+ " ></form></td>");
                        out.println("<td>"+rs.getString("requestsub")+"</td>");
                        out.println("<td>"+rs.getString("time")+"</td>"); 
                        out.println("</tr>");
                            } 
                        out.println("</table>");
                               
                               %>
                           </div>         
                       
            </div>
            <!--Footer-->
            <div class=" container col-lg-12 ourFooter"style="background-color: lightpink" class="align-right">
                <p align="right">Designed by Dyan , Jeba and Ninja .</p>
            </div>        
        </div>
    </body>
</html>