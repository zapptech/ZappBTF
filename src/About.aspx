<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Butterfields About Us</title>
	<meta charset="utf-8">
	<meta name="description" content="Butterfields">
	<meta name="author" content="ANGELOSTUDIO.NET">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/superslides.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/icons.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/blue.css" class="colors">
<link rel="shortcut icon" href="img/Butterfield.png" sizes="32x32" type="image/jpg" />
	<link rel="apple-touch-icon-precomposed" href="img/ico/60.png" type="image/png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/ico/72.png" type="image/png" />
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="img/ico/120.png" type="image/png" />
	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="img/ico/152.png" type="image/png" />
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div id="main-nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Default.aspx#home">
					<img id="navlogo" src="img/Butterfield.png" alt="microstore" width="150" height="90">
				</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul id="navigation" class="nav navbar-nav navbar-right text-center">
					<li><a onclick="window.location = 'Default.aspx#products'" href="#products" >Divisions</a></li>
					<li class="dropdown">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">About</button>
						<ul class="dropdown-menu">
							<li><a href="#about">Introduction</a></li>
							<li><a href="#history">History</a></li>
							<li><a href="#Vision">Vision & Mission</a></li>
							<li><a href="#abroad">Butterfield Abroad</a></li>
						</ul>
					</li>
					<li><a onclick="window.location = 'Default.aspx#newsletter'" href="#newsletter">Newsletter</a></li>
					<li><a onclick="window.location = 'Default.aspx#contact'" href="#contact">Contact</a></li>
					<li class="dropdown">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">SOUTH AFRICA</button>
						<ul class="dropdown-menu">
							<li><a href="#">English</a></li>
							<li><a href="#">Afrikaans</a></li>
						</ul>
					</li>
				</ul>
			</div>

		</div>


	</div>

	<!-- it works the same with all jquery version from 1.x to 2.x -->
	<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
	<!-- use jssor.slider.mini.js (40KB) instead for release -->
	<!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
	<script type="text/javascript" src="../js/jssor.js"></script>
	<script type="text/javascript" src="../js/jssor.slider.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			var options = {
				$AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
				$PlayOrientation: 2,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
				$DragOrientation: 2,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

				$ArrowNavigatorOptions: {
					$Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
					$ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
					$AutoCenter: 1,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
					$Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
				}
			};

			var jssor_slider1 = new $JssorSlider$("slider1_container", options);
		});
	</script>

	<div class="col-xs-12 col-sm-12 col-md-12 contact-info cta-message wow fadeInLeft" style="text-align: center !important; font-size: 16px !important">
		<!-- Jssor Slider Begin -->
		<!-- To move inline styles to css file/block, please specify a class name for each element. -->

	</div>

	<div class="container" style="margin-top: 50px">
		<section id="contact" class="gray-bg padding-top-bottom" style="background-color: #fff; font-size:18px !important">
			<div class="container">

				<div id="history" class="col-xs-10 col-sm-10 col-md-10 contact-info cta-message wow fadeInLeft" style="text-align: center !important; font-size: 16px !important; background-color: #fff; border-radius: 65px; color: #333; font-size: 16px !important;">

					<h1><strong>History</strong></h1>

					Butterfield Holdings has launched its first Butterfield Dough store in Pretoria East during late 2014. This fresh business recipe has already been received with excitement by housewives and baking enthusiasts alike. The new flagship store situated in the Pick ‘n Pay Hyper complex, Faerie Glen, offers a wide range of superior, signature products that puts Butterfield Dough in the bakery industry’s winner circle.<br />
					<br />
					 You can expect to find homemade meat pies, five types of cheesecakes imported from America in addition to the locally made, in-store favourites.
						<br />
					<br />
					It’s no wonder that Butterfield Dough is the preferred bakery option for housewives with innovative items like easy freezer-to-oven products, fresh plaits, croissants and cheese straws, and an extensive range of healthy, gluten-free products.
						<br />
					<br />
					Customers have responded positively to the Butterfield Dough stores, and with friendly staff who know all about the tasty treats, it’s easy to see why people, like Kirsten Walters, respond like this: “Brilliant!! Thanks for the TOP QUALITY products!!” Another exciting venture will be the loyalty programme that is set to roll out soon. This initiative will ultimately reward customers for continuous, faithful support.
						<br />
					<br />
					Since 1996, when the first Butterfield Bread bakery was conceptualised and opened in the centre of Pretoria, Butterfield has grown to more than 140 bakeries across South Africa and neighbouring countries. In July 2013 Johan Stapelberg decided to take full control of Butterfield Holdings and its subsidiaries, with the intent of strengthening and growing the group by doing what they do best – bread! This is surely just the beginning for Butterfield Dough, which currently boasts 5 branches across South Africa.
						<br />
					<br />
					Powered by expert leaders boasting the likes of Johan Stapelberg, a master baker who has been perfecting his craft since 1975; Philip Coetzer, previous CEO for Sunbake and General Manager Operations at Ruto Mills; Butterfield Dough is looking to grow its franchise base. It’s a proven business opportunity complemented by decades of experience, a reliable supply chain, low maintenance and cutting-edge control systems. This is a worthwhile investment for any budding entrepreneurs in the baking or retail industry.
						<br />
					<br />
					Now, almost 20 years since inception, Butterfield’s newest expansion, Butterfield Dough, puts the ability to create almost any delicacy, into the hands of housewives, baking enthusiasts and anyone who appreciates good food. Visit the Butterfield Dough stores across Gauteng and get your hands on a variety of delicious goods – breads, pies, frozen dough, batters, cookies – all made with real butter! In the meantime, visit the website, butterfielddough.co.za, or find the Facebook page for more details. With Butterfield Dough’s products made from only the finest ingredients, and a strategically situated store, all that’s left for you to do, is take all the credit.

				</div>
				<div class="col-xs-2 col-sm-2 col-md-2 contact-info cta-message wow fadeInLeft" style="text-align: center !important; font-size: 16px !important">
					<div id="slider1_container" style="position: relative; top: 32px; left: 0px; width: 500px; height: 800px; margin-right: 0px;">

						<!-- Loading Screen -->
						<div u="loading" style="position: absolute; top: 0px; left: 0px;">
							<div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; background-color: #000000; top: 0px; left: 0px; width: 100%; height: 100%;">
							</div>
							<div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;">
							</div>
						</div>

						<!-- Slides Container -->
						<div>
							<div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 350px; height: 550px; overflow: hidden;">
								<div>
									<img u="image" src="../img/johan.jpg" />
								</div>
								<div>
									<img u="image" src="../img/rudi.jpg" />
								</div>
								<div>
									<img u="image" src="../img/brenda.jpg" />
								</div>
							</div>
						</div>


						<!--#region Arrow Navigator Skin Begin -->
						<!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
						<style>
							/* jssor slider arrow navigator skin 08 css */
							/*
            .jssora08l                  (normal)
            .jssora08r                  (normal)
            .jssora08l:hover            (normal mouseover)
            .jssora08r:hover            (normal mouseover)
            .jssora08l.jssora08ldn      (mousedown)
            .jssora08r.jssora08rdn      (mousedown)
            */
							.jssora08l, .jssora08r {
								display: block;
								position: absolute;
								/* size of arrow element */
								width: 50px;
								height: 50px;
								cursor: pointer;
								background: url(../img/a08.png) no-repeat;
								overflow: hidden;
								opacity: .4;
								filter: alpha(opacity=40);
							}

							.jssora08l {
								background-position: -5px -35px;
							}

							.jssora08r {
								background-position: -65px -35px;
							}

							.jssora08l:hover {
								background-position: -5px -35px;
								opacity: .8;
								filter: alpha(opacity=80);
							}

							.jssora08r:hover {
								background-position: -65px -35px;
								opacity: .8;
								filter: alpha(opacity=80);
							}

							.jssora08l.jssora08ldn {
								background-position: -5px -35px;
								opacity: .3;
								filter: alpha(opacity=30);
							}

							.jssora08r.jssora08rdn {
								background-position: -65px -35px;
								opacity: .3;
								filter: alpha(opacity=30);
							}
						</style>
						<!-- Arrow Left -->
						<span u="arrowleft" class="jssora08l" style="top: 8px; left: 8px;"></span>
						<!-- Arrow Right -->
						<span u="arrowright" class="jssora08r" style="bottom: 8px; left: 8px;"></span>
						<!--#endregion Arrow Navigator Skin End -->
						<a style="display: none" href="http://www.jssor.com">Bootstrap Slider</a>
					</div>
				</div>
				<br />
				<br />
				<div class="col-xs-12 col-sm-12 col-md-12" style="background-color: #c39797; border-radius: 65px; margin-top: 5px; border-radius: 40px; color: #333; font-size: 16px !important;">
				<div id="Vision" class="col-xs-12 col-sm-12 col-md-6 contact-info cta-message wow fadeInLeft" style="background-color: #c39797; border-radius: 65px; margin-top: 5px; border-radius: 40px; color: #333; font-size: 16px !important;">
					<h1><strong>Our Vision</strong></h1>
					To remain the leaders in the retail baking sector in Southern Africa as we were for the past 17 years. Through innovation and knowledge of the management in the baking industry, we constantly strive to uphold and adjust the concept according to the challenges faced with in the ever changing economic climates and market profiles.
				<br />
					<h1><strong>Our Mission</strong></h1>
					<ul>
						<li>To create successful, independent business opportunities through the application of a comprehensive business system in the various markets that we operate in; </li>
						<li>To grow and develop our franchisees, employees and service providers through sharing the innovation and visionary skills within our own structures;</li>
						<li>To achieve a consistently high level of performance to the benefit of all associated with Butterfield Franchising and upholding the value of the Butterfield brand through our actions; </li>
						<li>To contribute towards the economic growth of South Africa through the empowerment of entrepreneurial individuals. </li>
						<li>To grow the franchise base to be present in each town and village in South Africa and Southern African states.</li>
						<br />
					</ul>



				</div>
				<div id="abroad" class="col-xs-12 col-sm-12 col-md-6 contact-info cta-message wow fadeInLeft" style="background-color: #c39797; border-radius: 65px; margin-top: 5px; margin-left: 25px; width: 45% !important; border-radius: 40px; color: #333; font-size: 16px !important;">
					<h1><strong>Butterfield Abroad</strong></h1>
					Our bakery retail stores have proven successful in South Africa as well as in neighbouring African countries. Butterfield Bread has operating bakeries in Botswana, Swaziland and Zambia. The current bakeries in Sub-Saharan Africa are all owner managed and very successful within their respective countries. Our strategy is also to expand in other African countries where Butterfield Investments holds the trademarks of the Butterfield brand.
				<br />
					
					Butterfield has registered our trademarks and related logos in the following countries:
				<br />
					<ul>
						<li>Botswana</li>
						<li>Kenya</li>
						<li>Lesotho</li>
						<li>Mauritius</li>
						<li>Namibia</li>
						<li>Swaziland</li>
						<li>Zambia</li>
						<li>Ghana</li>
						<li>Zimbabwe</li>

					</ul>
				</div>
				</div>

			</div>
		</section>
	</div>
	<footer id="main-footer" class="dark-bg light-typo">
		<div class="container">
			<p class="pull-left copyright wow fadeInUp">
				&copy; Butterfields Bread 2015.
				<br>
				Designed by <a href="http://www.zapptech.co.za" target="_blank">ZappTech</a>.<br>
			</p>

			<%--<div class="pull-right paymentMethodImg copyright wow fadeInRight">
				<a class="btn btn-store outline" href="#" data-toggle="modal" data-target=".text-modal">Terms & conditions</a>
			</div>--%>
		</div>
	</footer>

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.singlePageNav.min.js"></script>
	<script type="text/javascript" src="js/jquery.superslides.min.js"></script>
	<script type="text/javascript" src="js/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/custom.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
</body>
</html>
