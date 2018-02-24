notecard n1 = new notecard (400, 300);
void setup ()
{
  size (800, 600);
  frameRate(60);
  n1.update();
}

class notecard {
  float xpos, ypos, mvmtx, mvmty;
  notecard (float x, float y) {
    xpos = x;
    ypos = y;
  }
  void update() {
    rectMode(CENTER);
    rect(xpos, ypos, 180, 120);
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
