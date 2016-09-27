float x; // Declare X
float y; // Declare Y
float easing = 0.05;
boolean drawT = false;

void setup() { // Set Up
  size(800, 400); // Size of Gtage
  cursor (WAIT); // Mouse Cursor
  println(mouseX + " : " + mouseY);
  fill(0);
}

void draw() { 
  background(51);
  if (mouseX < 400) {
    fill (237,245,22);
    rect(0, 0, 400, 400); // Left Rectangle
    } 
    
    else {
    fill(245,5,229);
    rect(400, 0, 800, 400); // Right Rectangle
  }
  
  float targetX = mouseX; // Easing
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;    
  
   float ix = mouseX;
  float y = mouseY;
  float x = width - mouseX; // Inverse X
  float iy = height - mouseY; // Inverse Y
  
  fill(255, 150);
  ellipse(ix, height/2, y, y);
  fill(0, 159);
  ellipse(ix, height/2, iy, iy);
  
if (mousePressed==true) {
fill(255);
ellipse(x,y,80,80);
}

else {
fill(0,255,240); // If released ball stay to normal size
ellipse(x,y,60,60);
noStroke();
}

 if ((keyPressed == true) && (key == 'a')){ //Keypress A box will appear on Left.
 fill(random(255),random(255),random(255));
 rect(560,150,100,100);
 }
 
 if ((keyPressed == true) && (key == 'd')){ //Keypress A box will appear on right.
 fill(random(255),random(255),random(255)); //Random Color
 rect(160,150,100,100);
 }
 
 if (drawT == true) { // Double T Draw.
 fill(random(255),random(255),random(255));
    rect(90, 80, 220, 80);
    rect(156, 160, 88, 180);
    rect(550, 80, 88, 80);
    rect(550, 160, 88, 180);
  }
}
void keyPressed() { // T appears when keyboard clicked.
  if ((key == 'T') || (key == 't')) {
    drawT = true;
  }
}

void mouseDragged() { // When mouse clicked + dragged a tiny ball will appear 
fill(random(255),random(255),random(255));
ellipse(mouseX-10,mouseY-10,30,30); 
}

void keyReleased() {
  drawT = false;
}
  