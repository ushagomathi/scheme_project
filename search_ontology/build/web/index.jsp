<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<title>Scheme Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="script/style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><link href="script/ie.css" rel="stylesheet" type="text/css" /><![endif]-->
<!--[if IE 7]><link href="script/ie7.css" rel="stylesheet" type="text/css" /><![endif]-->
<script src="js/jquery-1.4.1.min.js" type="text/javascript" style="background-color: whitesmoke"></script>
<script src="js/jquery.cycle.all.min.js" type="text/javascript" style="background-color: whitesmoke"></script>
<script type="text/javascript"style="background-color: whitesmoke">
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
<body id="home"   >
    <div id="wrapper">
    <div id="header"style="background-color: #1f3b6e; "> <a href="#"  class="replace" style="background-color: #1f3b6e; color: white; font-size: 40px; font-weight: bold; ">Scheme Portal</a>
    <div id="navigation" style="width:750px; background-color: #1f3b6e; ">
      <ul >
        <li><a href="index.jsp">Home</a></li>
        <li><a href="i1.jsp">About</a></li>
        <li><a href="i2.jsp">Services</a></li>
        <li><a href="i3.jsp">Create Account</a></li>
        <li><a href="i4.jsp">Login</a></li>
             <li><a href="i5.jsp">Contact</a></li>
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
    </div> -->
    <!--connect ends-->
  </div>
  <!--header ends-->
  <div id="banner" style="justify-content: center"  >
    <div id="slider"  style="height: 100%">
      <div class="scroll" >
        <div class="scrollContainer">
          <div > <img src="" alt="" />
              <h1>Government Schemes Information</h1>
            <p align="justify" style="font-size : 15px">The government implements a variety of welfare schemes to support the socio-economic development of its citizens, focusing on areas such as education, employment, healthcare, and social security. These schemes are designed to provide financial assistance, skill development opportunities, healthcare services, and social benefits to individuals based on criteria like age, gender, income, caste, and community. Educational schemes help students from underprivileged backgrounds continue their studies, while employment schemes aim to generate job opportunities and improve skill levels. Health-related schemes ensure access to medical services and insurance coverage for low-income families. Overall, these initiatives aim to uplift marginalized sections of society and promote inclusive growth and well-being across the nation.</p>
           <!-- <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a>--> </div>
            
          <div class="" > 
              <h1>Search Educational Counselling</h1>
            <p align="justify"style="font-size : 15px">Engineering counselling is a structured admission process through which students are allocated seats in engineering colleges based on their academic performance, typically in entrance exams or qualifying examinations like 12th grade. After results are announced, eligible candidates register for counselling, where they submit their preferences for colleges and branches. Based on their rank, category, and seat availability, the system allots seats accordingly. The process often involves multiple rounds, giving students chances to upgrade their allotment. Document verification, fee payment, and final admission confirmation follow the allotment. The goal of engineering counselling is to ensure a fair, transparent, and merit-based admission system for aspiring engineering students.</p>
          </div>
            <div>
              <h1>NGO - Schemes</h1>
            <p align="justify"style="font-size : 15px">NGO (Non-Governmental Organization) schemes are support programs provided by the government or international bodies to assist NGOs in implementing social welfare initiatives at the grassroots level. These schemes offer financial aid, technical support, or policy assistance to NGOs working in areas such as education, health, women and child development, rural upliftment, skill training, environmental protection, and more. The purpose of these schemes is to strengthen the role of NGOs in reaching underserved communities and promoting inclusive development. By partnering with NGOs, these schemes help extend the government's reach and improve service delivery to marginalized and vulnerable populations.</p>
           <!-- <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a>--> </div>
            <div>
              <h1>Women Schemes</h1>
            <p align="justify"style="font-size : 15px">Women-centric government schemes are specially designed to empower women socially, economically, and educationally by addressing their unique needs and challenges. These schemes focus on improving women's access to healthcare, education, employment, safety, and financial independence. They provide benefits such as maternity support, skill development training, self-employment opportunities, and protection against violence and discrimination.</p>
          <!--  <a href="#" class="button">More Information</a> <a href="#" class="button">Contact Us</a>--> </div>
        </div>
     
    </div>
    <!--/end slider -->
