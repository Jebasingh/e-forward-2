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
                <div class="container"><br/><h1><br/>Request Status Page</h1></div> 
            </div>
            <!--Body Content-->
            <div class="bodyBackgr" style="background-color: lightgoldenrodyellow;">
                <div class="container" >
                                <br/>
                                <br/>
                                Welcome, <b> <% out.println(session.getAttribute("name"));%></b> <br/>
                                <br/>
                </div>
                <div class="container ">
                              <form method="POST" action="reqsta1.jsp">
                                  Request ID : <input  type="text" name="reqid" placeholder="Request ID" class="form-control">
                                  <br/><br/><input type="submit" class="btn btn-success col-lg-5">
                              </form>
                                <br/><br/>
                </div>
                         
                       
            </div>
            <!--Footer-->
            <div class=" container col-lg-12 ourFooter"style="background-color: lightpink" class="align-right">
                <p align="right">Designed by Dyan , Jeba and Ninja .</p>
            </div>        
        </div>
    </body>
</html>