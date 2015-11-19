<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html ng-app="storeApp">
<head>
	<title>Butterfield Holdings</title>
	<meta charset="utf-8">
	<meta name="description" content="Butterfield">
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

<body id="home">
	<div id="main-nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#home">
					<img id="navlogo" src="img/Butterfield.png" alt="microstore" width="150" height="90">
				</a>

			</div>
			<div class="collapse navbar-collapse">
				<ul id="navigation" class="nav navbar-nav navbar-right text-center">
					<li><a href="#products">Divisions</a></li>
					<li class="dropdown">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">About</button>
						<ul class="dropdown-menu">
							<li><a href="#about">Introduction</a></li>
							<li><a onclick="window.location = 'About.aspx#History'" href="#history">History</a></li>
							<li><a onclick="window.location = 'About.aspx#Vision'" href="#Vision">Vision & Mission</a></li>
							<li><a onclick="window.location = 'About.aspx#abroad'" href="#abroad">Butterfield Abroad</a></li>
						</ul>
					</li>
					<li><a href="#newsletter">Newsletter</a></li>
					<%--<li><a onclick="window.location = 'StoreLocator.aspx'" href="StoreLocator.aspx">Store Locator</a></li>--%>
					<li><a href="#contact">Contact</a></li>
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

	<section id="hero" class="light-typo ">
		<div class="container welcome-content">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 col-xs-12 text-center wow fadeInUp">
					<%--<img id="logo" src="img/welcome-to-butterfield.gif" class="img-responsive text-center" alt="shop logo" >--%>
					<%--	<%--<h1>"Butterfield the Brand in Bread"</h1>--%>
					<%--<ul class="social-links text-center">
						<li><a href="#link"><i class="icon-twitter"></i></a></li>
						<li><a href="#link"><i class="icon-facebook"></i></a></li>
						<li><a href="#link"><i class="icon-vimeo"></i></a></li>
					</ul>--%>
					<%--<a class="btn btn-store smooth-scroll" href="#products">browse the goods</a>--%>
				</div>
			</div>
		</div>
		<div class="overlay-bg"></div>
		<div id="hero-slides" style="height: 680px !important">
			<div class="slides-container">
				<img src="img/Butterfield_view1.jpg" alt="">
				<img src="img/dough_slide.png" alt="">
				<img src="img/DurofinSlide.png" alt="">
				<img src="img/vineyard.png" alt="">
			</div>
		</div>
	</section>

	<section id="products" class=" padding-top-bottom" style="background-color: #335;">
		<div class="container">
			<header class="section-header text-center wow fadeInUp">
			</header>
		</div>
		<div class="container">
			<div id="projects-container" class="row">
				<article class="design product col-xs-12 col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="0.2s">
					<div class="img-box">
						<div class=""></div>
						<%--<span class="product-icon icon-eye"></span>--%>
						<img class="img-responsive" src="img/wheatfield.png" style="height: 150px; margin: 0 auto" alt="">
					</div>
					<br />
					<a class="btn btn-store outline" href="http://www.wheatfieldwines.co.za" style="display: block">Visit Wheatfield Wines</a>
				</article>

				<article class="mock-up product col-xs-12 col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="0.4s" style="background-color: #fff; border-radius: 11px;">
					<div class="img-box">
						<div class=""></div>
						<%--<span class="product-icon icon-eye"></span>--%>
						<img class="img-responsive project-image" src="img/butterfields-logo_baker.png" style="height: 150px; margin: 0 auto" alt="">
					</div>
					<br />
					<a class="btn btn-store outline" href="http://www.butterfield.co.za" style="display: block">Visit Butterfield Bread</a>
				</article>

				<article class="mock-up product col-xs-12 col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="0.4s">
					<div class="img-box">
						<div class=""></div>
						<%--<span class="product-icon icon-eye"></span>--%>
						<img class="img-responsive project-image" src="img/logo-dough.png" style="height: 150px; margin: 0 auto" alt="">
					</div>
					<br />
					<a class="btn btn-store outline" href="http://www.butterfielddough.co.za" style="display: block">Visit Butterfield Dough</a>
				</article>


				<article class=" icons product col-xs-12 col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="0.6s" style="background-color: #fff; border-radius: 11px;">
					<div class="img-box">
						<div class=""></div>
						<%--<span class="product-icon icon-eye"></span>--%>
						<img class="img-responsive project-image" src="img/durofin2.png" style="height: 150px; margin: 0 auto" alt="">
					</div>
					<br />
					<a class="btn btn-store outline" href="http://www.durofin.co.za" style="display: block">Visit Durofin</a>
				</article>
			</div>
		</div>

		<div id="project-modal" class="modal " style="display: none;" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<a class="close" href="#" data-dismiss="modal"><i class="icon-close"></i></a>
						<div class="loader" style="display: block;"></div>
						<div class="screen"></div>
					</div>
					<div class="modal-body">
						<div class="container">
							<div class="row">
								<div id="project-sidebar" class="col-md-4 ">
									<h2 id="sdbr-title">Flat UI-Kit</h2>
									<div>
										<div id="sdbr-price">200</div>
										<div id="sdbr-oldprice">500</div>
									</div>
								</div>
								<div id="project-content" class="col-md-8 ">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sapien risus, blandit at fringilla ac, varius sed dolor. Donec augue lacus, vulputate sed consectetur facilisis, interdum pharetra ligula. Nulla suscipit erat nibh, ut porttitor nisl dapibus eu.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%--<section class="gray-bg padding-top-bottom ">
		<div class="container">
			<div class="row">
				<div class="col-md-8 wow fadeInLeft">
					<h3 class="center cta-message">Available Franchises  <strong></strong></h3>
				</div>
				<div class="col-md-4 text-center wow fadeInRight">
					
					<a class="btn btn-store outline" href="#" data-toggle="modal" data-target=".text-modal">Enquire Now</a>
				</div>
			</div>
		</div>
	</section>--%>



	<section id="about" class="padding-top-bottom ">
		<div class="container">
			<div class="row">
				<div class="col-md-4 wow fadeInLeft">
					<header class="section-header cta-message">
						<h2>About company</h2>
						<!--<h4>Pellentesque interdum eget</h4>-->
					</header>
				</div>
				<div class="col-md-8 cta-message wow fadeInUp">
					<p>
						Butterfield Holdings has launched its first Butterfield Dough store in Pretoria East during late 2014. This fresh business recipe has already been received with excitement by housewives and baking enthusiasts alike. The new flagship store situated in the Pick ‘n Pay Hyper complex, Faerie Glen, offers a wide range of superior, signature products that puts Butterfield Dough in the bakery industry’s winner circle. You can expect to find homemade meat pies, five types of cheesecakes imported from America in addition to the locally made, in-store favourites.
					</p>
					<p style="display: none;" id="showme">We would be happy to help you, explore the possibilities.</p>
					<a class="btn btn-store outline" id="about-btn" href="About.aspx">Read more</a>
				</div>
			</div>
		</div>
	</section>

	<section id="testimonial" class="padding-top-bottom image-bg light-typo">
		<div class="container">

			<div class="testimonial">
				<div id="carousel-example-generic" class="carousel slide bs-docs-carousel-example" data-interval="10000">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
						<li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<h1>“Butterfield, the brand in bread”</h1>
							<br>
						</div>
						<div class="item">
							<h1>“Freshness guaranteed”</h1>
							<br>
						</div>
					</div>
					<br>
					<br>
					<br>
				</div>
			</div>
			<div class="overlay-bg"></div>
		</div>
	</section>

	<section id="newsletter" class="light-typo dark-bg padding-top-bottom">
		<div class="container ">
			<header class="section-header text-center">
				<h2>Stay in touch</h2>
				<h4>Sign Up for Email Updates on on News & Offers</h4>
			</header>
			<div class="row">
				<form id="newsletter-form" action="index.html" method="POST" class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 ">
					<div class="input-group">
						<input id="newsletter-mail" name="email" placeholder="Enter your email" class="form-control input-lg" type="email">
						<span class="input-group-btn">
							<button name="submit" type="submit" class="btn btn-store">Subscribe!</button>
						</span>
					</div>
					<input type="hidden" name="submitted" id="submitted2" value="true">
				</form>
			</div>
		</div>
	</section>

	<%--	<section id="orderform" class="gray-bg padding-top-bottom" ng-controller="orderController">
			<div class="container">
				<header class="section-header text-center">
					<h2>Order Form</h2>
				</header>
				<form action="index.html" method="post" novalidate id="order-form">
					<div class="row">
						<div class="col-sm-12 col-md-12">
						<table class="table">
						  <thead>
							<tr>
							  <th>Product</th>
							  <th>Unit Cost</th>
							  <th class="text-center">
							  <span class="hidden-xs">Quantity</span>
							  <span class="visible-xs">QNT</span>
							  </th>
							  <th class="text-right">Total</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <td class="vert-align">Bed</td>
							  <td class="vert-align">{{ 700 | currency:"$":0 }}</td>
							  <td class="text-center">
								<select class="form-control form-control-inline" ng-model="myBed" ng-options="opt as opt.label for opt in options"></select>
							  </td>
							  <td class="text-right vert-align">{{ myBed.value * 700 | currency:"$":0  }}</td>
							</tr>							
							<tr>
							  <td class="vert-align">Nightstand</td>
							  <td class="vert-align">{{ 400 | currency:"$":0  }}</td>
							  <td class="text-center">
								<select class="form-control form-control-inline" ng-model="myNightstand" ng-options="opt as opt.label for opt in options"></select>
							  </td>
							  <td class="text-right vert-align">{{ myNightstand.value * 400 | currency:"$":0  }}</td>
							</tr>							
							<tr>
							  <td class="vert-align">Hammock</td>
							  <td class="vert-align">{{ 600 | currency:"$":0  }}</td>
							  <td class="text-center">
								<select class="form-control form-control-inline" ng-model="myHammock" ng-options="opt as opt.label for opt in options"></select>
							  </td>
							  <td class="text-right vert-align">{{ myHammock.value * 600 | currency:"$":0  }}</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						  </tbody>
						</table>
						</div>	

					<div class="col-sm-6 col-md-6 contact-info">
						<p class="text-center"><strong>Payment Method</strong></p>
						<div class="row">
							<div class="col-sm-8 col-md-8">
								<div class="form-group">
									<label class="control-label">Name</label>
									<input name="Card number" placeholder="Card number" class="form-control input-lg" type="text">
								</div>
							</div>
							<div class="col-sm-4 col-md-4">
								<div class="form-group">
									<label class="control-label">Code</label>
									<input name="Code" placeholder="Code" class="form-control input-lg" type="text" >
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="control-label" for="contact-mail">month</label>
									<div class=" controls">
										<select class="form-control">
										  <option>January</option>
										  <option>February</option>
										  <option>March</option>
										</select>
									</div>
								</div>	
							</div>	
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="control-label" for="contact-mail">year</label>
									<div class=" controls">
										<select class="form-control">
										  <option>2014</option>
										  <option>2015</option>
										  <option>2016</option>
										  <option>2017</option>
										  <option>2018</option>
										</select>
									</div>
								</div>	
							</div>	
						</div>	

						<p class="text-center"><strong>Information</strong></p>
						<div class="row">
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="control-label">Name</label>
									<input name="First name" placeholder="First name" class="form-control input-lg" type="text">
								</div>
							</div>
							<div class="col-sm-6 col-md-6">
								<div class="form-group">
									<label class="control-label">Last Name</label>
									<input name="Last name" placeholder="Last name" class="form-control input-lg" type="text" >
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" >Email</label>
							<input name="email" placeholder="Your email" class="form-control input-lg" type="email">
						</div>	
						<p class="text-center"><strong>If you have Coupon code</strong></p>
						<div class="input-group ">
							<input placeholder="Coupon code" class="form-control input-lg" type="text" >
							<span class="input-group-btn">
								<button name="submit" type="submit" class="btn btn-store">Check!</button>
							</span>
						</div>

					</div>
					
					<div class="col-sm-6 col-md-6">
						<p class="text-center"><strong>Delivery address</strong></p>
						<div class="form-group">
							<label class="control-label">Street</label>
							<input name="street" placeholder="Street address" class="form-control" type="text">
						</div>	
						<div class="form-group">
							<label class="control-label">City</label>
							<input name="city" placeholder="City" class="form-control" type="text">
						</div>	
						<div class="form-group">
							<label class="control-label">Country</label>
							<input name="Country" placeholder="Country" class="form-control" type="text">
						</div>							
						<div class="form-group">
							<label class="control-label">postcode</label>
							<input name="postcode" placeholder="Post code" class="form-control" type="text">
						</div>					

						<table class="table">
						  <thead>
							<tr>
							  <th colspan="3" class="text-center">Order sumary</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <td>Shipping cost:</td>
							  <td></td>
							  <td class="text-right">Free</td>
							</tr>
							<tr>
							  <td>Total:</td>
							  <td></td>
							  <td id="total" class="text-right">{{ (myBed.value * 700) +  (myNightstand.value * 400) + (myHammock.value * 600) | currency }}</td>
							</tr>
						  </tbody>
						</table>
						<p>
							<button name="submit" type="submit" class="btn btn-store btn-block">Order Product</button>
						</p>
						<input type="hidden" name="submitted" id="submitted" value="true">
					</div>

				</div>
					</form>

			</div>
		</section>--%>

	<%--<section id="cta" class="padding-top-bottom color-bg light-typo">
			<div class="container">
				<div class="row text-center">
					<div class="col-md-4 col-sm-4 news wow fadeInUp" data-wow-delay="0.2s" data-wow-offset="10">
						<i class="icon-trophy iconBig"></i>
						<h3>Quality guaranteed</h3>
					</div>
					<div class="col-md-4 col-sm-4 news wow fadeInUp" data-wow-delay="0.4s" data-wow-offset="10">
						<i class="icon-truck iconBig"></i>
						<h3>Home delivery</h3>
					</div>
					<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" data-wow-offset="10">
						<i class="icon-lock iconBig news"></i>
						<h3>Secure payment</h3>
					</div>
				</div>
			</div>
		</section>--%>

	<section id="contact" class="gray-bg padding-top-bottom">
		<div class="container">
			<header class="section-header text-center">
				<h1><strong>Contact</strong></h1>
				<p>Do you have some kind of problem with our products?</p>
			</header>
			<form action="index.html" method="post" novalidate id="contact-form">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-4 contact-info cta-message wow fadeInLeft">
						<address>
							<strong>Butterfield</strong><br>
							Menlyn Woods
							<br />
							Block A, First Floor
							<br />
							294 Sprite Ave
							<br />
							Faerie Glen
							<br />
							0081
							<br />
							<br />

							Contact Person: Johan Stapelberg
							<br />
							Cell:	084 840 3139
							<br />
							Telephone:	(012) 365 3450
							<br />
						</address>
					</div>

					<div class="col-xs-12 col-sm-12 col-md-8 wow fadeInUp">
						<div class="form-group">
							<label class="control-label" for="contact-name">Name</label>
							<div class="controls">
								<input id="contact-name" name="contactName" placeholder="Your name" class="form-control input-lg requiredField" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="contact-mail">Email</label>
							<div class=" controls">
								<input id="contact-mail" name="email" placeholder="Your email" class="form-control input-lg requiredField" type="email">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="contact-message">Message</label>
							<div class="controls">
								<textarea id="contact-message" name="comments" placeholder="Your message" class="form-control input-lg requiredField" rows="5"></textarea>
							</div>
						</div>
						<p>
							<button name="submit" type="submit" class="btn btn-store btn-block">Send Message</button>
						</p>
						<input type="hidden" name="submitted" id="submitted3" value="true">
					</div>
				</div>
			</form>
		</div>
	</section>

	<footer id="main-footer" class="dark-bg light-typo">
		<div class="container">
			<p class="pull-left copyright wow fadeInUp">
				&copy; Butterfield Holdings 2015.
				<br>
				Designed by <a href="http://www.zapptech.co.za" target="_blank">ZappTech</a>.<br>
			</p>

			<%--<div class="pull-right paymentMethodImg copyright wow fadeInRight">
				<a class="btn btn-store outline" href="#" data-toggle="modal" data-target=".text-modal">Terms & conditions</a>
			</div>--%>
		</div>
	</footer>

	<div class="modal fade text-modal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="color-bg">
					<div class="container">
						<div class="row ">
							<div class="col-xs-12 col-sm-12 col-md-12 color-bg light-typo" id="9modal-bar">
								<h2 class="pull-left">Franchise Enquiry</h2>
								<a class="close pull-right" href="#" data-dismiss="modal"><i class="icon-close"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row ">
						<div class="col-xs-12 col-sm-12 col-md-12">
							<h3>Enquire From</h3>
							<p>
							</p>
							<table style="width: 100%">
								<tr>
									<td>Surname:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>First Names:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Place of Birth:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
									<td>Nationality:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Date of Birth:
									</td>
									<td></td>
									<td>
										<input type="date" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
									<td>ID Number:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Residential Address:
									</td>
									<td></td>
									<td>
										<textarea name="Text1" cols="40" rows="5" class="form-control input-lg requiredField"></textarea>
									</td>
									<td>Postal Address:
									</td>
									<td></td>
									<td>
										<textarea name="Text1" cols="40" rows="5" class="form-control input-lg requiredField"></textarea>
									</td>
								</tr>
								<tr>
									<td>Code:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
									<td>Code:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Tel (Business):
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
									<td>Tel (Home):
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Cel:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
									<td>Email:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Permannet Sa Citizen?:
									</td>
									<td></td>
									<td>
										<input type="checkbox" value="Yes" />
										Yes
										<br />
										<input type="checkbox" value="No" />
										No
									</td>
									<td>Fax No:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
								<tr>
									<td>Years at Current Address:
									</td>
									<td></td>
									<td>Years
										<input type="text" class="form-control input-lg requiredField" style="height: 5px !important" />
										Months
										<input type="text" class="form-control input-lg requiredField" style="height: 5px !important" />
									</td>
									<td>Fax No:
									</td>
									<td></td>
									<td>
										<input type="text" class="form-control input-lg requiredField" style="height: 30px !important" />
									</td>
								</tr>
							</table>

						</div>
						<br />
						<div class="col-xs-12 col-sm-12 col-md-12 text-center" style="padding-top: 8px !important">
							<a class="btn btn-store" href="#" data-dismiss="modal">Submit</a><br>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


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
