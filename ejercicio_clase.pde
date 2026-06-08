class Movil {
  PVector pos;    
  PVector vel;    
  int R = 10;      //Radio

  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3)); 
  }

  void mover() {
    pos.add(vel);
  }

  void mostrar() {
    fill(#FFEA00);
    ellipse(pos.x, pos.y, R*2, R*2); // Usar R*2 para el diámetro
  }

  // Lógica: Reaparece por el otro lado (Toroide)
  void limitar1() {
    if (pos.y < -R) pos.y = height + R;
    if (pos.y > height + R) pos.y = -R;
    if (pos.x < -R) pos.x = width + R;
    if (pos.x > width + R) pos.x = -R;
  }

  // Lógica: Rebota en los bordes
  void limitar2() {
    if (pos.x > width - R || pos.x < R) {
      vel.x = vel.x * -1;
    }
    if (pos.y > height - R || pos.y < R) {
      vel.y = vel.y * -1;
    }
  }
}

// Variables globales declaradas fuera de la clase
Movil m;
Movil o;
Movil b;

void setup() {
  size(800, 600);
  m = new Movil(width/2, height/2);
  o = new Movil(width/4, height/4);
  b = new Movil(width/4*3, height/4*3);
}

void draw() {
  background(#153152);
  
  m.mover(); o.mover(); b.mover();
  
  if(mousePressed) {m.limitar2(); o.limitar2(); b.limitar2();}
  else             {m.limitar1(); o.limitar1(); b.limitar1();}
  m.mostrar(); o.mostrar(); b.mostrar();
}
