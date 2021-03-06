//My theme is mostly Street Fighter

Timer myTimer;
Fireball myFireball;
Trophy myTrophy;

//PImage img;
//PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
int mPressed = 0;
int mPressedState;
int randomQuote;
String [] Quote = new String [4];

void setup() {
  size(800, 600);
  myFireball = new Fireball();
  myTimer = new Timer(000);
  // img = loadImage("Explosion.png");
  // img2 = loadImage("Explosion.png");
  img3 = loadImage("https://cloud.githubusercontent.com/assets/16195605/11834133/0d720e58-a38f-11e5-8809-ca415cbc5377.png");
  img4 = loadImage("https://cloud.githubusercontent.com/assets/16195605/11834110/da428cd8-a38e-11e5-86de-895f9f6e27ad.png");
  img5 = loadImage("https://cloud.githubusercontent.com/assets/16195605/11834146/4b0ef366-a38f-11e5-83b1-b22e0bbded6a.png");
  img6 = loadImage("https://cloud.githubusercontent.com/assets/16195605/11834139/2520168a-a38f-11e5-9244-19927e57deee.jpg");

  randomQuote = (round(random(Quote.length-1)));

  Quote[0] = "K.O!!!!!";
  Quote[1] = "K.O!!!";
  Quote[2] = "K.O";
  Quote[3] = "K.O!!";



  myTrophy = new Trophy();
} 
void draw() {
  // this is the main screen
  if (mPressedState ==0) {
    background(0);
    image(img6, 0, 5);

    //explosions
    // image(img,50,50);
    //image(img2,300,300);


    //titles
    //String r = ("Round 1...");
    // fill(0);
    // textSize(100);
    // text(r,175,20,820,900);
    // String w = ("FIGHT!");
    // fill(0);
    //  textSize(100);
    //text(w,175,150,400,600);
    //if (myTimer. isFinished() == true){
    String q = ("Press Mouse to Start");
    fill(255);
    textSize(50);
    text(q, 100, 350, 600, 800);
  } else {
    myTimer.start();

    background(255);
    image(img5, 10, 10);


    //Text and Directions
    String m = ("Use 'w,a,s,d' to defeat Gouken");
    fill(0);
    textSize(50);
    text(m, 50, 50, 400, 500);


    //good guy (ryu)
    image(img3, 10, 300);

    //bad guy (gouken)
    image(img4, 560, 300);

    //Fireball
    myFireball.display();
    myFireball.collision();

    println(+(myFireball.centerX + 240)+ " " +myFireball.centerY);

    if (myFireball.collision) {
      if (myTimer.isFinished()) {
        background(255);
        String w =(Quote[randomQuote]);
        fill(255, 0, 0);
        textSize(50);
        text(w, 200, 325, 100, 100);
        myTrophy.display();
        println(true);
      }
    } else {
      myFireball.move();
    }
  }
}


void mousePressed() {
  mPressed += 1;
  mPressedState = mPressed %2;
  println(mPressedState);
}
class Fireball {
  int centerX, centerY, boxX, boxY, boxXOffset, boxYOffset;
  boolean collision;
  
  Fireball() {
   boxX = 600;
   boxY = 300;
   boxXOffset = 100;
   boxYOffset = 250;
  }
  
  void display() {
    fill(0,0,255);
    rect(centerX + 250,centerY + 400,60,5);
    rect(centerX + 240,centerY + 395,85,5);
    rect(centerX + 240,centerY + 390,90,5);
    rect(centerX + 250,centerY + 385,95,5);
    rect(centerX + 260,centerY + 380,85,5);
    rect(centerX + 270,centerY + 375,85,5);
    rect(centerX + 260,centerY + 370,95,5);
    rect(centerX + 250,centerY + 365,95,5);
    rect(centerX + 245,centerY + 360,90,5);
    rect(centerX + 240,centerY + 355,85,5);
    rect(centerX + 250,centerY + 350,60,5);
    
    noFill();
    rect(boxX, boxY, boxXOffset, boxYOffset);
    
    point(270 + 85, 370);
      
  }
  //HELP WITH THIS
  void move() {
    if(keyPressed){
      if(key == 'w'){
        centerY = centerY - 5;
      } 
      if(key == 'a'){
        centerX = centerX - 5;
      }
      if(key == 'd'){
        centerX = centerX + 5;
      } 
      if(key == 's'){
        centerY = centerY + 5;
      }
}
  }
  
  void collision() {
   if (centerX + 240 >= 560 && centerX + 240 <= 670 &&
       centerY >= -50 && centerY <= 145) {
         collision = true;
       } else {
         collision = false;
       }
    
  }
}
    
    class Timer{
 int savedTime;  
  int totalTime;  
  
  Timer(int _totalTime){
    totalTime = _totalTime;
  }
  
  
  void start() {
    savedTime = millis();
 }
  
 boolean isFinished() {
   int passedTime = millis() - savedTime;
   if (passedTime > totalTime) {
     return true;
   } else {
     return false;
   }
  }
}
class Trophy {
  PImage trophy;

  Trophy() {
    trophy = loadImage("trophy.png");
  }

  void display() {
    imageMode(CORNER);
    image (trophy, 300, 100);
  }
}
