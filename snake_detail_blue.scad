$fn = 100;


h = 5;
r1 = 5.2;
r2 = 3.2;

module mount(){
    difference(){
        difference(){
            union(){
                cylinder(h, r1, r2, true);
                rotate([0,180,0])
                cylinder(h, r1, r2, true);
            }
            cylinder(h+2, r2, r2, true);
        }
        translate([5,0,0])
        cube([10,5,6], true);
    }
}

translate([0,0,2.5])
color("#11439B")mount();