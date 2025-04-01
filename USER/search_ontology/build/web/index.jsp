<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Scheme Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="script/style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><link href="script/ie.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 7]><link href="script/ie7.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="js/jquery.cycle.all.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function () {
    $('.scrollContainer').cycle({
        fx: 'scrollHorz',
        timeout: 0,
        speed: 700,
        pager: '#pager',
        cleartypeNoBg: true
    });

    $('.featured_container').click(function () {
        $('.featured_container.active').removeClass('active');
        $(this).addClass('active');
        $('#pager a').eq($('#featured .featured_container').index(this)).trigger('click');
        return false;
    });
});
</script>
</head>
<body id="home">
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
  <div id="banner">
    <div id="slider">
      <div class="scroll">
        <div class="scrollContainer">
          <div class="panel"> <img src="images/india.jpg" alt="" />
              <h1>Government Schemes Information</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porttitor, orci congue scelerisque consequat, eros justo iaculis elit, eget lacinia nibh velit ac sapien. Pellentesque lobortis, elit in molestie elementum, quam lacus vulputate ligula, non tincidunt ipsum leo id purus. Sed ut magna eu purus cursus accumsan cursus sed quam. Nunc volutpat mattis ante, id commodo nibh lobortis quis. Nulla facilisi. Nam non urna sit amet nisi tincidunt commodo. Nam sed molestie quam. Suspendisse ullamcorper, enim sed sagittis hendrerit, diam purus facilisis lectus, sit amet ultricies ante purus.</p>
            <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a> </div>
            
          <div class="panel"> <img src="images/india.jpg" alt="" />
              <h1>Search Educational Counselling</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porttitor, orci congue scelerisque consequat, eros justo iaculis elit, eget lacinia nibh velit ac sapien. Pellentesque lobortis, elit in molestie elementum, quam lacus vulputate ligula, non tincidunt ipsum leo id purus. Sed ut magna eu purus cursus accumsan cursus sed quam. Suspendisse ullamcorper, enim sed sagittis hendrerit, diam purus facilisis lectus, sit amet ultricies ante purus.</p>
            <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a> </div>
            
          <div class="panel"> <img src="images/india.jpg" alt="" />
              <h1>NGO - Schemes</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porttitor, orci congue scelerisque consequat, eros justo iaculis elit, eget lacinia nibh velit ac sapiendo. Nam sed molestie quam. Suspendisse ullamcorper, enim sed sagittis hendrerit, diam purus facilisis lectus, sit amet ultricies ante purus.</p>
            <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a> </div>
          <div class="panel"> <img src="images/india.jpg" alt="" />
              <h1>Women Schemes</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam porttitor, orci congue scelerisque consequat, eros justo iaculis elit, eget lacinia nibh velit ac sapien. Pe ullamcorper, enim sed sagittis hendrerit, diam purus facilisis lectus, sit amet ultricies ante purus.</p>
            <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a> </div>
        </div>
      </di
    </div>
    <!--/end slider -->
