background(255,255,255);
int width=700,height=700;
size(width,height);
fill(102,51,0);   					 			//makes the center brown
ellipse(width/2,height/2,100,100);
fill(255,255,0);									//makes the petals yellow
ellipse(265,350,70,30);
ellipse(435,350,70,30);
	pushMatrix();
	translate(275,300);
	rotate(degrees(136));						//the rotation of the ellipses, then I just adjusted the position usinng guess and check
	ellipse(-5,-30,70,30);
	popMatrix();
		pushMatrix();
		translate(400,300);						
		rotate(degrees(45));					//the rotation of the ellipses, then I just adjusted the position usinng guess and check
		ellipse(-15,0,70,30);
		popMatrix();
			pushMatrix();
			translate(275,400);
			rotate(degrees(45));				//the rotation of the ellipses, then I just adjusted the position usinng guess and check
			ellipse(0,-30,70,30);
			popMatrix();
				pushMatrix();
				translate(400,400);
				rotate(degrees(136));			//the rotation of the ellipses, then I just adjusted the position usinng guess and check
				ellipse(15,5,70,30);
				popMatrix();
	pushMatrix();
	noFill();
	stroke(0,128,0);								//makes the stem green
	strokeWeight(3);
	bezier(350,400,300,400,400,700,300,800);
	popMatrix();
fill(0,200,0);										//makes the stem leaves a lighter shade of green than the stem
ellipse(302,500,70,30);
ellipse(379,540,70,30);