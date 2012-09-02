# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

directionsService = new google.maps.DirectionsService()
directionsDisplay = new google.maps.DirectionsRenderer()

$('.dropdown-toggle').dropdown()

$('.create_crossing_form').click (e) ->
	e.preventDefault()
	$(this).fadeToggle ->
		$('.form-horizontal').fadeToggle()

$('.close_crossing_form').click (e) ->
	e.preventDefault()
	$('.form-horizontal').fadeToggle ->
		$('.create_crossing_form').fadeToggle()
	

$('#show-map').click (e) ->
	e.preventDefault()
	$('#map_canvas').slideToggle()

$(document).ready ->
  request = {
    origin:$('#trip-started-at').html(),
    destination:$('#trip-ended-at').html(),
    waypoints: [
    	location:$('#distant-point').html(),
    	stopover:false
    ],
    travelMode: google.maps.TravelMode.DRIVING
  }

  mapOptions = {
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)
  directionsDisplay.setMap(map)

  directionsService.route(request, (result, status) -> 
    if (status == google.maps.DirectionsStatus.OK)
      directionsDisplay.setDirections(result)
  )