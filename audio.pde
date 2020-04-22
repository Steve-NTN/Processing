import processing.sound.*;
SoundFile file;

import ddf.minim.*;

Minim minim;
AudioPlayer a;
int pauseA = 0;

void audio(){
  //file = new SoundFile(this, "1up.mp3");
  minim = new Minim(this);
  a = minim.loadFile("bachdangA.mp3");
  
}
void playAudio(){
  if(a.position() >= 33000) audio();
  if(pauseA % 2 == 1){
    a.play();
  }else {
    a.pause();
  }
}
