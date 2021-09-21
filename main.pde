// VARIABLES
Clock clock;
Timer timer;
float r;

void setup() {
  size(1024, 768);
  frameRate (20);
  background(0);
  clock = new Clock();
  timer = new Timer(0, 1); //ms
  timer.start1();
}


void draw() {
  clock.update();
  timer.update(timer.getTimeMillis() + clock.getDeltaMillis());
  if (!timer.getFinish()) {
    intro();
  } else {
    buttons();
  }
}


void intro() {

  fill(231, 231, 231);
  rect(200, 250, 600, 220, 28);

  fill(148, 219, 223);
  square(600, 285, 150);

  fill(88, 88, 88);
  textSize(60);
  text("MERRY X-MAS", 225, 375);

  fill(126, 126, 126);
  textSize(15);
  text("Universitat Oberta de Catalunya", 230, 400);
}

void buttons() {
  background(0);
  fill(231, 231, 231);
  square(350, 200, 300);

  fill(126, 126, 126);
  rect(425, 250, 150, 30);
  rect(425, 300, 150, 30);
  rect(425, 350, 150, 30);
  keyTyped();
}

void keyTyped() {
  if (key == 'A') {
    r = random(0, 255);
    fill(r, 0, 0);
    rect(425, 350, 150, 30);
    key = '*';
  }
}

void config() {
}
