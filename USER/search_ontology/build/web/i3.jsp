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
<title>Marketing Company | Inner</title>
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
if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.a5.value)){
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
	font-size: 18px;
	font-weight: bold;
	color: #0033CC;
}
.style64 {font-size: 18px}
.style65 {
	font-size: 14px;
	font-weight: bold;
}
-->
        </style><link rel="stylesheet" type="text/css" href="style.css" />		<script type="text/javascript" src="js/datetimepicker_css.js"></script>
<script type="text/javascript" src="js/general.js"></script>

</head>
<body id="inner">
<div id="wrapper">
  <div id="header"> <a href="#" id="logo" class="replace">Scheme Portal</a>
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
        <table width="956" height="482" border="0" align="center">
        <tr>
          <td width="950" height="478"><form action="register" method="post" onSubmit="return checkEmail(this)">
	  <%
   String ok=(String)request.getAttribute("ok");
    String ok1=(String)request.getAttribute("ok1");
   String msg="";
   String msg1=""; String msg2="";
   String a="";
   if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");    
   msg1=(String)request.getAttribute("d");
      msg2=(String)request.getAttribute("d1");
   }
    if(ok1!=null)
   {
   msg=(String)request.getAttribute("msg");    
  a=(String)request.getAttribute("a");
   }
    %>
  	  <table width="66%" border="0" align="center">
        <tr>
          <td width="93%" height="49" align="center" ><span class="style8 style62">REGISTRATION FORM </span></td>
        </tr>
        <tr>
          <td><table width="92%" border="0" align="center">  
            <tr>
              <td><div align="left"><span class="style24"></span></div></td>
              <td>&nbsp;</td>
              <td><div align="left"></div></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td width="31%" height="34" class="style65">UserName</td>
              <td width="4%">&nbsp;</td>
              <td width="49%"><label>
              <div align="left">
                <input type="text" id="a1" name="a1"  style="width:180px" maxlength="25"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" 
                     onBlur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=a%>" />
              </div>
              </label></td><td width="16%"><input  type="submit" name="Check" value="Check" class="buttons" onclick="return validatePage('a1'	 ,'err_a1'
			 ,'Should Not Be Blank');"  /></td>
            </tr>
            <tr>
              <td height="34" class="style65">Password</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <input type="password" id="a2" name="a2"  style="width:180px" maxlength="20" class="displayValue" 
onchange="return val_zero('a2','err_a2);"
											onblur="return val_password('a2','err_a2','Should Not Be Blank');" />
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="36" class="style65">Retype Password</td>
              <td>&nbsp;</td>
              <td><label>
                <div align="left">
                  <input type="password" id="a3" name="a3"  style="width:180px" maxlength="20" class="displayValue" 
