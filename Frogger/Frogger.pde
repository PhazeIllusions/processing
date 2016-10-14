int x = 600;
int y = 600;
Car cadillac = new Car(100, 200, 100, 1);
Car truck = new Car( 1000,50, 75, 1);
Car truck2 = new Car( 350, 75, 175, 1);
Car truck3 = new Car( 925, 150, 200, 1);
Car truck4 = new Car( 550, 200, 150, 1);
Car truck5 = new Car( 250, 100, 50, 1);
Car truck6 = new Car( 125, 150, 125, 1);
Car truck7 = new Car( 75, 200, 100, -1);

void setup(){

  size(1000,1000);       // in setup method 
}
void draw (){
  background(135, 171, 92);    // in draw method 
  
fill(164, 201, 107);      // in draw method 


if (x = 0){
  text("Congrats! You Won!", 450,500 ); 
  textSize(27); 
}
  ellipse(x, y, 15, 15);
  cadillac.display();
cadillac.move();  
truck.move();

  truck.display();
  truck2.move();
    
  truck2.display();
  truck3.move();
    
  truck3.display();
  truck4.move();
    
  truck4.display();
  truck5.move();
    
  truck5.display();
    truck6.move();
    
  truck6.display();
    truck7.move();
    
  truck7.display();
    if( intersects(truck) || intersects(truck2) ||intersects(truck3) || intersects(truck4) || intersects(truck5) || intersects(truck6) || intersects(truck7)){
    y = 600;
    }
    
    

}
void keyPressed(){
  if(key == CODED){
      if(keyCode == UP)
      {
        y -= 10;
      //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
        y += 10;
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
        x += 10;
       //Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
        x -= 10;
        //Frog X position goes left
        
      }
      
   }
}
boolean intersects(Car car) {
if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}

class Car{
  
 int x;
 int y;
 int size;
 int speed;
 Car(int x, int y, int size, int speed){
   this.x = x;
   this.y = y;
   this.size = size;
   this.speed = speed; 

}
 int getX(){
   return x; 
  }
int getY(){
   return y; 
  }
  int getSize(){
   return size; 
  }
    void display() 
  {
    fill(0,255,0);
    rect(x , y, size , 50);
    
  }
   void move(){
    x -= speed;
    if(x <= -size ){
      x = 1000;
}
else if(x >= 1000 ){
      x = -size;
}
}
}

