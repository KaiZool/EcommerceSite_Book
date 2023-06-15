var myCenter = new google.maps.LatLng(4.8853633, 114.93142122);

function initialize() {
    var mapProp = {
        center: myCenter,
        zoom: 80,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

    var marker = new google.maps.Marker({
        position: myCenter,
        animation: google.maps.Animation.BOUNCE
    });

    marker.setMap(map);

    var infowindow = new google.maps.InfoWindow({
        content: "Laksamana College of Business"
    });

    google.maps.event.addListener(marker,'click',function() {
        map.setZoom(10);
        infowindow.open(map, marker);
        map.setCenter(marker.getPosition());
    });
}

google.maps.event.addDomListener(window, 'load', initialize);