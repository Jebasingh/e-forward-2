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
                        <h2>Displaying Details</h2>
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
                        <div  class="container container-fluid col-lg-8" >
                           
                            <hr/>
  <!---Main Division to write code-->
  
                         <div class="container">
                              <!--form method="POST" action="reqsub1.jsp"-->
                             <div>
                                 <b> REQUEST ID : <% out.println(request.getParameter("reqid"));session.setAttribute("reqid",request.getParameter("reqid")); %> </b>
                                 <br><br/>
                                 <b>From :</b><br> 
                                 <%
                                     ResultSet rs;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    String sql;String timeStam="";
                                    String name="",name1="Varun",subject="",body="";int roll=123;
                                    sql="Select * from requestsub where reqid='"+request.getParameter("reqid")+"'";
                                    Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project104?","root",""); 
                                    Statement st=con.createStatement();
                                    rs=st.executeQuery(sql);int to1=-1;
                                    while(rs.next())
                                    {name1 = rs.getString("fromStud");
                                    subject = rs.getString("requestsub");
                                    body=rs.getString("requestbody");
                                     to1=rs.getInt("toStaff");
                                    timeStam=rs.getString("Time");
                                    }
                                    sql="select * from registerstud where regno='"+name1+"'";
                                     rs=st.executeQuery(sql);
                                     
                                     while(rs.next())
                                     {
                                         name=rs.getString("name");
                                         
                                     }
                                     out.println(name);
                                     out.println("<br>Roll Number.'" +name1+ "' ");
                                 
                                 %>
                                <br/>Department of Information Science and Technology,
                                <br/>Anna University,
                                 <br/>Chennai 25.
                                 <br/><br/>
                                 
                                 
                             </div>  
                             <div>
                                 <b>To :</b><br>
                                  <% 
                                    
                                     if(to1==1) out.println("The HOD of IST"); else if(to1==2) out.println("The Dean");%>
                                 <!--Department of Information Science and Technology,-->
                                 <br/>Anna University,
                                 <br/>Chennai 25.
                                 <br/><br/>
                             </div>
                             <div>
                                 <b>Respected Sir/Madam ,</b>
                                 <br/>Subject: <% out.println(subject); %>
                             </div>
                             <div>
                                 <br/>
                                 <p><%out.println(body); %>   </p>
                                 
                             </div>
                            <div>
                                <p align="left">Thanking You,</p>
                                <br/>
                                <p >
                                    Yours Sincerely,
                                    <br/>
                                    <%out.println(name);%>
                                </p>
                                
                               <br/>
                               <br/>
                               Chennai -25
                               <br/><%out.println("Submitted at "+timeStam); %>
                               
                            </div>
                            <div>
                            <%
                                     
                                    sql="select forward.staffid,registerstaff.name,Time from registerstaff,forward where reqid='"+request.getParameter("reqid")+"' and registerstaff.staffid=forward.staffid";
                                    ResultSet rs1;
                                    rs=st.executeQuery(sql);
                                    while(rs.next())
                                    {
                                        String sid=rs.getString("staffid");
                                        String name2=rs.getString("name");
                                        String fdtim=rs.getString("Time");
                                        out.println("Forwarded by "+name2+"(Staff ID "+sid+") at "+fdtim+"<br/>");
                                    }
                                    String comments="";
                                    sql="select registerstaff.name,rejectlist.time,rejectlist.comments from rejectlist,registerstaff where rejectlist.reqid='"+request.getParameter("reqid")+"' AND registerstaff.staffid=rejectlist.staffid;";
                                    rs=st.executeQuery(sql);
                                    while(rs.next())
                                    {
                                        comments=rs.getString("comments");
                                        String acceptTime=rs.getString("time");
                                        out.println("Rejected by "+ rs.getString("name") +" at "+ acceptTime +"<br/>");
                                    }
                                 %>       
                            </div>
                            <div><b>Comments</b>
                                <p>
                                    <%out.println(comments);%> 
                                      <hr/>
                               </div>
                                
                         </div>
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