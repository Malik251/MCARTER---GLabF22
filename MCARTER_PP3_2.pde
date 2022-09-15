
size (400,400);
float y=370,x=31;

void draw(){
	background(255);
	ellipse(x,y,60,60);
	y-=2;	
	if(y==30){
		x+=2;
		y+=2
	}
}
