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
<body id="inner">
<div id="wrapper">
  <div id="header" style="background-color: #1f3b6e; "> <a href="#"  class="replace" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; ">Scheme Portal</a>
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
  <div id="inner_content">
    <div id="inner_main_column" style="width:960px;" >
      <h1 class="style48">About Services </h1>
      <p>1. User Registration and Profile Management<br>
          The system provides a seamless user registration service where citizens can create an account by entering their basic details such as name, email, and mobile number. Once registered, users can complete their profiles by entering relevant demographic and socio-economic information like age, gender, caste, community, income level, and educational qualification. This personalized data serves as the foundation for mapping users to schemes they are eligible for. The system also allows users to update their profile as needed, ensuring that the scheme suggestions remain relevant over time.</p><hr>
              <br>   <p>2. Scheme Discovery and Eligibility Mapping<br>
One of the core services of the Scheme Mapping System is its intelligent recommendation engine. Based on the details provided by the user, the system automatically filters and displays a list of government schemes the user is eligible for. This eliminates the need for manual searching through hundreds of schemes and significantly improves user convenience. It ensures that citizens, especially from marginalized sections, do not miss out on opportunities due to lack of awareness.</p><hr>
    <br>  <p>3. Application Guidance and Support<br>
        The platform provides step by step guidance on how to apply for each scheme. For every listed scheme, users can view comprehensive information including eligibility criteria, benefits, required documents, deadlines, and application procedures. In some cases, the system allows users to apply directly through integrated forms or redirects them to official application portals. This reduces confusion and ensures accurate submission of applications, increasing the likelihood of approval.</p><hr>
            <br>   <p>4. Admin Management of Schemes<br>
The admin panel is a dedicated space where authorized government officials or system managers can create, update, and delete schemes. This ensures that the information available on the platform remains current and accurate. Admins can add details such as the scheme description, target audience, benefits, deadlines, and relevant documents. They can also monitor user activity and view data insights to understand which schemes are most accessed and identify potential service gaps.</p><hr>
    <br> <p>5. Notification and Communication Services <br>
To keep users informed and engaged, the system offers timely notifications and alerts. Users receive updates when new schemes are added, deadlines are approaching, or when they become eligible for a newly launched program. Notifications can be sent via SMS, email, or in platform alerts. This proactive communication ensures that users stay up to date with the latest opportunities and dont miss out on applying for time sensitive schemes.</p>
      
      
      <FORM ACTION="policy2" method="post" onSubmit="return checkEmail(this)" name="form1">
        <table width="956" height="482" border="0">
        <tr>
          <td width="950" height="478">&nbsp;</td>
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
</body>
</html>
