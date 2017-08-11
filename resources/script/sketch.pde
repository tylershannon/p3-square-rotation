void setup() {
  size(900, 600);
  translate(-(width/2), -(height/2));
}

void draw() {
  noFill();
  stroke(#ffffff);
  background(0);

  pushMatrix();
  translate(width/2, height/2);
  rectMode(CENTER);
  rect(0, 0, 300, 300);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  float rotation=(45)/50;
  for ( int r=300; r>(130); r-=(4)) {
    rotate(radians(rotation));
    rectMode(CENTER);
    rect(0, 0, r, r);
  }
  popMatrix();
}
