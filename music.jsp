<%-- 
    Document   : music
    Created on : Mar 15, 2012, 2:08:28 AM
    Author     : shamik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MusicIndiaOnline</title>
<link rel='Stylesheet' href="jqwidgets/styles/jqx.base.css" type="text/css" />
    <link rel='Stylesheet' href="jqwidgets/styles/jqx.darkblue.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery-1.7.1.min.js" ></script>
    <script type="text/javascript" src="scripts/gettheme.js" ></script>
    <script type="text/javascript" src="jqwidgets/jqxcore.js" ></script>
    <script type="text/javascript" src="jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxmenu.js" ></script>
    <script type="text/javascript" src="jqwidgets/jqxbuttons.js" ></script>
    <script type="text/javascript" src="jqwidgets/jqxexpander.js" ></script>
    <script type="text/javascript" src="jqwidgets/jqxnavigationbar.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxdropdownlist.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxgrid.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxgrid.pager.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxgrid.selection.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxwindow.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxpanel.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxtabs.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxexpander.js"></script>
    <script type="text/javascript" src="jqwidgets/globalization/jquery.global.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcalendar.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxdatetimeinput.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxmaskedinput.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxvalidator.js"> </script>
    <script type="text/javascript" src="music.js" > </script>
	<script type="text/javascript" >

function set() {
$('#flashPlayer').children().each(function(){
var kid = $(this);
if(kid.attr('name')==="FlashVars")
{ 	alert(kid.attr('value'));
	kid.attr('value');
	alert(kid.attr('value'));
}
});
}
function play(){
document.getElementById("flashPlayer").SetVariable("player:jsPlay", "");
}
function pause() {
    document.getElementById("flashPlayer").SetVariable("player:jsPause", "");
}
function stop() {
    document.getElementById("flashPlayer").SetVariable("player:jsStop", "");
}
function volume(n) {
    document.getElementById("flashPlayer").SetVariable("player:jsVolume", n);
}
</script>
<style type="text/css">
.gbmai {
	top: 29px;
	right: 20px;
}
.gbmai {
	background-position: 0 -50px;
	opacity: .8;
	font-size: 0;
	line-height: 0;
	position: absolute;
	height: 10px;
	width: 10px;
	background-color: #EFEFF1;
	background-image: url(images/search.png);
}

