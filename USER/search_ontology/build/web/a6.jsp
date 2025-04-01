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
.style64 {font-size: 14px; font-weight: bold; }
-->
        </style>
</head>
<body id="inner">
<div id="wrapper">
  <div id="header"> <a href="#" id="logo" class="replace">Scheme Portal</a>
    <div id="navigation" style="width:1100px;" align="center">
      <ul >
        <li><a href="a1.jsp">Home</a></li>
        <li><a href="a2.jsp">Product</a></li>
		  <li><a href="a3.jsp">Scheme</a></li>
		  <li><a href="a4.jsp">Counselling</a></li>
          <li><a href="a5.jsp">Customer</a></li>
        <li><a href="a6.jsp">Transaction </a></li>
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
        <table width="956" height="919" border="0">
        <tr>
          <td width="950" height="915"><td width="976" height="126"><FORM action="" method="post" >
		<table  border="0" align="center" bgcolor="#FFFFFF">
		  

          <tr>
            <td width="965"><table width="951" border="0" bgcolor="" align="center">
                  <tr>
                    <td width="945"><table width="967" height="39" border="0" >
                      <tr>
                        <td width="97" height="33"><div align="center" class="style64">Product Id </div></td>
                        <td width="115"><div align="center" class="style64" >P Name </div></td>
                        <td width="79"><div align="center" class="style64" >Price</div></td>
                        <td width="129"><div align="center" class="style64" >Discount </div></td>
                        <td width="98"><div align="center" class="style64" > Amount </div></td>
						   <td width="121"><div align="center" class="style64" >No of Product</div></td>
                        <td width="129"><div align="center" class="style64" >Total Amount </div></td>
                        <td width="151"><div align="center" class="style64" >Paid Date </div></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table width="959" height="39" border="0">
                      <% 
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
		ResultSet rs = st.executeQuery("select * from purchase ");

    while(rs.next())
		{						
	 %>
                      <tr>
                        <td width="94" height="33"><div align="center"><%=rs.getString(1)%></div></td>
                        <td width="117"><div align="center"><%=rs.getString(4)%></div></td>
                        <td width="83"><div align="center"><%=rs.getString(5)%></div></td>
                        <td width="131"><div align="center"><%=rs.getString(6)%></div></td>
                        <td width="96"><div align="center"><%=rs.getString(7)%></div></td>
                        <td width="128"><div align="center"><%=rs.getString(8)%></div></td>
						 <td width="123"><div align="center"><%=rs.getString(8)%></div></td>
                        <td width="153"><div align="center"><%=rs.getString(9)%></div></td>
                      </tr><%         } 
                	}catch (Exception e) {
		out.println(e);
	}
	%>
                    </table></td>
                  </tr>
                </table></td>
          </tr>
        
      </table>

		      
</FORM></td></td>
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
    <p class="left">Best Marketing Company</p>
   <ul >
      <li><a href="a1.jsp">Home</a></li>
        <li><a href="a2.jsp">Product</a></li>
		  <li><a href="a3.jsp">Medical</a></li>
		  <li><a href="a4.jsp">Counselling</a></li>
      <li><a href="a5.jsp">Customer</a></li>
        <li><a href="a6.jsp">Transaction </a></li>
		     <li><a href="a7.jsp">Feedback Graph</a></li>
			      <li><a href="a8.jsp">Ranking </a></li>
                  <li><a href="a9.jsp">Search graph </a></li>
                   <li><a href="login.jsp">Log-out</a></li>
    </ul>
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center></div>
</body>
</html>
