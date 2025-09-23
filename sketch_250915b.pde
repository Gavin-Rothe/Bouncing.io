//car

Ball b1, b2, b3, b4, b5, b6;

void setup() {
  size(800,600);
  ellipseMode(RADIUS);
  createNewBalls();
}

void draw() {
  background(0,0,200);
  lamp();
  road();
  b1.move();
  b1.draw();
  b2.move();
  b2.draw();
  b3.move();
  b3.draw();  
  b4.move();
  b4.draw();
  b5.move();
  b5.draw();
  b6.move();
  b6.draw();
  exhast();
  chasis();
  wheels(mouseX,530,60);
  wheel2(mouseX+400,530,60);
  dark();

}
  void chasis() {
   fill(255,255,255);
   rect(mouseX+70, 400, 150, 150);
   strokeWeight(0);
   ellipse(mouseX+85,410,180,50);
   triangle(mouseX-85,390,mouseX-140,450,mouseX+100,430);
   fill(0);
   triangle(mouseX-140, 520, mouseX-120, 550, mouseX, 450);
   fill(255, 255, 255);
   rect(mouseX-120, 440, 300, 110);
   rect(mouseX-140, 450,70,70);
   rect(mouseX+200, 480, 300, 70);
   ellipse(mouseX+280,475,220,35);
   triangle(mouseX+260,400, mouseX+340,450, mouseX+260, 450);
   //windows
   fill(0);
   quad(mouseX-40, 385, mouseX-105, 445, mouseX+310, 445,mouseX+225, 385);
   triangle(mouseX+325, 440, mouseX+236, 385, mouseX+243, 385);
   triangle(mouseX-132, 440, mouseX-65, 385, mouseX-80, 385);
  //rear light
   fill(255, 0, 0);
   ellipse(mouseX-116,455,25,10);
   fill(50);
   //wheel wells
  circle(mouseX,520,65);
  rect(mouseX-65, 520, 130, 30);
  circle(mouseX+400,520,65);
  rect(mouseX+335, 520, 130, 30);
  //headlight
  strokeWeight(2);
  fill(150);
  triangle(mouseX+460, 465, mouseX+500, 490, mouseX+500, 470);
  //vents
  fill(0);
  strokeWeight(0);
  rect(mouseX+480, 510, 20, 40);
  rect(mouseX+315, 480, 5, 50);
  //spoiler
  fill(255, 255, 255);
    triangle(mouseX-110, 370, mouseX-20, 370, mouseX-60, 400);
  //door details
  strokeWeight(2);
  line(mouseX+25, 400, mouseX+85, 550);
   line(mouseX+180, 400, mouseX+180, 550);
    line(mouseX+308, 445, mouseX+290, 550);
    fill(100);
    strokeWeight(0);
    ellipse(mouseX+70,455,12,3);
    ellipse(mouseX+200,455,12,3);
    //side mirror
    strokeWeight(2);
    fill(255,255,255);
    ellipse(mouseX+285,438,20,10);
    strokeWeight(0);

   }
    
  void road() {
    //tar
    strokeWeight(4);
    fill(60,60,60);
    rect(0,500,1000,1000);
    //lines
    strokeWeight(1);
    fill(255,255,0);
    rect(0,495,50,10);
     rect(80,495,50,10);
      rect(160,495,50,10);
       rect(240,495,50,10);
        rect(320,495,50,10);
         rect(400,495,50,10);
          rect(480,495,50,10);
           rect(560,495,50,10);
            rect(640,495,50,10);
             rect(720,495,50,10);
              rect(800,495,50,10);
          
          
      }
      
 void wheels(int x, int y, int r) { 
   fill(0);
   circle(mouseX,530,60); 
   circle(mouseX+400,530,60);
   fill(100,100,100);
   circle(mouseX,530,50); 
   circle(mouseX+400,530,50);
  circle(x,y,50);
  // placing things on a circle: 
  // x = xc + r * cos(theta)
  // y = yc + r * sin(theta)
  float theta = radians(x);
  float dt = PI/8;
  float r2 = 1.2*r;
  float triTheta = 0.1;
  
  float x1,y1,x2,y2,x3,y3;
 strokeWeight(0);
  fill(0);
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;  
   x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;  
 }
 
 void wheel2(int x, int y, int r) {
   fill(100);
   circle(x,y,50);
  // placing things on a circle: 
  // x = xc + r * cos(theta)
  // y = yc + r * sin(theta)
  float theta = radians(x);
  float dt = PI/8;
  float r2 = 1.2*r;
  float triTheta = 0.1;
  
  float x1,y1,x2,y2,x3,y3;
 strokeWeight(0);
  fill(0);
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;  
   x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta)/10;
  y3 = y + r2 * sin(theta)/10;
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt; 
   
 }
 
 void lamp(){
   fill(0);
   rect(500, 150, 10, 500);
   circle(460, 150, 50);
   fill(0, 0, 200);
   circle(460, 150, 40);
   rect(420, 150, 80, 100);
   fill(0);
   circle(415, 160, 25);
   fill(0, 0, 200);
      rect(390, 160, 80, 100);
      fill(255, 255, 0);
      circle(415, 160, 10);
      fill(0);
      rect(395, 150, 35, 10);
 }
 void dark() {

 }
 
 void createNewBalls() {
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
  b4 = new Ball();
  b5 = new Ball();
  b6 = new Ball();
}

void keyPressed() {
  createNewBalls();
}

class Ball {
  // properties of a ball
  float x, y, dx, dy, r;
  color c;
  
  Ball() {
    this.x = mouseX-150;
    this.y = 530;
    this.dx = random(-3,0);
    this.dy = random(-3,0);
    this.r = random(4,8);
    this.c = color(int(random(250,256)),int(random(250,256)),int(random(250,256)));    
  }
  
  void move() {
    this.x = this.x + this.dx;
    this.y = this.y + this.dy;    
  }
  
  void draw() {
    fill(this.c);
    circle(this.x,this.y,this.r);    
  }
}
 
 void exhast() {
   strokeWeight(1);
   fill(100);
   rect(mouseX-148, 530, 25, 10);
 }
 
 
 
 
