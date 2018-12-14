/*
The case of the Python Syndicate
Stage 4

Officer: 1608905
CaseNum: 301-3-90831141-1608905

To really crack the Python Syndicate we need to go in deep. I want to understand
all the connections. I have the data but it’s a mess and I need you to sort it out.

Organise each syndicate member into an object. I’ve done one for you as an example.
Be sure to replicate the naming conventions for your own objects.
Use image command together with the objects you created to organise the mugshots.

- Once you have done this you can comment out or delete the old variables.

*/

var photoBoard;
var cecilKarpinskiImage;
var countessHamiltonImage;
var pawelKarpinskiImage;
var rockyKrayImage;
var annaKarpinskiImage;
var linaLovelaceImage;

var annaKarpinskiObject;


//declare your new objects below
var cecilKarpinskiObject;
var countessHamiltonObject;
var pawelKarpinskiObject;
var rockyKrayObject;
var linaLovelaceObject;

var cecilKarpinskiXLoc = 115;
var cecilKarpinskiYLoc = 40;
var countessHamiltonXLoc = 408;
var countessHamiltonYLoc = 40;
var pawelKarpinskiXLoc = 701;
var pawelKarpinskiYLoc = 40;
var rockyKrayXLoc = 115;
var rockyKrayYLoc = 309;
var linaLovelaceXLoc = 701;
var linaLovelaceYLoc = 309;


function preload()
{
	photoBoard = loadImage('photoBoard.png');
	cecilKarpinskiImage = loadImage("karpinskiBros1.png");
	countessHamiltonImage = loadImage("countessHamilton.png");
	pawelKarpinskiImage = loadImage("karpinskiBros2.png");
	rockyKrayImage = loadImage("krayBrothers1.png");
	annaKarpinskiImage = loadImage("karpinskiWoman.png");
	linaLovelaceImage = loadImage("lina.png");

}

function setup()
{
	createCanvas(photoBoard.width, photoBoard.height);
	annaKarpinskiObject = {
		x: 408,
		y: 309,
		image: annaKarpinskiImage
	};



	//define your new objects below
    cecilKarpinskiObject = {
		x: cecilKarpinskiXLoc,
		y: cecilKarpinskiYLoc,
		image: cecilKarpinskiImage
	};
    countessHamiltonObject = {
		x: countessHamiltonXLoc,
		y: countessHamiltonYLoc,
		image: countessHamiltonImage
	};
    pawelKarpinskiObject = {
		x: pawelKarpinskiXLoc,
		y: pawelKarpinskiYLoc,
		image: pawelKarpinskiImage
	};
    rockyKrayObject = {
		x: rockyKrayXLoc,
		y: rockyKrayYLoc,
		image: rockyKrayImage
	};
    linaLovelaceObject = {
		x: linaLovelaceXLoc,
		y: linaLovelaceYLoc,
		image: linaLovelaceImage
	};
}

function draw()
{
	image(photoBoard, 0, 0);

	//And update these image commands with your x and y coordinates.
	image(cecilKarpinskiObject.image, cecilKarpinskiObject.x, cecilKarpinskiObject.y);
	image(countessHamiltonObject.image, countessHamiltonObject.x, countessHamiltonObject.y);
	image(pawelKarpinskiObject.image, pawelKarpinskiObject.x, pawelKarpinskiObject.y);
	image(rockyKrayObject.image, rockyKrayObject.x, rockyKrayObject.y);
	image(annaKarpinskiObject.image, annaKarpinskiObject.x, annaKarpinskiObject.y);
	image(linaLovelaceObject.image, linaLovelaceObject.x, linaLovelaceObject.y);


}