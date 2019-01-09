
<!DOCTYPE html>
<!--[if lt IE 7]><html class="lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if IE 7]><html class="lt-ie9 lt-ie8"><![endif]-->
<!--[if IE 8]><html class="lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--><html><!--<![endif]-->
<head>
<title>Akshaya sahayi</title>
<script>
      <!--
        var ScrollMsg= "Payroll Management System - "
        var CharacterPosition=0;
        function StartScrolling() {
        document.title=ScrollMsg.substring(CharacterPosition,ScrollMsg.length)+
        ScrollMsg.substring(0, CharacterPosition);
        CharacterPosition++;
        if(CharacterPosition > ScrollMsg.length) CharacterPosition=0;
        window.setTimeout("StartScrolling()",150); }
        StartScrolling();
      // -->
    </script>
<link rel="icon" href="Tourism Template/images/site_icon.png">
<meta charset="utf-8">
<link rel="stylesheet"  href="Tourism Template/css/foundation.min.css">
<link rel="stylesheet"  href="Tourism Template/css/superfish.css">
<link rel="stylesheet"  href="Tourism Template/css/stylesheet.css">
<link rel="stylesheet" type="text/css" href="Sweet Alerts/sweetalert.css">
<script src="Sweet Alerts/sweetalert.min.js"></script>
<script src="Tourism Template/js/vendor/custom.modernizr.js"></script>



<!--[if lt IE 9]>
<link rel="stylesheet"  href="Tourism Template/css/ie-fixes.css">
<![endif]-->
<style>
 .head_a
 {
 font-family:Verdana;
 }
</style>

</head>
<body>
<div class="header">
  <div class="row">
    <div class="columns large-12">
      <div class="row header-inner">
    <?php
	include"menu_header.php";
	?>

      </div>
    </div>
  </div>
  <div class="row">
    <div class="columns large-12 small-top-menu">
      <div class="row">
        <div class="columns large-12 plr0 top-nav">
          <form name="dropdown" class="dropdown" action="#">
            <nav>
              <section>
                <select name="selected" id="target" accesskey="E" onChange="goToNewPage(document.dropdown.selected)">
                  <option value="index.html">home</option>
                  <option value="about.html">about us</option>
                  <option value="blog.html">blog</option>
                  <option value="gallery.html">gallery</option>
                  <option value="services.html">services</option>
                  <option value="contact.html">contact us</option>
                </select>
              </section>
            </nav>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<?php
  require('db.php');
  session_start();
    // If form submitted, insert values into the database.
    if (isset($_POST['username']))
    {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $username = stripslashes($username);
        $username = mysql_real_escape_string($username);

        $password = stripslashes($password);
        $password = mysql_real_escape_string($password);

        //Checking is user existing in the database or not
        $query = "SELECT * FROM `user` WHERE username='$username' and password='$password'";
        $result = mysql_query($query) or die(mysql_error());
        $rows = mysql_num_rows($result);

        if($rows==1)
        {
          $_SESSION['username'] = $username;
          header("Location: vle\home.php");
        }
        else
        {
          ?>
          <script>
            alert('Invalid Keyword, please try again.');
            window.location.href='login.php';
          </script>
          <?php
        }
    }
    else
    {
?>
<div class="row content-wrapper">
  <div class="columns large-12">
    <div class="row wrapper">
      <div class="columns large-12 content ">
        <h1 class="page-title">Sign In </h1>
        <div>
          <h2 class="sub-title" style="font-family:Verdana"></h2>
        </div>
        <div class="row contact-form">
          <div class="columns large-8" style="font-family:Verdana">
            <form id="contact-form" method="post" action="">
			<table style="width:500px;">
			<tr>
			<td>
              <input type="text" name="username" placeholder="Username:">
			  </td>
			  </tr>
			  <tr>
			  <td>
              <input type="password" name="password" placeholder="Password:">
			  </td>
			  </tr>
			  <tr>
			  <td>
              <input type="submit" class="button" name="btn" value="Login">
			  </td>
			  </tr>
			  </table>
            </form>
			
<?php } ?>
          </div>
          <div class="columns large-4">
            <div id="map_canvas"></div>
            
          </div>
        </div>
      </div>
      <div class="row collapse">
        <div class="columns large-12"> </div>
      </div>
    </div>
  </div>
</div>


<script src="Tourism Template/js/jquery.min.js"></script>
<script src="Tourism Template/js/hoverIntent.js"></script>
<script src="Tourism Template/js/superfish.js"></script>
<script src="Tourism Template/Tourism Template/js/google-maps.js"></script>
</body>
</html>
