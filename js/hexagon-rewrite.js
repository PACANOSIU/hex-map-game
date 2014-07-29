// Hex math defined here: http://blog.ruslans.com/2011/02/hexagonal-grid-math.html
var Map = function(){
    var mapData;
    this.data = null;
    this.attack = {attX: null, attY: null, defX: null, defY: null};
    this.hexes = {selectedX: null, selectedY: null, neighbors: null};
	this.unitPlacement = [];
	this.neighbors = {};
	this.username = "bo_knows";
	this.ctx = null;
	this.canvas = null;
    this.getData = function(callback){
        $.ajax({
            url: "getMap.php",
            type: "POST",
            dataType: 'JSON'
        }).success(callback);
    };
};

function updateMap(data, param){
	if(param == "map"){
		$.ajax({
		url: "updateMap.php",
		data: data,
		type: "POST",
		dataType: 'JSON'
		});
	}else if(param == "mapProperties"){
		$.ajax({
		url: "updateMapProps.php",
		data: data,
		type: "POST",
		dataType: 'JSON'
		});
	}
};
 
var map = new Map();
map.getData(function(map_data){
    map.data = JSON.parse(map_data.mapArray);
    map.dataProp = JSON.parse(map_data.mapProperties);

    var hexagonGrid = new HexagonGrid("HexCanvas", 30);
    hexagonGrid.drawHexGrid(10, 20, 10, 10, true);
	
	var msg = document.getElementById('msg').innerHTML;
	msg = "It's the " + map.dataProp.turnPhase + " stage. ";
	document.getElementById('msg').innerHTML = msg;	
	
	if(map.dataProp.turnPhase == "unitPlacement"){
		$('#controls').hide();
		$('#endTurn').hide();
		$('#fortify').hide();
		$('#unitButtons').show();
		var units = calcUnits("bo_knows");
		var msg = document.getElementById('units').innerHTML;
		console.log(msg);
		msg = "0 / " + units + " units placed.";
		document.getElementById('units').innerHTML = msg;	
		console.log(units);
	}
	
	//UI Buttons
	var singleAttackButton = document.getElementById('singleAttack');
	singleAttackButton.addEventListener('click', function (e) {
		singleAttack(this.map, attack);
		hexagonGrid.context.clearRect(0, 0, hexagonGrid.canvas.width, hexagonGrid.canvas.height);
		hexagonGrid.drawHexGrid(hexagonGrid.rows, hexagonGrid.cols, 10, 10, true);
		
		var drawy2 = attack.attY % 2 == 0 ? (attack.attX * hexagonGrid.height) + hexagonGrid.canvasOriginY + 6 : (attack.attX * hexagonGrid.height) + hexagonGrid.canvasOriginY + 6 + (hexagonGrid.height / 2);
		var drawx2 = (attack.attY * hexagonGrid.side) + hexagonGrid.canvasOriginX;
		var drawy3 = attack.defY % 2 == 0 ? (attack.defX * hexagonGrid.height) + hexagonGrid.canvasOriginY + 6 : (attack.defX * hexagonGrid.height) + hexagonGrid.canvasOriginY + 6 + (hexagonGrid.height / 2);
		var drawx3 = (attack.defY * hexagonGrid.side) + hexagonGrid.canvasOriginX;
		if(this.map[attack.attX][attack.attY].units == 1){
		
		}else{
			hexagonGrid.drawHex(drawx2, drawy2 - 6, "", "", true, "#00F2FF", this.map[attack.attX][attack.attY].owner); //highlight attacker hex
			hexagonGrid.drawHex(drawx3, drawy3 - 6, "", "", true, "#FF0000", this.map[attack.defX][attack.defY].owner); //highlight defender hex
		} 
	}, false);
	
	var contAttackButton = document.getElementById('continuousAttack');
	contAttackButton.addEventListener('click', function (e) {
		contAttack(map, attack);
		hexagonGrid.context.clearRect(0, 0, hexagonGrid.canvas.width, hexagonGrid.canvas.height);
		hexagonGrid.drawHexGrid(hexagonGrid.rows, hexagonGrid.cols, 10, 10, true);
		$('#controls').hide();
	}, false);
	
	var endTurnButton = document.getElementById('endTurnButton');
	endTurnButton.addEventListener('click', function (e) {
		//turned off for testing
		/*if(map.dataProp.turn == map.dataProp.owners.length-1){
			map.dataProp.turn = 0;
		}else{
			map.dataProp.turn = parseInt(map.dataProp.turn) + 1;
		} */ 
		map.dataProp.turnPhase = "unitPlacement";
		var data = { data: JSON.stringify(map.dataProp) };
		updateMap(data, "mapProperties");
		var data = { data: JSON.stringify(map.data) };
		updateMap(data, "map");
		$('#endTurn').hide();
	}, false);
	
	var fortifyButton = document.getElementById('fortifyButton');
	fortifyButton.addEventListener('click', function (e) {
		mapProperties.turnPhase = "fortify";
		var data = { data: JSON.stringify(mapProperties) };
		updateMap(data, "mapProperties");
		$('#controls').hide();	
	}, false);	
	
	var transferMaxButton = document.getElementById('transferMaxButton');
	transferMaxButton.addEventListener('click', function (e) {
		map.data[map.attack.defX][map.attack.defY].units = map.data[map.attack.defX][map.attack.defY].units + map.data[map.attack.attX][map.attack.attY].units - 1;
		map.data[map.attack.attX][map.attack.attY].units = 1;
		delete map.hexes.selectedColumn;
		delete map.hexes.selectedRow;
		map.ctx.clearRect(0, 0, map.canvas.width, map.canvas.height);
		hexagonGrid.drawHexGrid(10, 20, 10, 10, true);
		var data = { data: JSON.stringify(map.data) };
		updateMap(data, "map");
		$('#fortify').hide();
	}, false);
	
	var transferButton = document.getElementById('transferButton');
	transferButton.addEventListener('click', function (e) {
		var num = $('#transfer').val();
		num = parseInt(num);
		var tmp = map.data[map.attack.attX][map.attack.attY].units;
		map.data[map.attack.defX][map.attack.defY].units = map.data[map.attack.defX][map.attack.defY].units + num;
		map.data[map.attack.attX][map.attack.attY].units = tmp - num;
		delete map.hexes.selectedColumn;
		delete map.hexes.selectedRow;
		map.ctx.clearRect(0, 0, map.canvas.width, map.canvas.height);
		hexagonGrid.drawHexGrid(10, 20, 10, 10, true);
		var data = { data: JSON.stringify(map.data) };
		updateMap(data, "map");
		$('#fortify').hide();
	}, false);
});

/*
//Create Random Map if not loading from DB
if(typeof map == "undefined"){
	var mapProperties = { owners: new Array("bo_knows", "Marlon"), colors: new Array("Orange", "Purple"), turn: 0 };
	var map = new Array(10);
	var types = ["land", "grass", "mountains", "desert"];

	for (var i=0; i<map.length; i++){
		map[i] = new Array(20);
	}
	for (var i=0; i<map.length; i++){
		for (var j=0; j<map[i].length; j++){
			var land = Math.random()<.8;
			if(land == true){
				var rand = Math.floor((Math.random() * 4)); 
				var own = Math.floor((Math.random() * 2)); 
				map[i][j] = { type: types[rand], owner: mapProperties.owners[own], units: 10, color: mapProperties.colors[own] };
			}else if(land == false){
				map[i][j] = { type: "water" };
			}
		}
	}
	//convert properties to JSON for database storage
	var data = JSON.stringify(map);
	//console.log(data);
	var data = JSON.stringify(mapProperties);
	//console.log(data);
}
*/

//if(mapProperties.owners[mapProperties.turn] != username){ 
	//if it's not a players turn, hide UI elements
//	$('#endTurn').hide();
//	$('#controls').hide();
//	$('#fortify').hide();
//}