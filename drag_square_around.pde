float squareX = 200;
float squareY = 200;
float squareWidth = 50;
float squareHeight = 50;

//keep track of when the mouse is inside the square
boolean mouseInSquare = false;

void setup() {
  size(500, 500);
}

//check if the mouse is in the square
void mousePressed() {
  if (mouseX > squareX && mouseX < squareX + squareWidth && mouseY > squareY && mouseY < squareY + squareHeight) {
    mouseInSquare = true;
  }
}

//if the mouse is in the square, then move it when the mouse is dragged
void mouseDragged() {
  if (mouseInSquare) {
    float deltaX = mouseX - pmouseX;
    float deltaY = mouseY - pmouseY;

    squareX += deltaX;
    squareY += deltaY;
  }
}

//when we let go of the mouse, stop dragging the square
void mouseReleased() {
  mouseInSquare = false;
}

//draw the square
void draw() {
  background(0);
  rect(squareX, squareY, squareWidth, squareHeight);
}