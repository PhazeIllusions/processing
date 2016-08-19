import ddf.minim.*;     //at the very top of your sketch

int angle = 10;


void setup() {

  pictureOfRecord= loadImage("vinyl-record.png");   //in setup method  

  size(pictureOfRecord.width, pictureOfRecord.height)  ;
  minim = new Minim(this);    //in the setup method
  song = minim.loadFile("Hate.mp3", 512);//in the setup method
  song.play();
}
PImage pictureOfRecord;        //as member variable
void rotateImage(PImage image, int amountToRotate) {

  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);                              
  translate(-image.width/2, -image.height/2);
}
void draw() {
  if (mousePressed) {
                    angle ++;

                                            
    rotateImage(pictureOfRecord, angle);
    image(pictureOfRecord, 0, 0);//in draw method
  } else {
    song.pause();
  }
}

Minim minim;        //as a member variable
AudioPlayer song;      //as a member variable

