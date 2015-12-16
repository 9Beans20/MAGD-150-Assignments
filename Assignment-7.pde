int posX = 200, posY = 400, sizeX, sizeY;
int a,b,c;
int movementSize = 5;
int ballDiameter = 40;
int mPressed = 0;
int mPressedState = 0;


void setup(){
  size(1200,800);
  
  frameRate(15);
  posX = 400;
  posY = 450;
  sizeX = 50;
  sizeY = 50;
}

void draw(){
  
 
if (mPressedState == 0){ 
  
background(255,0,255);
drawLaffyTaffy();

  //Person scene 1 
  strokeWeight(10);
  line(500,700,500,500);
  
  //legs
  line(500,700,450,800);
  line(500,700,550,800);
  
  //arms
  line(500,600,550,500);
  line(500,600,450,500);
  fill(255);
  
  //face
  ellipse(500,450,100,100);
  fill(0);
  ellipse(480,440,10,10);
  ellipse(525,440,10,10);
  arc(500,460,50,50,0,PI);
  
  //speech bubble scene 1 
  fill(255);
  ellipse(850,300,350,300);
  ellipse(650,380,30,30);
  ellipse(620,410,25,25);
  ellipse(590,440,20,20);
  
  //speech scene 1 
  String r = "SO MUCH LAFFY TAFFY!!";
  fill(0);
  textSize(50);
  text(r,900,500,300,600);
 
 } else {
   
   background(135,206,250);

   displayText();
   
  //person scene 2 
  strokeWeight(10);
  line(500,700,500,500);
  
  //legs
  line(500,700,450,800);
  line(500,700,550,800);
  
  // "x" eyes/face
  fill(255);
  ellipse(500,450,100,100);
  line(530,450,505,425);
  line(485,450,460,425);
  line(525,425,500,450);
  line(490,425,465,450);
  
  //arms 
  line(500,600,550,500);
  line(500,600,450,500);
  line(550,500,520,470);
  line(450,500,500,470);
  
  //doctor
  line(700,500,700,700);
  
  //legs
  line(700,700,650,800);
  line(700,700,750,800);
  
  //arms
  line(700,600,625,710);
  line(700,600,800,600);
  
  //face
  ellipse(700,450,100,100);
  ellipse(680,440,10,10);
  ellipse(720,440,10,10);
  ellipse(700,475,10,10);
  
  //doctor text
  String t = "Sir, you ate too much candy";
  fill(0);
  textSize(50);
  text(t,1000,600,400,600);
  
  //hospital cross
  fill(255,0,0);
  beginShape();
  vertex(400,100);
  vertex(500,100);
  vertex(500,0);
  vertex(600,0);
  vertex(600,100);
  vertex(700,100);
  vertex(700,200);
  vertex(700,200);
  vertex(600,200);
  vertex(600,300);
  vertex(500,300);
  vertex(500,200);
  vertex(400,200);
  endShape(CLOSE);
  String h = "Hospital";
  fill(0);
  textSize(50);
  text(h,550,270,200,300);
  
  //chart
  fill(0);
rect(850,600,100,150);
  String m = "chart";
fill(255);
textSize(40);
text(m,900,800,200,500);

   //groan speech
   String p = "*Groan*";
   fill(0);
   textSize(50);
   text(p,posX, posY,200,300);
   update();
 }
}
      
  void update() {    
 if((posX + ballDiameter/2) > width){
   movementSize = movementSize * -1;
 } else if (posX < ballDiameter/2) {
     movementSize = movementSize * -1;
       posX = posX + movementSize;
 }
 }

    
void drawLaffyTaffy() {
  strokeWeight(2);
  int centerX = round(random(width));
  int centerY = round(random(height));
  int offset1 = 30;
  int offset2 = 30;
 rectMode(CENTER);
 colorize();
 fill(a,b,c);
 rect(centerX, centerY,100,25);
 randomizePos();
 
}

void colorize() {
  a = round(random(255));
  b = round(random(255));
  c = round(random(255));
}

void randomizePos(){
  posX = round(random(-15,10)) + posX;
  posY = round(random(-15,10)) + posY;
}

void displayText() {
  colorize();
  fill(a,b,c);
  text("*Groan*", posX, posY);
  randomizePos();
}

void mousePressed(){
  mPressed += 1;
  mPressedState = mPressed %2;
  println(mPressedState);
}
 
