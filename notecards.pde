notecard n1 = new notecard (400, 300);
void setup ()
{
  size (800, 600);
  frameRate(60);
}
void draw () {
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
    line(xpos - 90, ypos, xpos + 90, ypos);
  }
}