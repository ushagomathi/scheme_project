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
.style64 {
	font-size: 18px;
	font-weight: bold;
	color: #990000;
}
-->
        </style>
</head>
<body id="inner">
<div id="wrapper">
  <div id="header" style="background-color: #1f3b6e; "> <a href="#" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; " class="replace">Scheme Portal</a>
    <div id="navigation" style="width:900px;" align="center">
      <ul >
        <li><a href="u1.jsp">Home</a></li>
        <li><a href="u2.jsp">Search</a></li>
		 
          <li><a href="i4.jsp">Log-out</a></li>
      </ul>
    </div>
    <!--navigation ends-->
    
    <!--connect ends-->
  </div>
  <!--header ends-->
  <div id="inner_content" style="margin-top: 0; padding: 0;">
    <div id="inner_main_column" style="width:960px;" >

        <table width="956" height="600" border="0" width="100%"style="margin-top: -130px">
        <tr>
          <td width="950" height="700"><FORM action="p1" method="post" >
            <table width="951" height="967" border="0">
              <tr>
                <td height="120"><table width="812" border="0" align="center">
                  <tr>
                    <td width="806" height="45" align="center"><span class="style64">CLICK HERE TO CHOOSE THE PROCESS</span></td>
                  </tr>
                  <tr>
                      <td><table width="1000" border="0" align="center" style="border-spacing: 20px; ">
                  <tr>
                 <td width="500" height="200" align="center" style="background-color: white ;box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px; transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'"><label>
                      <div align="center">
                        <input type="submit" name="s3" id="s3" value="GENDER SCHEME "  style="width:300px; height:35px; background-color: white; font-style:normal ; font-size:24px; border: none" />
                        </div>
                     </label></td>
                 <td width="500" height="200" align="center" style="background-color: white ;box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px;transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'"><label>
                      <div align="center">
                        <input type="submit" name="s2" id="s2" value=" COUNSELLING"  style="width:300px; height:35px; background-color: white; font-style:normal ; font-size:24px; border: none" />
                        </div>
                 </label></td>
                    <td width="500" height="200" align="center" style="background-color: white ;box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px;transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'"><label>
                      <div align="center">
                        <input type="submit" name="s1" id="s1" value="GENERAL SCHEME "  style="width:300px; height:35px; background-color: white; font-style:normal ; font-size:24px; border: none"  />
                        </div>
                     </label></td>
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
    <p class="left">&nbsp;</p>
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
<div align=center></div>
</body>
</html>
