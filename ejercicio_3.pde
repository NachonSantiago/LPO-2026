int xAnt = 0;
int yAnt = 0;
void setup() {
  size(1200, 600);
}
void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  // xAnt = mouseX;
  //yAnt = mouseY;

  println("Pos actual:", mouseX, mouseY,
    "Pos anterior:", pmouseX, pmouseY);
}
