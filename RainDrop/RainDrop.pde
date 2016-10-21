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
void setup(){
  int height = 980;
int width = 1000;
  
  
  
  size(width, height);       //in setup method



  
  
  
}
void draw(){

 
  background(red, green, blue);  //in draw method
ellipse( x,  y,  width2,  height2);  //in draw method
  fill( red2, green2, blue2);      //in draw method
  stroke(red3, green3, blue3);   //in draw 

y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;y ++ ;

if(y >= 1000){
checkCatch(x);
  y = 10;
 x = (int) random(width);   
}
 


  rect(mouseX, y2, width4, height4);
fill(0, 0, 0);
textSize(20);
text("Score: " + score, 20, 20);
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+300)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);

}

