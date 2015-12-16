int mPressed = 0;
int mPressedState = 0;

void setup(){
  size(1280, 800);
  background(250,90,140);
}
void draw(){
  if (mPressedState == 0) {
    background(250,90,140);
    //thought bubble
fill(255);
ellipse(300,300,30,30);
ellipse(250,250,30,30);
ellipse(300,125,300,200);
point(330,340);
    // womans text
String s = "Does this make me look fat?";
fill(0);
textSize(32);
text(s,800,200,600,800);
//mans text
String t = "uhh...";
fill(0);
textSize(32);
text(t,470,350,600,800);
String r = "oh no..";
textSize(32);
text(r,250,100,600,800);
 
  } else {

    background(110);
    //thought bubble
fill(255);
ellipse(300,300,30,30);
ellipse(250,250,30,30);
ellipse(300,125,300,200);
point(330,340);
    fill(255,0,0);
String w = "oh god yes...";
textSize(32);
text(w,175,100,600,800);
String o = "of course not!";
textSize(32);
text(o,470,300,600,800);
String l = "yay!";
textSize(40);
text(l,800,200,600,800);

  }
// basic text
fill(255,255,0);
strokeWeight(15);
String b = "loaded question";
textSize(60);
text(b,800,20,600,800);
//bodies (man)
fill(255);
strokeWeight(10);
line(400,600,400,400);
line(500,450,300,450);
line(400,600,300,750);
line(400,600,550,750);
ellipse(400,350,100,100);
//bodies (woman)
fill(50,200,240);
rect(800,400,200,200);
line(900,600,800,700);
line(900,600,1000,700);
line(800,450,700,600);
line(1000,450,1100,600);
fill(255);
ellipse(900,350,100,100);
point(800,450);

//man face
ellipse(380,340,10,10);
ellipse(430,340,10,10);
ellipse(400,380,10,10);
//woman face
ellipse(880,340,10,10);
ellipse(920,340,10,10);
arc(900,370,40,40,0,HALF_PI);
//womans clothes
fill(40,240,90);
beginShape();
vertex(900,500);
vertex(800,600);
vertex(800,400);
endShape(CLOSE);
beginShape();
vertex(1000,500);
vertex(900,600);
vertex(900,400);
endShape(CLOSE);



}

void mousePressed(){
  mPressed += 1;
  mPressedState = mPressed %2;
  println(mPressedState);
}
