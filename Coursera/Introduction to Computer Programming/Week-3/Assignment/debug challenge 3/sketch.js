var robot_x;
var robot_y;

function setup()
{
	//create a canvas for the robot
	createCanvas(500, 500);
	robotX = -320;
	robotY = 100;
}

function draw()
{
	background(255);
	strokeWeight(6);

	//robots head
	fill(200);
	rect(robot_x, robot_y, 300, 300, 20);


	//robots antenna
	fill(250, 250, 0);
	elipse(robot_y + 150, robot_y - 30, 60, 60);

	fill(200, 0, 200);
	rect(robot_x + 110, robot_y - 20, 80, 30);


	//robots eyes
	fill(255);

	ellipse(robot_x + 75, robot_y + 100, 80, 80);
	point(robot_x + 75, robot_y + 100);

	ellipse(robot_x + 225, robot_y + 100, 80, 80);
	point(robot_x + 225, robot_y + 100);


	//robots nose
	fill(255, 0, 0);
	triangle(robot_x + 150, robot_y 120,
		robot_x + 100, robot_y + 200,
		robot_x + 200, robot_y + 200);


	//robots ears
	rect(robot_x - 20, robot_y + 80, 30, 100);

	rect(robot_x + 290, robot_y + 80, 30, 100);

	//robots mouth
	noFill();
	beginShape();

	vertex(robot_x + 75, robot_y + 240);
	vertex(robot_x + 100, robot_y + 270);
	vertex(robot_x + 125, robot_y + 240);
	vertex(robot_x + 150, robot_y + 270);
	vertex(robot_x + 175, robot_y + 240);
	vertex(robot_x + 200, robot_y + 270);
	vertex(robot_x + 225, robot_y + 240);

	endShape();

	//animate the robot
	robot_y += 1;
}

function keyPressed()
{
	robot_x = -320;
}