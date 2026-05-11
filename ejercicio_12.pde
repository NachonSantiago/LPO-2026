int filas = 20;
int columnas = 20;
float w, h;
float[][] distancias = new float[columnas][filas];

void setup() {
  size(600, 600);
  w = width / columnas;
  h = height / filas;
  noStroke();
}

void draw() {
  background(0);
  actualizarMatriz();
  dibujarGrilla();
}

void actualizarMatriz() {
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float centroX = i * w + w/2;
      float centroY = j * h + h/2;
      float d = dist(mouseX, mouseY, centroX, centroY);
      distancias[i][j] = d;
    }
  }
}

void dibujarGrilla() {
  float maxDist = dist(0, 0, width, height);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float brillo = map(distancias[i][j], 0, maxDist/2, 255, 0);
      fill(constrain(brillo, 0, 255));
      rect(i * w, j * h, w, h);
    }
  }
}
