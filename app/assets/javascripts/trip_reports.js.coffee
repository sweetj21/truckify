# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('.dropdown-toggle').dropdown()

$('.create_crossing_form').click (e) ->
	e.preventDefault()
	$(this).fadeToggle ->
		$('.form-horizontal').fadeToggle()

$('.close_crossing_form').click (e) ->
	e.preventDefault()
	$('.form-horizontal').fadeToggle ->
		$('.create_crossing_form').fadeToggle()
	
$(document).ready ->
  mapOptions = {
    center: new google.maps.LatLng(-34.397, 150.644),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)