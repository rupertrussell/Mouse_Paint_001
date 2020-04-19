// Processing is fun 
// by Rupert Russell
// 20 April 2020
// Draws a line with random colours and random thickness
// the faster you move the mouse the fatter the line
// Left click to save the screen
// Right click to clear the screen



// float is a floating point variabele with a decimal point
float oldMouseX;    // rememebr the last mouse position
float oldMouseY; 

float randomRed;      // used for the random line colours
float randomGreen;
float randomBlue;

float mouseSpeed;

int counter = 0; // used to save each screen when you rigth click the mouse

void setup() {
  background(0);  // Black background use (255) for white
  size(900, 900);  // size of the screen
  oldMouseX = width  /2;
  oldMouseY = height /2;
}

void draw() {
  // if you move the mouse quickly make the line thicker
  // first work out how far you moved the mouse

  mouseSpeed = dist(oldMouseX, oldMouseY, mouseX, mouseY);
  strokeWeight(mouseSpeed);


  // make random values for the red, green & blue 
  randomRed = random(255);
  randomGreen = random(255);
  randomBlue = random(255);

  stroke(randomRed, randomGreen, randomBlue);

  line(oldMouseX, oldMouseY, mouseX, mouseY);

  // rememebr the old position of the mouse
  oldMouseX = mouseX;
  oldMouseY = mouseY;
}


void mousePressed() {
  if (mouseButton == LEFT) {
    save("ScreenShot_"+ counter + ".png"); // save the screen
    counter = counter + 1;
  }
  if (mouseButton == RIGHT) {
    background(0); // clear the screen
  }
}
