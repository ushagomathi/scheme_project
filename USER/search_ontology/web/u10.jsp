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
<script type="text/javascript" src="js/general.js"></script> <script language="JavaScript" src="js/security.js"></script><SCRIPT LANGUAGE="JavaScript"> 

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
.style63 {font-size: 14px}
.style64 {color: #FFFFFF}
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
        <table width="956" height="919" border="0">
        <tr>
          <td width="950" height="915"><form action="apply" method="post">
	  <p>
	    <%HttpSession so = request.getSession(true);
   String ok=(String)request.getAttribute("ok");
      String ok1=(String)request.getAttribute("ok1");
   String msg="";
   String a="";
   String b="";
     if(ok1!=null)
   {
 
    a=(String)request.getAttribute("a1");
     }
	     
    %>
	    <table width="914" border="0">

  <tr>
    <td><table width="896" border="0">			               
      <%
  
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			System.out.println("select * from college where id='"+a+"'");
			ResultSet rs = st.executeQuery("select * from college where id='"+a+"'");
  %> 
<%
         if (rs.next()) {
				
           %>
             <tr>
    <td width="908" height="41" align="center"><span class="style22">Welcome To <%=rs.getString(3)%> College</span></td>
  </tr>
	 <tr>
        <td width="890"><strong>About US </strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(8)%></td>
      </tr> <tr>
        <td><strong>Admission Details </strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(7)%></td>
      </tr>
	  <tr>
        <td><strong>Location</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(6)%></td>
      </tr>
	  <tr>
        <td><strong>Address</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(7)%></td>
      </tr> <%
        }}
        catch(Exception e)
        {
        out.println(e);
        } %>        
      <tr>
        <td height="141"><table width="737" border="0" align="center" bgcolor="#00CCFF">
      <tr>
        <td height="35"><strong>DEPARTMENT AND SEATS AVAILABLE: <span class="style28"><%=a%></span></strong></td>
      </tr>
      <tr>
        <td><table width="734" border="0">
          <tr>
            <td><table width="735" border="0" bgcolor="#0033CC">
              <tr>
                <td width="361" height="29" align="center"><span class="style26 style4 style63 style64"><strong>DEPARTMENT</strong></span></td>
                 <td width="358" align="center"><span class="style26 style4 style63 style64"><strong>CASTE </strong></span></td> 
                 <td width="358" align="center"><span class="style26 style4 style63 style64"><strong>NO OF SEATS </strong></span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="40"><table width="735" border="0">  <%
  

 		try {
			int flag = 0;
			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from college where id='"+a+"' and  caste='"+so.getAttribute("caste")+"'");
  %>  <%
          while (rs.next()) {
				
           %>
              <tr>
                <td width="258"><div align="center" class="style27"><%=rs.getString(10)%></div></td>
                <td width="234"><div align="center" class="style27"><%=rs.getString(12)%></div></td>
                 <td width="229"><div align="center" class="style27"><%=rs.getString(11)%></div></td>
              </tr><%} }
        catch(Exception e)
        {
        out.println(e);
        } %>            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
      </tr>
      <tr>
        <td><table width="448" border="0" align="center">
			<tr>
                <td><strong>Collegeid </strong></td>
                <td>&nbsp;</td>
                <td><label>
                
                  <div align="left">
                    <input type="text" name="a1" value="<%=a%> " readonly>
                    </label>
                  </div></td>
              </tr>
              <tr>
                <td width="180" height="43"><strong>Name</strong></td>
                <td width="10">&nbsp;</td>
                <td width="244"><label>
                  
                    <div align="left">
                      <input type="text" name="a2" >
                      </label>
                    </div></td>      </tr>
			               <%
  String pro1=null;
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select distinct department from college where id='"+a+"' and caste='"+so.getAttribute("caste")+"'");
  %> 
          <tr>
            <td height="33"><div align="left" class="style18 style21"><strong>Category<span class="style5 style15 style18"><strong> </strong><span class="style17">*</span></span></strong></div></td>
            <td>&nbsp;</td>
            <td> <label>
               <div align="left">
                 <select name="a3" style="width:180px" class="style16">
                   
                   <%
          while (rs.next()) {
				pro1=rs.getString(1);
           %>
                   <option><%=pro1%></option>
                   <%} %>
                    </select>
               </div>
            </label>
               <label></label></td>    <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
              </tr>            


            
               <tr>
            <td height="46"><div align="right" class="style21">
              <div align="left">Caste <span class="style24 style22">*</span></div>
            </div></td>
            <td>&nbsp;</td>
            <td><span class="style23">
              <label for="a4"></label>
              <select name="a4" id="a4">
                <option value="select the caste">select the caste</option>
                <option value="<%=so.getAttribute("caste")%>"><%=so.getAttribute("caste")%></option>
          
              </select>
              &nbsp;&nbsp;<span id="err_a17"></span>
              
            </span></td>
          </tr>
              <tr>
                <td><strong>Date of Birth </strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <input type="text" name="a5">
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Communication Address </strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <textarea name="a6" cols="30" rows="4"></textarea>
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Marital Status </strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <select name="a7" >
                        <option value="Select Status">Select Status</option>
                        <option value="Single">Single</option>
                        <option value="Married">Married</option>
                      </select>
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Gender</strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <select name="a8" >
                        <option value="Select Gender">Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                      </select>
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Religion</strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <input type="text" name="a9">
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Nationity</strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <input type="text" name="a10">
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Date of Birth </strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <input type="text" name="a11">
                      </label>
                    </div></td>
              </tr>
              <tr>
                <td><strong>Phone no: </strong></td>
                <td>&nbsp;</td>
                <td><label>
                  
                    <div align="left">
                      <input type="text" name="a12">
                      </label>
                    </div></td>
              </tr>
              </table></td>
      </tr>
      <tr>
        <td><table width="743" border="0" align="center">
  <tr>
    <td width="737" height="30"><strong>SSLC/10th</strong></td>
  </tr>
  <tr>
    <td><table width="744" border="0">
      <tr>
        <td width="153" height="36"><strong>State Board </strong></td>
        <td width="176"><label>
          <input type="text" name="a13">
        </label></td>
        <td width="119"><strong>Subject</strong></td>
        <td width="278"><label>
          <input type="text" name="a14">
        </label></td>
      </tr>
      <tr>
        <td height="37"><strong>School Name </strong></td>
        <td><label>
          <input type="text" name="a15">
        </label></td>
        <td><strong>Grade</strong></td>
        <td><label>
          <input type="text" name="a16">
        </label></td>
      </tr>
      <tr>
        <td height="37"><strong>Year of Completion </strong></td>
        <td><label>
          <input type="text" name="a17">
        </label></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table></td>
      </tr>
      <tr>
        <td><table width="730" border="0" align="center">
  <tr>
    <td width="724"><strong>HSC/+12</strong></td>
  </tr>
  <tr>
    <td><table width="731" border="0">
      <tr>
        <td width="153" height="36"><strong>State Board </strong></td>
        <td width="179"><label>
          <input type="text" name="a18">
        </label></td>
        <td width="120"><strong>Subject</strong></td>
        <td width="261"><label>
          <input type="text" name="a19">
        </label></td>
      </tr>
      <tr>
        <td height="37"><strong>College</strong></td>
        <td><label>
          <input type="text" name="a20">
        </label></td>
        <td><strong>Grade</strong></td>
        <td><label>
          <input type="text" name="a21">
        </label></td>
      </tr>
      <tr>
        <td height="37"><strong>Year of Completion </strong></td>
        <td><label>
          <input type="text" name="a22">
        </label></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table></td>
      </tr>
      <tr>
        <td><table width="744" border="0" align="center">
  <tr>
    <td width="195">&nbsp;</td>
    <td width="151"><input type="submit" name="s1" value="Submit"></td>
    <td width="184"><input type="reset" name="s2" value="Cancel"></td>
    <td width="196">&nbsp;</td>
  </tr>
</table></td>
      </tr>
    </table>
    

<p align="center"><%=msg%></p></td>
  </tr>
</table>

    </form> </td>
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