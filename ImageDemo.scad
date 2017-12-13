difference(){ // difference takes the first thing and subtracts
              // all the subsequent things from it

  // importing an STL is dead easy in OpenSCAD
  import("./SimpleBox.stl");

  // position your image where you want it.
  translate([0,0,10.05]) mirror([0,0,1])
    // scale your image to whatever size you want
    scale([0.2,0.2,0.01])
      // making an image into a 3d surface is easy
      // it should be a png or dxf file
      surface("./Face_Small.png",center=true);
      // I shrunk the images you had to speed up the compilation

  // same process for other images
  translate([14.55,0,0]) rotate([0,90,0]) rotate([0,0,90])
    mirror([0,0,1]) scale([0.2,0.2,0.005])
      surface("./Serious_Small.png",center=true,invert=true);

}