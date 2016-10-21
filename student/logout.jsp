<%@ page import="java.io.*,java.util.*,java.sql.* " %>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css">
         <link rel="stylesheet" href="css/mystyle.css">
        <title>PROJECT104</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body background="wallfpaper.jpg">
        <div id="BigBody" class="container-fluid" style="height:1000px;">
            <div  id="header" class="container col-lg-12">
                <div class="col-lg-2">
                <img  alt="logo" id="img-small"src="logo.png"> </div>
                <div class="col-lg-8">
                <h1><span>PROJECT104</span></h1></div>
                
            </div>
           <div  id="navigation" class="container col-lg-12"  >
               <!-- navigation tab-->
               <ul id="colorWhite" class="nav nav-tabs nav-justified">
                <li role="presentation" class="col-lg-2 "><a href="index.html">Home</a></li>
                <li role="presentation" class="col-lg-2"><a href="profile.html">Profile</a></li>
                <li role="presentation" class="col-lg-2"><a href="about.html">About Us</a></li>
                <li role="presentation" class="col-lg-2"><a href="contact.html">Contact Us</a></li>
                <li role="presentation" class="col-lg-2"><a href="sign_up.html">Sign Up</a></li>
                <li role="presentation" class="col-lg-2"><a href="sign_in.html">Sign In</a></li>
               
                   
              </ul>
            </div>
            <div  id="body" class="container col-lg-12" >
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

            
            </div>
            
            <div  id="footer" class="container col-lg-12" style="background-color:#00004d;color:white;">
                <p align="right">Designed by Niranjan,Dyan,Jeba</p>
            </div>
        </div>
    </body>
</html>
