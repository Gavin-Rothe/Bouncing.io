Ball b1, b2, b3, b4, b5, b6;

void setup() {
  size(600,600);
  ellipseMode(RADIUS);
  newcircle();
}

void newcircle() {
  // new calls the constructor
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
  b4 = new Ball();
  b5 = new Ball();
  b6 = new Ball();
}

void draw() {
  background(100);
  b1.update();
  b2.update();
  b3.update(); 
  b4.update();
  b5.update();
  b6.update();
  
  b1.bounce(b2);
  b1.bounce(b3);
  b2.bounce(b3); 
}

void keyPressed() {
  newcircle();
}

class Ball {
  // properties of a ball
  float x, y, dx, dy, r;
  color c;
  
  // constructor
  // how we "build" objects from classes
  Ball() {
    // use "this." because it will save trouble later 
    this.r = random(10,100);
    this.x = random(this.r,width-this.r);
    this.y = random(this.r,height-this.r);
    this.dx = random(-3,3);
    this.dy = random(-3,3);
    this.r = random(10,50);
    this.c = color(int(random(256)),int(random(256)),int(random(256)),int(random(256)));    
  }
  
  void update() {
    this.move();
    this.keepInBounds();
    this.draw();
  }
  
  void move() {
    this.x = this.x - this.dx;
    this.y = this.y - this.dy;    
  }
  
  void draw() {
    fill(this.c);
    circle(this.x,this.y,this.r);    
  }
  
  void bounce(Ball otherBall) {
    // if the distance between the two circles is less than the sum of their radii 
    if( dist( this.x, this.y, otherBall.x, otherBall.y ) < this.r + otherBall.r ) {
      float temp = this.dx;
      this.dx = otherBall.dx;
      otherBall.dx = temp;
      
      temp = this.dy;
      this.dy = otherBall.dy;
      otherBall.dy = temp;
    }
  }
  
  void keepInBounds() {
    // compare the location and the size somehow to the left, right, top, and bottom boundaries
    if( this.x - this.r < 0 ) {
      //System.out.println( "at the left edge" );
      this.dx = this.dx * -1;
    }
    
    if( this.x + this.r > width ) {
      //System.out.println( "at the right edge" );
      this.dx = this.dx * -1;
    }
    
    if( this.y - this.r < 0 ) {
      //System.out.println( "at the top edge" );
      this.dy = this.dy * -1;
    }
    
    if( this.y + this.r > height ) {
      //System.out.println( "at the bottom edge" );
      this.dy = this.dy * -1;
    }
  }
}
