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
.style65 {
	font-size: 14px;
	font-weight: bold;
}
.style67 {font-size: 14px; font-weight: bold; color: #FFFFFF; }
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
      <table width="914" border="0" align="center">
  <tr>
    <td width="908" height="56">HI ADMIN ,</td>
  </tr>
  <tr>
    <td align="center"><form action="video" method="post"  >
<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
 
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");

     }
    %>
            <table width="667" border="1" bordercolor="#006699">
                    <tr>
                      <td width="657" height="44" align="center" bgcolor="#006699" ><span class="style67">ADD SCHEME  </span></td>
                    </tr>
                    <tr>
                      <td height="275" align="center"><table width="625" border="0">
                          <% int index=0;
	try
	{
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
 int v,v1,v2=0;
		int flag=0;
		String url="jdbc:mysql://localhost:3306/purchases1";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                Statement st2=con.createStatement();
                Statement st3=con.createStatement();
                
		ResultSet rs = st.executeQuery("select max(sid) from sdetail");

    if(rs.next())
		{	
       		v1=Integer.parseInt(rs.getString(1));	
                            
                v2=v1+1;
                	}	
	 %>
                        <tr>
                            <td width="193" height="57" style="text-align: left"><h3 class="style65"><span class="style3">Scheme  Id </span></h3></td>
                          <td width="10">&nbsp;</td>
                          <td width="408" align="left"><label>
                              <input type="text" id="a1" name="a1"  style="width:180px" maxlength="25"class="displayValue" onkeypress="return nospecialcharacters();" onchange="return val_zero('a1','err_a1');" 
                     onblur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=v2%>" readonly/>
                          </label></td>
                        </tr>
                          <%
 
                           								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
                          <tr>
                            <td height="39" style="text-align: left"><h3 class="style65">Schemes<span class="style3"> Name </span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a2" cols="50" rows="5"></textarea>
                            </label></td>
                          </tr>
                           <tr>
                <td height="51"><h3 class="style65"><span class="style3">Gender </span></h3></td>
                <td>&nbsp;</td>
              <td align="left">
               
                <p>
                  <label>
                    <input type="radio" name="a3" value="Male" id="a3_0" />
                    Male</label> 
                  <label>
                    <input type="radio" name="a3" value="Female" id="a3_1" />
                    Female</label>
                 
                </p></td> 
            </tr>
          
			                    
                          <tr>
                            <td height="98" style="text-align: left"><h3 class="style65"><span class="style3">Scheme Description </span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a4" cols="50" rows="5"></textarea>
                            </label></td>
                          </tr>
                           <tr>
                            <td height="98" style="text-align: left"><h3 class="style65"><span class="style3">Eligiblity</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a5" cols="50" rows="5"></textarea>
                            </label></td>
                          </tr>
                           <tr>
                            <td height="98" style="text-align: left"><h3 class="style65"><span class="style3">Website</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a6" cols="50" rows="5"></textarea>
                            </label></td>
                          </tr>
                         <tr>
                            <td height="98" style="text-align: left"><h3 class="style65"><span class="style3">Scheme Type </span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a7" cols="50" rows="5"></textarea>
                            </label></td>
                        </tr>
                          <tr>
                            <td height="98" style="text-align: left"><h3 class="style65">Scheme Coverage</h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a8" cols="50" rows="5"></textarea>
                            </label></td>
                          </tr>
                          <tr>
                         <td height="52" style="text-align: left"><h3 class="style65"><span class="style3">Caste</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><span class="style23">
                              <select name="a9" >
                                <option value="select the caste">select the caste</option>
                                <option value="BC">BC</option>
                                <option value="MBC">MBC</option>
                                <option value="SC">SC</option>
                                <option value="OC">OC</option>
                              </select>
                            </span></td>
                          </tr>
                          <tr>
                            <td height="45" style="text-align: left"><span class="style65">Video</span></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="file" name="a10" />
                            </label></td>
                          </tr>
                      
                        
                              <tr>
                            <td height="30" style="text-align: left"><h3>&nbsp;</h3></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
						    <tr>
                            <td style="text-align: left"><h3>&nbsp;</h3></td>
                            <td>&nbsp;</td>
                            <td><label>
                              <input  type="submit" name="s1" value="Submit" class="buttons"   />
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="reset" name="s2" value="Cancel" />
                            </label></td>
                          </tr>
                            <tr>
                            <td height="30" style="text-align: left"><h3>&nbsp;</h3></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                        <%=msg%></td>
                    </tr>
              </table>
          </FORM></td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
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
