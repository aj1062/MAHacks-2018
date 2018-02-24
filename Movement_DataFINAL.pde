

Notecard n1 = new Notecard ("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k");
float xctr = 400;
float yctr = 300;
boolean mouseInCard = false;

boolean button = false;

int x = 50;
int y = 50;
int w = 100;
int h = 75;


void setup() {
  size(800, 600);
}

void draw() {
background(0);
  Stack newStack;
newStack = initStack(n1);
  newStack.update(xctr, yctr);
}


// When the mouse is pressed, the state of the button is toggled.   
// Try moving this code to draw() like in the rollover example.  What goes wrong?

class Notecard {
  String title, source, directQuotation, url, page, paraphraseSummary, myIdeas, tags, myTags, manageVersions, saveClose;
  Notecard (String a, String b, String c, String d, String e, String f, String g, String h, String i, String j, String k) {
    title = a;
    source = b;
    directQuotation = c;
    url = d;
    page = e;
    paraphraseSummary = f;
    myIdeas = g;
    tags = h;
    myTags = i;
    manageVersions = j;
    saveClose = k;
  }

  void saveCard(String directory) {
    save(directory + title);
    save(directory + source);
    save(directory + directQuotation);
    save(directory + url);
    save(directory + page);
    save(directory + paraphraseSummary);
    save(directory + myIdeas);
    save(directory + tags);
    save(directory + myTags);
  }
}

class Stack {
  float xpos, ypos, mvmtx, mvmty, lngthx, lngthy;
  String stackName;
  ArrayList<Notecard> stackCards;
  Notecard n1;
  Stack (String a, ArrayList<Notecard> b, float x, float y, float xctr, float yctr) {
    stackName = a;
    stackCards = b;
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
void mouseReleased() {
  mouseInCard = false;
}

Stack initStack(Notecard n1) {
  ArrayList <Notecard> newCards = new ArrayList <Notecard>();
  newCards.add(n1);
  Stack newStack = new Stack(n1.title, newCards, 300.0, 400.0, xctr, yctr); 
  return newStack;
}
Stack stackCombine(Stack stackOne, Stack stackTwo) {
  ArrayList <Notecard> newCards = new ArrayList <Notecard>();
  newCards.addAll(stackOne.stackCards);
  newCards.addAll(stackTwo.stackCards);
  Stack newStack = new Stack((stackOne.stackName + " / " + stackTwo.stackName), newCards, stackOne.xpos, stackOne.ypos, xctr, yctr);
  return newStack;
}
Stack removeStack(Stack parentStack, Notecard n1) {
  parentStack.stackCards.remove(n1);
  if (parentStack.stackCards.get(0) == null) {
    parentStack.stackCards.add(n1);
    return parentStack;
  } else { 
    return initStack(n1);
  }
}