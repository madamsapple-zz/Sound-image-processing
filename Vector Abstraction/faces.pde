
size(700, 700);

//variables which size up the re-tracings of face
int x = 20;

//int scale scales up the original face
int scale = 50;
int scale2 = 40;

//all  colors
color beige = color(233, 211, 175);
color white = color(255);
color black = color(0);
color grey = color(173, 182, 174);
color pink = color(255, 182, 203);
color brown = color(131, 114, 96);
color brick = color(178, 120, 63);
color dbrown = color(98, 54, 10);
color brick2 = color(131, 69, 5);
color brick3 = color(85, 52, 18);

background(beige);
noStroke();


//1st retracing (immediate outside of original)
beginShape();
fill(white);
vertex(300, 200 - scale);
vertex(350 + scale, 180 + scale);
vertex(410 + scale, 240 + scale);
vertex(420 + scale, 275 + scale);
vertex(460 + scale, 290 + scale);
vertex(430 + scale, 310 + scale);
vertex(440 + scale, 460 + scale);
vertex(420 + scale, 450 + scale);
vertex(360 + scale, 440 + scale);
vertex(300, 500 + scale);
vertex(250 - scale, 400 + scale);
vertex(260 - scale, 370 + scale);
vertex(250 - scale, 340 + scale);
vertex(260 - scale, 310 + scale);
vertex(240 - scale, 260 + scale);
endShape(CLOSE);

//original face
beginShape();
fill(grey);
pushMatrix();
scale2 = 45;
vertex(300, 200 - scale2);
vertex(350 + scale2, 180 + scale2);
vertex(410 + scale2, 240 + scale2);
vertex(420 + scale2, 275 + scale2);
vertex(460 + scale2, 290 + scale2);
vertex(430 + scale2, 310 + scale2);
vertex(440 + scale2, 460 + scale2);
vertex(420 + scale2, 450 + scale2);
vertex(360 + scale2, 440 + scale2);
vertex(300, 500 + scale2);
vertex(250 - scale2, 400 + scale2);
vertex(260 - scale2, 370 + scale2);
vertex(250 - scale2, 340 + scale2);
vertex(260 - scale2, 310 + scale2);
vertex(240 - scale2, 260 + scale2);
popMatrix();
endShape(CLOSE);

pushMatrix();
scale2 = 43;
for (int i = 0; i < 4; i = i+1) {
  //inner tracing
  beginShape();
  noFill();
  stroke(black);

  vertex(300, 200 - scale2);
  vertex(350 + scale2, 180 + scale2);
  vertex(410 + scale2, 240 + scale2);
  vertex(420 + scale2, 275 + scale2);
  vertex(460 + scale2, 290 + scale2);
  vertex(430 + scale2, 310 + scale2);
  vertex(440 + scale2, 460 + scale2);
  vertex(420 + scale2, 450 + scale2);
  vertex(360 + scale2, 440 + scale2);
  vertex(300, 500 + scale2);
  vertex(250 - scale2, 400 + scale2);
  vertex(260 - scale2, 370 + scale2);
  vertex(250 - scale2, 340 + scale2);
  vertex(260 - scale2, 310 + scale2);
  vertex(240 - scale2, 260 + scale2);
  scale2 = scale2 - 2;
  endShape(CLOSE);
}
popMatrix();


//inner tracing  part 2
beginShape();
pushMatrix();
scale2 = 30;
fill(brown);
vertex(300, 200 - scale2);
vertex(350 + scale2, 180 + scale2);
vertex(410 + scale2, 240 + scale2);
vertex(420 + scale2, 275 + scale2);
vertex(460 + scale2, 290 + scale2);
vertex(430 + scale2, 310 + scale2);
vertex(440 + scale2, 460 + scale2);
vertex(420 + scale2, 450 + scale2);
vertex(360 + scale2, 440 + scale2);
vertex(300, 500 + scale2);
vertex(250 - scale2, 400 + scale2);
vertex(260 - scale2, 370 + scale2);
vertex(250 - scale2, 340 + scale2);
vertex(260 - scale2, 310 + scale2);
vertex(240 - scale2, 260 + scale2);
endShape(CLOSE);
popMatrix();

//section of background splashes/blotches of shades of brown
beginShape();
noStroke();
fill(dbrown);
vertex(320, 380);
bezierVertex(320, 400, 520, 500, 290, 500);
bezierVertex(300, 420, 340, 200, 320, 380);
ellipse(340, 300, 200, 150);
endShape();

