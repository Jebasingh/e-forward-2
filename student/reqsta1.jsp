<%@ page import="java.io.*,java.util.*,java.sql.* " %>

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
                        <h1><b>E - Forwarding Portal</b></h2>
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
            <div class="bodyBackgr">
                <div class="container col-lg-12">
                      <div class="container col-lg-2"></div>
                      <div class="container col-lg-8">
                        <h2>Request Status</h2>
                      </div>
                      <div class="container col-lg-2"></div>
                </div> 
            </div>
            <!--Body Content-->
            <div class="bodyBackgr" style="background-color: lightgoldenrodyellow;">
                
                 <div  class="container col-lg-12" >
                           <div class="container col-lg-2">
                              
                           </div> 
  <!--Welcome Division-->
                       
                            
  <!---Main Division to write code-->
  
                         <div class="container col-lg-8">
                             <hr>
                              <%
                                  
                        Class.forName("com.mysql.jdbc.Driver");
                        String sql;
                        Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
                        Statement st=con.createStatement();
                        sql="SELECT * from requestsub where reqid='"+request.getParameter("reqid")+"' ORDER BY reqid DESC ";
                        ResultSet rs=st.executeQuery(sql);
                        int status1=0;String subject1="--",status="Not Valid";
                        while(rs.next()){
                        status1=Integer.parseInt(rs.getString("reqstatus"));
                        switch(status1)
                        {
                            case 0: {status="Processing";break;}
                            case 1: {status="Processing - Class Advisor Forwarded";break;}
                            case 2: {status="Processing - HOD ";break;}
                            case 3: {status="Processing - Dean ";break;}
                            case 4: {status ="Accepted";break;}
                            case 5: {status ="Rejected";break;}
                        }
                        subject1=rs.getString("requestsub");
                       
                        }
                        %>
                        Request ID : <%out.println(request.getParameter("reqid")); %><br/>
                        Subject    :<%out.println(  ":"+subject1 );%><br/>
                        Status      :<%out.println(   status );%>
                        <hr>
                         </div>
                         <div class="container col-lg-2"></div>
                       </div> 
                    
             </div>           
                
            </div>
            <!--Footer-->
            <div class="container col-lg-12 ourFooter" style="background-color: lightpink" class="align-right">
                <p align="right">Designed by Dyan , Jeba and Ninja .</p>
            </div>        
        </div>
    </body>
</html>