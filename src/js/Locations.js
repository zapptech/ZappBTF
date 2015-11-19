var map;
var kLayer = '';
var geocoder;
var hasreinit = false;
var marker = null;
var directionsDisplay;
var directionsService;
var stepDisplay;
var markerArray = [];
var ArrLocations;
var UserLocation = "";
var ActiveInfoWindow;
var PlacesList = "";
var bounds;
var startingPoint;
var _lat;
var _lang;
var latlngs = [];

var locations = new Array();
//var infoWindow;

function initialize() {
    // Create an array of styles.
    var styles = [
      {
          stylers: [
              { hue: "#ff1100" },
            { saturation: -80 }
          ]
      }, {
          featureType: "road",
          elementType: "geometry",
          stylers: [
            { lightness: 100 },
            { visibility: "simplified" }
          ]
      }
    ];

    var styledMap = new google.maps.StyledMapType(styles, { name: "Styled Map" });

    // Try W3C Geolocation (Preferred)
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            //Get Lat and Long
            _lat = position.coords.latitude;
            _lang = position.coords.longitude;
            ourAddress = getCurrentLocationFirstTime(position);

            //Get Current Location of user
            startingPoint = new google.maps.LatLng(_lat, _lang);

            //Google map options
            var mapOptions = {
                zoom: 12,
                center: startingPoint,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }

            AddPartnersToArray();
            //Set Bounds for the addresses close to user
            bounds = new google.maps.LatLngBounds();

            //Initialize map
            map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

            //Add marker for current position
            var marker = new google.maps.Marker({
                map: map,
                icon: "http://www.conceptfire-uk.com/wp-content/uploads/2011/07/icon-pin-color.png",
                position: startingPoint
            });

            compareDistances();
        }, function () {
            handleNoGeolocation(browserSupportFlag);
        });
    }
        // Browser doesn't support Geolocation
    else {
        handleNoGeolocation(browserSupportFlag);
    }

    // Create a renderer for directions and bind it to the map.


    displaymapData();
}

function displaymapData() {
    var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
        new google.maps.Size(40, 37),
        new google.maps.Point(0, 0),
        new google.maps.Point(12, 35));

    var pinColor = "";
    pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
         new google.maps.Size(36, 36),
         new google.maps.Point(0, 0),
         new google.maps.Point(10, 34));

    var data = $("#hfPartners").val();

    if (data != null && data.split('||').length > 0) {
        var ev = data.split('||');
        var PlaceID = 0;

        for (var i = 0; i < ev.length; i++) {
            if (ev[i]) {
                //alert(contentString);
                var PartnerInfo = ev[i].split("//");
                var Address = PartnerInfo[5].toString();
                var Name = PartnerInfo[0].toString();
                var Province = PartnerInfo[1].toString();
                var Tier = PartnerInfo[2].toString();
                var ContactPerson = PartnerInfo[3].toString();
                var Tel = PartnerInfo[4].toString();
                var Email = PartnerInfo[6].toString();
                var Lat = PartnerInfo[7].toString().split("_")[0];
                var Lng = PartnerInfo[7].toString().split("_")[1];

                var pinColor = "a11a21";
                var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
                 new google.maps.Size(36, 36),
                 new google.maps.Point(0, 0),
                 new google.maps.Point(10, 34));

                //GREEN 68cc2b
                var marker = new google.maps.Marker({
                   // OriginalIcon: pinImage,
                 //   icon: pinImage,
                 //   shadow: pinShadow,
                    position: new google.maps.LatLng(Lat, Lng),
                    map: map,
                    title: 'Reseller - ' + Name,
                    Address: Address + ", " + Province,
                    ContactPerson: ContactPerson,
                    Tel: Tel,
                    Email: Email,
                    Province: Province,
                    ID: PlaceID++,
                    Tier: Tier,
                    CompanyName: Name
                });

                markerArray.push(marker);

                //Add circle overlay and bind to marker
                var circle = new google.maps.Circle({
                    map: map,
                    radius: 1609,    // 10 miles in metres
                });
                circle.bindTo('center', marker, 'position');
                var TierTD = "";
                if (Tier) {
                    TierTD = "<tr>" + "<td style='font-weight:bold;'>Tier</td><td>" + Tier + "</td>" + "</tr>";
                }

                var ContactP = "";
                if (ContactPerson) {
                    ContactP = "<tr><td style='font-weight:bold;'>Contact Person</td><td>" + ContactPerson + "</td>" + "</tr>";
                }

                var contentString = "<div class='infotable'>" +
                     "<table>" +
                     "<tr>" + "<td style='font-weight:bold; font-size:18px; padding-bottom:20px;' colspan='2'>" + Name + "</td>" + "</tr>" +
                     TierTD +
                     "<tr>" + "<td style='font-weight:bold;width:100px;'>Address</td><td style='width:200px;'>" + Address + "</td>" + "</tr>" +
                     "<tr>" + "<td style='font-weight:bold;'>Email</td><td>" + Email + "</td>" + "</tr>" +
                     "</table>" +
                     "</div>";

                createInfoWindow(marker, contentString);
            }
        }
    }
}

