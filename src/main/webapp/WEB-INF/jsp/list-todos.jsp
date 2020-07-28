<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
	<script>
	function getQRImage() {
		myform.submit();
	}
	</script>
	<form id="myform" action="/add-todo">
	
	<div class="container">
		DOCTYPE html>
<html>
  <head>
    <title>Place Searches</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script>

      var map;
      var service;
      var infowindow;

      function initMap() {
        var bang = new google.maps.LatLng(12.9836, 77.6797);

        infowindow = new google.maps.InfoWindow();

        map = new google.maps.Map(
            document.getElementById('map'), {center: bang, zoom: 15});

        var request = {
          query: 'HDFC Bank, 62, SSB Towers, Vignan Nagar, Kaggadasapura, Bengaluru, Karnataka 560075, India',
          fields: ['name', 'geometry'],
        };

        service = new google.maps.places.PlacesService(map);

        service.findPlaceFromQuery(request, function(results, status) {
          if (status === google.maps.places.PlacesServiceStatus.OK) {
            for (var i = 0; i < results.length; i++) {
              createMarker(results[i]);
            }

            map.setCenter(results[0].geometry.location);
          }
        });
      }

      function createMarker(place) {
        var marker = new google.maps.Marker({
          map: map,
          position: place.geometry.location
        });

        google.maps.event.addListener(marker, 'click', function() {
		  var dString=place.name;
		   window.open("\Text.html","","width=800,height=800")
          //infowindow.setContent(place.name);
		  //infowindow.setContent(dString2);
          //infowindow.open(map, this);
        });
      }
	
	</script>
  </head>
  <body>
    <div id="map"></div>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx5Fu4Neg22dt8G6M2qwFAP5_VwuhzA9I&libraries=places&callback=initMap" async defer ></script>
  </body>
</html>
		<img alt="logo" src="/ATM.jpg" onclick="getQRImage()">
	</div>
<%@ include file="common/footer.jspf" %>
</form>