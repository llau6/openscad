//body
difference(){
cube([10,4,5]);

translate([.5,.5,.2])
cube([9,3.3,4.2]);

translate([2.3,3.5,.2])
	cube([1.4,.7,2]);

translate([10,2,.2])
	cube([1,.1,4.6]);
}

//connector
translate([-1,.5,0])
	cube([1.3,3,1]);

//door
translate([2.7,4.9,.2])
rotate([0,0,-45]){
	union(){
		cube([1.4,.1,2]);
	
		translate([.2,.15,1])
			sphere(r=.1, $fn=20);
	}
}

//tables1
	translate([7.05,2.05,5.8])
		cylinder(r=.8, h=.1, $fn=50);

	translate([6.6,2,5])
		rotate([0,45,0])
		cube([.1,.1,1.2]);

	translate([7.5,2,4.8])
		rotate([0,-45,0])
		cube([.1,.1,1.4]);

	translate([7.08,1.6,5])
		rotate([0,45,90])
		cube([.1,.1,1.25]);

	translate([7.08,2.6,4.8])
		rotate([0,-45,90])
		cube([.1,.1,1.4]);


//tables2
translate([-3.5,0,0]){
	translate([7.05,2.05,5.8])
		cylinder(r=.8, h=.1, $fn=50);

	translate([6.6,2,5])
		rotate([0,45,0])
		cube([.1,.1,1.2]);

	translate([7.5,2,4.8])
		rotate([0,-45,0])
		cube([.1,.1,1.4]);

	translate([7.08,1.6,5])
		rotate([0,45,90])
		cube([.1,.1,1.25]);

	translate([7.08,2.6,4.8])
		rotate([0,-45,90])
		cube([.1,.1,1.4]);
}


//gate
difference(){
	translate([1,3.6,5])
	cube([8.6,.1,1]);

	for(i = [[-.1, 0, -.3],
			 [0, 0, -.6],
			 [0,0,0]]){
		translate(i)

		for (x = [9.4,9.1, 8.8, 8.5, 8.2, 7.9, 7.6, 7.3, 7, 6.7, 6.4, 6.1, 5.8, 5.5, 5.2, 4.9, 4.6, 4.3, 4, 3.7, 3.4, 3.1, 2.8, 2.5, 2.2, 1.9, 1.6, 1.3]){
		 translate([x, 4, 5.8])
			 rotate([90,90,0])
		 cylinder(r=.1, h=1, $fn=20);
		}
	}
}

translate([0,-3.3,0]){
difference(){
	translate([1,3.6,5])
	cube([8.6,.1,1]);

	for(i = [[-.1, 0, -.3],
			 [0, 0, -.6],
			 [0,0,0]]){
		translate(i)

		for (x = [9.4,9.1, 8.8, 8.5, 8.2, 7.9, 7.6, 7.3, 7, 6.7, 6.4, 6.1, 5.8, 5.5, 5.2, 4.9, 4.6, 4.3, 4, 3.7, 3.4, 3.1, 2.8, 2.5, 2.2, 1.9, 1.6, 1.3]){
		 translate([x, 4, 5.8])
			 rotate([90,90,0])
		 cylinder(r=.1, h=1, $fn=20);
		}
	}
}
}

translate([9.7,.3,5]){
rotate([0,0,90]){
difference(){
	cube([3.4,.1,1]);

	for (x=[.3, .6, .9, 1.2, 1.5, 1.8, 2.1, 2.4, 2.7, 3]){
		for (z=[.2, .8]){
		 translate([x, .5, z])
			 rotate([90,90,0])
		 cylinder(r=.1, h=1, $fn=20);
		}
	}

	for (x=[.2, .5, .8, 1.1, 1.4, 1.7, 2, 2.3, 2.6, 2.9, 3.2]){
	 translate([x, .4, .5])
		 rotate([90,90,0])
	 cylinder(r=.1, h=1, $fn=20);
	}
}
}
}

//bar
translate([.4,.7,5])
	cube([.5,2.5,.6]);

translate([.4,.6,5.5])
	cube([.7,2.7,.1]);

//bottle1
translate([.6,2.8,5.6]){
	cylinder(h=.3, r=.1, $fn=20);
	cylinder(h=.57, r=.05, $fn=20);
}

translate([.6,2.8,5.9])
	sphere(r=.1, $fn=20);


//bottle2
translate([.6,2.5,5.6]){
	cylinder(h=.3, r=.1, $fn=20);
	cylinder(h=.57, r=.05, $fn=20);
}

translate([.6,2.5,5.9])
	sphere(r=.1, $fn=20);

