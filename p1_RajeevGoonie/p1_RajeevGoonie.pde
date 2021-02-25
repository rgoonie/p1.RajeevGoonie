private String display="DUMMY";
private String menuState;

public void setup(){
  size(500, 750);
  frameRate(120);
  textAlign(CENTER, CENTER);
  
  menuState = "MAIN";
}

public void draw(){
  //Clean and reset
   clear();
   strokeWeight(1);
   background(42,43,46);
   
   drawMicrowaveInterface();
}

private void drawMicrowaveInterface(){
  //interface outline
  stroke(124, 137, 139);
  noFill();
  rect(25, 25, width-50, height-50, 20);
  
  //display screen
  stroke(0);
  fill(0);
  rect(50, 50, width-100, 120, 20);
  
  //display text
  fill(137, 168, 56);
  textSize(50);
  text(display, width/2, 105);
  
  //menu options
  switch(menuState){
    case "MAIN":  
      drawMainMenu();
      break;
    case "PRESETS": 
      drawPresetsMenu();
      break;
    case "CUSTOM": 
      drawCustomMenu();
      break;
    case "RUNNING": 
      drawRunningMenu();
      break;
  }
}

private void drawMainMenu(){
  //Presets Button
  stroke(0);
  strokeWeight(5);
  textSize(40);
  fill(124, 137, 139);
  ellipse(width/2, height/4+75, width/1.5, 120);
  fill(0);
  text("Presets", width/2, height/4+70);
  
  //Custom Time Button
  fill(124, 137, 139);
  ellipse(width/2, height/4*2+75, width/1.5, 120);
  fill(0);
  text("Custom Time", width/2, height/4*2+70);
  
  //30 Seconds Button
  fill(115, 181, 4);
  ellipse(width/2, height/4*3+75, width/1.5, 120);
  fill(0);
  text("30 Seconds", width/2, height/4*3+70);
}

private void drawPresetsMenu(){
  
  stroke(0);
  strokeWeight(4);
  fill(124, 137, 139);
  rect(50, 210, 120, 120);
  fill(0);
  textSize(25);
  text("Popcorn", 110, 265);
  
  fill(124, 137, 139);
  rect(190, 210, 120, 120);
  fill(0);
  textSize(25);
  text("Drink", 250, 265);
  
  fill(124, 137, 139);
  rect(330, 210, 120, 120);
  fill(0);
  textSize(25);
  text("By", 390, 248);
  text("Weight", 390, 277);
  
  //Minute Buttons
  fill(124, 137, 139);
  textSize(20);
  text("-----------Minute Presets-----------", 250, 375);
  
  rect(50, 400, 120, 120);
  fill(0);
  textSize(50);
  text("1", 110, 455);
  
  fill(124, 137, 139);
  rect(190, 400, 120, 120);
  fill(0);
  textSize(50);
  text("2", 250, 455);
  
  fill(124, 137, 139);
  rect(330, 400, 120, 120);
  fill(0);
  textSize(50);
  text("3", 390, 455);
  
  //Back Button
  strokeWeight(5);
  fill(124, 137, 139);
  ellipse(width/2, height/4*3+75, width/1.5, 120);
  fill(0);
  textSize(40);
  text("< Back", width/2-15, height/4*3+70);
}

private void drawCustomMenu(){
  
  
  //Number Pad
  stroke(0);
  strokeWeight(4);
  textSize(35);
  fill(124, 137, 139);
  rect(94, 190, 75, 75);
  fill(0);
  text("1", 131, 224);
  
  fill(124, 137, 139);
  rect(212, 190, 75, 75);
  fill(0);
  text("2", 249, 224);
  
  fill(124, 137, 139);
  rect(330, 190, 75, 75);
  fill(0);
  text("3", 367, 224);
  
  fill(124, 137, 139);
  rect(94, 285, 75, 75);
  fill(0);
  text("4", 131, 319);
  
  
  fill(124, 137, 139);
  rect(212, 285, 75, 75);
  fill(0);
  text("5", 249, 319);
  
  fill(124, 137, 139);
  rect(330, 285, 75, 75);
  fill(0);
  text("6", 367, 319);
  
  fill(124, 137, 139);
  rect(94, 380, 75, 75);
  fill(0);
  text("7", 131, 414);
  
  fill(124, 137, 139);
  rect(212, 380, 75, 75);
  fill(0);
  text("8", 249, 414);
  
  fill(124, 137, 139);
  rect(330, 380, 75, 75);
  fill(0);
  text("9", 367, 414);
  
  fill(124, 137, 139);
  rect(212, 475, 75, 75);
  fill(0);
  text("0", 249, 509);
  
  fill(124, 137, 139);
  rect(330, 475, 75, 75);
  fill(0);
  text("<", 367, 509);
  
  //Back Button
  strokeWeight(5);
  fill(124, 137, 139);
  ellipse(width/4+15, height/4*3+75, width/3+30, 120);
  fill(0);
  textSize(40);
  text("< Back", width/20*5+15, height/4*3+70);
  
  //Back Button
  strokeWeight(5);
  fill(115, 181, 4);
  ellipse(width/4*3-15, height/4*3+75, width/3+30, 120);
  fill(0);
  textSize(40);
  text("Start", width/4*3-15, height/4*3+70);
}

