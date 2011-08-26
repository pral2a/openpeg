PEG (90, 10);

module PEG (lenght, width) {
	A=lenght;
	B=lenght*(2/75);
	C=lenght*(7/75);
	D=lenght*(70/75);
	E=lenght*(36/75);	
	difference(){	
		linear_extrude(height=width)
		polygon(points=[[0,0],[0,A],[B,A],[C,D],[C,E],[B,0]],paths=[[0,1,2,3,4,5]]);
		translate([C,E+9,0]) cylinder(h = width, r=1);
		translate([C,E,0]) cylinder(h = width, r=2.5);
		translate([C*1.3,D-10,0]) cylinder(h = width, r=5);
		translate([0,E+4,0]) cube([1.7,3,width]);	
	}
}