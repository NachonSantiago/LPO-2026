void setup() {
  size(1200, 600);
  background(200);
}
void draw() {
//background(200);
stroke(0,20);
int w =width;
int h =height;
line(mouseX,mouseY,w*0,h*0);
line(mouseX,mouseY,w*1,h*0);
line(mouseX,mouseY,w*1,h*1);
line(mouseX,mouseY,w*0,h*1);

println(mouseX,mouseY);
}
