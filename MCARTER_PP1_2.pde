int width = 500, height = 350;
size(width,height);
background(158);		//color matching the area to the pdf example
fill(158);					//color matching the inside of the circle to the pdf example
strokeWeight(2);
ellipseMode(CORNER);
ellipse(0,0,width/4,height/3);					//used a 4:3 ratio to keep everything consistent
ellipse(0,234,width/4,height/3);
ellipse(375,0,width/4,height/3);
ellipse(375,234,width/4,height/3);
ellipseMode(CENTER);
ellipse(width/2,height/2,320,320);
strokeWeight(4);
line(0,0,width,0);						//the lines that make up the border
line(0,0,0,height);
line(width,0,width,height);
line(0,height,width,height);


