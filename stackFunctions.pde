void setup() {
  size (800, 600);
  frameRate(60);
}

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
}

class Stack {
  float xpos, ypos;
  String stackName;
  ArrayList<Notecard> stackCards;
  Notecard n1;
  Stack (String a, ArrayList<Notecard> b, float x, float y) {
    stackName = a;
    stackCards = b;
    xpos = x;
    ypos = y;
  }
}

Stack initStack(Notecard n1) {
  ArrayList <Notecard> newCards = new ArrayList <Notecard>();
  newCards.add(n1);
  Stack newStack = new Stack(n1.title, newCards, 300.0, 400.0); 
  return newStack;
}
Stack stackCombine(Stack stackOne, Stack stackTwo) {
  ArrayList <Notecard> newCards = new ArrayList <Notecard>();
  newCards.addAll(stackOne.stackCards);
  newCards.addAll(stackTwo.stackCards);
  Stack newStack = new Stack((stackOne.stackName + " / " + stackTwo.stackName), newCards, stackOne.xpos, stackOne.ypos);
  return newStack;
}
Stack removeStack(Stack parentStack, Notecard n1) {
  parentStack.stackCards.remove(n1);
  return initStack(n1);
}