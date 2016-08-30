//bowl of cup
difference(){
	hull(){
		sphere(r=3, $fn=8);
		
		translate([0,0,-4])
			cylinder(r1=.8, r2=2, h=1, $fn=15);
	}

	translate([-5,-5,0.2])
		cube([10,10,3]);

	resize(newsize=[5,5,6])
		sphere(r=2.65, $fn=75);
}

//decorations
difference(){
	union(){
		//scallop top
		for ( i = [0 : 7] ){
		rotate( i * 360 / 8, [0, 0, 1])
			translate([1,2.35,.2])
			mirror([1,0,1])
			rotate([68,0,-15])
			cylinder(h=.2, r=1.1, $fn=8);
		}

		//band around center
		translate([0,0,-.1])
			cylinder(h=.2, r=3.2, $fn=8);

		//band around center top
		translate([0,0,0])
			cylinder(h=.2, r=3, $fn=8);

		//band around center bottom
		translate([0,0,-.3])
			cylinder(h=.3, r=3, $fn=8);
		
		//jewels
		for ( i = [1 : 8] ){
		 rotate( i * 360 / 8, [0, 0, 1])
			translate([1,2.4,.6])
			sphere(r=.25, h=.2, $fn=5);
		}

		//jewels again
		for ( i = [1 : 8] ){
		 rotate( i * 360 / 8, [0, 0, 1])
			translate([.9,2.1,-2])
			sphere(r=.25, h=.2, $fn=5);
		}
	}

	union(){
		resize(newsize=[5,5,6])
			sphere(r=2.65, $fn=75);
	
		translate([0,0,0.2])
			cylinder(h=.8, r=2.5, $fn=70);
	}

	for ( i = [0 : 7] ){
	 rotate( i * 360 / 8, [0, 0, 1])
			translate([0,-3,.95])
				cube([.5,.5,.5]);
	}

	for ( i = [0 : 7] ){
	 rotate( i * 360 / 8, [0, 0, 1])
			translate([1.5,-2.5,.89])
				cube([.5,.5,.5]);
	}
}

//scallop covers
for ( i = [0 : 7] ){
rotate( i * 360 / 8, [0, 0, 1])
	union(){
		difference(){
			union(){
				translate([.97,2.25,.2])
				mirror([1,0,1])
				rotate([69,0,-16])
				resize(newsize=[2.5,2.23,.6])
				sphere(r=9, $fn=50);
			}
		
			union(){
				translate([1.22,2.8,-.4])
				mirror([1,0,1])
				rotate([68,0,-15])
				cylinder(h=2, r=1.25, $fn=20);
			}

			translate([2.1,2.54,1.2])
				mirror([1,0,1])
				rotate([68,0,-23])
				cube([1,2.2,.21]);

			translate([1.95,1.9,1.3])
				mirror([1,0,1])
				rotate([68,0,-7])
				cube([1,2.2,.21]);	
		}
	}
}

//pointy cup triangles
for( i = [1:8] ){
	rotate([0,0,i*360/8])

	difference(){
		union(){
			translate([-3,.05,-.1])
			rotate([75,45,56])
			cube([1.5,1.5,.1]);
		}
	
		translate([-3,-3,0])
			cube([7,7,2]);
	}
}

//stand
translate([0,0,-7])
	cylinder(h=3, r=.6, $fn=8);

translate([0,0,-4.5])
	resize(newsize=[1.5,1.5,.7])
		sphere(r=9, $fn=13);

//base
difference(){
	translate([0,0,-7])
		cylinder(h=2, r=2);

	for (i = [0:7]){
		rotate(i*360/8, [0,0,1])
		translate([0,2,-5])
		sphere(r=1.5, $fn=8);
	}
}
translate([0,0,-7])
	cylinder(h=.25, r=2.2);

