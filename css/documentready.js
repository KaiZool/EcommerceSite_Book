var map;

function initialise(location)
{
    console.log(location);

    var mapOptions = {
        center: new google.maps.LatLng(location.coords.latitude, location.coords.longitude),
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("maps_google"),
        mapOptions);
}

$(document).ready(function ()
{
    navigator.geolocation.getCurrentPosition(initialise);
});