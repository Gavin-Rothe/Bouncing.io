float s=20;

void setup() {
  size(1300,800);

 // int limit=height/20;
  //for(int i = 0; i < limit; i++) {
    //for( int y= 0; y<height; y+=20) {
              //this means code will run 10 times because 1<=10
   // fill(random(256),random(256),random(256));
              // horizontal row square(i*30,height/2-10,30);
    //  square(width/2-10,y,20);
    noLoop();
  }


void colsquares(float x) {
  for(int y =0; y<height; y+=20) {
    fill(random(100),random(100),random(100));
   square(x,y,s);
}
}

void draw() {
  background(0);
  for(int x=0; x<width; x+=s)
  colsquares(x);
}

void keyPressed() {
  if(key == ' ') {
    redraw();
  }
  if(keyCode == UP) {
    s++;
    redraw();
  }
  
  if (keyCode == DOWN) {
    s--;
    redraw();
  }
}
