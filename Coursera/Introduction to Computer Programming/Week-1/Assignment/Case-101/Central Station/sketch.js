/*

Officer: 1608905
CaseNum: 101-0-50367994-1608905

Case 101 - The Case of Lina Lovelace
Stage 1 - Central Station

Hi kid, you’re new to this job so lets give you a simple case to get you started.
Our client, a well-known impresario, suspects that their star act, Lina Lovelace,
is involved with some no-good unsavoury characters. I need you to trail her and
identify who she meets.

First you need to pick up Lina’s trail at Central station.

Do this by drawing a rectangle around her.
She’s the woman wearing the red dress.
You can’t miss her.

The rectangle should surround Lina as accurately as possible without
including anything else.

There are many possible ways of investigating this case, but you
should use ONLY the following commands:

  rect ()

*/

var img;

function preload()
{
	img = loadImage('img.jpg');
}

function setup()
{
	createCanvas(img.width,img.height);
	noFill();
	stroke(0);
	strokeWeight(2);
}

function draw()
{
	image(img,0,0);

	//Write your code below here ...

    rect(156, 37, 500, 1000);
}