//head
hull(){
	for(x=[-.9, -.7]){
		for(y=[3.4,3.7]){
			for(z=[0,4.4]){
			translate([x,y,z])
			cylinder(r=.2, h=.1, $fn=20);
			}
		}
	}
}

hull(){
	for(x=[-.9, -.7]){
		for(y=[.6, .3]){
			for(z=[0,4.4]){
			translate([x,y,z])
			cylinder(r=.2, h=.1, $fn=20);
			}
		}
	}
}

difference(){
	translate([-1.3,3.75,3.5])
	rotate([90,0,0])
	cylinder(r=.8, h=3.5, $fn=50);

	translate([-2.5,3.75,1.4])
	rotate([90,0,0])
	cube([2,2,5]);
}

//head window
difference(){
translate([-3.2,.2,1.7])
	cube([2.65,3.6,1.8]);

translate([-3.7,0,2])
	rotate([0,-45,0])
	cube([3,4,2]);

translate([-.9,-1,-.3])
resize(newsize=[1.8,6,2])
difference(){
translate([-3.2,.2,1.5])
	cube([2.65,3.6,1.8]);

translate([-3.7,0,2])
	rotate([0,-33,0])
	cube([3,4,2]);
}
}

//head nose
difference(){
	hull(){
	translate([-4.8,.2,0])
		cube([4.3,3.6,2.6]);
	
		for(y=[3, 1]){
		translate([-4.8,y,1.7])
			sphere(r=.5, $fn=70);
		}
	}
	
	translate([-3.1,.4,.7])
		cube([1.9,3.2,2]);

	
	//head doors
	for(x=[-1.4,-2.8]){
		for(y=[3.7,.1]){
			translate([x,y,.5])
			cube([.1,.1,2.1]);
		}
	}
	
	for(y=[.1,3.7]){
		translate([-2.7,y,.5])
		cube([1.4,.1,.1]);
	}
	
	for(i=[ [-1.6,3.7,1.3],
			 [-2.6,.2,1.3] ]){
		translate(i)
		cube([.1,.1,.4]);
	}
}


//grill
difference(){
	hull(){
		for(i=[[-5.3,1,1.4],
				 [-5.3,2.9,1.4],
				 [-5.05,.7,.6],
				 [-5.05,3.1,.6] ]){
			translate(i)
			rotate([0,75,0])
			cylinder(r=.1, h=.1, $fn=20);
		}
	}

	translate([-5.31,1,1.4])
	rotate([0,75,0])
	cube([.1,1.9,.1]);

	translate([-5.25,.9,1.2])
	rotate([0,75,0])
	cube([.1,2.1,.1]);

	translate([-5.2,.85,1])
	rotate([0,75,0])
	cube([.1,2.2,.1]);

	translate([-5.2,.75,.83])
	rotate([0,75,0])
	cube([.1,2.35,.2]);

	translate([-5.1,.65,.65])
	rotate([0,75,0])
	cube([.1,2.5,.1]);

}

//body borders
hull(){
	for(x=[.1,9.9]){
		for(y=[.1,3.9]){
			translate([x,y,4.8])
			cylinder(r=.2, h=.2, $fn=20);
		}
	}
}

hull(){
	for(x=[.1,9.9]){
		for(y=[.1,3.9]){
			translate([x,y,0])
			cylinder(r=.2, h=.2, $fn=20);
		}
	}
}

for(x=[9.9,.1]){
	for(y=[.1,3.9]){
		hull(){
			for(z=[0,4.8]){
				translate([x,y,z])
				cylinder(r=.2, h=.2, $fn=20);
			}
		}
	}
}



//letters
//S
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}

translate([16.9,0,6.8])
rotate([180,0,180])
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}

//H
difference(){
translate([6.8,4,2.5])
	cube([1,.1,1.8]);

translate([7.05,4,3.6])
	cube([.5,.1,1]);

translate([7.05,4,2.3])
	cube([.5,.1,1]);
}

//O
difference(){
	translate([6,4.1,3.4])
	rotate([90,0,0])
	resize(newsize=[1.3,1.9,.1])
		cylinder(r=5, h=.1, $fn=50);

	translate([6,4.1,3.4])
	rotate([90,0,0])
	resize(newsize=[.8,1.4,.1])
		cylinder(r=5, h=.1, $fn=50);
}

//W
difference(){
translate([4,4,2.5])
	cube([1.4,.1,1.8]);

translate([5.1,4,2.5])
	rotate([0,8,0])
	cube([1.4,.1,2]);

translate([2.9,4,2.2])
	rotate([0,-8,0])
	cube([1.4,.1,2]);

translate([4.7,4,2.5])
	cylinder(r1=.3, r2=0, h=1, $fn=20);

translate([5,4,2.7])
	rotate([0,-5,0])
	cylinder(r1=0, r2=.3, h=2, $fn=20);

translate([4.4,4,2.7])
	rotate([0,5,0])
	cylinder(r1=0, r2=.3, h=2, $fn=20);
}

