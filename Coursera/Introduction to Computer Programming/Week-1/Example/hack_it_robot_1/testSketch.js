function setup()
{
    createCanvas(500, 500);
}

function draw()
{
    strokeWeight(6);
    
    //robots head
	fill(200);
	rect(100, 100, 300, 300, 15);
    
    //robots antenna
	fill(250, 250, 0);
	ellipse(250, 80, 60, 60);
    
    fill(250, 30, 250);
    rect(210, 85, 80, 30);
    
    //robots eyes
    fill(255);
    ellipse(175, 200, 80, 80);
    point(175, 200);
    ellipse(325, 200, 80, 80);
    point(325, 200);
    
    //robots nose
    fill(255, 0, 0);
    triangle(250, 220, 200, 300, 300, 300);
    
    //robots ears
    rect(85, 210, 30, 80);
    rect(385, 210, 30, 80);
    
    //robots mouth
    noFill();
    beginShape();
    vertex(175, 340);
	vertex(200, 370);
	vertex(225, 340);
	vertex(250, 370);
	vertex(275, 340);
	vertex(300, 370);
	vertex(325, 340);
    endShape();
}