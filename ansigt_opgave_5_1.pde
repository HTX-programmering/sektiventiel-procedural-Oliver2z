void setup() {
  size(960, 480); //canvas
}

void draw() {
  background(255);
  drawFigure(200, 240); // første figur
  drawFigure(600, 240); // anden figur
}

void drawFigure(float x, float y) {
  head(x, y);
  eyes(x, y);
  nose(x, y);
  mouth(x, y);
  hat(x, y);
  body(x, y + 75);
  arms(x, y + 75);
  legs(x, y + 175);
}

void head(float x, float y) {
  // ansigt
  fill(255);
  ellipse(x, y, 150, 150);
}

void eyes(float x, float y) {
  // øje
  fill(0);
  rect(x - 40, y - 30, 30, 30);
  rect(x + 10, y - 30, 30, 30);
}

void nose(float x, float y) {
  // næse
  fill(255, 165, 0);
  ellipse(x, y + 10, 50, 50);
}

void mouth(float x, float y) {
  // orale hul
  noFill();
  line(x - 25, y + 45, x + 25, y + 45);
  arc(x, y + 45, 50, 50, 0, PI);
}

void hat(float x, float y) {
  // hat
  fill(0);
  rect(x - 40, y - 70, 80, 5);
  rect(x - 25, y - 120, 50, 50);
}

void body(float x, float y) {
  // krop
  fill(255);
  rect(x - 25, y, 50, 100);
}

void arms(float x, float y) {
  // arme
  stroke(0);
  line(x - 25, y, x - 75, y + 50); // arm 1
  line(x + 25, y, x + 75, y + 50); // arm 2
}

void legs(float x, float y) {
  // ben
  stroke(0);
  line(x - 15, y, x - 15, y + 75); // ben 1
  line(x + 15, y, x + 15, y + 75); // ben 2
}