//E
difference(){
translate([2.8,4,2.5])
	cube([1.1,.1,1.8]);

translate([2.4,4,3.6])
	cube([1.2,.1,.4]);

translate([2.4,4,2.8])
	cube([1.2,.1,.5]);
}

//R
translate([2.3,4,2.5])
	cube([.3,.1,1.8]);

difference(){
translate([2,4.1,3.75])
	rotate([90,0,0])
	cylinder(r=.6, h=.1, $fn=20);

translate([2,4.1,3.75])
	rotate([90,0,0])
	cylinder(r=.3, h=.1, $fn=20);
}

translate([1.4,4,2.6])
	rotate([0,35,0])
	cube([.3,.1,1]);

//B
translate([8.6,4,.4])
	cube([.3,.1,1.8]);

translate([0,0,.4]){
resize(newsize=[1,.1,.8])
difference(){
translate([8.4,4.1,1.7])
	rotate([90,0,0])
	cylinder(r=.5, h=.1, $fn=20);

translate([8.5,4.1,1.7])
	rotate([90,0,0])
	cylinder(r=.3, h=.1, $fn=20);
}
}

translate([-.1,0,.1]){
	resize(newsize=[1.2,.1,1])
	difference(){
	translate([8.4,4.1,1])
		rotate([90,0,0])
		cylinder(r=.6, h=.1, $fn=20);
	
	translate([8.5,4.1,1])
		rotate([90,0,0])
		cylinder(r=.4, h=.1, $fn=20);
	}
}

//U
difference(){
	translate([7,4.1,1.7])
	rotate([90,0,0])
	resize(newsize=[1.2,2.5,.1])
		cylinder(r=5, h=.1, $fn=50);

	translate([7,4.1,1.7])
	rotate([90,0,0])
	resize(newsize=[.7,2,.1])
		cylinder(r=5, h=.1, $fn=50);

	translate([5,3.7,2.1])
		cube([3,1,1]);
}

//S
translate([-2.8,0,-2.1]){
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}

translate([16.9,0,6.8])
rotate([180,0,180])
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}
}

//letters back
translate([10,-4.2,0]){
mirror([1,0,0]){
//S
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}

translate([16.9,0,6.8])
rotate([180,0,180])
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}

//H
difference(){
translate([6.8,4,2.5])
	cube([1,.1,1.8]);

translate([7.05,4,3.6])
	cube([.5,.1,1]);

translate([7.05,4,2.3])
	cube([.5,.1,1]);
}

//O
difference(){
	translate([6,4.1,3.4])
	rotate([90,0,0])
	resize(newsize=[1.3,1.9,.1])
		cylinder(r=5, h=.1, $fn=50);

	translate([6,4.1,3.4])
	rotate([90,0,0])
	resize(newsize=[.8,1.4,.1])
		cylinder(r=5, h=.1, $fn=50);
}

//W
translate([0,8.1,0]){
mirror([0,1,0]){
difference(){
translate([4,4,2.5])
	cube([1.4,.1,1.8]);

translate([5.1,4,2.5])
	rotate([0,8,0])
	cube([1.4,.1,2]);

translate([2.9,4,2.2])
	rotate([0,-8,0])
	cube([1.4,.1,2]);

translate([4.7,4,2.5])
	cylinder(r1=.3, r2=0, h=1, $fn=20);

translate([5,4,2.7])
	rotate([0,-5,0])
	cylinder(r1=0, r2=.3, h=2, $fn=20);

translate([4.4,4,2.7])
	rotate([0,5,0])
	cylinder(r1=0, r2=.3, h=2, $fn=20);
}
}
}

//E
difference(){
translate([2.8,4,2.5])
	cube([1.1,.1,1.8]);

translate([2.4,4,3.6])
	cube([1.2,.1,.4]);

translate([2.4,4,2.8])
	cube([1.2,.1,.5]);
}

//R
translate([2.3,4,2.5])
	cube([.3,.1,1.8]);

difference(){
translate([2,4.1,3.75])
	rotate([90,0,0])
	cylinder(r=.6, h=.1, $fn=20);

translate([2,4.1,3.75])
	rotate([90,0,0])
	cylinder(r=.3, h=.1, $fn=20);
}

translate([1.4,4,2.6])
	rotate([0,35,0])
	cube([.3,.1,1]);

//B
translate([8.6,4,.4])
	cube([.3,.1,1.8]);

