

void setup() {
}

class Notecard {
  String title, source, directQuotation, url, page, paraphraseSummary, myIdeas, tags, myTags, manageVersions, saveClose;
  Notecard (String a, String b, String c, String d, String e, String f, String g, String h, String i, String j, String k){
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
  int x, y;
  String stackName;
  ArrayList<Notecard> stackCards;
  Notecard n1;
  Stack (String a, ArrayList<Notecard> b, int c, int d, Notecard e){
    stackName = a;
    stackCards = b;
    x = c;
    y = d;
    n1 = e;
  }
 void initStack(){
   stackCards.add(n1);
   n1.title = stackName;
 }
}
