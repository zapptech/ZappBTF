<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StoreLocator.aspx.cs" Inherits="StoreLocator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Butterfields Store Locator</title>
	<meta charset="utf-8">
	<meta name="description" content="Butterfields">
	<meta name="author" content="ANGELOSTUDIO.NET">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/superslides.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/icons.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/blue.css" class="colors">
	<link rel="shortcut icon" href="img/ico/32.png" sizes="32x32" type="image/png" />
	<link rel="apple-touch-icon-precomposed" href="img/ico/60.png" type="image/png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/ico/72.png" type="image/png" />
	<link rel="apple-touch-icon-precomposed" sizes="120x120" href="img/ico/120.png" type="image/png" />
	<link rel="apple-touch-icon-precomposed" sizes="152x152" href="img/ico/152.png" type="image/png" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="js/jquery.storelocator.js"></script>
	<script src="js/handlebars.min.js"></script>
	<%--<script src="http://<a href="http://www.jqueryscript.net/tags.php?/map/maps.google.com/maps/api/js?sensor=false"></script>--%>
	<link rel="stylesheet" type="text/css" href="css/default.css" />
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<script src="js/modernizr.custom.js"></script>
	<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->

	<style>
		#map-container {
			height: 460px;
			width: 100% !important;
		}
	</style>
</head>
<body>
	<div id="main-nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Default.aspx#home">
					<img id="navlogo" src="img/butterfields-logo_baker1.jpg" alt="microstore" width="80" height="100">
				</a>

			</div>
			<div class="collapse navbar-collapse">
				<ul id="navigation" class="nav navbar-nav navbar-right text-center">
					<li><a href="Default.aspx#products">Products</a></li>
					<li><a href="Default.aspx#about">About</a></li>
					<li><a href="Default.aspx#newsletter">Newsletter</a></li>
					<li><a onclick="window.location = 'StoreLocator.aspx'" href="StoreLocator.aspx">Store Locator</a></li>
					<li><a href="Default.aspx#contact">Contact</a></li>
					

				</ul>
			</div>

		</div>


	</div>

	<section id="contact" class="gray-bg padding-top-bottom">
		<div id='cssmenu' style="float: left; position: absolute; background-color: #fff; z-index: 999; box-shadow: 0 0 10px #999; left: 40px; top: -9px;">
			<ul>
				<li class='active has-sub'><a href='#'><span>South Africa</span></a>
					<ul>
						<li class='has-sub'><a href='#'><span>Gauteng</span></a>
							<ul>
								<li><a href='#'><span>DTI</span></a></li>
								<li><a href='#'><span>Ga-rankuwa</span></a></li>
								<li><a href='#'><span>Eersterus</span></a></li>
								<li><a href='#'><span>Northpark Mall</span></a></li>
								<li><a href='#'><span>Randfontein</span></a></li>
								<li><a href='#'><span>Rosslyn</span></a></li>
								<li><a href='#'><span>Takalani</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Eatern Cape</span></a>
							<ul>
								<li class='last'><a href='#Matatiele'><span>Matatiele</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Free State</span></a>
							<ul>
								<li class='last'><a href='#'><span>Virginia</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>KwaZulu Natal</span></a>
							<ul>
								<li class='last'><a href='#'><span>Ladysmith</span></a></li>
								<li class='last'><a href='#'><span>Pine Street</span></a></li>
								<li class='last'><a href='#'><span>The Workshop</span></a></li>
								<li class='last'><a href='#'><span>West Street</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Mpumalanga</span></a>
							<ul>
								<li class='last'><a href='#'><span>Belfast</span></a></li>
								<li class='last'><a href='#'><span>Cross Roads</span></a></li>
								<li class='last'><a href='#'><span>Ekandustria</span></a></li>
								<li class='last'><a href='#'><span>Kwagga Plaza</span></a></li>
								<li class='last'><a href='#'><span>Thulamahashe</span></a></li>
								<li class='last'><a href='#'><span>Witbank</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Limpopo</span></a>
							<ul>
								<li class='last'><a href='#'><span>Bela Bela</span></a></li>
								<li class='last'><a href='#'><span>Bochum</span></a></li>
								<li class='last'><a href='#'><span>Lebowakgomo</span></a></li>
								<li class='last'><a href='#'><span>Marble Hall</span></a></li>
								<li class='last'><a href='#'><span>Matoks</span></a></li>
								<li class='last'><a href='#'><span>Tzaneen</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Northern Cape</span></a>
							<ul>
								<li class='last'><a href='#'><span>Kathu</span></a></li>
								<li class='last'><a href='#'><span>Kimberley</span></a></li>
								<li class='last'><a href='#'><span>Kuruman</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>North West</span></a>
							<%--<ul>
									<li class='last'><a href='#'><span>Kathu</span></a></li>
									<li class='last'><a href='#'><span>Kimberley</span></a></li>
									<li class='last'><a href='#'><span>Kuruman</span></a></li>
								</ul>--%>
						</li>
					</ul>
				</li>
				<li class='active has-sub'><a href='#'><span>Africa</span></a>
					<ul>
						<li class='has-sub'><a href='#'><span>Botswana</span></a>
							<ul>
								<li class='last'><a href='#'><span>Broadhurst</span></a></li>
								<li class='last'><a href='#'><span>Francistown</span></a></li>
								<li class='last'><a href='#'><span>Mogoditshane</span></a></li>
								<li class='last'><a href='#'><span>Marapula</span></a></li>
								<li class='last'><a href='#'><span>The Village</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Zambia</span></a>
							<ul>
								<li class='last'><a href='#'><span>Ndola</span></a></li>
							</ul>
						</li>
						<li class='has-sub'><a href='#'><span>Swaziland</span></a>
							<ul>
								<li class='last'><a href='#'><span>Mbabane</span></a></li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="container" style="display: block">
			<div class="col-xs-12 col-sm-12 col-md-12 contact-info cta-message wow fadeInLeft" style="position: absolute; width: 300px; right: 7px; top: 146px; z-index: 999; background-color: #fff; padding: 20px; box-shadow: 0 0 12px #999;">
				<div id="Matatiele">
					<address>
						<strong>Butterfields</strong><br>
						Franchisee Manager: Zanele Mkatu
					<br />
						Telephone: 039 737 3366
					<br />
						Cellphone: 083 498 3208
					<br />
						Fax: 039 737 3366
					<br />
						Address: Shop 9 Rhino Plaza
					<br />
						: 4730
					<br />
						: Matatiele
					<br />
						: Eastern Cape
					<br />
					</address>
				</div>
			</div>




		</div>

	</section>

	<div id="map-container" class="col-md-6"></div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>


	<script>

		function init_map() {
			var var_location = new google.maps.LatLng(-25.75865, 28.1979505);

			var var_mapoptions = {
				center: var_location,
				zoom: 4
			};

			var var_marker = new google.maps.Marker({
				position: var_location,
				map: var_map,
				title: "Venice"
			});

			var var_map = new google.maps.Map(document.getElementById("map-container"),
				var_mapoptions);

			var_marker.setMap(var_map);

		}

		google.maps.event.addDomListener(window, 'load', init_map);

	</script>
</body>
</html>