translate([0,0,.4]){
resize(newsize=[1,.1,.8])
difference(){
translate([8.4,4.1,1.7])
	rotate([90,0,0])
	cylinder(r=.5, h=.1, $fn=20);

translate([8.5,4.1,1.7])
	rotate([90,0,0])
	cylinder(r=.3, h=.1, $fn=20);
}
}

translate([-.1,0,.1]){
	resize(newsize=[1.2,.1,1])
	difference(){
	translate([8.4,4.1,1])
		rotate([90,0,0])
		cylinder(r=.6, h=.1, $fn=20);
	
	translate([8.5,4.1,1])
		rotate([90,0,0])
		cylinder(r=.4, h=.1, $fn=20);
	}
}

//U
difference(){
	translate([7,4.1,1.7])
	rotate([90,0,0])
	resize(newsize=[1.2,2.5,.1])
		cylinder(r=5, h=.1, $fn=50);

	translate([7,4.1,1.7])
	rotate([90,0,0])
	resize(newsize=[.7,2,.1])
		cylinder(r=5, h=.1, $fn=50);

	translate([5,3.7,2.1])
		cube([3,1,1]);
}

//S
translate([-2.8,0,-2.1]){
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}

translate([16.9,0,6.8])
rotate([180,0,180])
difference(){
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.5, h=.11, $fn=20);
	
	translate([8.5,4.1,3.8])
		rotate([90,0,0])
		cylinder(r=.3, h=.11, $fn=20);
	
	difference(){
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.9, h=.5, $fn=20);
		
		translate([8.5,4.1,3])
			rotate([90,0,0])
			cylinder(r=.5, h=.11, $fn=20);
		
		translate([8.5,3.5,3])
			cube([1,1,1]);
	}
}
}
}
}

//stairs
for(i = [ [2,4,-.4],
[2,4,-.9],
[2,4,-1.4],
[2,4,-1.9],
			 [2,4.5,-.9],
[2,4.5,-1.4],
[2,4.5,-1.9],
[2,5,-1.4],
			 [2,5,-1.9],
[2,5.5,-1.9] ]){
	translate(i)
	cube([2,.5,.5]);
}

//head stairs
for(x=[-2.7,-1.6]){
	translate([x,3.8,-.5])

	difference(){
		rotate([0,90,0])
		cylinder(h=.2, r=.9, $fn=20);
		
		rotate([0,90,0])
		cylinder(h=.3, r=.7, $fn=20);
		
		for(i=[[-.5,-1,0],
				 [-.5,-1,-1],
				 [-.5,0,-1] ]){
			translate(i)
			cube([1,1,1]);
		}
	}
}

translate([-2.7,4.5,-.7])
cube([1.3,.4,.2]);

//front wheels
for (y=[3.2,.8]){
	translate([-2.3,y,-.9]){

	union(){
		rotate([90,0,0])
		resize(newsize=[2,2,1.1])
			sphere(r=5, $fn=50);
		
		translate([0,.26,0])
		rotate([90,0,0])
			cylinder(r=1, h=.5, $fn=50);
		
		translate([0,.5,0])
		rotate([90,0,0])
			cylinder(r1=.7, r2=1, h=.3, $fn=50);
		
		translate([0,-.2,0])
		rotate([90,0,0])
			cylinder(r1=1, r2=.7, h=.3, $fn=50);
		}
	}

	for(i=[[-2.3,3.7,-.9],
			 [-2.3,.3,-.9] ]){
		translate(i)
	
		for(i=[1:10]){
		 rotate(i * 360 / 10, [0, 1, 0])
		 translate([.25, 0, .5])
		 sphere(r = .08, $fn=20);
		}
	}
}

//back wheels
for(x=[1,9]){
	for(y=[.5,3.5]){
		translate([x,y,-.9])
		union(){
			difference(){
				union(){
					rotate([90,0,0])
					resize(newsize=[2,2,1.1])
						sphere(r=5, $fn=50);
					
					translate([0,.26,0])
					rotate([90,0,0])
						cylinder(r=1, h=.5, $fn=50);
					
					translate([0,.5,0])
					rotate([90,0,0])
						cylinder(r1=.7, r2=1, h=.3, $fn=50);
					
					translate([0,-.2,0])
					rotate([90,0,0])
						cylinder(r1=1, r2=.7, h=.3, $fn=50);
					
					translate([0,.5,0])
					rotate([90,0,0])
						cylinder(r1=.7, r2=1, h=.3, $fn=50);
				}
			
				translate([0,.9,0])
				rotate([90,0,0])
					cylinder(r=.5, h=.5, $fn=50);
			
				translate([0,-.4,0])
				rotate([90,0,0])
					cylinder(r=.5, h=.5, $fn=50);
			}

			translate([0,.5,0])
			rotate([90,0,0])
				cylinder(r=.3, h=1, $fn=50);
		}
	}
}

