//bowl
hull(){
	translate([0,0,3.5])
		resize(newsize=[12,12,6])
			sphere(r=5, $fn=8);
	
	sphere(r=5, $fn=90);
}

//stand rings
translate([0,0,-12.2])
	cylinder(h=2.7, r1=3.7, r2=3.4, $fn=50);

translate([0,0,-9.5])
	cylinder(h=.5, r1=3.5, r2=3, $fn=50);

translate([0,0,-9])
	cylinder(h=.7, r=2.3, $fn=50);

translate([0,0,-8.3])
	cylinder(h=.7, r=1.9, $fn=50);

translate([0,0,-6.5])
	resize(newsize=[4.7,4.7,1.5])
		sphere(r=9, $fn=13);

//stand jewels
for ( i = [1:6] ){
	rotate(i*360/6, [0,0,1])
	translate([0,.9,-5.6])
	cube([.5,.5,.6]);
}

for ( i = [1:13] ){
	rotate(i*360/13, [0,0,1])
	translate([0,3.3,-11.1])
	cube([.5,.5,.7]);
}

//pointy cup triangles
for( i = [0:9] ){
	rotate([0,0,i*360/9])
	translate([0,0,-1])
	union(){
		translate([-6,2,3])
		rotate([75,45,40])
		cube([3,3,.3]);
	}
}

//cup band
hull(){
	translate([0,0,3.5])
		cylinder(h=.5, r=6.3, $fn=90);
	
	translate([0,0,2.1])
		cylinder(h=.1, r=6.2, $fn=90);
}

translate([0,0,3.6])
	cylinder(h=.5, r=6.8, $fn=8);

//cup jewels
for( i = [0:10] ){
	rotate([0,0,i*360/10])
	translate([1,4.6,-12])
	union(){
		translate([0,0,10])
			cylinder(r1=0, r2=.8, h=1, $fn=4);
	
		translate([0,0,11])
			cylinder(r1=.8, r2=0, h=1, $fn=4);	
	}
}

//crown base
difference(){
	union(){
		//stand	
		translate([0,0,-12])
			cylinder(h=20, r=1.2, $fn=20);

		translate([0,0,7.6])
			resize(newsize=[3.7,3.7,1])
				sphere(r=1, $fn=10);
		
		translate([0,0,7.9])
			cylinder(r1=1.4, r2=1.9, h=2, $fn=50);
	}

	translate([0,0,7.9])
		cylinder(r1=1.2, r2=1.7, h=2, $fn=50);
}

//crown points
difference(){
	union(){
		translate([0,0,9.9])
			cylinder(r1=1.9, r2=2.7, h=1.6, $fn=50);
	
		//crown jewels again
		for( i = [1:5] ){
			rotate([0,0,i*360/5])
		
			translate([-.5,0,5.3])
			rotate([22,0,0])
				union(){
					translate([0,0,5])
						cylinder(r1=0, r2=.4, h=.6, $fn=4);
			
					translate([0,0,5.6])
						cylinder(r1=.4, r2=0, h=.6, $fn=4);	
				}
		}
	
	}	

	translate([0,0,9.9])
		cylinder(r1=1.6, r2=2.4, h=1.7, $fn=50);

	union(){
		for( i = [1:5] ){
			rotate([0,0,i*360/5])
		
			union(){
				translate([-4,0,11.5])
					rotate([75,45,60])
					cube([2.5,2.5,2]);
			}
		}
	}
}

//crown jewels
for( i = [1:5] ){
	rotate([0,0,i*360/5])

	translate([-.5,-1.1,6.3])
	rotate([15,0,0])
		union(){
			translate([0,0,5])
				cylinder(r1=0, r2=.4, h=.6, $fn=4);
	
			translate([0,0,5.6])
				cylinder(r1=.4, r2=0, h=.6, $fn=4);	
		}
}

rotate([0,0,-20]){
union(){
translate([.5,0,0]){
//wings top
difference(){
	union(){
		difference(){
			translate([-8,0,4])
				rotate([90,30,0])
					resize(newsize=[5,3,1])
						sphere(r=3, $fn=30);
			
			translate([-11,-3,5.5])
				rotate([0,10,0])
					cube([7,4,2]);
		}
	}

	union(){
		difference(){
			translate([-7.1,0,3.5])
				rotate([90,30,0])
					resize(newsize=[5,3,2])
						sphere(r=3, $fn=30);
			
			translate([-10.5,-3,4.6])
				rotate([0,10,0])
					cube([7,4,2]);
		}
	}
}


//wings bottom
difference(){
	union(){
		translate([-6.9,0,-.5])
			rotate([90,15,0])
				resize(newsize=[5,2.5,1])
					sphere(r=3, $fn=30);

		//wings middle
		difference(){
			translate([-7.8,0,1.7])
				rotate([90,17,0])
					resize(newsize=[5,2,1])
						sphere(r=3, $fn=30);
			
			translate([-6.7,0,1.5])
				rotate([90,17,0])
					resize(newsize=[4,2.1,4])
						sphere(r=3, $fn=30);
		}
	}
	translate([-6.1,0,-.1])
		rotate([90,0,0])
			resize(newsize=[3.8,2.5,2.3])
				sphere(r=3, $fn=30);

}
}

mirror([1,0,0]){
translate([.5,0,0]){
//wings top
difference(){
	union(){
		difference(){
			translate([-8,0,4])
				rotate([90,30,0])
					resize(newsize=[5,3,1])
						sphere(r=3, $fn=30);
			
			translate([-11,-3,5.5])
				rotate([0,10,0])
					cube([7,4,2]);
		}
	}

	union(){
		difference(){
			translate([-7.1,0,3.5])
				rotate([90,30,0])
					resize(newsize=[5,3,2])
						sphere(r=3, $fn=30);
			
			translate([-10.5,-3,4.6])
				rotate([0,10,0])
					cube([7,4,2]);
		}
	}
}


//wings bottom
difference(){
	union(){
		translate([-6.9,0,-.5])
			rotate([90,15,0])
				resize(newsize=[5,2.5,1])
					sphere(r=3, $fn=30);

		//wings middle
		difference(){
			translate([-7.8,0,1.7])
				rotate([90,17,0])
					resize(newsize=[5,2,1])
						sphere(r=3, $fn=30);
			
			translate([-6.7,0,1.5])
				rotate([90,17,0])
					resize(newsize=[4,2.1,4])
						sphere(r=3, $fn=30);
		}
	}
	translate([-6.1,0,-.1])
		rotate([90,0,0])
			resize(newsize=[3.8,2.5,2.3])
				sphere(r=3, $fn=30);

}
}
}
}
}

//eyes
translate([-1,-1.4,9.15])
	rotate([15,-5,-35])
	resize(newsize=[.5,.2,.8])
		sphere(r=1, $fn=13);

translate([-.1,-1.73,9.15])
	rotate([15,3,-5])
	resize(newsize=[.5,.2,.8])
		sphere(r=1, $fn=13);

//smile
difference(){
translate([-.54,-1.5,8.6])
	rotate([-75,30,-15])
	cylinder(r=.5, h=.1, $fn=30);

translate([-.55,-1.6,8.6])
	rotate([-75,30,-15])
	cylinder(r=.3, h=.8, $fn=30);

translate([-3,-3,8.6])
	cube([5,4,1]);
}









