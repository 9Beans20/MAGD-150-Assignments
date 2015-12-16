int posX = 20;
int posY = 120;
int movementSize = 5;
int ballDiameter = 40;
int mPressed = 0;
int mPressedState = 0;


void setup() {
  size(1200,800);

}

void draw() {
  if (mPressedState == 0) {
    background(100); 
    //big brother speech
    String s = "What is going on?!?";
    fill(255,255,0);
    textSize(40);
    text(s,200,200,600,800);
    // ghost "boo"
    String b = "Ha...ha...ha";
    fill(255,0,0);
    textSize(40);
    text(b,50,50,600,800);
  } else {
    background(30);
    // little girls speech
    String r = "It's magic!";
    fill(255,60,150);
    textSize(40);
    text(r, 700,230,600,800);
    String a = "Be afraid!";
    fill(255,0,0);
    textSize(40);
    text(a,50,400,600,800);
    String c = "You're next";
    fill(255,0,0);
    textSize(40);
    text(c,190,700,600,800);
    String d = "It's time...";
    fill(255,0,0);
    textSize(40);
    text(d,800,700,600,800);
    String e = "You should run...";
    fill(255,0,0);
    textSize(40);
    text(e, 800,400,600,800);
    String f = "Boo!";
    fill(255,0,0);
    textSize(40);
    text(f, 900,100,600,800);
    String g = "You've been warned...";
    fill(255,0,0);
    textSize(40);
    text(g, 200,100,600,800);  
  }
    
//big brother body
  fill(255);
  strokeWeight(10);
line(400,600,400,400);
line(500,450,300,450);
line(400,600,300,750);
line(400,600,550,750);
ellipse(400,350,100,100);
//face
ellipse(380,340,10,10);
ellipse(420,340,10,10);
ellipse(400,370,10,10);

//little girl
line(700,500,700,700);
line(800,550,600,550);
line(700,700,750,750);
line(700,700,650,750);
ellipse(700,450,100,100);
//face
ellipse(680,440,10,10);
ellipse(720,440,10,10);
fill(0);
arc(700,460,50,50,0,PI);

//bowtie
fill(250,149,50);
beginShape();
vertex(360,400);
vertex(360,460);
vertex(440,400);
vertex(440,460);
endShape(CLOSE);

//hat
fill(0,0,255);
triangle(700,300,750,400,650,400);

//wand
strokeWeight(20);
line(800,600,800,500);


  //ghost
 strokeWeight(5);
  fill(0,255,0);
  ellipse(posX, posY, ballDiameter, ballDiameter);
  update();
}
    void update() {

  if((posX+ ballDiameter/2) > width){
    movementSize = movementSize * -1;
  } else if (posX < ballDiameter/2) {
    movementSize = movementSize * -1;
  }
  posX = posX + movementSize;
  
   if((posY+ ballDiameter/2) > height){
    movementSize = movementSize * -1;
  } else if (posY < ballDiameter/2) {
    movementSize = movementSize * -1;
  }
  posY = posY + movementSize;
  }
  
  
  void mousePressed(){
    mPressed += 1;
    mPressedState = mPressed %2;
    println(mPressedState);
  }
