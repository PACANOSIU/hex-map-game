HexagonGrid.prototype.drawHex = function (x0, y0, fillColor, debugText, highlight, highlightColor, owner) {  
	this.context.font="bold 12px Helvetica";
	this.owner = owner;
	this.context.strokeStyle = "#000000";
	this.context.lineWidth = 1;
    this.context.lineCap='round';
	
	var tile = this.getSelectedTile(x0 + this.width - this.side, y0);
	if(tile.row<3){
		//console.log(tile.row, tile.column, x0, this.width, this.side, y0)
	}
	var numberOfSides = 6,
	size = this.radius,
	Xcenter = x0 + (this.width / 2),
	Ycenter = y0 + (this.height / 2);
	this.context.beginPath();
	this.context.lineWidth = 1.5;
	this.context.moveTo (Xcenter +  size * Math.cos(0), Ycenter +  size *  Math.sin(0));          
	for (var i = 1; i <= numberOfSides;i += 1) {
		this.context.lineTo (Xcenter + size * Math.cos(i * 2 * Math.PI / numberOfSides), Ycenter + size * Math.sin(i * 2 * Math.PI / numberOfSides));
	}
	if(typeof(map.data[tile.row][tile.column]) != "undefined"){
		if (fillColor && highlight == false && map.data[tile.row][tile.column].type =="land") {
			this.context.fillStyle = map.data[tile.row][tile.column].color;
		}else{
			this.context.fillStyle = fillColor;
		}
	}
	

	if (highlight == true){
		this.context.fillStyle = highlightColor;
		this.context.globalAlpha=0.65;
	}
	this.context.fill();
	this.context.closePath();
	this.context.stroke();
	
	this.context.globalAlpha=1;


	if(map.data[tile.row][tile.column].type != "water"){
		//Draw smaller hex inside bigger hex - v2
		var numberOfSides = 6,
		size = this.radius-4.75,
		Xcenter = x0 + (this.width / 2),
		Ycenter = y0 + (this.height / 2);
		this.context.fillStyle = fillColor;
		this.context.strokeStyle = map.data[tile.row][tile.column].color;
		this.context.beginPath();
		this.context.lineWidth = 6;
		this.context.moveTo (Xcenter +  size * Math.cos(0), Ycenter +  size *  Math.sin(0));          
		for (var i = 1; i <= numberOfSides;i += 1) {
			this.context.lineTo (Xcenter + size * Math.cos(i * 2 * Math.PI / numberOfSides), Ycenter + size * Math.sin(i * 2 * Math.PI / numberOfSides));
		}
		this.context.fill();
		this.context.closePath();
		this.context.stroke();

		//if defensive boost active, draw grey dotted hex inside of owners colored hex.
		var index = 0;
		for(var i=0;i<map.dataProp.users.length;i++){
			if(map.dataProp.users[i]==map.data[tile.row][tile.column].owner){
				index = i;
			}
		}
		var defTrigger = false;
		for(var i=0;i<map.dataProp.turnModifiers[index].length;i++){
			if(map.dataProp.turnModifiers[index][i].type=="defensiveBoost"){
				defTrigger = true;
			}
		}
		if(defTrigger == true){
			var numberOfSides = 6,
			size = this.radius-12,
			Xcenter = x0 + (this.width / 2),
			Ycenter = y0 + (this.height / 2);
			this.context.strokeStyle = "#d3d3d3"
			this.context.beginPath();
			this.context.lineWidth = 5;
			this.context.moveTo (Xcenter +  size * Math.cos(0), Ycenter +  size *  Math.sin(0));          
			for (var i = 1; i <= numberOfSides;i += 1) {
				this.context.lineTo (Xcenter + size * Math.cos(i * 2 * Math.PI / numberOfSides), Ycenter + size * Math.sin(i * 2 * Math.PI / numberOfSides));
			}
			this.context.fill();
			this.context.closePath();
			this.context.stroke();
		}
		

		//Print number of units
		this.context.textAlign="center"; 
		this.context.textBaseline = "middle";
		this.context.font = 'bold 13pt Arial';
		//Code for contrasting text with background color
        /*var clr = getContrastYIQ(map.data[tile.row][tile.column].color); //contrast against player color 
		var clr = getContrastYIQ(fillColor); //contrast against land color (fillColor)
        this.context.fillStyle = clr;
		*/
		this.context.fillStyle = "#000000";
		this.context.fillText(map.data[tile.row][tile.column].units, x0 + (this.width / 2) , y0 + (this.height / 2));
		this.context.fillStyle = "";
	}
};

