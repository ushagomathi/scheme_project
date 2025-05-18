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
.style69 {font-size: 14px; font-weight: bold; color: #006633; }
.style70 {color: #000000}
.style71 {font-size: 14px; font-weight: bold; color: #000000; }
.style73 {
	font-size: 14px;
	color: #FFFFFF;
	font-weight: bold;
}
-->
        </style>
</head>
<body id="inner">
<div id="wrapper">
  <div id="header"style="background-color: #1f3b6e;  "> <a href="#" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; " class="replace">Scheme Portal</a>
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
  <div id="inner_content">
    <div id="inner_main_column" style="width:960px;" >
      <h1 align="center">ENGINEERING STREAMS</h1>
        <table width="956" height="470" border="0">
        <tr>
          <td height="466"><FORM action="p1" method="post" >
		<table  border="0" align="center" bgcolor="#FFFFFF">
		  

          <tr>
            <td width="939" height="460" >
			<table width="757" border="0" align="center" style="margin-left: 210px">
  <tr >
    <td width="465"><label>
    <input type="text" name="a2" placeholder="Type engineering" style="width:460px; height:30px;"/>
    </label></td>
    <td width="10">&nbsp;</td>
    <td width="268"><label>
      <input type="submit" name="v1" value="search" style="width:150px; height:34px; cursor: pointer;background:#4CAF50; color: white; border: 0; font-size: large;" />
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
<%if(request.getParameter("v1")!=null){%>
<table width="944" border="0" bgcolor="#FFFFFF" >
  <tr>
    <td width="938" height="42"><table width="939" style="border: 1px solid"; border-collapse="collapse"  >
      <tr>
      
        <td width="99" height="35" bgcolor="#0033FF" color="white"><div align="center" style="color :white" class="style69 style70 ">CID</div></td>
        <td width="214" bgcolor="#0033FF"><div align="center" style="color :white" class="style71">COLLEGE NAME</div></td>
        <td width="234" bgcolor="#0033FF"><div align="center"style="color :white" class="style71">DEPARTMENT</div></td>
        <td width="94" bgcolor="#0033FF"><div align="center" style="color :white" class="style71">SEATS</div></td>
        <td width="114" bgcolor="#0033FF"><div align="center" style="color :white" class="style71">CASTE</div></td>
           <td width="158" bgcolor="#0033FF"><div align="center"style="color :white" class="style71">APPLICATION</div></td>
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
                
		ResultSet rs = st.executeQuery("select * from college where (colname like '%"+b1+"%' || location like '%"+b1+"%'|| department like '%"+b1+"%') and caste='"+so.getAttribute("caste")+"' order by ranks");

    while(rs.next())
		{	
       		
	 %>
      <tr>
      
        <td width="102"><div align="center"><%=rs.getString(2)%></div></td>
        <td width="210"><div align="center"><%=rs.getString(4)%></div></td>
        <td width="234"><div align="center"><%=rs.getString(10)%></div></td>
        <td width="95"><div align="center"><%=rs.getString(11)%></div></td>
                <td width="114"><div align="center"><%=rs.getString(12)%></div></td>
        <td width="158" align="center"><button name="f3"  value="<%=rs.getString(1)%>" style="width:100px;border-radius: 10px; height:43px; cursor: pointer;background:#4CAF50; color: white; border: 0; font-size: large;"  > <span class="style73"> APPLY</span></button></td>
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
