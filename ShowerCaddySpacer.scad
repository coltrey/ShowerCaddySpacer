cubeX = 47;
cubeY = 35;
cubeZ = 35;
slotDiameter = 6;
notchWidth = 14;
cylinderSmoothing = 1000; // this will be $fn in cylinders

translate([0,0,cubeZ/2])
rotate([90,0,0])
difference() {
    // Main cube
    translate([0,0,cubeZ/2])
        cube([cubeX, cubeY, cubeZ], center=true);

    // Top slot
    translate([0,0,cubeZ])
        rotate([90,0,90])
            cylinder(h=cubeX, d=slotDiameter, $fn=cylinderSmoothing, center=true);

    // Side slot
    translate([cubeX/2,0,cubeY/2])
        rotate([0,0,0])
            cylinder(h=cubeZ, d=slotDiameter, $fn=cylinderSmoothing, center=true);

    // Other side slot
    // Side slot
    translate([-cubeX/2,0,cubeY/2])
        rotate([0,0,0])
            cylinder(h=cubeZ, d=slotDiameter, $fn=cylinderSmoothing, center=true);

    // Door notch
    translate([0,0,notchWidth/2])
    cube([notchWidth, cubeY, cubeZ/2], center=true);
}