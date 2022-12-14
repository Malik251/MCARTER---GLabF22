
void setup() {
	size(640, 360);
}

void draw() {
	background(255);
	float period = 120;
	float amplitude = 100;
	float x = amplitude * cos(TWO_PI * frameCount / period);
	stroke(0);
	fill(175);
	translate(width / 2, height / 2);
	line(0, 0, x, 0);
	ellipse(x, 0, 20, 20);
	println(frameCount);

	if (frameCount == 360)
		amplitude -= 10;
	if (frameCount == 480)
		amplitude -= 10;
	if (frameCount == 600)
		amplitude -= 10;
	if (frameCount == 720)
		amplitude -= 10;
	if (frameCount == 840)
		amplitude -= 10;

}
