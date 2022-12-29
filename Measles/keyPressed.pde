void keyPressed() {
  if (key=='e' || key=='E') exit();
  if (key=='s' || key=='S') loop();
  if (key=='p' || key=='P') noLoop();
}//End keyPressed
//
void mousePressed() {
  //
  if ( mouseButton == LEFT ) {
    println("2 to backgroundColorRandom "); 
    
    // first Click don't set background Color
    if (firstClick) {
      firstClick=false;
    } else {
      backgroundColorRandom();
    }
    
    
    ellipse(HeadX, HeadY, HeadWD, HeadHD);
    if (mouseX> quitX && mouseX< quitX+quitButtonWidth && mouseY> quitY && mouseY< quitY+quitButtonHeight) exit();
    if (mouseX>stopX && mouseX<stopX+SmallD*1/5 && mouseY>stopY && mouseY<stopY+SmallD*1/10) noLoop();
    dotRandom();
  }
  //
  if (mouseX>0 && mouseX<width-SmallD*1/2 && mouseY>0 && mouseY<height) {
    if (noLoop=true) {
      loop=false;
      loop();
    } else {
      noLoop=false;
      noLoop();
    }
  }//End Left Mouse button
  //
  if ( mouseButton == RIGHT ) {
    //
    println("3 to backgroundColorRandom "); 
    
    // first Click don't set background Color
    if (firstClick) {
      firstClick=false;
    } else {
      backgroundColorRandom();
    }
    
    
    ellipse(HeadX, HeadY, HeadWD, HeadHD);
    dotRandom();
    //
  }//End Right Mouse Button
  
  

  //
  //Note: Mouse WHEEL is also available
  //if ( mouseButton == WHEEL ) {}//End Mouse WHEEL
  //
}//End mousePressed
