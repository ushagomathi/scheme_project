<%-- 
    Document   : index
    Created on : Feb 14, 2013, 10:00:00 PM
    Author     : Perumal S
--%>
<%@page import="java.io.IOException"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>
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
        <table width="956" height="919" border="0">
          <tr>
            <td><FORM action="" method="post" >
            <table  border="0">
              <tr>
                <td width="826" ><table  border="0" align="center">
      <tr>
        <td  align="center" ><span class="style63">Product Chart </span></td>
      </tr>
      <tr>
        <td align="center"><%
           
            String pro=request.getParameter("name");
            
JDBCCategoryDataset dataset = new JDBCCategoryDataset("jdbc:mysql://localhost:3306/purchases1","com.mysql.jdbc.Driver","root","root");
try{
String query="SELECT pname,sum(rate) as p1 FROM feedback p  group by pname ";



dataset.executeQuery(query);
           // ResultSet res = sta.executeQuery("select products,rating,count(*) from details  group by rating");
         //int count;
            //String subject;

           // while (res.next())
           // {
              //  count = res.getInt("rating");
              //  subject = res.getString("products");
              //dataset.addValue(count,"enrollment count statistics", subject);  
           // }
        }
        catch (Exception e) { 
            System.err.println(e.getMessage());
        }   

       JFreeChart bar = ChartFactory.createBarChart3D("Top-N Product Chart", "Name","Rate",dataset, PlotOrientation.VERTICAL,true, false, false);   
      //BarRenderer renderer = (BarRenderer) bar.getCategoryPlot().getRenderer();

        String fileName = "images/chart6.jpg";
        String file = application.getRealPath("/") + fileName;

        try
        {
            FileOutputStream fileOut = new FileOutputStream(file);
            ChartUtilities.writeChartAsPNG(fileOut, bar,493, 247);
            
        }
        catch (IOException e)
        {
             out.print(e);
        }




%>
            <img src="images/chart6.jpg" alt="subject Bar Chart" width="605" height="469" />
            <center>
          </center></td>
      </tr>
    </table></td>
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
    
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center></div>
</body>
</html>
