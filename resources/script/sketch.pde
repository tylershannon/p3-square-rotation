import controlP5.*;
ControlP5 cp5;

void setup() {
  size(900, 600);
  translate(-(width/2), -(height/2));

  cp5 = new ControlP5(this);
  cp5.addSlider("rotation")//name,range,start value, x pos, y, pos, width, height
    .setRange(0, 90)
    .setValue(45)
    .setPosition(20, 25)
    .setWidth(150)
    .setHeight(30)
    .setColorBackground(0)
    .setColorForeground(#ffffff)
    ;

  cp5.addSlider("inner radius")//name,range,start value, x pos, y, pos, width, height
    .setRange(1, 300)
    .setValue(130)
    .setPosition(190, 25)
    .setWidth(150)
    .setHeight(30)
    .setColorBackground(0)
    .setColorForeground(#ffffff)
    ;

  cp5.addSlider("step count")//name,range,start value, x pos, y, pos, width, height
    .setRange(1, 20)
    .setValue(4)
    .setPosition(360, 25)
    .setWidth(150)
    .setHeight(30)
    .setColorBackground(0)
    .setColorForeground(#ffffff)
    ;
}

void draw() {
  noFill();
  stroke(#ffffff);
  background(0);

  //setup Controller labels to refresh each loop
  cp5.getController("rotation").getValueLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(#ffffff, true);
  cp5.getController("rotation").getCaptionLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(#ffffff, true);

  //setup Controller labels to refresh each loop
  cp5.getController("inner radius").getValueLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(#ffffff, true);
  cp5.getController("inner radius").getCaptionLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(#ffffff, true);

  //setup Controller labels to refresh each loop
  cp5.getController("step count").getValueLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(#ffffff, true);
  cp5.getController("step count").getCaptionLabel().align(ControlP5.LEFT, ControlP5.BOTTOM_OUTSIDE).setPaddingX(0).setColor(#ffffff, true);

  pushMatrix();
  translate(width/2, height/2);
  rectMode(CENTER);
  rect(0, 0, 300, 300);
  popMatrix();

  pushMatrix();
  translate(width/2, height/2);
  float rotation=(cp5.getController("rotation").getValue())/50;
  for ( int r=300; r>(cp5.getController("inner radius").getValue()); r-=(cp5.getController("step count").getValue())) {
    rotate(radians(rotation));
    rectMode(CENTER);
    rect(0, 0, r, r);
  }
  popMatrix();
}
