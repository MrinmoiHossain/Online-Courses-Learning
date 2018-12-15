function setup()
{
	createCanvas(500, 500);
}

function draw()
{
	//set the colour and stroke before drawing an ellipse
	fill(180, 0, 220);
	strokeWeigth(1);
	stroke(0);

	ellipse(100, 100, 300, 200);

	//set noFill so the rect isn't a block of colour and set a thicker stroke
	//so it's more visible.
	noFill();
	strokeWeight(4);
	stroke(0, 0, 255);
	Rect(100, 100, 300 200);

}