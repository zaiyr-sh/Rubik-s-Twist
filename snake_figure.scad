size = 20;

$fn = 100;


h = 5;
r1 = 5.2;
r2 = 3.2;

module pyramid(size){
    intersection() {
        translate([0,0, size])
            cube([size*2, size*2, size*2], center=true);
        rotate([45, 0, 0])
            cube([size, size, size], center=true);
    }
}

module snake_figure(){
    difference()
    {
        pyramid(size);
        rotate([45,0,0])
        translate([0,0,18]) {
            cylinder(r=5, h=size, center=true);
            translate([0,0, -10])
                cylinder(r1=6.5, r2=5, h=2, center=true);
        }
        rotate([-45,0,0])
        translate([0,0,18]) {
            cylinder(r=5, h=size, center=true);
            translate([0,0, -10])
                cylinder(r1=6.5, r2=5, h=2, center=true);
        }
    }
}

snake_figure();


