PImage img;
float circleX=50;
float bounce=10;
void setup(){
  size(1280,720);
img=loadImage("camry2.jpg");
background(img);
}
void draw() {
 image(img,0,0);
fill(0,128,255);
textSize(100);
text("Thx For The Car",230,90);
img=loadImage("outside camry.jpg");
  image(img,mouseX,mouseY);
//right side 
noStroke();
fill(255,0,0,300);
ellipse(1130,24,50,50);
fill(0,204,0,300);
ellipse(1083,50,50,50);
fill(255,255,0,300);
ellipse(1053,93,50,50);
//moving circles
noStroke();
fill(255,0,0,200);
ellipse(circleX,24,50,50);
circleX=circleX+bounce;
if(circleX>1280){
  bounce=-1;
}
if (circleX<0){
  bounce=+1;
}
noStroke();
fill(0,204,0,200);
ellipse(circleX,70,50,50);
circleX=circleX+bounce;
if(circleX>1280){
  bounce=-3;
}if (circleX<0){
  bounce=+5;
}
noStroke();
fill(255,255,0,200);
ellipse(circleX,120,50,50);
circleX=circleX+bounce;
if(circleX>1280){
  bounce=-5;
}if (circleX<0){
  bounce=+5;
}
//left side 
noStroke();
fill(255,0,0,300);
ellipse(130,25,50,50);
fill(0,204,0,300);
ellipse(175,45,50,50);
fill(255,255,0,300);
ellipse(208,85,50,50);
}
