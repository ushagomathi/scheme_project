<%-- 
    Document   : index
    Created on : Feb 14, 2013, 10:00:00 PM
    Author     : Perumal S
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
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
<!--        
		     <li><a href="a7.jsp">Feedback Graph</a></li>-->
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
          <td width="950" height="915"><form action="College" method="post">
	<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    a=(String)request.getAttribute("a");
   b=(String)request.getAttribute("b");
     }
    %>
	<table width="917" height="638" border="0" align="center">
      <tr>
        <td width="911" height="29">&nbsp;</td>
      </tr>
      <tr>
        <td height="551"><table align="center" width="463" height="421" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="171" height="30"><div align="right" class="style21 style5">
              <div align="left">College Id <span class="style24 style22">*</span></div>
            </div></td>
            <td width="10">&nbsp;</td>		
            <td width="276">
              <label>
              <label>
            <input type="text" id="a1" name="a1" maxlength="20"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" 
											onBlur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=a%>" />
										&nbsp;&nbsp;&nbsp;
						<span id="err_a1"></span>          </label>
            </label></td>
          </tr>
		  <%
  String pro1=null;
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select distinct cname from type");
  %> 
          <tr>
            <td height="35"><div align="right" class="style21 style6">
              <div align="left">Category<span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td> <label>
               <select name="a2" style="width:180px" class="style16">
			   <option><%=b%></option>
             <%
          while (rs.next()) {
				pro1=rs.getString(1);
           %>
              <option><%=pro1%></option><%} %>
            </select></label>
               <label>
               <input type="submit" name="s1" value="click" />
               </label></td>    <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
                </tr><%
			ArrayList al=(ArrayList)request.getAttribute("al");
			if(al!=null)
			{
			Iterator it;
			it=al.iterator();
		%>
          <tr>
            <td height="34"><div align="right" class="style21 style7">
              <div align="left">Type<span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>  
            <td>
               <label>
             
                <select name="a3" id="a3" >
			  <%
			  	while(it.hasNext())
			{
			
			%>
			  <option><%=it.next()%></option><%}}%>
              </select></label></td>
          </tr>
		     <tr>
            <td height="46"><div align="right" class="style21">
              <div align="left">College Name <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a18" name="a18" style="width:180px" class="displayValue" onChange="return val_zero('a18','err_a18');"  onBlur="return txt_empty('a18','err_a18',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a18"></span>
              
            </span></td>
          </tr>
          <tr>
            <td height="36"><div align="right" class="style21 style8">
              <div align="left">Location <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><label>
            <input type="text" id="a4" name="a4" maxlength="20"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a4','err_a4');" 
											onBlur="return txt_empty('a4','err_a4','Should Not Be Blank');" />
										&nbsp;&nbsp;&nbsp;
						<span id="err_a4"></span>          </label></td>
          </tr>
          <tr>
            <td height="44"><div align="right" class="style21 style9">
              <div align="left">Address <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><textarea id="a5" name="a5" style="width:180px" class="displayValue" onChange="return val_zero('a5','err_a5');"  onBlur="return txt_empty('a5','err_a5','Address Should Not Be Blank');"></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a5"></span>
              
            </span></td>
          </tr>
		    <tr>
            <td height="44"><div align="right" class="style21 style10">
              <div align="left">About Us <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><textarea id="a6" name="a6" style="width:180px" class="displayValue" onChange="return val_zero('a6','err_a6');"  onBlur="return txt_empty('a6','err_a6','Should Not Be Blank');"></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a6"></span>
              
            </span></td>
          </tr>  <tr>
            <td height="44"><div align="right" class="style21 style11">
              <div align="left">History <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><textarea id="a7" name="a7" style="width:180px" class="displayValue" onChange="return val_zero('a7','err_a7');"  onBlur="return txt_empty('a7','err_a7','Should Not Be Blank');"></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a7"></span>
              
            </span></td>
          </tr>  <tr>
            <td height="42"><div align="right" class="style21 style12">
              <div align="left">Department <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text" id="a8" name="a8" style="width:180px" class="displayValue" onChange="return val_zero('a8','err_a8');"  onBlur="return txt_empty('a8','err_a8',' Should Not Be Blank');"></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a8"></span>
              
            </span></td>
          </tr>
		    <tr>
            <td height="46"><div align="right" class="style21 style13">
              <div align="left">No Of Seats <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a9" name="a9" style="width:180px" class="displayValue" onChange="return val_zero('a9','err_a9');"  onBlur="return txt_empty('a9','err_a9',' Should Not Be Blank');">&nbsp;&nbsp;&nbsp;<span id="err_a9"></span>
              
            </span></td>
          </tr>
		    <tr>
            <td height="46"><div align="right" class="style21 style14">
              <div align="left">Department <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a10" name="a10" style="width:180px" class="displayValue" onChange="return val_zero('a10','err_a10');"  onBlur="return txt_empty('a10','err_a10',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a10"></span>
              
            </span></td>
          </tr>
		      <tr>
            <td height="46"><div align="right" class="style21 style15">
              <div align="left">No Of Seats <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a11" name="a11" style="width:180px" class="displayValue" onChange="return val_zero('a11','err_a11');"  onBlur="return txt_empty('a11','err_a11',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a11"></span>
              
            </span></td>
          </tr>
		     <tr>
            <td height="46"><div align="right" class="style21 style16">
              <div align="left">Department <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a12" name="a12" style="width:180px" class="displayValue" onChange="return val_zero('a12','err_a12');"  onBlur="return txt_empty('a12','err_a12',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a12"></span>
              
            </span></td>
          </tr>   <tr>
            <td height="46"><div align="right" class="style21 style17">
              <div align="left">No of Seats <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a13" name="a13" style="width:180px" class="displayValue" onChange="return val_zero('a13','err_a13');"  onBlur="return txt_empty('a13','err_a13',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a13"></span>
              
            </span></td>
          </tr>   <tr>
            <td height="46"><div align="right" class="style21 style18">
              <div align="left">Department <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a14" name="a14" style="width:180px" class="displayValue" onChange="return val_zero('a14','err_a14');"  onBlur="return txt_empty('a14','err_a14',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a14"></span>
              
            </span></td>
          </tr>
		     <tr>
            <td height="46"><div align="right" class="style21 style19">
              <div align="left">No of Seats <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a15" name="a15" style="width:180px" class="displayValue" onChange="return val_zero('a15','err_a15');"  onBlur="return txt_empty('a15','err_a15',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a15"></span>
              
            </span></td>
          </tr>
		     <tr>
            <td height="46"><div align="right" class="style21 style20">
              <div align="left">Department <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a16" name="a16" style="width:180px" class="displayValue" onChange="return val_zero('a16','err_a16');"  onBlur="return txt_empty('a16','err_a16',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a16"></span>
              
            </span></td>
          </tr>
		     <tr>
            <td height="46"><div align="right" class="style21">
              <div align="left">No of Seats <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23"><input type="text"  id="a17" name="a17" style="width:180px" class="displayValue" onChange="return val_zero('a17','err_a17');"  onBlur="return txt_empty('a17','err_a17',' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a17"></span>
              
            </span></td>
          </tr>
              <tr>
            <td height="46"><div align="right" class="style21">
              <div align="left">Caste <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23">
              <label for="a18"></label>
              <select name="a19" id="a18">
                <option value="select the caste">select the caste</option>
                <option value="BC">BC</option>
                <option value="MBC">MBC</option>
                <option value="SC">SC</option>
                <option value="OC">OC</option>
              </select>
              &nbsp;&nbsp;<span id="err_a17"></span>
              
            </span></td>
          </tr>
          <tr>
            <td height="55">&nbsp;</td>
            <td>&nbsp;</td>
            <td> <label for="label2"></label>
              <input type="submit" name="s2" value="Submit" class="buttons"
											onclick="return validatePage('txtDate|txtNoOfBikes','err_txtDate|err_txtNoOfBikes','User Name Should Not Be Blank|Password Should Not Be Blank');"/>
      <input type="reset" name="Submit2" value="Cancel" class="buttons"/></td>
          </tr>
        </table></td>
      </tr>
    </table></form> </td>
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