HexagonGrid.prototype.drawHexBorders = function (x0, y0) {  
	var tile = this.getSelectedTile(x0 + this.width - this.side, y0);
	if(map.data[tile.row][tile.column].s != ""){
		this.context.beginPath();
		this.context.lineWidth = 5;
        this.context.strokeStyle=map.data[tile.row][tile.column].s;
		this.context.moveTo(x0 + this.side, y0 + this.height);
		this.context.lineTo(x0 + this.width - this.side, y0 + this.height);
		this.context.stroke();
	}
    if(map.data[tile.row][tile.column].n != ""){
        
		this.context.beginPath();
		this.context.lineWidth = 5;
        this.context.strokeStyle=map.data[tile.row][tile.column].n;
		this.context.moveTo(x0 + this.side, y0);
		this.context.lineTo(x0 + this.width - this.side, y0);
		this.context.stroke();
	}
    if(map.data[tile.row][tile.column].ne != ""){
		this.context.beginPath();
		this.context.lineWidth = 5;
        this.context.strokeStyle=map.data[tile.row][tile.column].ne;
		this.context.moveTo(x0 + this.side, y0);
		this.context.lineTo(x0 + this.width, y0 + (this.height / 2));
		this.context.stroke();
	}
    if(map.data[tile.row][tile.column].se != ""){
		this.context.beginPath();
		this.context.lineWidth = 5;
        this.context.strokeStyle=map.data[tile.row][tile.column].se;
		this.context.moveTo(x0 + this.width, y0 + (this.height / 2));
		this.context.lineTo(x0 + this.side, y0 + this.height);
		this.context.stroke();
	}
    if(map.data[tile.row][tile.column].sw != ""){
		this.context.beginPath();
		this.context.lineWidth = 5;
        this.context.strokeStyle=map.data[tile.row][tile.column].sw;
		this.context.moveTo(x0 + this.width - this.side, y0 + this.height);
		this.context.lineTo(x0, y0 + (this.height/2));
		this.context.stroke();
	}
    if(map.data[tile.row][tile.column].nw != ""){
		this.context.beginPath();
		this.context.lineWidth = 5;
        this.context.strokeStyle=map.data[tile.row][tile.column].nw;
		this.context.moveTo(x0, y0 + (this.height/2));
		this.context.lineTo(x0 + this.width - this.side, y0);
		this.context.stroke();
	}
};

//Recusivly step up to the body to calculate canvas offset.
HexagonGrid.prototype.getRelativeCanvasOffset = function() {
	var x = 0, y = 0;
	var layoutElement = this.canvas;
	var bound = layoutElement.getBoundingClientRect();
	if (layoutElement.offsetParent) {
		do {
			x += layoutElement.offsetLeft;
			y += layoutElement.offsetTop;
		} while (layoutElement = layoutElement.offsetParent);
		
		return { x: bound.left, y: bound.top };
	}
}

function getContrastYIQ(hexcolor){
	var r = parseInt(hexcolor.substr(1,3),16);
	var g = parseInt(hexcolor.substr(3,3),16);
	var b = parseInt(hexcolor.substr(5,3),16);
	var yiq = ((r*299)+(g*587)+(b*114))/1000;
	return (yiq >= 128) ? '#000000' : '#FFFFFF';
}