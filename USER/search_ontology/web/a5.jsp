<%-- 
    Document   : index
    Created on : Feb 14, 2013, 10:00:00 PM
    Author     : Perumal S
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Ontology Search</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="script/style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><link href="script/ie.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 7]><link href="script/ie7.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
<!--
.style48 {color: #003399}
-->
</style><link href="screen.css" rel="stylesheet" type="text/css" media="screen" /><script type="text/javascript" src="js/datetimepicker_css.js"></script>
<script type="text/javascript" src="js/general.js"></script><SCRIPT LANGUAGE="JavaScript">  <script language="JavaScript" src="js/security.js"></script>

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function checkEmail(myForm) {
if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.a11.value)){
return (true)
}
alert("Invalid E-mail Address! Please re-enter.")
return (false)
}
//  End -->
</script>
        <style type="text/css">
<!--
.style62 {
	color: #0033FF;
	font-size: 16px;
	font-weight: bold;
}
-->
        </style>
</head>
<body id="inner">
<div id="wrapper">
  <div id="header"> <a href="#" id="logo" class="replace">Scheme Portal</a>
    <div id="navigation" style="width:1100px;" align="center">
      <ul >
        <li><a href="a1.jsp">Home</a></li>
        
		  <li><a href="a3.jsp">Scheme</a></li>
		  <li><a href="a4.jsp">Counselling</a></li>
          <li><a href="a5.jsp">Customer</a></li>
        
<!--		     <li><a href="a7.jsp">Feedback Graph</a></li>-->
                   <li><a href="i4.jsp">Log-out</a></li>
          
      </ul>
    </div>
    <!--navigation ends-->
    <div id="connect">
      <p class="left">connect with us:</p>
      <ul class="right">
        <li id="twitter"><a href="#" class="replace">Twitter</a></li>
        <li id="facebook"><a href="#" class="replace">Facebook</a></li>
        <li id="in"><a href="#" class="replace">IN</a></li>
      </ul>
    </div>
    <!--connect ends-->
  </div>
  <!--header ends-->
  <div id="inner_content">
    <div id="inner_main_column" style="width:960px;" >
      <h1 class="style48">About Schemes</h1>
        <table width="956" height="173" border="0">
        <tr>
          <td width="950" height="169"><FORM action="" method="post" >
            <table width="951" height="167" border="0">
              <tr>
                <td height="163"><table width="951"  border="0">
              <tr>
                <td><table width="948" border="0">
              <tr>
                <td width="977" class="style64"><table width="942" border="0" align="center">
        <tr>
          <td width="936" height="35" align="center" bgcolor="#0066CC"><span class="style3 style1  style65"><strong>Customer Details </strong></span></td>
        </tr>
        <tr>
          <td height="84" align="center"><table width="932" height="36" border="0">
  <tr>
			   
              <td width="180" height="30" align="center"><span class="style4"><strong>Name</strong></span></td>
              <td width="134" align="center"><span class="style4"><strong>Date of Birth </strong></span></td>
              <td width="126" align="center"><span class="style4"><strong>Email Id</strong></span></td>
		      <td width="172" align="center"><span class="style4"><strong>Address</strong></span></td>
              <td width="165" align="center"><span class="style4"><strong>Mobile</strong></span></td>
            </tr>
</table>
<table width="930" border="0">
		
		   <% int index=0;
	try
	{
	   
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);

		int flag=0;
		String url="jdbc:mysql://localhost:3306/purchases1";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                Statement st2=con.createStatement();
                Statement st3=con.createStatement();
                
		ResultSet rs = st.executeQuery("select * from register");

    while(rs.next())
		{	
       		
	 %>
            <tr>
			    <td width="209" height="36" align="center"><%=rs.getString(4)%></td>
              <td width="157"><%=rs.getString(6)%></td>
          <td width="150"><%=rs.getString(5)%></td>
              <td width="198" align="center"><%=rs.getString(7)%></td>
              <td width="194"><%=rs.getString(10)%></td>
            </tr><%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
          </table></td>
        </tr>
      </table></td>
              </tr>
            </table></td>
              </tr>
            </table></td>
              </tr>
            </table>
          </FORM></td>
        </tr>
      </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      <p>&nbsp;</p>

    </div>
    <!--main column ends-->
    <!--inner right column ends-->
    <div class="clear"></div>
  </div>
  <!--content ends-->
  <div class="footerclear"></div>
</div>
<!--wrapper ends-->
<div id="footer_container">
  <div id="footer">
    
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center></div>
</body>
</html>
