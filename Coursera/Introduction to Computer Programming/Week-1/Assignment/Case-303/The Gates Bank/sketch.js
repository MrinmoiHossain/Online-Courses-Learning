/*

Officer: 1608905
CaseNum: 303-2-30382738-1608905

Case 303 - The Case of the Crooked Attorney
Stage 3 - The Gates Bank

I’ve made an appointment for you at the Gates Bank to retrieve your safe deposit box from the vault.
Actually you will break into Torvalds’ one.

Crack the safe by doing the following:

	When the mouse button is released:
	- Make Hidden_Vault_Code_0 equal to the value of mouseX
	- Use the 'max' function to prevent Hidden_Vault_Code_0 from falling below 2

	Whilst the mouse is moving:
	- Decrement Hidden_Vault_Code_1 by 2
	- Use the 'constrain' function to prevent Hidden_Vault_Code_1 from falling below 4 and going above 15

	Whilst the mouse is moving:
	- Make Hidden_Vault_Code_2 equal to the value of mouseX
	- Use the 'constrain' function to prevent Hidden_Vault_Code_2 from falling below 2 and going above 13

	When any key is pressed:
	- Decrement Hidden_Vault_Code_3 by 1
	- Use the 'constrain' function to prevent Hidden_Vault_Code_3 from falling below 3 and going above 14

	When the mouse button is pressed:
	- Make Hidden_Vault_Code_4 equal to the value of mouseX
	- Use the 'constrain' function to prevent Hidden_Vault_Code_4 from falling below 14 and going above 71



This time you'll need to create the relevant event handlers yourself.

There are many possible ways of investigating this case, but you
should use ONLY the following commands:

	- The assignment operator aka. the equals sign !
	- mouseX, mouseY
	- Incrementing +=
	- Decrementing -=
	- min, max
	- constrain

*/

//declare the variables

var Hidden_Vault_Code_0;
var Hidden_Vault_Code_1;
var Hidden_Vault_Code_2;
var Hidden_Vault_Code_3;
var Hidden_Vault_Code_4;


function preload()
{
	//IMAGES WILL BE LOADED HERE

}

function setup()
{
	createCanvas(512,512);

	//initialise the variables
	Hidden_Vault_Code_0 = 0;
	Hidden_Vault_Code_1 = 0;
	Hidden_Vault_Code_2 = 0;
	Hidden_Vault_Code_3 = 0;
	Hidden_Vault_Code_4 = 0;

}

///////////////////EVENT HANDLERS///////////////////

//Create event handlers here to open the safe ...

function mouseReleased()
{
	Hidden_Vault_Code_0 = mouseX;
    Hidden_Vault_Code_0 = max(Hidden_Vault_Code_0, 2);
}

function mouseMoved()
{
	Hidden_Vault_Code_1 -= 2;
    Hidden_Vault_Code_1 = constrain(Hidden_Vault_Code_1, 4, 15);
    Hidden_Vault_Code_2 = mouseX;
    Hidden_Vault_Code_2 = constrain(Hidden_Vault_Code_2, 2, 13);
}

function keyPressed()
{
	Hidden_Vault_Code_3 -= 1;
    Hidden_Vault_Code_3 = constrain(Hidden_Vault_Code_3, 3, 14);
}

function mousePressed()
{
	Hidden_Vault_Code_4 = mouseX;
    Hidden_Vault_Code_4 = constrain(Hidden_Vault_Code_4, 14, 71);
}

///////////////DO NOT CHANGE CODE BELOW THIS POINT///////////////////

function draw()
{

	//Draw the safe door
	background(70);
	noStroke();
	fill(29,110,6);
	rect(26,26,width-52,width-52);

	//Draw the combination dials
	push();
	translate(120,170);
	drawDial(140,Hidden_Vault_Code_0, 19);
	pop();

	push();
	translate(120,380);
	drawDial(140,Hidden_Vault_Code_1, 19);
	pop();

	push();
	translate(280,170);
	drawDial(140,Hidden_Vault_Code_2, 17);
	pop();

	push();
	translate(280,380);
	drawDial(140,Hidden_Vault_Code_3, 19);
	pop();

	//Draw the lever
	push();
	translate(width - 125,256);
	drawLever(Hidden_Vault_Code_4);
	pop();


}

function drawDial(diameter,num,maxNum)
{
	//the combination lock

	var r = diameter * 0.5;
	var p = r * 0.6;

	stroke(0);
	fill(255,255,200);
	ellipse(0,0,diameter,diameter);
	fill(100);
	noStroke();
	ellipse(0,0,diameter*0.66,diameter*0.66);
	fill(150,0,0);
	triangle(
		-p * 0.4,-r-p,
		p * 0.4,-r-p,
		0,-r-p/5
	);

	noStroke();

	push();
	var inc = 360/maxNum;

	rotate(radians(-num * inc));
	for(var i = 0; i < maxNum; i++)
	{
		push();
		rotate(radians(i * inc));
		stroke(0);
		line(0,-r*0.66,0,-(r-10));
		noStroke();
		fill(0);
		text(i,0,-(r-10));
		pop();
	}

	pop();
}

function drawLever(rot)
{
	push();
	rotate(radians(-rot))
	stroke(0);
	fill(100);
	rect(-10,0,20,100);
	ellipse(0,0,50,50);
	ellipse(0,100,35,35);
	pop();
}
