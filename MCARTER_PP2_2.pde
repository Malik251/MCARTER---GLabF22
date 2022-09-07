float a;

void setup() {
  size(640,640);
  a = 0;
}

void draw() {
  background(255);
  line(0, a, width, a);  
  a = a + 1.5;
  if (a > height) { 
    a = 0; 
  }
}