<div id="pager"></div>
  </div>
  <!--banner ends-->
  <div id="featured">
    <div class="featured_container active">
      <div class="image_container"><img src="images/basket.png" alt="" /></div>
      <h2>Government Schemes Information</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet.</p>
    </div>
    <!--featured container ends-->
    <div class="featured_container">
      <div class="image_container"><img src="images/optimization.png" alt="" /></div>
      <h2>Search Educational Counselling</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet.</p>
    </div>
    <!--featured container ends-->
    <div class="featured_container">
      <div class="image_container"><img src="images/marketing.png" alt="" /></div>
      <h2>NGO - Schemes</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet.</p>
    </div>
    <!--featured container ends-->
    <div class="featured_container">
      <div class="image_container"><img src="images/twitter_marketing.png" alt="" /></div>
      <h2>Women Schemes</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet.</p>
    </div>
    <!--featured container ends-->
  </div>
  <!--featured-->
  <div id="content">
    <div id="testimonials">
      <h2>Testimonials</h2>
    </div>
    <!--testiomonials ends-->
    <div id="main_column">
      <div class="text noborder">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet. Phasellus fermentum sem at quam posuere ac consectetur elit luctus. Donec at lobortis magna. Mauris malesuada libero et dolor imperdiet quis laoreet erat venenatis. Phasellus scelerisque rhoncus tortor, ac gravida tortor faucibus at. Aenean facilisis, augue vel euismod ornare, dolor mauris semper mi, nec mattis nulla massa sed erat. </p>
        <p><span>John Doe<br />
          CEO of <a href="#">ABC Company</a></span></p>
      </div>
      <!--text ends-->
      <div class="text">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet. Phasellus fermentum sem at qbuam posuere ac consectetur elit luctus. Donec at lobortis magna. Mauris malesuada libero et dolor imperdiet quis laoreet erat venenatis. Phasellus scelerisque rhoncus tortor, ac gravida tortor faucibus at. Aenean facilisis, augue vel euismod ornare, dolor mauris semper mi, nec mattis nulla massa sed erat. Sed urna mauris, fringilla sit amet vehicula et, faucibus id felis. Duis lobortis, mauris sed sagittis laoreet, nunc metus elementum nibh, vel auctor libero ante in ipsum. Integer tempor ipsum nec velit malesuada congue.</p>
        <p><span>John Doe<br />
          CEO of <a href="#">Jane Doe Industries</a></span></p>
      </div>
      <!--text ends-->
      <div class="text">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vehicula purus auctor libero mattis in suscipit tortor laoreet. Ph皜sellus fermentum sem at quam posuere ac consectetur elit luctus. Donec at lobortis magna. Mauris malesuada libero et dolor imperdiet quis laoreet erat venenatis. Phasellus scelerisque rhoncus tortor, ac gravida tortor faucibus at. Aenean facilisis, augue vel euismod ornare, dolor mauris semper mi, nec mattis nulla massa sed erat. </p>
        <p><span>John Smith<br />
          Marketing Manager of <a href="#">Acme Widgets</a></span></p>
      </div>
      <!--text ends-->
    </div>
    <!--main column ends-->
    <div class="clear"></div>
  </div>
  <!--content ends-->
  <div id="bottomarea">
    <div id="contact_us_container">
      <h2>Contact Us</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in risus orci, nec semper odio. Phasellus nec diam enim. Vivamus mattis risus quis eros consequat non posuere nunc fringilla.</p>
      <a href="#" class="bottom_btn"><span>Contact us Today</span></a> </div>
    <!--contact us container ends-->
    <div id="ourclients_container">
      <h2>Contact Us</h2>
      <p>We’ve worked with a wide variety of successful companies:</p>
      <p> <a href="#">ABC Company, Inc.</a><br />
        <a href="#">XYZ Company, Inc.</a><br />
        <a href="#">Acme Widgets</a><br />
        <a href="#">John Doe Industries</a><br />
        <a href="#">Jane Doe Industries</a> </p>
    </div>
    <!--our clients ends-->
    <div id="stayuptodate_container">
      <h2>Stay Up-to-Date</h2>
      <p>Info about our newsletter. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in risus orci, nec semper odio.</p>
      <label>Name:</label>
      <input type="text" />
      <label>Email:</label>
      <input type="text" />
      <label>&nbsp;</label>
      <a href="#" class="bottom_btn"><span>Subscribe to Newsletter</span></a> </div>
    <div class="clear"></div>
  </div>
  <!--bottom area ends-->
  <div class="footerclear"></div>
</div>
<!--wrapper ends-->
<div id="footer_container">
  <div id="footer">
    <p class="left">Best Marketing Company</p>
    <ul class="left">
      <li class="noborder"><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Case Studies</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
    <p class="right" style="margin:0; padding:0;">Design by <a href="http://designm.ag/">DESIGNM.AG</a></p>
  </div>
  <!--footer ends-->
</div>
<!--footer ends-->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
