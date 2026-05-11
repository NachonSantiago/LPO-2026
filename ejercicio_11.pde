int maxPuntos = 10;
float[] posX = new float[maxPuntos];
float[] posY = new float[maxPuntos];

int indiceActual = 0;
int totalPuntos = 0;

void setup() {
  size(800, 600);
  background(240);
  noStroke();
  fill(50, 150, 250, 180);
}

void draw() {
  background(240);
  
  for (int i = 0; i < totalPuntos; i++) {
    ellipse(posX[i], posY[i], 30, 30);
  }
}

void mousePressed() {
  posX[indiceActual] = mouseX;
  posY[indiceActual] = mouseY;
  
  indiceActual++;
  
  if (indiceActual >= maxPuntos) {
    indiceActual = 0;
  }
  
  if (totalPuntos < maxPuntos) {
    totalPuntos++;
  }
}
