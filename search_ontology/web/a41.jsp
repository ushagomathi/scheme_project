<%-- 
    Document   : index
   
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

            < !--Begin
            function checkEmail(myForm) {
                if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.a11.value)) {
                    return (true)
                }
                alert("Invalid E-mail Address! Please re-enter.")
                return (false)
            }
        //  End -->
        </script>
        <style type="text/css">
            <!--
            .style82 {
                font-weight: bold;
                font-size: 24px;
            }
            .style93 {font-size: 14px}
            -->
        </style>
    </head>
    <body id="inner">
        <div id="wrapper">
            <div id="header"style="background-color: #1f3b6e; "> <a href="#" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; " class="replace"> Scheme Portal</a>
                <div id="navigation" style="width:800px;" align="center">
                    <ul >
                        <li><a href="a1.jsp">Home</a></li>

                        <li><a href="a3.jsp">Scheme</a></li>
                        <li><a href="a4.jsp"> Add Counselling</a></li>
                        <li><a href="a41.jsp">Update Counselling </a></li>
                        <li><a href="a5.jsp">User details</a></li>

                    <!--    <li><a href="a7.jsp">Feedback Graph</a></li> -->
                        <li><a href="i4.jsp">Log-out</a></li>

                    </ul>
                </div>
                <!--navigation ends
                <div id="connect">
                    <p class="left">connect with us:</p>
                    <ul class="right">
                        <li id="twitter"><a href="#" class="replace">Twitter</a></li>
                        <li id="facebook"><a href="#" class="replace">Facebook</a></li>
                        <li id="in"><a href="#" class="replace">IN</a></li>
                    </ul>
                </div>-->
                <!--connect ends-->
            </div>
            <!--header ends-->
            <div id="inner_content">
                <div id="inner_main_column" style="width:600px;" >
                    <h1 class="style48"style="text-align:center; margin-left: 260px">MODIFY COLLEGE FOR COUNSELLING</h1>
                    <table width="500" height="700" border="0"style="background-color: white ;box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px">
                        <tr>
                            <td width="500" height="400"><form action="College1" method="post">
                                    <%
                                        String ok = (String) request.getAttribute("ok");
                                        String msg = "";

                                        if (ok != null) {
                                            msg = (String) request.getAttribute("msg");

                                        }
                                    %>
                                    <table width="917" height="638" border="0" align="center"  style="margin-top: -40px">
                                        <tr>
                                            
                                            <td width="911" height="29">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td height="551"><table align="center" width="463" height="421" border="0" cellpadding="1" cellspacing="1">
                                                    <tr><%
                                                        String  a10 = "", a11 = "", a12 = "",a = "", a1 = "", a2 = "", a3 = "", a4 = "", a5 = "", a6 = "", a7 = "", a8 = "", a9 = "";
                                                        try {
                                                            int flag = 0;

                                                            String url = "jdbc:mysql://localhost:3306/purchases1";
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con = DriverManager.getConnection(url, "root", "root");
                                                            Statement st = con.createStatement();
                                                            ResultSet rs = st.executeQuery("select * from college where id='" + request.getParameter("a1") + "'");
                                                            while (rs.next()) {
                                                                a = rs.getString(1);
                                                                a1 = rs.getString(3);
                                                                a2 = rs.getString(4);
                                                                a3 = rs.getString(5);
                                                                a4 = rs.getString(6);
                                                                a5 = rs.getString(7);
                                                                a6 = rs.getString(8);
                                                                a7 = rs.getString(9);
                                                                a8 = rs.getString(10);
                                                                a9 = rs.getString(11);
                                                                a10 = rs.getString(12);
                                                               
                                                            }
                                                        } catch (Exception e) {
                                                            out.println(e);
                                                        }
                                                        %> 
                                                        <td width="171" height="30"><div align="right" class="style21 style5 style82 style93">
                                                                <div align="left">College Id <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td width="10">&nbsp;</td>		
                                                        <td width="276">
                                                            <label>
                                                                <label>
                                                                    <input type="text" id="a1" style="width: 175px" name="a1" maxlength="20"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1', 'err_a1');" 
                                                                           onBlur="return txt_empty('a1', 'err_a1', 'Should Not Be Blank');" value="<%=a%>" />
                                                                    &nbsp;&nbsp;&nbsp;
                                                                    <span id="err_a1"></span>          </label>
                                                            </label>
                                                            <input type="submit" name="s0" value="Search" style="padding: 2px;background-color:#4CAF50;color:white; border: 0px; margin-bottom: 10px" /></td>
                                                    </tr>

                                                    <tr><%
                                                        String pro1 = null;
                                                        try {
                                                            int flag = 0;

                                                            String url = "jdbc:mysql://localhost:3306/purchases1";
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con = DriverManager.getConnection(url, "root", "root");
                                                            Statement st = con.createStatement();
                                                            ResultSet rs = st.executeQuery("select distinct cname from type");
                                                        %> 
                                                        <td height="35"><div align="right" class="style21 style6 style82 style93">
                                                                <div align="left">Category<span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td> <label>
                                                                <select name="a2" style="width:180px" class="style16">
                                                                    <option><%=a1%></option>
                                                                    <%
                                                                        while (rs.next()) {
                                                                            pro1 = rs.getString(1);
                                                                    %>
                                                                    <option><%=pro1%></option>
                                                                    <%} %>
                                                                </select>
                                                            </label>
                                                            <label></label></td>    <%
                                                                } catch (Exception e) {
                                                                    out.println(e);
                   } %>
                                                    </tr>
                                                    <tr><%
                                                        String pro2 = null;
                                                        try {
                                                            int flag = 0;

                                                            String url = "jdbc:mysql://localhost:3306/purchases1";
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            Connection con = DriverManager.getConnection(url, "root", "root");
                                                            Statement st = con.createStatement();
                                                            ResultSet rs = st.executeQuery("select distinct type from type");
                                                        %> 
                                                        <td height="35"><div align="right" class="style21 style6 style82 style93">
                                                                <div align="left">Category<span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td> <label>
                                                                <select name="a3" style="width:180px" class="style16">
                                                                    <option><%=a2%></option>
                                                                    <%
                                                                        while (rs.next()) {
                                                                            pro1 = rs.getString(1);
                                                                    %>
                                                                    <option><%=pro1%></option>
                                                                    <%} %>
                                                                </select>
                                                            </label>
                                                            <label></label></td>    <%
                                                                } catch (Exception e) {
                                                                    out.println(e);
                   }%>
                                                    </tr>
													
                                                    <tr>
                                                        <td height="46"><div align="right" class="style21 style82 style93">
                                                                <div align="left">College Name <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23"><input type="text"  id="a18" name="a18" style="width:180px" class="displayValue" value="<%=a3%>" onChange="return val_zero('a18', 'err_a18');"  onBlur="return txt_empty('a18', 'err_a18', ' Should Not Be Blank');">&nbsp;&nbsp;<span id="err_a18"></span>

                                                            </span></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="36"><div align="right" class="style21 style8 style82 style93">
                                                                <div align="left">Location <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><label>
                                                                <input type="text" id="a4" style="width: 180px;"name="a4" maxlength="20"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a4', 'err_a4');" 
                                                                       onBlur="return txt_empty('a4', 'err_a4', 'Should Not Be Blank');" value="<%=a4%>" />
                                                                &nbsp;&nbsp;&nbsp;
                                                                <span id="err_a4"></span>          </label></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="44"><div align="right" class="style21 style9 style82 style93">
                                                                <div align="left">Address <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23"><textarea id="a5" name="a5" style="width:180px" class="displayValue" onChange="return val_zero('a5', 'err_a5');" value="<%=a5%>" onBlur="return txt_empty('a5', 'err_a5', 'Address Should Not Be Blank');"><%=a5%></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a5"></span>

                                                            </span></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="44"><div align="right" class="style21 style10 style82 style93">
                                                                <div align="left">About Us <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23"><textarea id="a6" name="a6" style="width:180px" class="displayValue" onChange="return val_zero('a6', 'err_a6');"  value="<%=a6%>"onBlur="return txt_empty('a6', 'err_a6', 'Should Not Be Blank');"><%=a6%></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a6"></span>

                                                            </span></td>
                                                    </tr>  <tr>
                                                        <td height="44"><div align="right" class="style21 style11 style82 style93">
                                                                <div align="left">History <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23"><textarea id="a7" name="a7" style="width:180px" class="displayValue" onChange="return val_zero('a7', 'err_a7');" value="<%=a7%>"  onBlur="return txt_empty('a7', 'err_a7', 'Should Not Be Blank');"><%=a7%></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a7"></span>

                                                            </span></td>
                                                    </tr>  <tr>
                                                        <td height="42"><div align="right" class="style21 style12 style82 style93">
                                                                <div align="left">Department <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23"><input type="text" id="a8" name="a8" style="width:180px" class="displayValue" onChange="return val_zero('a8', 'err_a8');" value="<%=a8%>" onBlur="return txt_empty('a8', 'err_a8', ' Should Not Be Blank');"></textarea>&nbsp;&nbsp;&nbsp;<span id="err_a8"></span>

                                                            </span></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="46"><div align="right" class="style21 style13 style82 style93">
                                                                <div align="left">No Of Seats <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23"><input type="text"  id="a9" name="a9" style="width:180px" class="displayValue" onChange="return val_zero('a9', 'err_a9');" value="<%=a9%>" onBlur="return txt_empty('a9', 'err_a9', ' Should Not Be Blank');">&nbsp;&nbsp;&nbsp;<span id="err_a9"></span>

                                                            </span></td>
                                                    </tr>

                                                    <tr>
                                                        <td height="46"><div align="right" class="style21 style82 style93">
                                                                <div align="left">Caste <span class="style24 style22">*</span></div>
                                                            </div></td>
                                                        <td>&nbsp;</td>
                                                        <td><span class="style23">

                                                                <select name="a19" id="a18" style="width: 183px">
																<option value="<%=a10%>"><%=a10%></option>
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
                                                            <input name="s2" type="submit" style="padding: 10px;background-color:#4CAF50;color:white; border: 0px; border-radius:8px; margin-bottom: 10px" class="buttons" value="Update"
                                                                  />&nbsp;&nbsp;&nbsp; <input name="s3" type="submit" style="padding: 10px;background-color:#4CAF50;color:white; border: 0px; border-radius:8px; margin-bottom: 10px" class="buttons" value="Delete"
                                                                  />&nbsp;&nbsp;&nbsp;

                                                            <input name="Submit3" type="reset" style="padding: 10px;background-color:#4CAF50;color:white; border: 0px; border-radius:8px; margin-bottom: 10px" class="buttons" value="Cancel"/></td>
                                                    </tr>
                                                </table></td>
                                        </tr>
                                    </table></form> </td>
                        </tr>
                    </table>
                    <p><%=msg%></p>
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