<div id="pager" style="color: white" ></div>
  </div>
  <!--banner ends-->
  <div id="featured" style=" display : flex; gap: 20px; margin-top: -30px">
    <div class="featured_container " style="background-color: white ; height : 250px; width: 200px; box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); border-collapse :collapse ; border-radius: 20px; margin-top: 20px; transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'">
      <div class="image_container"  style="margin-top: 30px"><img src="images/basket.png" alt="" style=" margin-left: 40px" /></div>
      <h2>Government Schemes </h2>
    <!--  <p>The government implements a variety of welfare schemes to support the socio-economic development of its citizens.</p> -->
    </div>
    <!--featured container ends-->
    <div class="featured_container" style="background-color: white ;  height : 250px; width: 200px; box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px; transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'">
      <div class="image_container" style="margin-top: 30px"><img src="images/optimization.png" alt="" style="margin-left: 40px" /></div>
      <h2> Educational   Counselling</h2>
     <!-- <p>The process often involves multiple rounds, giving students chances to upgrade their allotment.</p> -->
    </div>
    <!--featured container ends-->
    <div class="featured_container" style="background-color: white ; height : 250px; width: 200px; box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px; transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'">
      <div class="image_container"  style="margin-top: 30px"><img src="images/marketing.png" alt=""  style="margin-left: 50px"/></div>
      <h2>NGO - Schemes</h2>
    <!--  <p>These schemes offer financial aid, technical support, or policy assistance to NGOs working in areas such as education etc.</p> -->
    </div>
    <!--featured container ends-->
    <div class="featured_container" style="background-color: white ; height : 250px; width: 200px; box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); margin-top: 20px; border-collapse :collapse ; border-radius: 20px; transition: transform 0.3s, box-shadow 0.3s;"onmouseover="this.style.transform='scale(1.05)';this.boxShadow='0 6px 20px rgba(0,0,0,0.2)'" onmouseout="this.style.transform='scale(1)';this.style.boxShadow='0 4 px 12px rgba(0,0,0,0.1)'">
      <div class="image_container" style="margin-top: 30px"><img src="images/twitter_marketing.png" alt=""  style="margin-left: 50px"/></div>
      <h2>Women Schemes</h2>
      <!--<p>Women-centric government schemes are specially designed to empower women socially, economically, and educationally.</p> -->
    </div>
    <!--featured container ends-->
  </div>
  <!--featured-->
  <div id="content">
    <div id="testimonials" style="background-color: whitesmoke;">
      <h2>Testimonials</h2>
    </div>
    <!--testiomonials ends-->
    <div id="main_column" style="background-color: whitesmoke; text-align: left">
      <div class="text noborder" style="background-color: whitesmoke">
        <p>Unlike traditional methods where beneficiaries often remain unaware of their eligibility, this system bridges the information gap using a smart, data-driven approach. It empowers citizens to make informed decisions and avail government benefits without dependency on middlemen or incomplete information. Its uniqueness lies in its real-time mapping capability, two-panel architecture, and focus on incluse it a powerful tool for delivering public services effectively and equitably.
 </p>
        <p><span>John Bosco<br />
          CEO of <a href="#">ABC Company</a></span></p>
      </div>
      <!--text ends-->
      <div class="text" style="background-color: whitesmoke">
        <p>The Admin is responsible for managing the schemes adding new ones, updating information, and removing outdated entries. On the other side, users can register, fill in their personal details, and receive a customized list of applicable schemes. The platform enhances user experience by automating the matching process, eliminating confusion, and improving transparency in scheme access.</p>
        <p><span>John Doe<br />
          CEO of <a href="#">Jane Doe Industries</a></span></p>
      </div>
      <!--text ends-->
      <div class="text" style="background-color: whitesmoke">
          <p>
The Scheme Mapping System is a citizen-focused digital solution developed to simplify access to government welfare schemes. It functions by collecting user-specific details such as age, gender, caste, income level, and education, and then mapping these inputs to eligible schemes available at the state and national levels. The core objective is to ensure that beneficiaries can quickly identify and apply for schemes they truly qualify for, without having to manually search through numerous unrelated programs. </p>
        <p><span>John Smith<br />
          Marketing Manager of <a href="#">Acme Widgets</a></span></p>
      </div>
      <!--text ends-->
    </div>
    <!--main column ends-->
    <div class="clear" style="background-color: whitesmoke"></div>
  </div>
  <!--content ends-->
  <div id="bottomarea">
    <div id="contact_us_container">
      <h2>Contact Us</h2>
      <p></p>
      <a href="i5.jsp" class="bottom_btn"><span>Contact us Today</span></a> </div>
    <!--contact us container ends-->
    <div id="ourclients_container">
      <h2>Other Schemes</h2>
      <p>We have worked with a wide variety of schemes</p>
      <p> <a href="#">Men Schemes</a><br />
        <a href="#">Scheduled Tribe Schemes</a><br />
        <a href="#">Foreigner Schemes</a><br />
        <a href="#">National Schemes</a><br />
        <a href="#">Transgender Schemes</a> </p>
    </div>
    <!--our clients ends-->
    <div id="stayuptodate_container">
      <h2>Stay Up-to-Date</h2>
      <p>Info about our newsletter. </p>
      <label>Name:</label>
      <input type="text" />
      <label>Email:</label>
      <input type="text" />
      <label>&nbsp;</label>
      <a href="#" class="bottom_btn"><span>Subscribe to Newsletter</span></a> </div>
    <div class="clear"></div>
  </div>
  <!--bottom area ends-->

<div id="footer_container">
  <div id="footer">
    <p class="left">Government Scheme Mapping</p>
   <ul >
        <li><a href="index.jsp">Home</a></li>
      <li><a href="i1.jsp">About</a></li>
      
        <li><a href="i3.jsp">Create Account</a></li>
        <li><a href="i4.jsp">Login</a></li>
             <li><a href="i5.jsp">Contact</a></li>
      </ul>
  </div>
</div>
  <!--footer ends-->

<!--footer ends-->
</body>
</html>
