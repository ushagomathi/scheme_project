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
<script type="text/javascript" src="js/general.js"></script> <SCRIPT LANGUAGE="JavaScript"> 

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
</script></head>
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
          <td width="950" height="915"><form action="mfeedback" method="post">
	  <p>
	    <%HttpSession so = request.getSession(true);
   String ok=(String)request.getAttribute("ok");
      String ok1=(String)request.getAttribute("ok1");
   String msg="";
   String a="";
   String b="";
    String b1="",b2="",b3="",b4="",b5="",b6="",b7;
     if(ok1!=null)
   {
 
    a=(String)request.getAttribute("a1");
     }
	     
    %>
	    <table width="941" border="0">
  <tr>
    <td width="935" height="41" align="center">&nbsp;</td>
  </tr>  <%
	try
	{
	   
            
 
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
        	b2=rs.getString(8);
                	b3=rs.getString(5);
                        	b4=rs.getString(7);
	 %><%
 
                               							
              		}										
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
         
  <tr>
    <td><table width="942" border="0">			               
      <%
  
 		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st = con.createStatement();
		
			ResultSet rs = st.executeQuery("select * from sdetail where sid='"+a+"'and  gender='"+so.getAttribute("gender")+"'and caste='"+so.getAttribute("caste")+"'");
  %> 
<%
         if (rs.next()) {
				
           %>
	 <tr>
        <td width="936"><strong>Scheme Name</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(2)%></td>
      </tr> <tr>
        <td><strong>Gender</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(3)%></td>
      </tr>
	  <tr>
        <td><strong>Description</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(4)%></td>
      </tr>
	  <tr>
        <td><strong>Eligibility</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(5)%></td>
      </tr>
       <tr>
        <td><strong>Website</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(6)%></td>
      </tr> <tr>
        <td><strong>Scheme Type</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(7)%></td>
      </tr> <tr>
        <td><strong>Scheme Coverage</strong></td>
      </tr>
	   <tr>
        <td><%=rs.getString(8)%></td>
      </tr> <%
        }}
        catch(Exception e)
        {
        out.println(e);
        } %>        
      <tr>
        <td height="141"><table width="737" border="0" align="center" bgcolor="#006699">
         <tr>
        <td><table width="734" border="0">
       
          <tr>
            <td height="40"><table width="735" border="0">  <%
  String pro2="",pro1="";

 		try {
                    
			int flag = 0;
			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st1 = con.createStatement();
			ResultSet rs1 = st1.executeQuery("select * from sdetail where sid='"+a+"' and  gender='"+so.getAttribute("gender")+"'");
  %>  <%
          while (rs1.next()) {
		 pro2="video\\"+rs1.getString(1)+".mp4";
                System.out.println(pro2);
              pro1=rs1.getString(2);                                                 }
           %><TR><TD>
			<video width="600"  controls>
  <source src="<%=pro2%>" type="video/mp4" >
  <source src="<%=pro2%>" type="video/ogg">

</video> 
           </TR> <%}
        catch(Exception e)
        {
        out.println(e);
        } %>            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>
          <p>&nbsp;</p></td>
      </tr>
    </table>
    

<p align="center"><table width="923" border="0" align="center">
  <tr>
    <td width="824" height="27" align="">FEEDBACK FORM</td>
  </tr>
  <tr>
    <td><table width="405" border="0" cellspacing="4px" align="center">
                                <tr>
                                  <td width="159" height="32"><span class="style71">Product Id </span></td>
                                  <td width="7">&nbsp;</td>
                                  <td width="219"><label>
                                    <input type="text" name="a1" value="<%=a%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="39"><span class="style71">Product Name </span></td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a2" value="<%=pro1%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="40"><span class="style71">Rating</span></td>
                                  <td>&nbsp;</td>
                                  <td><span class="style50">
                                    <label>
                                    <input type="radio" name="a4" value="1" />
                                      1 </label>
                                    <label>
                                    <input type="radio" name="a4" value="2" />
                                      2 </label>
                                    <label>
                                    <input type="radio" name="a4" value="3" />
                                    </label>
                                    <label> 3
                                      <input type="radio" name="a4" value="4" />
                                      4 </label>
                                    <label>
                                    <input type="radio" name="a4" value="5" />
                                    </label>
                                    5</span></td>
                                </tr> <tr>
                                  <td height="68"><span class="style71">Rating</span></td>
                                  <td>&nbsp;</td>
                                  <td><span class="style50">
                                    <label>
                                    <input type="radio" name="a6" value="Good" />
                                     Good </label>
                                    <label>
                                    <input type="radio" name="a6" value="Better" />
                                      Better </label>
                                    <label>
                                   <br /> <input type="radio" name="a6" value="Best" /> Best                                    </label>
                                     <label>
                                    <input type="radio" name="a6" value="Worst" /> Worst                                    </label>
                                    </span></td>
                                </tr>
                                  
                                <tr>
                                  <td height="44"><span class="style71">Feedback</span></td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <textarea id="a5" name="a5" >            </textarea>
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
                                
                            </table>
      <p><%=msg%></p><table width="866" border="0">
                      <tr>
                        <td width="860" class="style74">Comments About the Product </td>
                      </tr>
                      <tr>
                        <td><table width="851" border="0"> 
                          <% 
	try
	{
            
             	
		int flag=0;
		String url="jdbc:mysql://localhost:3306/purchases1";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet ra=st.executeQuery("select * from feedback where pid='"+a+"' ");

    while(ra.next())
		{						
	 %>
                          <tr>
                            <td width="845" height="45"><div align="left"><span class="style78"><span class="style79">Group Member Name:</span><%=ra.getString(5)%> </span></div></td>
                          </tr>
                          <tr>
                            <td height="35"><div align="left"><span class="style78"><span class="style79">Comments: </span><%=ra.getString(4)%></span></div></td>
                          </tr><%
                } 
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
                        </table></td>
                      </tr>
                    </table></td>
  </tr>
</table>
</p></td>
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