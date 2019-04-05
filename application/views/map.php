<style>
	#right-panel {
		font-family: 'Roboto', 'sans-serif';
		line-height: 30px;
		padding-left: 10px;
	}

	#right-panel select,
	#right-panel input {
		font-size: 15px;
	}

	#right-panel select {
		width: 100%;
	}

	#right-panel i {
		font-size: 12px;
	}
	html,
	body {
		height: 100%;
		margin: 0;
		padding: 0;
	}

	#map {
		height: 70%;
		width: 70%;
        float:left;
	}

	#right-panel {
		margin: 20px;
		border-width: 2px;
		width: 25%;
		height: 400px;
		text-align: left;
        float:right;
		padding-top: 0;
	}

	#directions-panel {
		margin-top: 10px;
		background-color: #FFEE77;
		padding: 10px;
		overflow: scroll;
		height: 100%;
	}

</style>
<br><br>
<div id="map"></div>
<div id="right-panel">
	<input type="submit" class="btn btn-primary" id="submit">
	<div id="directions-panel"></div>
	<p id="totaljarak"></p>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
    Array.prototype.remove = function() {
    var what, a = arguments, L = a.length, ax;
    while (L && this.length) {
        what = a[--L];
        while ((ax = this.indexOf(what)) !== -1) {
            this.splice(ax, 1);
        }
    }
    return this;	
    };

    var alldata = <?php echo shell_exec("c:\Users\Bagus\Anaconda3\python.exe c:/nns-engine.py"); ?> // membuka library python
    var tempalldata = []
	alldata.forEach(element => {
		tempalldata.push(element);
	});
	var mulai = alldata[0]; //iniasilisasi titik awal
	var akhir = alldata[(alldata.length-1)];
    alldata.remove(mulai);
    alldata.remove(akhir);
	var singgah = alldata;

	console.log(alldata);

	alloutput = [];
	
	function initMap() { 					//untuk memanggil library google maps
		var directionsService = new google.maps.DirectionsService;
		var directionsDisplay = new google.maps.DirectionsRenderer;
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 10,
			center: {
				lat: -7.794234,
				lng: 110.369694
			}
		});
		directionsDisplay.setMap(map);

		document.getElementById('submit').addEventListener('click', function () { //proses untuk menyimpan hasil rute terbaik berupa history
		$.post( "http://localhost/roadshow/History/index", {'tengah[]': singgah, 'mulai': mulai, 'akhir': akhir})
		.done(function( data ) {
			alert("History tersimpan");
		});

			calculateAndDisplayRoute(directionsService, directionsDisplay);
		});
	}

	function calculateAndDisplayRoute(directionsService, directionsDisplay) { //proses menampilkan dan menghitung rute yang dihasilkan
		var waypts = [];
		// var checkboxArray = document.getElementById('waypoints');
		for (var i = 0; i < window.singgah.length; i++) {
			//   if (checkboxArray.options[i].selected) {
			console.log(window.singgah[i])
			// stop = new google.maps.LatLng(window.singgah[i])
			waypts.push({
				location: window.singgah[i],
				stopover: true
			});
			//   }
		}

		var total_jarak = 0.0;

		directionsService.route({
			origin: mulai,
			destination: akhir,
			waypoints: waypts,
			optimizeWaypoints: true,
			travelMode: 'DRIVING'
		}, function (response, status) {
			if (status === 'OK') {
				console.log(response.routes[0].legs);
				console.log(response);
				for (var i = 0; i < response.routes[0].legs.length; i++) {
					response.routes[0].legs[i].start_address = window.tempalldata[i];
					response.routes[0].legs[i].end_address = window.tempalldata[i+1];

				}
				directionsDisplay.setDirections(response);
				var route = response.routes[0];
				var summaryPanel = document.getElementById('directions-panel');
				var totaljarakPanel = document.getElementById('totaljarak');
				
				summaryPanel.innerHTML = '';
				// For each route, display summary information.
				for (var i = 0; i < route.legs.length; i++) {
					var routeSegment = i + 1;
					summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment +
						'</b><br>';
					summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
					summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
					summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
					total_jarak += route.legs[i].distance.value;
				}
				// alert(total_jarak/1000)
				totaljarakPanel.innerHTML =  "TOTAL JARAK : " + parseFloat(total_jarak/1000).toFixed(2) + " KM"; 
			} else {
				window.alert('Directions request failed due to ' + status);
			}
		});
	}
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAxm9C0PTAMWHE77FMCVCZca9le_0xxoCw&callback=initMap">


</script>
