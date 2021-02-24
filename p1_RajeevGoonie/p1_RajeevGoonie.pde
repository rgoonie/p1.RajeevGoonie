private String display = "";
private String menuState;

public void setup(){
  size(500, 750);
  frameRate(120);
  
  menuState = "MAIN";
}

public void draw(){
  //Clean and reset
   clear();
   background(42,43,46);
   
   drawMicrowaveInterface();
   
}

private void drawMicrowaveInterface(){
  //basic shape
  stroke(124, 137, 139);
  fill(42,43,46);
  rect(25, 25, 450, 700, 20);
  
  //screen display
  stroke(0);
  fill(0);
  rect(50, 50, 400, 100, 20);
  
  fill(137, 168, 56);
  textSize(50);
  text(display, 60, 120);
  
  switch(menuState){
    case "MAIN": break;
    case "PRESET": break;
    case "RUNNING": break;
  }
}

private void drawMainMenu(){}

private void drawPresetsMenu(){}

private void drawRunningMenu(){}