beginShape();
noStroke();
fill(brick2);
vertex(320, 380);
bezierVertex(350 + scale, 400, 520 - scale, 500, 390 - scale, 500);
bezierVertex(300, 420, 340 + scale, 200, 370 + scale, 380);
endShape();

pushMatrix();
beginShape();
noStroke();
scale = scale + 50;
fill(brick3);
vertex(320, 380);
bezierVertex(350 + scale, 400, 520 - scale, 500, 390 - scale, 500);
bezierVertex(300, 420, 340 + scale, 200, 370 + scale, 380);
endShape();
popMatrix();

beginShape();
noStroke();
//scale = scale + 20;
fill(black);
vertex(320, 380);
bezierVertex(350 - scale, 400, 520, 500, 390 + scale, 500);
bezierVertex(300, 420 - scale, 340, 200, 370 - scale, 380);
endShape();

beginShape();
noStroke();
//scale = scale + 20;
fill(black);
vertex(320, 380);
bezierVertex(350/scale, 400, 520, 500+scale, 390 - scale, 500 - scale);
bezierVertex(300, 420 - scale, 340, 200, 370 - scale, 380);
endShape();

color reddishbr = color(132, 73, 50);
beginShape();
fill(reddishbr);
vertex(320, 380);
bezierVertex(350 + scale, 400, 520, 500, 390 - scale, 500);
bezierVertex(300, 420 - scale, 340, 200, 370 - scale, 380);
endShape();

beginShape();
noStroke();
//scale = scale + 20;
fill(reddishbr);
vertex(320, 200);
bezierVertex(350, 400, 520, 300 - scale, 350 + scale, 500 - scale);
bezierVertex(400, 420 - scale, 340, 200, 370 - scale, 380);
endShape();


//another inner tracing
beginShape();
noFill();
stroke(black);
scale2 = 27;
pushMatrix();
vertex(300, 200 - scale2);
vertex(350 + scale2, 180 + scale2);
vertex(410 + scale2, 240 + scale2);
vertex(420 + scale2, 275 + scale2);
vertex(460 + scale2, 290 + scale2);
vertex(430 + scale2, 310 + scale2);
vertex(440 + scale2, 460 + scale2);
vertex(420 + scale2, 450 + scale2);
vertex(360 + scale2, 440 + scale2);
vertex(300, 500 + scale2);
vertex(250 - scale2, 400 + scale2);
vertex(260 - scale2, 370 + scale2);
vertex(250 - scale2, 340 + scale2);
vertex(260 - scale2, 310 + scale2);
vertex(240 - scale2, 260 + scale2);
endShape(CLOSE);
popMatrix();

//inner tracing
beginShape();
noFill();
stroke(black);
scale2 = 24;
pushMatrix();
vertex(300, 200 - scale2);
vertex(350 + scale2, 180 + scale2);
vertex(410 + scale2, 240 + scale2);
vertex(420 + scale2, 275 + scale2);
vertex(460 + scale2, 290 + scale2);
vertex(430 + scale2, 310 + scale2);
vertex(440 + scale2, 460 + scale2);
vertex(420 + scale2, 450 + scale2);
vertex(360 + scale2, 440 + scale2);
vertex(300, 500 + scale2);
vertex(250 - scale2, 400 + scale2);
vertex(260 - scale2, 370 + scale2);
vertex(250 - scale2, 340 + scale2);
vertex(260 - scale2, 310 + scale2);
vertex(240 - scale2, 260 + scale2);
endShape(CLOSE);
popMatrix();

//main light-brown face
beginShape();
fill(brick);
noStroke();
pushMatrix();
scale = scale + 20;
vertex(310, 110 + scale);
vertex(350, 100 + scale);
vertex(390, 140 + scale);
vertex(410, 185 + scale);
vertex(450, 180 + scale);
vertex(420, 190 + scale);
vertex(430, 350 + scale);
vertex(430, 340 + scale);
vertex(370, 330 + scale);
vertex(320, 400 + scale);
vertex(270, 300 + scale);
vertex(265, 270 + scale);
vertex(270, 240 + scale);
vertex(270, 210 + scale);
vertex(250, 160 + scale);
popMatrix();
endShape(CLOSE);


stroke(black);
//eyebrows
line(260, 160 + scale, 380, 160 + scale);
line(272, 162 + scale, 390, 162 + scale);
line(274, 166+ scale/1.3, 392, 166+ scale/1.3);
line(260, 162 + scale, 392, 168 + scale);
line(270, 170+ scale/1.3, 390, 170 + scale/1.2);

line(280, 162 + scale*1.2, 310, 168 + scale);
line(330, 170+ scale, 400, 300);

