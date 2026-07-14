Movil[] moviles;

int cantidad = 200;
int radio = 150;

void setup() {
  size(800, 600);

  moviles = new Movil[cantidad];

  for (int i = 0; i < cantidad; i++) {
    moviles[i] = new Movil();
  }
}

void draw() {
  background(255);

  // Centro
  fill(255, 0, 0);
  noStroke();
  ellipse(width/2, height/2, 10, 10);

  // Círculo del radio
  noFill();
  stroke(50);
  ellipse(width/2, height/2, radio * 2, radio * 2);

  for (int i = 0; i < cantidad; i++) {
    moviles[i].mover();

    float d = dist(moviles[i].x, moviles[i].y, width/2, height/2);

    if (d < radio) {
      moviles[i].mostrar();
    }
  }
}

class Movil {

  float x, y;
  float vx, vy;

  int RLinea;
  int GLinea;
  int BLinea;

  Movil() {
    x = random(width);
    y = random(height);

    vx = random(-3, 3);
    vy = random(-3, 3);

    if (abs(vx) < 1) vx = random(1, 3) * (random(1) < 0.5 ? -1 : 1);
    if (abs(vy) < 1) vy = random(1, 3) * (random(1) < 0.5 ? -1 : 1);

    // Color inicial aleatorio
    RLinea = int(random(256));
    GLinea = int(random(256));
    BLinea = int(random(256));
  }

  void mover() {
    x += vx;
    y += vy;

    if (x <= 0 || x >= width) {
      vx *= -1;
    }

    if (y <= 0 || y >= height) {
      vy *= -1;
    }
  }

  void mostrar() {

    fill(0);
    noStroke();
    ellipse(x, y, 5, 5);

    int RDegrado = 1;
    int GDegradado = 1;
    int BDegradado = 1;

    RLinea = max(0, RLinea - RDegrado);
    GLinea = max(0, GLinea - GDegradado);
    BLinea = max(0, BLinea - BDegradado);

    stroke(RLinea, GLinea, BLinea);
    line(x, y, width/2, height/2);
  }
}
