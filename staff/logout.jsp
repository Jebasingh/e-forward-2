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
                              <li role="presentation" ><a href="homeStaff.jsp">Home </a></li>
                                   <li role="presentation" class=""><a href="pendingRequest.jsp">Pending Requests</a></li>
                                   <li role="presentation" class=""><a href="acceptedRequest.jsp">Accepted Requests</a></li>
                                   <li role="presentation" class=""><a href="rejectedRequest.jsp">Rejected Requests</a></li>
                                   <li role="presentation" class=""><a href="forwardedRequest.jsp">Forwarded Requests</a></li>
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
                        <h2>Staff Home Page</h2>
                      </div>
                      <div class="container col-lg-2"></div>
                </div> 
            </div>
            <!--Body Content-->
            <div class="bodyBackgr" style="background-color: lightgoldenrodyellow;">
               
                  <div  class="container col-lg-12" >
                           <div class="container col-lg-2">
                               <br/>
                               <br/>
                               <h4> Options</h4>

                               <ul class="nav nav-pills nav-stacked  ">
                                   <li role="presentation" ><a href="homeStudent.jsp">Home </a></li>
                                   <li role="presentation" ><a href="reqsub.jsp">Request Submission</a></li>
                                   <li role="presentation" ><a href="reqsta.jsp">Request Status</a></li>
                                   <li role="presentation" ><a href="reqhist.jsp">History </a></li>
                                   <li role="presentation" ><a href="logout.jsp">Sign Out </a></li>
                               </ul>
                           </div> 
  <!--Welcome Division-->
                        <div  class="container container-fluid col-lg-8" >
                                <br/>
                                <br/>
                                Welcome, <b> <% out.println(session.getAttribute("name"));%></b>
                            </div>
                            <br/><br/><br/><br/>
                            <h1>Request History</h1>
                            <hr/>
  <!---Main Division to write code-->
  
                         <div class="container col-lg-8">
                              <%
                                  
                       session.invalidate();
                       response.sendRedirect("..\\index.html");
                        %>
                         </div><table class="table-bordered"></table>
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