//import processing.sound.*;
//SoundFile spaceTheme; //sound is placed in its own object
int stars = 550;
float[] x = new float[stars];
float[] y = new float[stars];
float[] z = new float[stars];
PShape saturn;
void setup()
{
  size(600, 600, P3D);
  //spaceTheme = new SoundFile(this,"Space.mp3");
  //spaceTheme.play();
  background(0);
  noFill();
  stroke(255);
  strokeWeight(1);

  for (int i=0; i<stars; i=i+1) { //dots random numbers inside the box
    x[i] = int(random(-250, 250)); 
    y[i] = int(random(-250, 250)); 
    z[i] = int(random(-250, 250));
  }
}

void draw() 
{
  background(0);
  translate(width/2, height/2);
  rotateY(frameCount/100.0);
  //rotateZ(frameCount/100.0);
  noFill();
  stroke(255,255,255);
  box(500);


  for (int i=0; i<stars; i=i+1) {
    point(x[i], y[i], z[i]); //places all the dots within the box and displays it
  }
  //Drawing the sun
  pushMatrix();
  noStroke();
  translate (-250, 0);
  fill(#FF5F03);
  sphere(35);
  popMatrix();
  //Mercury
  pushMatrix();
  translate (-200, 0);
  // rotateY(frameCount/20.0);
  fill(#6F6D6D);
  sphere(9);
  popMatrix();
  //Venus
  pushMatrix();
  translate (-165, 0);
  fill(#DBA800);
  sphere(15);
  popMatrix();
  //Earth
  pushMatrix();
  translate (-120, 0);
  fill(#0070FF);
  sphere(22);
  popMatrix();
  //Mars
  pushMatrix();
  translate (-75, 0);
  fill(#FF2B00);
  sphere(15);
  popMatrix();
  //Jupiter
  pushMatrix();
  translate (-25, 0);
  fill(#7EB49E);
  sphere(28);
  popMatrix();
  //Saturn
  pushMatrix();
  translate (40, 0);
  fill(#B7AA4A);
  sphere(25);
  popMatrix();
  //Uranus
  pushMatrix();
  translate (100, 0);
  fill(#4DFFC5);
  sphere(22);
  popMatrix();
  //Neptune
  pushMatrix();
  translate (150, 0);
  fill(#0D00A5);
  sphere(19);
  popMatrix();
  //Pluto
  pushMatrix();
  translate (200, 0);
  fill(#AA8848);
  sphere(7);
  popMatrix();
}