#gbqfi {
	background-position: -12px -50px;
	display: inline-block;
	height: 13px;
	margin: 7px 19px;
	width: 14px;
	background-color: #4A8BF5;
	background-image: url(images/search.png);
}
.gbqfb {
	background-color: #4D90FE;
	background-image: -webkit-gradient(linear,left top,left bottom,from(#4D90FE),to(#4787ED));
	background-image: -webkit-linear-gradient(top,#4D90FE,#4787ED);
	background-image: -moz-linear-gradient(top,#4D90FE,#4787ED);
	background-image: -ms-linear-gradient(top,#4D90FE,#4787ED);
	background-image: -o-linear-gradient(top,#4D90FE,#4787ED);
	background-image: linear-gradient(top,#4D90FE,#4787ED);
filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#4d90fe',EndColorStr='#4787ed');
	border: 1px solid #3079ED;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	border-top-left-radius: 2px;
	border-top-right-radius: 2px;
	border-bottom-right-radius: 2px;
	border-bottom-left-radius: 2px;
	-moz-user-select: none;
	-webkit-user-select: none;
	color: white;
	cursor: default;
	font-size: 11px;
	font-weight: bold;
	height: 29px;
	min-width: 54px;
	text-align: center;
	padding: 0 8px;
}
#gbqfbw {
	position: relative;
	left: 535px;
	top: -41px;
	width: 80px;
	margin-top: 0;
	margin-right: 15px;
	margin-bottom: 0;
	margin-left: 15px;
	background-color: #EFEFF1;
}

#registration{
	position: absolute;
	width: 200px;
	float: right;
	height: 50px;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: none;
	border-left-style: solid;
	border-top-color: #CCC;
	border-right-color: #CCC;
	border-bottom-color: #CCC;
	border-left-color: #CCC;
	background-color: #EFEFF1;
	top: 0px;
	right: 0px;
}

body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	color: #000;
	font-family: Verdana, Geneva, sans-serif;
	background-color: #FFF;
}
.player {
	top: auto;
	border: thin solid #D6D6D6;
	height: 250px;
}

/* ~~ Element/tag selectors ~~ */
ul, ol, dl { /* Due to variations between browsers, it's best practices to zero padding and margin on lists. For consistency, you can either specify the amounts you want here, or on the list items (LI, DT, DD) they contain. Remember that what you do here will cascade to the .nav list unless you write a more specific selector. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* removing the top margin gets around an issue where margins can escape from their containing div. The remaining bottom margin will hold it away from any elements that follow. */
	padding-right: 15px;
	padding-left: 15px; /* adding the padding to the sides of the elements within the divs, instead of the divs themselves, gets rid of any box model math. A nested div with side padding can also be used as an alternate method. */
}
a img { /* this selector removes the default blue border displayed in some browsers around an image when it is surrounded by a link */
	border: none;
}

/* ~~ Styling for your site's links must remain in this order - including the group of selectors that create the hover effect. ~~ */
a:link {
	color:#414958;
	text-decoration: underline; /* unless you style your links to look extremely unique, it's best to provide underlines for quick visual identification */
}
a:visited {
	color: #4E5869;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* this group of selectors will give a keyboard navigator the same hover experience as the person using a mouse. */
	text-decoration: none;
}

/* ~~ this container surrounds all other divs giving them their percentage-based width ~~ */
.container {
	width: 80%;
	max-width: 1260px;/* a max-width may be desirable to keep this layout from getting too wide on a large monitor. This keeps line length more readable. IE6 does not respect this declaration. */
	min-width: 780px;/* a min-width may be desirable to keep this layout from getting too narrow. This keeps line length more readable in the side columns. IE6 does not respect this declaration. */
	background: #FFF;
	margin: 0 auto; /* the auto value on the sides, coupled with the width, centers the layout. It is not needed if you set the .container's width to 100%. */
	overflow: hidden; /* this declaration makes the .container clear all floated columns within it. */
	position: relative;
	left: 150px;
	top: 100px;
	visibility: visible;
}

/* ~~ These are the columns for the layout. ~~

1) Padding is only placed on the top and/or bottom of the divs. The elements within these divs have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the div itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the div and place a second div within it with no width and the padding necessary for your design.

2) No margin has been given to the columns since they are all floated. If you must add margin, avoid placing it on the side you're floating toward (for example: a right margin on a div set to float right). Many times, padding can be used instead. For divs where this rule must be broken, you should add a "display:inline" declaration to the div's rule to tame a bug where some versions of Internet Explorer double the margin.

3) Since classes can be used multiple times in a document (and an element can also have multiple classes applied), the columns have been assigned class names instead of IDs. For example, two sidebar divs could be stacked if necessary. These can very easily be changed to IDs if that's your preference, as long as you'll only be using them once per document.

4) If you prefer your nav on the right instead of the left, simply float these columns the opposite direction (all right instead of all left) and they'll render in reverse order. There's no need to move the divs around in the HTML source.

*/
.sidebar1 {
	float: left;
	width: 254px;
	padding-bottom: 10px;
	background-color: #FFF;
	border-top-style: none;
	border-right-style: solid;
	border-bottom-style: none;
	border-left-style: none;
	border-right-color: #FFF;
	border-right-width: thin;
	height: 100%;
	position: fixed;
	top: 60px;
	left: 20px;
}
.content {
	width: 80%;
	float: left;
	visibility: visible;
	height: auto;
	padding-top: 10px;
	padding-right: 0;
	padding-bottom: 10px;
	padding-left: 0;
	position: relative;
	left: 100px;
}

/* ~~ This grouped selector gives the lists in the .content area space ~~ */
.content ul, .content ol {
	padding: 0 15px 15px 40px; /* this padding mirrors the right padding in the headings and paragraph rule above. Padding was placed on the bottom for space between other elements on the lists and on the left to create the indention. These may be adjusted as you wish. */
}
ul.nav li {
	background-color: #FFF;
	border-bottom-width: 1px;
	border-bottom-style: none;
	border-bottom-color: #F00;
}

/* ~~ The navigation list styles (can be removed if you choose to use a premade flyout menu like Spry) ~~ */
ul.nav {
	list-style: none; /* this creates the top border for the links - all others are placed using a bottom border on the LI */
	margin-bottom: 15px; /* this creates the space between the navigation on the content below */
	border-top-width: 1px;
	border-top-style: none;
	border-top-color: #F00;
}
ul.nav a, ul.nav a:visited { /* grouping these selectors makes sure that your links retain their button look even after being visited */
	padding: 5px 5px 5px 15px;
	display: block; /* this gives the link block properties causing it to fill the whole LI containing it. This causes the entire area to react to a mouse click. */
	text-decoration: none;
	color: #000;
	background-color: #FFF;
}
ul.nav a:hover, ul.nav a:active, ul.nav a:focus { /* this changes the background and text color for both mouse and keyboard navigators */
	color: #000;
	background-color: #CCC;
	border: thin solid #666;
}

/* ~~miscellaneous float/clear classes~~ */
.fltrt {  /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* this class can be placed on a <br /> or empty div as the final element following the last floated div (within the #container) if the overflow:hidden on the .container is removed */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
.headerBar{
	border-bottom-width: thin;
	border-bottom-style: solid;
	position: fixed;
	top: 0px;
	width: 100%;
	border-top-color: #CCC;
	border-right-color: #CCC;
	border-bottom-color: #CCC;
	border-left-color: #CCC;
	background-color: #EFEFF1;
	z-index: 999;
	margin-right: auto;
	margin-left: auto;
	height: 65px;
}
   .text-input
        {
            height: 18px;
            width: 150px;
        }
        .text-input:focus
        {
            border: 1px solid #777;
        }
        .register-table
        {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .register-table td, tr
        {
            margin: 0px;
            padding: 2px;
            border-spacing: 0px;
            border-collapse: collapse;
            color: #000;
            font-family: Verdana;
            font-size: 12px;
        }
        h3
        {
            display: inline-block;
            margin: 0px;
        }
#logo {
	position: relative;
	top: 5px;
	left: 30px;
}
#register {
	position: relative;
        visibility: hidden;

}
.searchbox {
	float: none;
	left: 148px;
	height: 25px;
	position: relative;
	top: 17px;
	letter-spacing: 1px;
	font-family: Arial, Helvetica, sans-serif;
	font-style: normal;
	text-transform: capitalize;
	text-align: center;
	line-height: normal;
	font-size: 16px;
	width: 250px;
	border: thin groove #D6D6D6;
}
#flashPlayer {
	position: relative;
	left: 0px;
	top: 150px;
	border: thin solid #CCC;
	height: 25px;
}
#login {
	position: relative;
	right: 0px;
	left: 650px;
	top: -85px;
	font-size: smaller;
}
#datacontainer {
}
.playpng {
	background-image: url(images/play_button.png);
	background-repeat: no-repeat;
	height: 18px;
	width: 20px;
}
.playpng:hover{
	background-image: url(images/play_button.png);
	background-repeat: no-repeat;
	height: 18px;
	width: 20px;
	background-position: 1px;
}
</style><!--[if lte IE 7]>
<style>
.content { margin-right: -1px; } /* this 1px negative margin can be placed on any of the columns in this layout with the same corrective effect. */
ul.nav a { zoom: 1; }  /* the zoom property gives IE the hasLayout trigger it needs to correct extra whiltespace between the links */
</style>
<![endif]-->

</head>

<body>
<div class="headerBar" >
    <img alt="Logo missing"  src="images/Logo.png" id="logo" align="left"  />
<textarea rows="1"  class="searchbox"  style="resize:none;"  cols="2"></textarea>

<div id="gbqfbw">
<button id="gbqfb" aria-label="Google Search" class="gbqfb">
<span id="gbqfi"></span>
</button>
</div>
<div id="login">
<form>
        <table cellspacing="0"  >
            <tbody>
                <tr>
                    <td > Email</td>
                    <td> password</td>
                </tr>
                <tr>
                    <td>
        <input type="text"  tabindex="1" id="username"/>
                    </td>
                    <td>
        <input type="password" tabindex="2" id="password" />
                    </td>
                    <td>
                        <input type="button" tabindex="3" style=" background-color:#EFEFF1; font-size: smaller;"    value="Log in" />
                    </td>
                </tr>
                <tr><td></td>
                    <td style=" font-size: xx-small; "  > Forgot Password ?</td>

                </tr>

            </tbody>
        </table>
    </form>
</div>
<div  id="registration" >New User ? Register Please. ta ekhane thakbe
    <!--<span class="gbmai"></span> </div>-->

</div>
  </div>

<div class="container">
  <div class="sidebar1">
  <br>
     <div id='content1'>

        <div id='jqxWidget' style='width: 110px;'>
            <div id='jqxMenu' style="visibility: hidden;">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li>Music
                        <ul>
                            <li><a href="#">Bengali</a>
							<ul>
                                    <li><a href="#">Rabindrasangeet</a></li>
                                    <li><a href="#">NajrulGeeti</a></li>
                                    <li><a href="#">BanglaRock</a></li>
                                    <li><a href="#">Adhunik</a></li>
                                    </ul>
									</li>
                            <li><a href="#">Hindi</a></li>
                            <li><a href="#">Bhojpuri</a></li>
                            <li><a href="#">Clients</a></li>
                            <li><a href="#">Testimonials</a></li>
                            <li><a href="#">Press</a></li>
                            <li><a href="#">FAQs</a></li>
                        </ul>
                    </li>

                   <li><a href="#">Gallery</a></li>
                    <li><a href="#">Events</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Contact Us</a>
                        <ul>
                            <li><a href="#">Enquiry Form</a></li>
                            <li><a href="#">Map &amp; Driving Directions</a></li>
                            <li><a href="#">Your Feedback</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
      <br/>
    <div class="player">
	Now Playing : <span id="songname"> </span>
    <object  id="flashPlayer" type="application/x-shockwave-flash" data="player_mp3_maxi.swf" width="250" height="20">
    <param name="movie" value="player_mp3_maxi.swf" />
    <param name="bgcolor" value="#EFEFF1" />
	<param name="AllowScriptAccess" value="always">
     <param name="FlashVars" value="configxml=config.xml" />
</object>
    </div>

  <!-- end .sidebar1 -->
  </div>
  <div class="content">
    <div class="playpng" onclick="play()"> </div>

<div id='datacontainer'>
            <div id="register" style="visibility:hidden" >
<div><h3>Register</h3></div>
        <div>
            <form id="testForm" method="get" action="/register">
              <table class="register-table">
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" id="userInput" name="userInput" class="text-input" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password"  name="passwordInput" id="passwordInput" class="text-input" /></td>
                    </tr>
                    <tr>
                        <td>Confirm password:</td>
                        <td><input type="password" id="passwordConfirmInput" class="text-input" /></td>
                    </tr>
                    <tr>
                        <td>Real name:</td>
                        <td><input type="text" name="realNameInput"  id="realNameInput" class="text-input" /></td>
                    </tr>
                    <tr>
                  <td>Birth date:</td>
                        <td><div id="birthInput"></div></td>
                    </tr>
                    <tr>
                        <td>E-mail:</td>
                        <td><input type="text" name="emailInput" id="emailInput" class="text-input" /></td>
                    </tr>
                  <tr>
                        <td colspan="2" style="padding: 5px;"><div id="acceptInput" style="margin-left: 50px;">I accept terms</div></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;"><input type="submit" value="Send" id="sendButton" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
	</div>
  <!-- end .content -->
  </div>
  <!-- end .container -->
</div>
</body>
</html>
