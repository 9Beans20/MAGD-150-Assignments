int mPressed = 0;
int mPressedState = 0;

int kPressed = 0;
int kPressedState = 0;

void setup(){
  size(1280,800);
}
void draw(){
  if (kPressedState == 0) {  
    background(255,255,102);
  } else {
    background( 106);
  }



//magic mike stage
fill(255,0,0);
rect(475,600,325,300);
fill(255);
arc(475,600,300,200,0,HALF_PI);
arc(800,600,350,200,HALF_PI,PI);
fill(255,0,0);
point(625,650);
point(625,675);
point(625,700);
point(625,725);
point(625,750);
point(625,775);
point(625,800);
point(500,700);
point(500,725);
point(500,750);
point(500,775);
point(500,800);
point(750,700);
point(750,725);
point(750,750);
point(750,775);
point(750,800);
//mike
strokeWeight(5);
fill(255,228,181);
rect(550,280,100,200);
ellipse(600,200,160,160);
line(500,400,550,300);
line(700,400,650,300);
line(500,400,500,300);
line(550,600,550,300);
line(650,600,650,300);
point(600,400);
//eyes
fill(0);
ellipse(640,185,40,40);
ellipse(550,185,40,40);
fill(255);
ellipse(640,190,30,30);
ellipse(550,190,30,30);
//smile
arc(590,220,60,50,0,PI);
//hat
fill(0);
beginShape();
vertex(560,120);
vertex(560,110);
vertex(580,110);
vertex(580,75);
vertex(630,75);
vertex(630,110);
vertex(650,110);
vertex(650,120);
endShape(CLOSE);
//clothes
fill(0,255,255);
beginShape();
vertex(550,475);
vertex(630,475);
vertex(550,450);
endShape(CLOSE);
beginShape();
vertex(550,500);
vertex(500,450);
vertex(550,300);
endShape(CLOSE);
//pole
fill(0);
rect(450,0,20,800);
//bowtie
fill(250,149,50);
beginShape();
vertex(550,270);
vertex(550,330);
vertex(630,270);
vertex(630,330);
endShape(CLOSE);
//money
fill(0,255,0);
rect(mouseX,mouseY,200,75);

  if(mPressedState == 0) {
    //lights
    fill(0);
    ellipse(100,100,200,200);
    ellipse(1000,100,200,200);
  } else {
    //lights
    fill(255);
    ellipse(100,100,200,200);
    ellipse(1000,100,200,200);
  }

}

void mousePressed(){
  mPressed += 1;
  mPressedState = mPressed % 2;
  println(mPressedState);
}

void keyPressed(){
  kPressed += 1;
  kPressedState = kPressed % 2;
  println(kPressedState);
}
