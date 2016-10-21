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
                        
                            <h2>Request Submission Letter</h2>
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
                      
                           <div class="container col-lg-8"> 
                            <hr/>
  <!---Main Division to write code-->
                        <%
                            
                        Class.forName("com.mysql.jdbc.Driver");
                        String sql;
                        sql="INSERT into requestsub(fromStud,toStaff,requestsub,requestbody) VALUES('"+(String)session.getAttribute("roll")+"','"+request.getParameter("inputTo")+"','"+request.getParameter("inputSubject")+"','"+request.getParameter("inputBody")+"')";
                        Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
                        Statement st=con.createStatement();
                        st.executeUpdate(sql);
                        out.println("Request Created Successfully");%><br/><%
                        sql="SELECT reqid from requestsub where fromStud='"+session.getAttribute("roll")+"' ORDER BY reqid DESC LIMIT 1";
                        ResultSet rs=st.executeQuery(sql);
                        while(rs.next()){
                        out.println("\n\nKindly note your Request ID for future Informations :");
                        out.println(rs.getString("reqid"));
                        }
                        
                        %>
                        <hr>
                         
                         </div>
                         <div class="container col-lg-2"></div>
                       </div> 
                
                
            </div>
            <!--Footer-->
            <div class="container col-lg-12 ourFooter" style="background-color: lightpink" class="align-right">
                <p align="right">Designed by Dyan , Jeba and Ninja .</p>
            </div>        
        </div>
    </body>
</html>