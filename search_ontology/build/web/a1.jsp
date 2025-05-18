<%-- 
    Document   : index
   
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
  <div id="header" style="background-color: #1f3b6e; margin-right: 160px  "> <a href="#" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; "class="replace"> Scheme Portal</a>
    <div id="navigation" style="width:800px;">
      <ul >
        <li><a href="a1.jsp">Home</a></li>
        
		  <li><a href="a3.jsp">Scheme</a></li>
		  <li><a href="a4.jsp">Counselling</a></li>
		  <li><a href="a41.jsp">Counselling Update</a></li>
          <li><a href="a5.jsp">User details</a></li>
        <!--  <li><a href="a7.jsp">Feedback Graph</a></li> -->
                   <li><a href="i4.jsp">Log-out</a></li>
          
      </ul>
    </div>
    <!--navigation ends-->
   <!-- <div id="connect">
      <p class="left">connect with us:</p>
      <ul class="right">
        <li id="twitter"><a href="#" class="replace">Twitter</a></li>
        <li id="facebook"><a href="#" class="replace">Facebook</a></li>
        <li id="in"><a href="#" class="replace">IN</a></li>
      </ul>
    </div> -->
    <!--connect ends-->
  </div>
  <!--header ends-->
  <div id="inner_content">
    <div id="inner_main_column" style="width:960px;" >
      <h1 class="style48">Welcome Admin!!!</h1>
      <p>Creating New Schemes:
Admins can add new welfare schemes to the system by entering details such as scheme name, description, eligibility criteria (age, gender, caste, etc.), benefits, documents required, and application procedures.
<br> <br/>
Updating Existing Schemes:
If a scheme undergoes any policy change or update, the admin can modify the existing information (e.g., updated eligibility, new deadlines, additional benefits).
<br> <br/>
Deleting Obsolete Schemes:
Admins can remove schemes that are expired, withdrawn, or no longer valid, ensuring that users are only shown currently active and applicable schemes.</p>
        <table width="956" height="919" border="0">
        <tr>
          <td width="950" height="915"><FORM action="" method="post" >
          </FORM></td>
        </tr>
      </table>
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
   <ul >
        <li><a href="index.jsp">Home</a></li>
      <li><a href="i1.jsp">About</a></li>
      
        <li><a href="i3.jsp">Create Account</a></li>
        <li><a href="i4.jsp">Login</a></li>
             <li><a href="i5.jsp">Contact</a></li>
      </ul>
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center></div>
</body>
</html>
