float xctr = 400;
float yctr = 300;
boolean mouseInCard = false;
notecard n1 = new notecard (xctr, yctr);
void setup ()
{
  size (800, 600);
  frameRate(60);
  n1.update(xctr, yctr);
}
class notecard {
  float xpos, ypos, mvmtx, mvmty, lngthx, lngthy;
  notecard (float x, float y) {
    xpos = x;
    ypos = y;
    lngthx = 180;
    lngthy = 120;
  }
  void update(float xctr, float yctr) {
    xpos = xctr;
    ypos = yctr;
    rectMode(CENTER);
    rect(xpos, ypos, lngthx, lngthy);
    line(xpos - 90, ypos - 30, xpos + 90, ypos - 30);
    line(xpos - 90, ypos - 20, xpos + 90, ypos - 20);
    line(xpos - 90, ypos - 10, xpos + 90, ypos - 10);
    line(xpos - 90, ypos, xpos + 90, ypos);
    line(xpos - 90, ypos - 10, xpos + 90, ypos - 10);
    line(xpos - 90, ypos, xpos + 90, ypos);
    line(xpos - 90, ypos + 10, xpos + 90, ypos + 10);
    line(xpos - 90, ypos + 20, xpos + 90, ypos + 20);
    line(xpos - 90, ypos + 30, xpos + 90, ypos + 30);
    line(xpos - 90, ypos + 40, xpos + 90, ypos + 40);
    line(xpos - 90, ypos + 50, xpos + 90, ypos + 50);
  }
}
void mousePressed() {
  if (mouseX > xctr - 90  && mouseX < xctr + 90 && mouseY > yctr - 90 && mouseY < yctr + 90) {
    mouseInCard = true;
  }
}
void mouseDragged() {
  if (mouseInCard) {
    float deltaX = mouseX - pmouseX;
    float deltaY = mouseY - pmouseY;

    xctr += deltaX;
    yctr += deltaY;
  }
}
void draw() {
  n1.update(xctr, yctr);
}