//white patches behind eyes
fill(white);
noStroke();
//left to right or clockwise
//left eye patch
quad(290, 300, 310, 300, 310, 330, 280, 350);
//right eye patch
quad(290 + 40, 300, 310 + 40, 300, 310 + 40, 330, 280 + 40, 350);

//white mouth
float mouth_scale = 2;
quad(290 - (20*mouth_scale), 300 + (40*mouth_scale), 310 + (40*mouth_scale), 300+ (40*mouth_scale), 310 + (40*mouth_scale), 330+ (40*mouth_scale), 250 + (40*mouth_scale), 440);

//section including mouth outlines
pushMatrix();
stroke(0);
noFill();
quad(290 - (20*mouth_scale), 300 + (40*mouth_scale), 310 + (40*mouth_scale), 300+ (40*mouth_scale), 310 + (40*mouth_scale), 330+ (40*mouth_scale), 250 + (40*mouth_scale), 440);
popMatrix();

pushMatrix();
mouth_scale = 1.8;
quad(290 - (20*mouth_scale), 300 + (40*mouth_scale), 310 + (40*mouth_scale), 300+ (40*mouth_scale), 310 + (40*mouth_scale), 330+ (40*mouth_scale), 250 + (40*mouth_scale), 440);
popMatrix();

pushMatrix();
mouth_scale = 2.1;
quad(290 - (20*mouth_scale), 300 + (40*mouth_scale), 310 + (40*mouth_scale), 300+ (40*mouth_scale), 310 + (40*mouth_scale), 330+ (40*mouth_scale), 250 + (40*mouth_scale), 440);
popMatrix();

pushMatrix();
mouth_scale = 2.2;
quad(290 - (30*mouth_scale), 300 + (40*mouth_scale), 310 + (20*mouth_scale), 300+ (40*mouth_scale), 310 + (33*mouth_scale), 330+ (26*mouth_scale), 250 + (43*mouth_scale), 440);
popMatrix();

//TEETH tracings
//placings is  var that places the teeth apart, inside the mouth
line(270 + (2*mouth_scale), 362 + (9*mouth_scale), 295 + (2*mouth_scale), 379 + (9*mouth_scale));
line(263 + (2*mouth_scale), 362 + (9*mouth_scale), 295 + (2*mouth_scale), 379 + (9*mouth_scale));

//UPPER TEETH
int placings = 20;
line(270 + (2*mouth_scale) + placings, 362 + (9*mouth_scale), 295 + (2*mouth_scale) + placings, 379 + (9*mouth_scale));
line(263 + (2*mouth_scale) + placings, 362 + (9*mouth_scale), 295 + (2*mouth_scale) + placings, 379 + (9*mouth_scale));

for (int i = 0; i < 4; i = i+1) {
  mouth_scale = random(1.9, 2.6);
  placings += 5;
  line((270 + (2*mouth_scale) + placings*mouth_scale), 362 + (9*mouth_scale), (295 + (2*mouth_scale) + placings*mouth_scale), 379 + (9*mouth_scale));
  line((263 + (2*mouth_scale) + placings*mouth_scale), 362 + (9*mouth_scale), (295 + (2*mouth_scale) + placings*mouth_scale), 379 + (9*mouth_scale));
}

//BOTTOM TEETH
pushMatrix();
mouth_scale = 2.6;
line((270 + (2*mouth_scale) + placings*mouth_scale), 392 + (9*mouth_scale), (295 + (2*mouth_scale) + placings*mouth_scale), 409 + (9*mouth_scale));
line((270 + (2*mouth_scale) + placings*mouth_scale), 392 + (9*mouth_scale), (285 + (2*mouth_scale) + placings*mouth_scale), 409 + (9*mouth_scale));
popMatrix();

placings = 8;

for (int i = 0; i < 10; i = i+1) {
  mouth_scale = random(1.1, 1.6);
  line((270 + (2*mouth_scale) + placings*mouth_scale), 392 + (9*mouth_scale), (295 + (2*mouth_scale) + placings*mouth_scale), 409 + (9*mouth_scale));
  line((270 + (2*mouth_scale) + placings*mouth_scale), 392 + (9*mouth_scale), (285 + (2*mouth_scale) + placings*mouth_scale), 409 + (9*mouth_scale));
  placings += 7;
}

//eyes
fill(black);
pushMatrix();
scale = scale + 10;
triangle(296, 179 + scale, 280, 196  + scale, 300, 196  + scale);
triangle(346, 170  + scale, 327, 196  + scale, 354, 210  + scale);
popMatrix();
