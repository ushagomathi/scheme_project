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
       <table   border="0" align="center">
        <tr>
          <td width="784" height="621" ><form action="purchase2" method="post">
           	<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
 String a11="";
 String a12="";
 String b1="",b2="",b3="",b4="",b5="",b6="",b7;
String amt="",dis="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
      b1=(String)request.getAttribute("a1");
   b2=(String)request.getAttribute("a2");
      b3=(String)request.getAttribute("a3");
   b4=(String)request.getAttribute("a6");
      amt=(String)request.getAttribute("a5");
   dis=(String)request.getAttribute("a4");
   a11=(String)request.getAttribute("a7");
   a12=(String)request.getAttribute("a8");
     b5=(String)request.getAttribute("un");
   

     }
    %>
		<table  border="0"  bgcolor="#FFFFFF">
		  

          <tr>
            <td width="778" height="597"  align="center" ><table width="778" border="0">
                    <%
	try
	{
	   
            
             	   HttpSession so = request.getSession(true);
                 
 System.out.println(  so.getAttribute("a1"));
int v,v1,v2=0,v3=0,v4=0,v5=0;

		int flag=0;
		String url="jdbc:mysql://localhost:3306/purchases1";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                Statement st2=con.createStatement();
                Statement st3=con.createStatement();
                
		ResultSet rs = st.executeQuery("select * from product where  pid='"+ so.getAttribute("a1")+"'");

    if(rs.next())
		{	
       	b1=rs.getString(1);
        	b2=rs.getString(2);
                	b3=rs.getString(6);
                        	b4=rs.getString(7);
                                	
                                        
                                        
            v1=Integer.parseInt(rs.getString(5));
                v2=Integer.parseInt(rs.getString(6));
                v3=(v1*v2)/100;
                v4=v1-v3;
                dis=v3+"";
                amt=v4+"";
                            
	 %>
                    <tr>
                      <td width="772" height="35" align="center"><span class="style49">Payment Form </span></td>
                    </tr>
                    <tr>
                      <td width="772" height="521" align="center"><table width="751" height="519" border="0">
                          <tr>
                            <td width="405" height="515"><table width="405" border="0" cellspacing="10px">
                                <tr>
                                  <td width="159">Product Id </td>
                                  <td width="7">&nbsp;</td>
                                  <td width="219"><label>
                                    <input type="text" name="a1" value="<%=b1%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>Product Name </td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a2" value="<%=b2%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>Price </td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a3" value="<%=b3%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>Discount</td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a4" value="<%=dis%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>Amount</td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a5" value="<%=amt%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>Stock Available</td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a6" value="<%=b4%>" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>No of Product </td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" id="a7" name="a7" style="width:180px"  maxlength="10"class="displayValue"  onKeyPress="return numbersonly();return nospecialcharacters();" onChange="return val_zero('a7','err_a7');" onBlur="return txt_empty('a7','err_a7','Should Not Be Blank');" value="<%=a11%>"/>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input name="s1" type="submit"  value="Submit" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="reset" name="s2" value="Cancel" />
                                  </label></td>
                                </tr>
                              <%
 
                               							
              		}										
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
                              </table>
                                <%if(request.getParameter("s1")!=null){%>
                                <table width="410" border="0">
                                  <tr>
                                    <td width="169">Total Amount</td>
                                    <td width="10">&nbsp;</td>
                                    <td width="217"><label>
                                      <input type="text" name="a8" value="<%=a12%>" />
                                    </label></td>
                                  </tr>
                                  
                                  <tr>
                                    <td height="32">Credit Card No</td>
                                    <td>&nbsp;</td>
                                    <td><input type="text" id="a10" name="a10" style="width:180px"  maxlength="25"class="displayValue"  onKeyPress="return numbersonly();return nospecialcharacters();" onChange="return val_zero('a10','err_a10');" onBlur="return txt_empty('a10','err_a10','Should Not Be Blank');"/></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td><label>
                                      <input name="s3" type="submit" class="style3" style="width:80px; height:30px; background:#336633" value="Submit" />
                                      &nbsp;&nbsp;&nbsp;&nbsp;
                                      <input type="reset" name="s4" value="Cancel" class="style3" style="width:80px; height:30px; background:#336633" />
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                  </tr>
                                </table>
                              <%}%>                            </td>
                            <td width="336"></td>
                    </tr>
                </table>
              <%=msg%></td></tr>
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