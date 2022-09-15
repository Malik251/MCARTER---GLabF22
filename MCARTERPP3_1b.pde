class CannonBall { 
  // All of our regular motion stuff
  PVector position;
  PVector velocity;
  PVector acceleration;

  // Size
  float r = 8;
  
  float topspeed = 10;

  CannonBall(float x, float y) {
    position = new PVector(x,y);
    velocity = new PVector();
    acceleration = new PVector();
  } 

  // Standard Euler integration
  void update() { 
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
    acceleration.mult(0);
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  
  void display() { 
    stroke(0);
    strokeWeight(2);
    pushMatrix();
    translate(position.x,position.y);
    ellipse(0,0,r*2,r*2);
    popMatrix();
  }
}
float angle = -2*PI/3;
PVector position = new PVector(500, 300);
boolean shot = false;

CannonBall ball;

void setup() {
  size(640, 360);
  ball = new CannonBall(position.x, position.y);
}

void draw() {
  background(255); 

  pushMatrix();
  translate(position.x, position.y);
  rotate(angle);
  rect(0, -5, 50, 10);
  popMatrix();

  if (shot) {
    PVector gravity = new PVector(0, 0.2);
    ball.applyForce(gravity);
    ball.update();
  }
  ball.display();

  if (ball.position.y > height) {
    ball = new CannonBall(position.x, position.y);  
    shot = false;
  }
}

void keyPressed() {
  if (key == CODED && keyCode == RIGHT) {
    angle += 0.1;
  } 
  else if (key == CODED && keyCode == LEFT) {
    angle -= 0.1;
  } 
  else if (key == ' ') {
    shot = true;
    PVector force = PVector.fromAngle(angle);
    force.mult(10);
    ball.applyForce(force);
  }
}