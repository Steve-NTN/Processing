float z = -500, tmin = 0, x, y;
void setup() {
  size(1920, 1015, P3D);
  //Init audio
  audio();
  video();
   
  //Init model
  model();
  x = width/2; y = height/2;
}

void draw() {
  background(0xffffffff);
  lights();

  playVideo();
  displayModel();
  
}
void mousePressed(){
  
//Left and right mouse click event
if (mousePressed && (mouseButton == LEFT)){
  model.rotateY(-PI/6);
}
else if (mousePressed && (mouseButton == RIGHT)){
  model.rotateY(PI/6);
}

  
}

void mouseWheel(MouseEvent event) {
  
  //Wheel mouse to zoom object
  float e = event.getCount();
  if(e == 1.0)
  z -= 30;
  else if(e == -1.0) z += 30;
}

void keyPressed(){
  //Play and pause audio
 if(key == ' '){
  pauseA += 1;
  playAudio();
 }
 
 //Event move with up, down, left, right
 if(keyCode == UP) y+= 20;
 if(keyCode == DOWN) y-= 20;
 if(keyCode == LEFT) x+= 20;
 if(keyCode == RIGHT) x-= 20;
 
 if(key == '+') video();
}

void mouseMoved(){

}

void movieEvent(Movie m) {
  m.read();
}
