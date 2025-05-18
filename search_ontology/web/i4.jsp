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
<title>Scheme Mapping| Inner</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="script/style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><link href="script/ie.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 7]><link href="script/ie7.css" rel="stylesheet" type="text/css" /><![endif]-->
<style type="text/css">
<!--
.style48 {color: #003399}
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
.style62 {font-size: 12px}
.style65 {
	font-weight: bold;
	font-size: 14px;
}
.style66 {font-size: 12px; font-weight: bold; }
.style68 {font-size: 14}
.style69 {font-size: 14px}
-->
        </style>
</head>
<body id="inner">
<div id="wrapper">
  <div id="header" style="background-color: #1f3b6e; "> <a href="#" class="replace" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; ">Scheme Portal</a>
    <div id="navigation" style="width:750px;">
      <ul >
        <li><a href="index.jsp">Home</a></li>
        <li><a href="i1.jsp">About</a></li>
    
        <li><a href="i3.jsp">Create Account</a></li>
        <li><a href="i4.jsp">Login</a></li>
             <li><a href="i5.jsp">Contact</a></li>
      </ul>
    </div>
    <!--navigation ends-->
    
    <!--connect ends-->
  </div>
  <!--header ends-->
  <div id="inner_content">
    <div id="inner_main_column" style="width:960px;" >
     <table width="96" height="30" border="0" style="background-color: white ;margin-left: 270px;box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px">
        <tr>
          <td width="950" height="300"><table width="52%" border="0" align="center">
         
          <tr>
            <td> <form action="login" method="post">
  	  	  <table width="38%" border="0" align="center" style="margin-left: 20px;">
        <tr>
          <td height="24" align="center" style="font-weight: bold; "><span class="style62">LOGIN</span></td>
        </tr>
        <tr>
          <td><table width="400" border="0" align="center">
            <tr >
              <td width="37%"><span class="style69">User Name </span></td> 
              <td width="1%">&nbsp;</td> 
              <td width="62%"><label> 
                <input type="text" name="a1" />
              </label></td> 
            </tr>
               
                  <tr>
              <td><span class="style69">Password </span></td> 
              <td>&nbsp;</td>  
              <td><label> 
                <input type="password" name="a2" />
              </label></td> 
            </tr>
                 
			 <tr>
              <td height="22"><span class="style68"></span></td>
              <td>&nbsp;</td> 
              <td><label></label></td>
            </tr>
            <tr>
               
                <td><span class="style68">
                  <label>                    </label>
                </span></td>
                <td>&nbsp;</td>
              <td><label>
                <div align="center" style="margin-right: 80px">
                    <input type="submit" name="Submit" value="Submit" style="padding: 10px;cursor:pointer ;background-color: #007bff;color: white; border: 0px; border-radius:8px; margin-bottom: 10px"/>&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Submit2" value="Cancel" style="padding: 10px; cursor:pointer ;background-color: whitesmoke;color: #007bff; border: 0px; border-radius:8px; margin-bottom: 10px" />
                  </div>
              </label></td>
            </tr>
          </table></td>
        </tr>
      </table>  
  	  	  <table width="401" border="0" align="center">
            <tr>
              <td width="395" align="center"><span class="style64 style62">Forget password? </span> <span class="style66">Click Here</span><strongPassword </strong></td>
              </tr>
          </table>
            </form></td>
          </tr>
        </table></td>
        </tr>
      </table>

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
</body>
</html>
