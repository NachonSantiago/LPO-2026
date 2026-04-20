void setup() {
  size(600, 400);
}

void draw() {
  Casa(width / 2, height * 0.8, width / 3);
}

void Casa(float x, float y, float w) {
  float h = w * 0.8;
  float t = w * 0.5;
  float pw = w * 0.3;
  float ph = h * 0.6;

  rect(x - w / 2, y - h, w, h);
 
  triangle(x - w / 2, y - h, x + w / 2, y - h, x, y - h - t);

  rect(x - pw / 2, y - ph, pw, ph);
}
