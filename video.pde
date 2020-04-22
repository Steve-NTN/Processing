import processing.video.*;
Movie myMovie;

void video(){
  myMovie = new Movie(this, "video_.mp4");
  myMovie.play();
}
;
void playVideo(){

  image(myMovie, 0, 0, 200, 200);
 
}
