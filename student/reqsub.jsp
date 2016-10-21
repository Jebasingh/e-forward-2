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
                <div class="container"><br/><h1><br/>Request Submission Page</h1></div> 
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
                              <form method="POST" action="reqsub1.jsp">
                             <div>
                                 <b>From :</b><br> 
                                 <% out.println(session.getAttribute("name"));%>
                                 <br/><%   out.println("\nRoll Number . "+session.getAttribute("roll"));%>                                 
                                 <br/>Department of Information Science and Technology,
                                 <br/>Anna University,
                                 <br/>Chennai 25.
                                 <br/><br/>
                             </div>  
                             <div>
                                 <b>To :</b><br>
                                 <select class="form-control" name="inputTo">
                                     <option value="1">The HOD of DIST</option>
                                     <option value="2">The Dean</option>
                                 </select>
                                 <!--Department of Information Science and Technology,-->
                                 Anna University,
                                 <br/>Chennai 25.
                                 <br/><br/>
                             </div>
                             <div>
                                 <b>Respected Sir/Madam ,</b>
                                 <br/>Subject: <input type="text" name="inputSubject" class="form-control">
                             </div>
                             <div>
								 <br/>
								 <input type="radio" class="form-control" value="1" id="radioCheck">Request for Bonafide 
                                 <br/>
                                 <textarea class="form-control" placeholder="Type your body of the Letter here.." name="inputBody">   
                                 </textarea>
                             </div>
                            <div>
                                <p align="center">Thanking You,</p>
                                <br/>
                                <p align="right">
                                    Yours Sincerely,
                                    <br/>
                                    <%out.println(session.getAttribute("name"));%>
                                </p>
                            </div>
                                <div class="col-lg-3"></div><input class="btn btn-success col-lg-5" type="submit" value="Submit Request">
                                    
                                
                                 </form>
                                <br/>
                                <br/>
                         </div>
                         
                       
            </div>
            <!--Footer-->
            <div class=" container col-lg-12 ourFooter"style="background-color: lightpink" class="align-right">
                <p align="right">Designed by Dyan , Jeba and Ninja .</p>
            </div>        
        </div>
    </body>
</html>