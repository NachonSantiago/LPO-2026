void setup() {
  size(800, 400);
}
void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
    
    line(width-mouseX, mouseY, width-pmouseX, pmouseY);
    
    line(mouseX, height-mouseY, pmouseX, height-pmouseY);
    
    line(width-mouseX, height-mouseY, width-pmouseX, height-pmouseY);
  }

}
