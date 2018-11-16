//////////////////////////////// TWEETS ANALYSIS /////////////////////////////

//Run one tweet at a time by uncommenting it.
//Comment it again before running the next one.


//Fredrik Oloffson's Tweets

// --002
//i=0;function setup(){createCanvas(1200,900)}function draw(){for(j=0;j<99;)rect(i++%(1199-j++),int(i/99)%(999-j),i%12,j%16)}// #p5

//--0004
//s=900,i=j=0;function setup(){createCanvas(s,s);stroke(255,9);fill(9,3)}function draw(){quad(i++,j++,j,i,s-i,i-50,s-j,j);i=(i<<j%4)%1200;j=j%s}// #p5

//--0010
//i=0,k=450;function setup(){createCanvas(900,900);textSize(k)}function draw(){translate(k,k);fill(i%1*k/2,60);rotate(i+=+.01);text("$",99,0)}// #p5

//--0015
//i=0,s=900;function setup(){createCanvas(s,s);stroke(255,25)}function draw(){fill(i++%89,0,0,127);rect(i%90*9,i%91*9,i*i%92,i*i%93)}// #p5

//--0016
//i=0,s=900,t=1200;function setup(){createCanvas(t,s);noStroke()}function draw(){fill(i++%256,25);quad(i%t,i/3%s,i/4%t,i%s,i/5%t,i/4%s,i/3%t,i/2%s)}// #p5

//--0017
//t=0;function setup(){createCanvas(900,900);background(0);stroke(255,4)}function draw(){translate(450,450);line(sin(t)*421,cos(t++)*400,t%9,t%9)}// #p5

//--0022
//j=0;function setup(){createCanvas(1024,768)}function draw(){translate(512,384);i=frameCount;while(i-->1){rect(j++%i,j%i,3,i/9%9);rotate(0.009)}}// #p5

//Goldsmiths Students' Tweets

//Vytas Niedvaras 2015
//s=600;function setup(){createCanvas(s,s)}function draw(){i=frameCount;translate(i%s,0);stroke(i%255,7);for(i=0;i<800;){rotate(i++);line(0, i, i, 0)}}

//Lina Sarma 2015
//s=800,j=s/2;function setup(){createCanvas(s,s)}function draw(){translate(j,j);for(i=0;i<s;i++){rotate(2.95);rect(i*frameCount/30-10,i-10,i,i)}}

//Leon Fedden 2015
//i=0;s=800;l=s/2;function setup(){createCanvas(s,s)}function draw(){j=sin(frameCount)*200;translate(l,l);rotate(i++%360);strokeWeight(0.1);line(j,j,0,0)}

//Jake Sparrowhunter 2016
//c=0,a=0,j=0;function setup(){createCanvas(384,384)}function draw(){a++;for(i=0;i<96;i++){for(j=0;j<96;j++){fill(c=i*j%a<<c<<i*j%a);rect(j*4,i*4,4,4)}}}
//this one is very advanced ... attempt at your peril

//Rebecca Johnson 2016
//s=0,r=250,t=500;function setup(){createCanvas(t,t);stroke(0,39)}function draw(){translate(r,r);line(cos(s+=0.0006)*50,sin(s++)*r,cos(s)*r,cos(s++))}

//Akhil Nair 2016
//w=0,s=900;function setup(){createCanvas(s,s)}function draw(){stroke(w*.32%255,w*.3%255,w*.28%255,50);line((w++>>s)%s,0,w++%s,s)}
