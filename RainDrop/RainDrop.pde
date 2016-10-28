  int red = 124;
  int green = 203;
  int blue = 92;
  int red2 = 92;
  int green2 = 124;
  int blue2 = 203;
  int width2 = 13;
  int height2 = 250;
    int red3 = 92;
  int green3 = 124;
  int blue3 = 203;
 int x = 100;
 int y = 100;
 int x2 = 0;
 int y2 = 980;
 int width4 = 300;
  int height4 = -50;
  int score;
  PImage backgroundImage;
import ddf.minim.*;       //at the very top of your sketch
  Minim minim;        //as a member variable
  AudioSample sound;      //as a member variable
 

void setup(){
  int height = 980;
int width = 1000;
  
  minim = new Minim (this);    //in the setup method
    sound = minim.loadSample("BD.wav", 128);//in the setup method
  size(width, height);       //in setup method



  
}
  

void draw(){

 
  background(red, green, blue);  //in draw method
  textSize(20);
text("Score: " + score, 20, 20);
if(score == 50 ){
  textSize(32);
  fill(22,99,233);
  text("You won!!!", 400,300);
}
else{
  y += 30;
  if(y >= 1000){
checkCatch(x);
 sound.trigger();        //in draw method (when the rain drop hits)
  y = 10;
 x = (int) random(width);   
}
ellipse( x,  y,  width2,  height2);  //in draw method
  fill( red2, green2, blue2);      //in draw method
  stroke(red3, green3, blue3);   //in draw 
}

 


  rect(mouseX, y2, width4, height4);
fill(0, 0, 0);

}
void checkCatch(int x){
if (x > mouseX && x < mouseX+300)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);

}