onchange="return val_zero('a3','err_a3);"
											onblur="return val_password('a3','err_a3','Should Not Be Blank');" />
                  </div>
              </label></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="34" class="style65">Name</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <input type="text" id="a4" name="a4"  style="width:180px" maxlength="25"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a4','err_a4');" 
											onBlur="return txt_empty('a4','err_a4','Should Not Be Blank');" />
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="32" class="style65">Email Id</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <input type="text" id="a5" name="a5" style="width:180px" class="displayValue" onChange="return val_zero('a5','err_a5');" onBlur="return txt_empty('a5','err_a5','Should Not Be Blank');"/>
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="43" class="style65">Date of Birth</td>
              <td>&nbsp;</td>
              <td><label><div>
                <div align="left">
                    <input type="text" style="width:180px" id="a6" name="a6" readonly="true"  class="displayValue" onChange="return val_zero('a6','err_a6');" 
 onBlur="return txt_empty('a6','err_a6','Should Not Be Blank');"/>
                      <a href="javascript:NewCssCal('a6','yyyymmdd')"><img src="images/cal.jpg" alt="" width="16" height="16" /></a><span id="err_a6"></span></div>
              </div>
                <div align="left">
                  </label>
                </div></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="50" class="style65">Address</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <textarea id="a7" name="a7" style="width:180px" class="displayValue" onChange="return val_zero('a7','err_a7');" 
 onBlur="return txt_empty('a7','err_a7','Should Not Be Blank');"></textarea>
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
              <%

  String pro1=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
			ResultSet rs1 = st1.executeQuery("select * from question");
  %> 
          <tr>
            <td height="35" class="style65">Question</td>
			<td>&nbsp;</td>
            <td><label>
            <div align="left">
              <select name="a8" style="width:180px" class="style16">
                <%
          while (rs1.next()) {
				pro1=rs1.getString(2);
           %>
                <option><%=pro1%></option>
                <%} %>
              </select>
            </div>
            </label></td> <td>&nbsp;</td>
          </tr><%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
            <tr>
              <td height="39" class="style65">Answer</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <input type="text" id="a9" name="a9" style="width:180px" class="displayValue" onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('a9','err_a9');" onBlur="return txt_empty('a9','err_a9','Should Not Be Blank');"/>
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
			  <tr>
              <td height="32" class="style65">Mobile no</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <input type="text" id="a10" name="a10" style="width:180px"  maxlength="10"class="displayValue"  onKeyPress="return numbersonly();return nospecialcharacters();" onChange="return val_zero('a10','err_a10');" onBlur="return txt_empty('a10','err_a10','Should Not Be Blank');"/>
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
			 <tr>
              <td height="32" class="style65">CreditCard</td>
              <td>&nbsp;</td>
              <td><label>
              <div align="left">
                <input type="text" id="a11" name="a11" style="width:180px"  maxlength="11"class="displayValue"  onKeyPress="return numbersonly();return nospecialcharacters();" onChange="return val_zero('a11','err_a11');" onBlur="return txt_empty('a11','err_a11','Should Not Be Blank');"/>
              </div>
              </label></td> <td>&nbsp;</td>
            </tr>
             <tr>
                <td height="51"><span class="style65">Gender</span></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <p>
                  <label>
                    <input type="radio" name="a12" value="Male" id="a12_0" />
                    Male</label>
              
                  <label>
                    <input type="radio" name="a12" value="Female" id="a12_1" />
                    Female</label>
                  <br />
                </p>
              </div></td> <td>&nbsp;</td>
            </tr>
             <tr>
                <td height="55"><span class="style65">Age</span></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <label>
                <select name="a13" id="a13">
                  <option value="Select the age">Select the age</option>
                  <option value="10-20">10-20</option>
                  <option value="21-35">21-35</option>
                  <option value="36-50">36-50</option>
                  <option value="51-65">51-65</option>
                                                </select>
                </label>
              </div></td> <td>&nbsp;</td>
            </tr>
			  <tr>
                <td><span class="style65">Income Status</span></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <p>
                  <label>
                    <input type="radio" name="a14" value="Low" id="a14_0" />
                    Low</label>
               
                  <label>
                    <input type="radio" name="a14" value="High" id="a14_1" />
                    High</label>
          
                  <label>
                    <input type="radio" name="a14" value="Medium" id="a14_2" />
                    Medium</label>
                  <br />
                </p>
                <label></label>
              </div></td> <td>&nbsp;</td>
            </tr>
            	  <tr>
                <td><span class="style65">Religious Status</span></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <p>
                  <label>
                    <input type="radio" name="a15" value="BC" id="a14_0" />
                    BC</label>
                    <br />
                  <label>
                    <input type="radio" name="a15" value="OC" id="a14_1" />
                    OC</label>
               <br />
                  <label>
                    <input type="radio" name="a15" value="MBC" id="a14_2" />
                    MBC</label>
                  <br />
                   <label>
                    <input type="radio" name="a15" value="SC" id="a14_2" />
                   SC</label>
                  <br />
                </p>
                <label></label>
              </div></td> <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="49"><label>
             
              </label></td>
              <td>&nbsp;</td>
              <td><label>   <div align="left">
              <input  type="submit" name="Submit" value="Submit" class="buttons" onclick="return validatePage('a1|a2|a3|a4|a5|a6|a7|a8|a9|a10'	 ,'err_a1|err_a2|err_a3|err_a4|err_a5|err_a6|err_a7|err_a8|err_a9|err_a10'
			 ,'Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Submit2" value="Cancel" />
                  </div>
              </label></td>      <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
      </table>
  	  <div align="center" class="style12 style14"><%=msg %></div>
</form></td>
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
        <li><a href="index.jsp">Home</a></li>
      <li><a href="about.jsp">About</a></li>
        <li><a href="service.jsp">Services</a></li>
        <li><a href="register.jsp">Create Account</a></li>
        <li><a href="login.jsp">Login</a></li>
             <li><a href="contactus.jsp">Contact</a></li>
      </ul>
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
