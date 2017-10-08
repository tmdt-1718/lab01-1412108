// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

function myMap() {
    var mapCanvas = document.getElementById("map");
    var mapOptions = {
        center: new google.maps.LatLng(10.7630215,106.67748059999997),
        zoom: 15
    };
    var map = new google.maps.Map(mapCanvas, mapOptions);
    marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(10.7630215,106.67748059999997)});
    infowindow = new google.maps.InfoWindow(
    	{content:'<strong>Tran Huu Dung</strong><br>54 Hung Vuong<br> Ho Chi Minh<br>'});
}