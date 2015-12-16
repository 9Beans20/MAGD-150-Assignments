void setup(){

size(1280,800);
}
void draw(){
background(0,255,0);
//it begins...
fill(128,0,0);
beginShape();
vertex(200,200);
vertex(30,30);
vertex(50,50);
vertex(120,40);
endShape(CLOSE);
//body work
fill(96,96,96);
rect(800,0,100,1200);
fill(255,218,185);
ellipse(200,200,200,200);
rect(100,300,200,300);
line(70,300,100,400);
line(300,400,432,300);
line(250,750,250,600);
line(150,750,150,600);
fill(128,0,0);
//i made the ball out of two arcs
fill(255,255,0);
arc(mouseX,mouseY,120,120,PI, TWO_PI);
arc(mouseX,mouseY,120,120,0,PI);
//his smile 
fill(0);
arc(200,250,50,50,0,PI);
// triangle hat :D 
fill(255,100,60);
triangle(50,100,100,200,400,60);
//points (its his nose...its voldemort)
fill(0);
point(200,220);
point(195,220);
// eyes 
fill(0);
ellipse(145,195,50,50);
ellipse(255,195,50,50);
fill(255);
ellipse(150,200,30,30);
ellipse(255,200,30,30);
//raquet
strokeWeight(10);
rect(mouseX-145,mouseY,50,100);
ellipse(mouseX-120,mouseY-100,100,200);
//clothes
strokeWeight(5);
fill(51,255,255);
beginShape();
vertex(200,300);
vertex(300,500);
vertex(300,300);
endShape(CLOSE);
beginShape();
vertex(100,300);
vertex(100,500);
vertex(200,300);
endShape();
beginShape();
vertex(100,300);
vertex(200,400);
vertex(250,300);
endShape();

}
