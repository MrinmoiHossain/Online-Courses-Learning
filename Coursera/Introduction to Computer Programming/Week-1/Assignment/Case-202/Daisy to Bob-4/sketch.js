/*

Officer: 1608905
CaseNum: 202-3-84188159-1608905

Case 202 - The case of Bob and Daisy - stage 4

Here’s the final letter from Daisy (aka. Woz). Decode it to uncover the
final details about Woz and Job’s dastardly plan.

Discover the hidden code by commenting out all text commands except
those which produce cyan filled text with blue outline in Diggity font.
Only comment out text commands - leave fill & stroke, push and pop commands uncommented.

There are many possible ways of investigating this case, but you
should use ONLY the following commands:

  // comments are all that are needed for this case.
  Do NOT add any new lines of code.

*/

var letterFont;

function preload()
{
	Ballpointprint = loadFont('Ballpointprint.ttf');
	Melissa = loadFont('Melissa.otf');
	Diggity = loadFont('Diggity.ttf');
	RonsFont = loadFont('RonsFont.ttf');
}

function setup()
{
	createCanvas(519,516);
	textSize(29);
}

function draw()
{
	background(255);

	fill(255,192,203);
	stroke(255,0,0);
//	textFont(Ballpointprint);
//	text("Daisy", 16,412);
	fill(255,165,0);
	stroke(0,255,0);
//	text("avoiding", 21,190);
//	text("for", 82,225);
	fill(255,192,203);
//	textFont(Melissa);
//	text("You", 80,156);
	fill(255,165,0);
//	text("Are", 16,87);
	push();
	fill(0,255,255);
	stroke(255,0,255);
	textFont(Diggity);
//	text("ed", 246,156);
	pop();
	stroke(0,0,0);
//	textFont(RonsFont);
//	text("money", 171,87);
	fill(0,255,255);
	stroke(0,255,0);
//	textFont(Ballpointprint);
//	text("more", 417,260);
	stroke(0,0,0);
	textFont(Diggity);
	text("the", 263,296);
	fill(255,165,0);
	stroke(0,0,255);
//	textFont(RonsFont);
//	text("away", 14,225);
	fill(255,255,0);
//	textFont(Melissa);
//	text("silence.", 307,296);
	push();
//	textFont(Ballpointprint);
//	text("we", 291,190);
	pop();
	stroke(255,0,255);
//	textFont(Ballpointprint);
//	text("ese", 307,123);
//	textFont(RonsFont);
//	text("are", 115,156);
	push();
	fill(255,192,203);
	stroke(0,0,255);
//	textFont(Melissa);
//	text("not", 224,260);
//	text("can", 99,123);
	pop();
//	textFont(Melissa);
//	text("you", 52,87);
//	text("ign", 235,123);
//	textFont(Ballpointprint);
//	text("so,", 320,87);
	fill(255,192,203);
	textFont(Diggity);
//	text("short", 84,87);
//	text("all", 339,225);
	fill(255,165,0);
	stroke(0,0,0);
//	textFont(Melissa);
//	text("and", 219,225);
	fill(0,255,255);
	stroke(255,0,255);
//	textFont(Ballpointprint);
//	text("Forever", 7,354);
	stroke(0,0,0);
	text("me", 119,190);
//	textFont(Melissa);
	text("x", 92,412);
	stroke(0,0,255);
//	text("this", 301,225);
//	text("sometimes.", 281,156);
//	text("out.", 366,225);
	fill(255,165,0);
//	textFont(RonsFont);
//	text("?", 97,296);
	stroke(255,0,255);
//	textFont(Melissa);
//	text("Are", 378,156);
	fill(0,255,255);
	stroke(0,255,0);
	textFont(Diggity);
//	text("much", 359,260);
//	text("s", 59,156);
	push();
	fill(255,255,0);
//	text("take", 41,296);
	pop();
	stroke(0,0,255);
//	textFont(Melissa);
//	text("can", 8,296);
	push();
	fill(255,165,0);
	textFont(Diggity);
//	text("?", 248,87);
	pop();
	textFont(Diggity);
//	text("you", 414,156);
//	text("can", 372,87);
//	text("I", 358,87);
	fill(255,255,0);
	stroke(0,0,0);
//	textFont(RonsFont);
//	text("nger", 173,123);
//	text("ng", 104,29);
	fill(0,255,255);
//	textFont(Melissa);
	text("so", 168,156);
	fill(255,165,0);
	stroke(255,0,255);
//	textFont(RonsFont);
//	text("Perhaps", 197,190);
	fill(0,255,255);
	stroke(255,0,0);
	textFont(Diggity);
//	text("sure", 257,260);
	fill(255,192,203);
	stroke(0,0,255);
//	text("a", 130,225);
	stroke(0,0,0);
//	textFont(Ballpointprint);
//	text("yours,", 105,354);
//	text("th", 288,123);
//	text("continual", 362,123);
	fill(0,255,255);
	stroke(0,0,255);
	textFont(Diggity);
//	text("delay", 13,156);
	fill(255,192,203);
	stroke(255,0,0);
//	text("how", 310,260);
	push();
	fill(0,255,255);
//	textFont(Ballpointprint);
//	text("sho", 335,190);
	pop();
//	textFont(Melissa);
//	text("I", 480,260);
//	textFont(RonsFont);
//	text("secrets,", 157,296);
	push();
	fill(255,165,0);
//	textFont(Ballpointprint);
//	text("Bob,", 139,29);
	pop();
//	textFont(Ballpointprint);
//	text("?", 160,260);
	fill(255,255,0);
//	textFont(Melissa);
//	text("ore", 255,123);
	fill(255,165,0);
//	textFont(RonsFont);
//	text("our", 445,225);
	fill(0,255,255);
	stroke(0,0,255);
	textFont(Diggity);
//	text("guard", 194,156);
//	text("break", 153,225);
//	text("safe", 106,260);
	push();
	fill(255,192,203);
	stroke(255,0,0);
//	textFont(Melissa);
//	text("I", 84,123);
	pop();
	fill(255,192,203);
//	textFont(Ballpointprint);
//	text("?", 165,190);
	fill(255,255,0);
	stroke(255,0,0);
//	text("If", 270,87);
//	text("Is", 401,225);
	stroke(0,255,0);
//	textFont(RonsFont);
//	text("send", 414,87);
//	text("lo", 156,123);
//	text("darli", 48,29);
	stroke(0,0,0);
//	textFont(Melissa);
//	text("My", 16,29);
//	text("no", 132,123);
//	text("relationship", 9,260);
//	text("of", 146,87);
	stroke(255,0,0);
//	textFont(RonsFont);
//	text("go", 410,190);
	stroke(0,255,0);
//	textFont(Ballpointprint);
//	text("sort", 252,225);
//	textFont(Melissa);
//	text("I'm", 192,260);
//	text("The", 117,296);
	stroke(0,0,0);
//	textFont(Ballpointprint);
//	text("cash.", 23,123);
//	text("uld", 365,190);
//
//

}
