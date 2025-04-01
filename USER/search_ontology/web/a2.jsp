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
if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.a111.value)){
return (true)
}
alert("Invalid E-mail Address! Please re-enter.")
return (false)
}
//  End -->
</script>
        <style type="text/css">
<!--
.style63 {font-weight: bold}
.style67 {font-weight: bold; font-size: 14px; }
.style68 {font-size: 14px}
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
      <table width="914" border="0" align="center">
  <tr>
    <td width="908" height="56">HI ADMIN ,</td>
  </tr>
  <tr>
    <td><form action="product" method="post">
<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
 
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");

     }
    %>
            <table width="891" height="518" border="0">
              <tr>
                <td width="885" height="514" align="center"><table width="510" border="0">
                    <tr>
                      <td width="504" height="31" align="center" ><span class="style63">ADD PRODUCT</span></td>
                    </tr>
                    <tr>
                      <td height="275" align="center"><table width="486" border="0">
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
                
		ResultSet rs = st.executeQuery("select max(pid) from product");

    if(rs.next())
		{	
       		v1=Integer.parseInt(rs.getString(1));	
                            
                v2=v1+1;
                	}	
	 %>
                        <tr>
                            <td width="195" height="31" style="text-align: left"><h3 class="style67"><span class="style3">Product Id </span></h3></td>
                          <td width="10">&nbsp;</td>
                          <td width="267" align="left"><label>
                              <input type="text" id="a1" name="a1"  style="width:180px" maxlength="25"class="displayValue" onkeypress="return nospecialcharacters();" onchange="return val_zero('a1','err_a1');" 
                     onblur="return txt_empty('a1','err_a1','Should Not Be Blank');" value="<%=v2%>" readonly="true"/>
                            </label></td>
                        </tr>
                          <%
 
                           								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
                          <tr>
                            <td height="39" style="text-align: left"><h3 class="style67"><span class="style3">Product Name </span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="text" id="a2" name="a2"  style="width:180px" maxlength="80" class="displayValue" 
onchange="return val_zero('a2','err_a2);"
											onblur="return val_password('a2','err_a2','Should Not Be Blank');" />
                            </label></td>
                          </tr>
                           <tr>
                <td height="51"><div align="left" class="style67">Gender</div></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <p>
                  <label>
                    <input type="radio" name="a10" value="Male" id="a10_0" />
                    Male</label>
              <br>
                  <label>
                    <input type="radio" name="a10" value="Female" id="a10_1" />
                    Female</label>
                  <br />
                </p>
              </div></td> <td>&nbsp;</td>
            </tr>
             <tr>
                <td height="55"><div align="left" class="style67">Age</div></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <label>
                <select name="a11" id="a11">
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
                <td><div align="left" class="style67">Income Status</div></td>
                <td>&nbsp;</td>
              <td><div align="left">
                <p>
                  <label>
                    <input type="radio" name="a12" value="Low" id="a12_0" />
                    Low</label>
               <br>
                  <label>
                    <input type="radio" name="a12" value="High" id="a12_1" />
                    High</label><br>
          
                  <label>
                    <input type="radio" name="a12" value="Medium" id="a12_2" />
                    Medium</label>
                  <br />
                </p>
               
              </div></td> <td>&nbsp;</td>
            </tr>
                          <tr>
                            <td height="38" style="text-align: left"><h3 class="style67"><span class="style3">Type</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><input type="text" id="a3" name="a3"  style="width:180px" maxlength="20" class="displayValue" 
onchange="return val_zero('a3','err_a3);"
											onblur="return val_password('a3','err_a3','Should Not Be Blank');" /></td>
                          </tr>
                          <tr>
                            <td height="34" style="text-align: left"><h3 class="style67"><span class="style3">Product image </span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="file" name="a4" style="width:80%" />
                            </label></td>
                          </tr>
                          <tr>
                            <td height="98" style="text-align: left"><h3 class="style67"><span class="style3">Details</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <textarea name="a5" cols="35" rows="5"></textarea>
                            </label></td>
                          </tr>
                          <tr>
                            <td height="38" style="text-align: left"><h3 class="style67"><span class="style3">Selling Price</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="text" id="a6" name="a6" style="width:180px"  maxlength="10"class="displayValue"  onkeypress="return numbersonly();return nospecialcharacters();" onchange="return val_zero('a6','err_a6');" onblur="return txt_empty('a6','err_a6','Should Not Be Blank');"/>
                            </label></td>
                          </tr>
                          <tr>
                            <td height="38" style="text-align: left"><h3 class="style67"><span class="style3">Cost Price</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="text" id="a9" name="a9" style="width:180px"  maxlength="10"class="displayValue"  onkeypress="return numbersonly();return nospecialcharacters();" onchange="return val_zero('a9','err_a9');" onblur="return txt_empty('a9','err_a9','Should Not Be Blank');"/>
                            </label></td>
                          </tr>
                          <tr>
                            <td height="34" style="text-align: left"><h3 class="style67"><span class="style3">Discount</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="text" id="a7" name="a7" style="width:180px"  maxlength="10"class="displayValue"  onkeypress="return numbersonly();return nospecialcharacters();" onchange="return val_zero('a7','err_7');" onblur="return txt_empty('a7','err_a7','Should Not Be Blank');"/>
                            </label></td>
                          </tr>
                          <tr>
                            <td height="34" style="text-align: left"><h3 class="style67"><span class="style3">No of Stock</span></h3></td>
                            <td>&nbsp;</td>
                            <td align="left"><label>
                              <input type="text" id="a8" name="a8" style="width:180px"  maxlength="10"class="displayValue"  onkeypress="return numbersonly();return nospecialcharacters();" onchange="return val_zero('a8','err_a8');" onblur="return txt_empty('a8','err_a8','Should Not Be Blank');"/>
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
                              <input  type="submit" name="s1" value="Submit" class="buttons" onclick="return validatePage('a1|a2|a3|a4|a5|a6|a7|a8'	 ,'err_a1|err_a2|err_a3|err_a4|err_a5|err_a6|err_a7|err_a8'
			 ,'Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
                              &nbsp;&nbsp;&nbsp;&nbsp;
                              <input type="reset" name="s2" value="Cancel" />
                            </label></td>
                          </tr>
                        </table>
                        <%=msg%></td>
                    </tr>
                </table></td>
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