private void drawRunningMenu(){
  //+30 Seconds Button
  stroke(0);
  strokeWeight(5);
  textSize(40);
  fill(115, 181, 4);
  ellipse(width/2, height/3+75, width/1.5, 150);
  fill(0);
  text("+30 Seconds", width/2, height/3+70);
  
  //Stop Button
  fill(194, 24, 8);
  ellipse(width/2, height/3*2+75, width/1.5, 150);
  fill(0);
  textSize(50);
  text("STOP", width/2, height/3*2+70);
}

public void mousePressed(){
  switch(menuState){
    case "MAIN":  
      clickInMain();
      break;
    case "PRESETS": 
      clickInPresets();
      break;
    case "CUSTOM": 
      clickInCustom();
      break;
    case "RUNNING": 
      clickInRunning();
      break;
  }
  
  println("Went to state: "+ menuState);
}

private void clickInMain(){
  //click presets button
  if(Math.pow(mouseX - (width/2),2)/Math.pow((width/1.5/2),2) + Math.pow(mouseY - (height/4+75),2)/Math.pow(60, 2) <= 1){
    menuState="PRESETS";
  }

  //click custom button
  if(Math.pow(mouseX - (width/2),2)/Math.pow((width/1.5/2),2) + Math.pow(mouseY - (height/4*2+75),2)/Math.pow(60, 2) <= 1){
    menuState="CUSTOM";
  }

  //click 30 seconds button
  if(Math.pow(mouseX - (width/2),2)/Math.pow((width/1.5/2),2) + Math.pow(mouseY - (height/4*3+75),2)/Math.pow(60, 2) <= 1){
    menuState="RUNNING";
  }

}

private void clickInPresets(){
  //click popcorn button (2min 15sec)
  if(50<=mouseX && mouseX<=170 && 210<=mouseY && mouseY<=330){
    println("popcorn");
    menuState="RUNNING";
  }
  
  //click drink button (1min 20sec)
  if(190<=mouseX && mouseX<=310 && 210<=mouseY && mouseY<=330){
    println("drink");
    menuState="RUNNING";
  }
  
  //click by weight (rando time)
  if(330<=mouseX && mouseX<=450 && 210<=mouseY && mouseY<=330){
    println("weight");
    menuState="RUNNING";
  }
  
  //click 1 minute button
  if(50<=mouseX && mouseX<=170 && 400<=mouseY && mouseY<=520){
    println("1 min");
    menuState="RUNNING";
  }
  
  //click 2 minute button
  if(190<=mouseX && mouseX<=310 && 400<=mouseY && mouseY<=520){
    println("2 min");
    menuState="RUNNING";
  }
  
  //click 3 minute button
  if(330<=mouseX && mouseX<=450 && 210<=mouseY && mouseY<=330){
    println("weight");
    menuState="RUNNING";
  }
  
  //click back button
  if(Math.pow(mouseX - (width/2),2)/Math.pow((width/1.5/2),2) + Math.pow(mouseY - (height/4*3+75),2)/Math.pow(60, 2) <= 1){
    menuState="MAIN";
  }
}

private void clickInCustom(){}

private void clickInRunning(){
  //click +30 seconds
  if(Math.pow(mouseX - (width/2),2)/Math.pow((width/1.5/2),2) + Math.pow(mouseY - (height/3+75),2)/Math.pow(75, 2) <= 1){
    println("+30 Seconds");
  }
  
  //click stop
  if(Math.pow(mouseX - (width/2),2)/Math.pow((width/1.5/2),2) + Math.pow(mouseY - (height/3*2+75),2)/Math.pow(75, 2) <= 1){
    menuState="MAIN";
  }
}
