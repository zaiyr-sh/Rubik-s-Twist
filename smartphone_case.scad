r = 2;
thk = 1;
w = 77.9 - r * 2;
d = 158.2 - r * 2;
h = 7.3 - r * 2;
$fn = 64;

module phone(w,d,h,r) {
    minkowski() {
        cube([w,d,h], true);
        sphere(d = r * 2);
    }
    
    /*for charging*/
    translate([0, - d / 2, 0])
    cube([12, 10, 4.5], true);
    
    /*for dynamics*/
    translate([23, - d / 2, 0])
    cube([20, 10, 4.5], true);
    
    /*for headphones*/
    minkowski() {
        translate([-25, - d / 2, 0])
        cylinder(1,1,1,center = true);
        sphere(d = r * 3);
    }
    
    /*for camera*/
    minkowski() {
        translate([23, 70, 1])
        cube([18, 8, 10], true);
        sphere(d = r * 3);
    }
    
    /*for turning on/off*/
    translate([d/4, 42,0])
    cube([2, 13, 4], true);
    
    /*for sound*/
    translate([-d/4, 34,0])
    cube([2, 25, 4], true);
    
    /*silent mode*/
    translate([-d/4, 55,0])
    cube([2, 8, 4], true);
}

difference() {
    color("orange")
    minkowski() {
        cube([w + thk, d + thk, h + thk], true);
        sphere(d = r * 2);
    }
    
    phone(w, d, h, r);
    translate([0, 0, h * 2 - thk])
    cube([w, d, h * 2], true);
}