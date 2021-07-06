anime({
  targets: '#bannerTXT',
  targets: ['#bannerTXT', '#bannerBTN'],
  translateX: [-1000, 0],
  easing: 'easeInOutExpo'
});

let map;

function initMap(){
  var location = {lat: 52.632359, lng: 4.750680};
  map = new google.maps.Map(document.getElementById("map"), {
    zoom: 20,
    center: location
  });
  var marker = new google.maps.Marker({
    position: location,
    map: map
  })
}