function createInfoWindow(marker, contentString) {
    google.maps.event.addListener(marker, 'click', function () {
        var infoWindow = new google.maps.InfoWindow();
        infoWindow.setContent(contentString);
        infoWindow.open(map, marker);
    });
}

function onItemClick(event, pin) {
    // Create content
    var contentString = pin.data.text + "<br /><br /><hr />Coordinate: " + pin.data.lng + "," + pin.data.lat;

    // Replace our Info Window's content and position
    infowindow.setContent(contentString);
    infowindow.setPosition(pin.position);
    infowindow.open(map)
}

function AddPartnersToArray() {
    var data = $("#hfPartners").val();

    if (data != null && data.split('||').length > 0) {
        var ev = data.split('||');

        for (var i = 0; i < ev.length; i++) {
            if (ev[i]) {
                var PartnerInfo = ev[i].split("//");
                var Lat = PartnerInfo[7].toString().split("_")[0];
                var Lng = PartnerInfo[7].toString().split("_")[1];
                latlngs.push(new google.maps.LatLng(Lat, Lng));
            }
        }
    }
}

function resultMouseOver() {
    $('tr[name="resultrow"]').hover(function () {
        var rowid = $(this).attr('id'); if (typeof rowid != 'undefined' && typeof markerArray[rowid] != 'undefined')
        { markerArray[rowid].setIcon("/App_themes/oki/images/marker-highlight.png"); }
    }, function () {
        var rowid = $(this).attr('id'); if (typeof rowid != 'undefined' && typeof markerArray[rowid] != 'undefined')
        { markerArray[rowid].setIcon(markerArray[rowid].OriginalIcon); }
    });
}

function handleNoGeolocation(errorFlag) {
    if (errorFlag == true) {
        alert("Geolocation service failed.");
    } else {
        alert("Your browser doesn't support geolocation.");
    }
}

function getCurrentLocationFirstTime(location) {
    var lat = location.coords.latitude;
    var long = location.coords.longitude;

    UserLocation = lat + "_" + long;
    var AddressString = '';
    var latlng = new google.maps.LatLng(lat, long);
    geocoder = new google.maps.Geocoder();
    geocoder.geocode({ 'latLng': latlng }, function (data, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            $('#CurrentLocation').val(data[1].formatted_address);
            AddressString = data[1].formatted_address;
        }
        else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });

    return AddressString;
}

function codeAddress(address) {
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var location = results[0].geometry.location;
            compareDistances(location);
        } else {
            alert('Geocode was not successful for the following reason: ' + status);
        }
    });
}
var LocCount = 0;
function compareDistances() {
    if (latlngs.length) {
        var distances = [];
        //use geometry.spherical to calculate the distances between pairs of lat/lng coordinates
        for (var j = 0; j < latlngs.length; j++) {
            distances.push({ distance: google.maps.geometry.spherical.computeDistanceBetween(startingPoint, latlngs[j]), marker: j });
        }
        //reorder the distances, shortest first, closest will then be distances[0] and distances[1]
        distances.sort(function (a, b) {
            return a.distance - b.distance;
        });
        for (var i = 0; i < markerArray.length; i++) {
            var marker = markerArray[i];

            for (var ii = 0; ii < 3; ii++) {
                var position = latlngs[distances[ii].marker];
                if (marker.position.A == position.A && marker.position.F == position.F) {
                    marker.setMap(map);
                    break;
                }
            }
        }
    }
}

$(function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src = "http://maps.googleapis.com/maps/api/js?sensor=true&callback=initialize";
    document.body.appendChild(script);
});