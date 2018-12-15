/*
The case of the slippery Minsky brothers
Stage 2: Gates’ Mansion

Officer: 1608905
CaseNum: 302-1-40656587-1608905

One Minsky behind bars, but two more to go. Larry Minsky has just been spotted breaking and entering the Gates’ Mansion. Get there as fast as you can and intercept.


- Edit startX and startY to alter the starting position of the spotlight.

- Edit endX and endY to stop the spotlight when it reaches the target.

- Make the spotlight move perfectly from you towards Larry by adjusting the increments of x and y.
  If you get everything correct then it will stop over the target.

- Adjust x and y using:

 * "+=" or "+"
 * "-=" or "-"

*/

// edit the variables below to change where the spotlight starts and finishes

var startX = 468;
var endX = 680;

var startY = 490;
var endY = 286;

// other variables, you don't need to change these
var img, spotlight_image;
var x;
var y;

function preload()
{
	img = loadImage('scene.png');
	spotlight_image = loadImage('spotlight.png');
}

function setup()
{
	createCanvas(img.width, img.height);

	//Initialize x and y with the start values
    x = 468;
    y = 490;
}

function draw()
{
	image(img, 0, 0);

	// alter the variables x and y below to animate the spotlight
    x += 1;
    y -= 1;
    

	////////// DO NOT CHANGE ANYTHING BELOW /////////////

	//stop the spotlight if it's near enough to endx and endy
	if (abs(endX - x) < 100 && abs(endY - y) < 100)
	{
		x = endX;
		y = endY;
	}

	//stop the spotlight if it goes off of the screen
	x = min(x, 960);
	y = min(y, 945);
	x = max(x, 0);
	y = max(y, 0);

	var spotlightSize = 180;

	blendMode(BLEND);
	background(10);
	image(spotlight_image, x-spotlightSize/2, y-spotlightSize/2, spotlightSize, spotlightSize);
	blendMode(DARKEST);
	image(img, 0, 0);

	////////// DO NOT CHANGE ANYTHING ABOVE /////////////
}
