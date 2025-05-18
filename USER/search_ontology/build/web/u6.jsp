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
.style66 {
	font-size: 18px;
	color: #006633;
}
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
            <td height="460" >
			<table width="670" border="0" align="center">
  <tr>
    <td width="470"><label>
    <input type="text" name="a2"  style="width:460px; height:40px;"/>
    </label></td>
    <td width="10">&nbsp;</td>
    <td width="185"><label>
      <input type="submit" name="s1" value="search" style="width:180px; height:50px; background:#336633"/>
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
<%if(request.getParameter("s1")!=null){%>
			
			
			
			
			<table width="792" border="0" align="center">
           <tr>
             <td width="786" height="57" align="center" bgcolor="#FFFFFF"><span class="style3 style5 style7 style66"><strong>PRODUCT FOR SALES</strong></span></td>
           </tr>
           <tr>
             <td align="center"><table width="731" border="0" cellpadding="5px" cellspacing="5px"">
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
                
		ResultSet rs = st.executeQuery("select * from product where pname like '%"+b1+"%' || type like '%"+b1+"%' and age='"+so.getAttribute("age")+"' and status='"+so.getAttribute("income")+"'and gender='"+so.getAttribute("gender")+"' order by ranks" );

    while(rs.next())
		{	
       		
	 %>
                 <tr>
                   <td width="453" height="192" align="center"><table width="296" border="0">
  <tr>
    <td align="center" ><img src="product/<%=rs.getString(1)%>.jpg" width="230" height="195" /></td>
  </tr>
  <tr>
    <td align="center"><span class="style1"><%=rs.getString(8)%></span></td>
  </tr>
   <tr>
    <td><span class="style1 style71">Category:<%=rs.getString(8)%></span></td>
  </tr>
  <tr>
    <td><span class="style8 style71">Detail:</span>
                     <span class="style71"></strong><%=rs.getString(4)%></span></td>
  </tr>
  <tr>
    <td><span class="style71"><strong>Price:<%=rs.getString(5)%></strong></span></td>
  </tr>
    <tr>
    <td> <span class="style71"><strong>Discount:<%=rs.getString(6)%></strong></span></td>
  </tr>
   <tr>
    <td> <span class="style71"><strong>Stock:<%=rs.getString(7)%></strong></span></td>
  </tr>
</table>
<br>                   </td>
                 
                   <td width="243" align="center"><p><br>
                       <BUTTON name="f1"  class="style3" style="width:180px; height:30px; background:#336633;" value="<%=rs.getString(1)%>">
                       <strong> ADD CART </strong>
                       <BUTTON />
                     </p>
                     <p>&nbsp;</p>
                     <p><br/>
                       <br>
                         <Button name="f2"  class="style3" style="width:180px; height:30px; background:#336633" value="<%=rs.getString(1)%>"> 
                         <strong>FEEDBACK</strong></p></td>
                </tr>
               <%
 
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
    <p class="left">Best Marketing Company</p>
  
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center></div>
</body>
</html>
s