/*
The case of the Python Syndicate
Stage 2


Officer: 1608905
CaseNum: 301-1-70659249-1608905

- Word on the street is that there is a new gang in town - The Python Syndicate.
It seems my bones were correct on this one. I need you to organise the gang
around the suspected leader Bones karpinski

- The variables for Bones karpinski have been declared and
initialised.
- Modify the x and y parameters of each image command using these two variables
so the images maintain their correct positions their correct positions on the board.
- To do this you will need to combine add and subtract operators with variables
Bones karpinski for for each parameter.
- Do not create any new variables
- Do not add any additional commands


*/

var photoBoard;
var pawelKarpinskiImage;
var bonesKarpinskiImage;
var linaLovelaceImage;
var robbieKrayImage;
var rockyKrayImage;
var cecilKarpinskiImage;


var bonesKarpinskiXLocation = 408;
var bonesKarpinskiYLocation = 40;
//var pawelKarpinskiXLocation = 115;
//var pawelKarpinskiYLocation = 40;
//var linaLovelaceXLocation = 701;
//var linaLovelaceYLocation = 40;
//var robbieKrayXLocation = 115;
//var robbieKrayYLocation = 309;
//var rockyKrayXLocation = 408;
//var rockyKrayYLocation = 309;
//var cecilKarpinskiXLocation = 701;
//var cecilKarpinskiYLocation = 309;

function preload()
{
	photoBoard = loadImage('photoBoard.png');
	pawelKarpinskiImage = loadImage("karpinskiBros2.png");
	bonesKarpinskiImage = loadImage("karpinskiDog.png");
	linaLovelaceImage = loadImage("lina.png");
	robbieKrayImage = loadImage("krayBrothers2.png");
	rockyKrayImage = loadImage("krayBrothers1.png");
	cecilKarpinskiImage = loadImage("karpinskiBros1.png");

}

function setup()
{
	createCanvas(photoBoard.width, photoBoard.height);
}

function draw()
{
	image(photoBoard, 0, 0);

	//And update these image commands with your x and y coordinates.
	image(bonesKarpinskiImage, bonesKarpinskiXLocation, bonesKarpinskiYLocation);

	image(pawelKarpinskiImage, bonesKarpinskiXLocation-293, bonesKarpinskiYLocation);
	image(linaLovelaceImage, bonesKarpinskiXLocation+293, bonesKarpinskiYLocation);
	image(robbieKrayImage, bonesKarpinskiXLocation-293, bonesKarpinskiYLocation+269);
	image(rockyKrayImage, bonesKarpinskiXLocation, bonesKarpinskiYLocation+269);
	image(cecilKarpinskiImage, bonesKarpinskiXLocation+293, bonesKarpinskiYLocation+269);

}