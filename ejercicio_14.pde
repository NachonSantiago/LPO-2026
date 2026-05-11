int filas = 10;
int columnas = 10;
float tam;
boolean[][][] laberinto = new boolean[filas][columnas][6];

void setup() {
  size(600, 600);
  tam = width / columnas;
  generarLaberinto();
  noLoop();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(2);

  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      dibujarCelda(i, j);
    }
  }
}

void generarLaberinto() {
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      for (int k = 0; k < 6; k++) {
        laberinto[i][j][k] = random(1) < 0.3;
      }
    }
  }
}

void dibujarCelda(int f, int c) {
  float x = c * tam;
  float y = f * tam;

  if (laberinto[f][c][0]) line(x, y, x + tam, y);
  if (laberinto[f][c][1]) line(x, y + tam, x + tam, y + tam);
  if (laberinto[f][c][2]) line(x, y, x, y + tam);
  if (laberinto[f][c][3]) line(x + tam, y, x + tam, y + tam);
  
  if (laberinto[f][c][4]) line(x, y, x + tam, y + tam);
  if (laberinto[f][c][5]) line(x + tam, y, x, y + tam);
  stroke(0);
}
