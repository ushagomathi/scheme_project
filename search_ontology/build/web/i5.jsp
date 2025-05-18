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
<title>Scheme Mapping | Inner</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="script/style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><link href="script/ie.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 7]><link href="script/ie7.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
<!--
.style48 {color: #003399}
.style50 {
	font-size: 14px;
	font-weight: bold;
	color: #003399;
}
-->

</style><link href="screen.css" rel="stylesheet" type="text/css" media="screen" /><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script><SCRIPT LANGUAGE="JavaScript">

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
.style58 {font-size: 12px; font-weight: bold; }
.style59 {font-size: 12px}
.style60 {font-weight: bold}
-->
        </style>
</head>
<body id="inner"style="background-color: whitesmoke" >
<div id="wrapper">
  <div id="header"style="background-color: #1f3b6e; "> <a href="#" class="replace" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; ">Scheme Portal</a>
    <div id="navigation" style="width:750px;">
      <ul >
        <li><a href="index.jsp">Home</a></li>
        <li><a href="i1.jsp">About</a></li>
        <li><a href="i2.jsp">Services</a></li>
        <li><a href="i3.jsp">Create Account</a></li>
        <li><a href="i4.jsp">Login</a></li>
             <li><a href="i5.jsp">Contact</a></li>
      </ul>
    </div>
    <!--navigation ends-->
    
    <!--connect ends-->
  </div>
  <!--header ends-->
  <div id="inner_content" style="background-color: whitesmoke">
    <div id="inner_main_column" style="width:960px; " >
        <div style="max-width: 250px; margin: 50px auto; background-color: white; padding: 30px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
    <h2 style="text-align: center; color: #333333;">Contact Us</h2>

    <form action="#" method="post">
      <label for="name" style="display: block; margin-top: 20px; font-weight: bold;">Name:</label>
      <input type="text" id="name" name="name" required 
             style="width: 100%; padding: 5px; margin-top: 5px; border: 1px solid #ccc; border-radius: 5px;">

      <label for="email" style="display: block; margin-top: 20px; font-weight: bold;">Email:</label>
      <input type="email" id="email" name="email" required 
             style="width: 100%; padding: 5px; margin-top: 5px; border: 1px solid #ccc; border-radius: 5px;">

      <label for="message" style="display: block; margin-top: 20px; font-weight: bold;">Message:</label>
      <textarea id="message" name="message" rows="5" required 
                style="width: 100%; padding: 5px; margin-top: 5px; border: 1px solid #ccc; border-radius: 5px;"></textarea>

      <button type="submit" 
              style="margin-top: 20px; margin-left: 60px; padding: 12px 20px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;">
        Send Message
      </button>
    </form>
  </div>
     <!-- <h1 class="style48">Contact Us</h1><FORM ACTION="policy2" method="post" onSubmit="return checkEmail(this)" name="form1"> -->
        <table width="956" height="482" border="0">
        <tr>
          <td width="950" height="478">&nbsp;</td>
          <div id="connect" style="margin-right: 380px">
      <p class="left">connect with us:</p>
      <ul class="right">
        <li id="twitter"><a href="#" class="replace">Twitter</a></li>
        <li id="facebook"><a href="#" class="replace">Facebook</a></li>
        <li id="in"><a href="#" class="replace">IN</a></li>
      </ul>
    </div>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      </FORM>

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
    <p class="left">Government Scheme Mapping</p>
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

</html>
