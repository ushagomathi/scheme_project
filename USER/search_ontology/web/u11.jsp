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
.style50 {font-size: 14px; font-weight: bold; }
.style51 {font-size: 14px; font-weight: bold; color: #FFFFFF; }
-->
</style>
</head>
<body id="inner">
<div id="wrapper">
  <div id="header"> <a href="#" id="logo" class="replace">Scheme Portal</a>
    <div id="navigation" style="width:900px;" align="center">
      <ul >
        <li><a href="u1.jsp">Home</a></li>
        <li><a href="u2.jsp">Search</a></li>
		 
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
        <table width="956" height="470" border="0">
        <tr>
          <td height="466"><FORM action="p1" method="post" >
		<table  border="0" align="center" bgcolor="#FFFFFF">
		  

          <tr>
            <td width="939" height="339" >
			<table width="757" border="0" align="center">
  <tr>
    <td width="465"><label>
    <input type="text" name="a2"  style="width:460px; height:30px;"/>
    </label></td>
    <td width="10">&nbsp;</td>
    <td width="268"><label>
      <input type="submit" name="v2" value="search" />
    </label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<%if(request.getParameter("v2")!=null){%>
<table width="944" border="0" bgcolor="#FFFFFF">
  <tr>
    <td width="938"><table width="939" border="1" bordercolor="#006699">
      <tr>
      
        <td width="209" height="31" bgcolor="#0066FF"><div align="center" class="style50">CID</div></td>
        <td width="229" bgcolor="#0066FF"><div align="center" class="style50">Scheme Name</div></td>
        <td width="277" bgcolor="#0066FF"><div align="center" class="style50">GENDER</div></td>
    
           <td width="206" bgcolor="#0066FF"><div align="center" class="style50">Click to Apply</div></td>
      </tr>
    <% int index=0;
	try
	{
	String b1=request.getParameter("a2");
	   
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
                
		ResultSet rs = st.executeQuery("select * from sdetail where Sname like '%"+b1+"%'  and gender='"+so.getAttribute("gender")+"' and caste='"+so.getAttribute("caste")+"' order by ranks");

    while(rs.next())
		{	
       		
	 %>
      <tr>
      
        <td width="209"><div align="center"><%=rs.getString(1)%></div></td>
        <td width="229"><div align="center"><%=rs.getString(2)%></div></td>
        <td width="277"><div align="center"><%=rs.getString(3)%></div></td>
   
       
        <td width="206"><div align="center">
          <BUTTON name="f4" value="<%=rs.getString(1)%>" type="submit" class="style51" style="width:120px; height:30px; background-color:#006699;" >CLICK TO APPLY</BUTTON>
        </div></td>
      </tr><%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
       
    </table></td>
  </tr>
</table>
<%}%>
		 
		 </td>
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
    
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center></div>
</body>
</html>
s