float r = 75;
float theta = PI/6;
float angVelo = 0.0;
float angAcc = 0.0;


void setup() {
  size(640,360);
  background(255);
}
 
void draw() {
	background(255);
	float x = r * cos(theta);
  float y = r * sin(theta);
	
	
	//noStroke();
  fill(255);
	line(width/2,height/2,x+width/2,y+height/2);
	ellipse(x+width/2, y+height/2, 30, 30);
  angAcc = -0.01 * sin(theta);
	theta += angVelo;
	angVelo += angAcc;
	
	angVelo *=0.99;
}

