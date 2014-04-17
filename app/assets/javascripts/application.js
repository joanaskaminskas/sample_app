function initialize() {
  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
    map.setCenter(new GLatLng(37.88, -122.442626), 10);
    map.addControl(new GSmallMapControl());
    map.addControl(new GMapTypeControl());
    GEvent.addListener(map,"click", function(overlay,latlng) {
      if (overlay) {
        // ignore if we click on the info window
        return;
      }
      var tileCoordinate = new GPoint();
      var tilePoint = new GPoint();
      var currentProjection = G_NORMAL_MAP.getProjection();
      tilePoint = currentProjection.fromLatLngToPixel(latlng, map.getZoom());
      latDiv = document.getElementById('map_lat');
      lngDiv = document.getElementById('map_lng');
      lngDiv.value = latLng.lat();
      latDiv.value = latLng.lng();
      tileCoordinate.x = Math.floor(tilePoint.x / 256);
      tileCoordinate.y = Math.floor(tilePoint.y / 256);
      var myHtml = "Latitude: " + latlng.lat() + "&lt;br/&gt;Longitude: " + latlng.lng() +
        "&lt;br/&gt;The Tile Coordinate is:&lt;br/&gt; x: " + tileCoordinate.x +
        "&lt;br/&gt; y: " + tileCoordinate.y + "&lt;br/&gt; at zoom level " + map.getZoom();
      map.openInfoWindow(latlng, myHtml);
    });
  }
}
google.maps.event.addDomListener(window, 'load', initialize);