<%@ page import="java.io.*,java.util.*,java.sql.* " %>
        
<% 

Class.forName("com.mysql.jdbc.Driver");
String sql;
int amount=0;
Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
Statement st=con.createStatement();
String name=request.getParameter("inputName");
String roll=request.getParameter("inputRoll");
String batch=request.getParameter("inputBatch");
String dept=request.getParameter("inputDept");
String role=request.getParameter("Role");
String pwd=roll;
sql="INSERT INTO  registerstud VALUES ('"+name+"','"+roll+"','"+batch+"','"+dept+"','"+role+"','"+pwd+"')";
try{st.executeUpdate(sql); }
catch(Exception e)
{
 response.sendRedirect("sign_up.html");
}
session=request.getSession(true);
session.setAttribute("roll",roll);
session.setAttribute("name",name);

%><html>
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
            <div class="bodyBackgr">
                <div class="container"><h1>Student Home Page</h1></div> 
            </div>
            <!--Body Content-->
            <div class="bodyBackgr" style="background-color: lightgoldenrodyellow;">
                <div class="container" >
                                <br/>
                                <br/>
                                <div class="container col-lg-8" >
                                Welcome, <% out.println(name); 
                                                     
                                %>
                            </div>
                           <div class="container col-lg-8">
                               It is <b> mandatory </b> that you set the password once you have entered for the first time.
                              <form class="form-horizontal" action="changepwd.jsp" method="POST">
                                       
                                       <div class="form-group">
                                         <label for="inputPassword" class="col-sm-2 control-label">New Password </label>
                                         <div class="col-sm-10">
                                           <input type="text" class="form-control " name="newpwd" placeholder="NewPassword">
                                         </div>
                                       </div>
                                       <div class="form-group">
                                         <div class="col-sm-offset-2 col-sm-10">
                                           <button type="submit" class="btn btn-default">Confirm Password</button>
                                         </div>
                                       </div>
                              </form>
                           </div>
                           <div class="container col-lg-2"></div></b>
                </div>
                
            </div>
               <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="..\images\pic02.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src=".\images\pic03.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
      <img src=".\images\pic03.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
  </div>
            <!--Footer-->
            <div class="ourFooter container col-lg-12"style="background-color: lightpink" class="align-right">
                <p align="right">Designed by Dyan , Jeba and Ninja .</p>
            </div>        
        </div>
    </body>
</html>