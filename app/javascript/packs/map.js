import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const mark = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  mark.addMarkers(markers);
  if (markers.length === 0) {
    mark.setZoom(2);
  } else if (markers.length === 1) {
    mark.setCenter(markers[0].lat, markers[0].lng);
    mark.setZoom(14);
  } else {
    mark.fitLatLngBounds(markers);
  }
}
