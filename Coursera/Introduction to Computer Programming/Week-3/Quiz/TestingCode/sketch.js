function setup()
{
	createCanvas(500, 500);
}

function draw()
{
	background(0, 0, 0);
	noStroke();
	fill(220, 0, 220);
	rect(0, 0, mouseX, mouseX);

}