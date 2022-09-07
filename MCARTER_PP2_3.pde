float a,b=100;

void setup() {
  size(400,400);
  a = 0;
}

void draw() {
  background(255);
			ellipse(height/2,b,90,90);
	if (a > height/2) {
   b = b+3;
	}
	strokeWeight(3);
  line(0, height/4, a, height/4);
  a = a + 2;
}


