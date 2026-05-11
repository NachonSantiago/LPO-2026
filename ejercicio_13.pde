int cantidadBarras = 20;
float[] alturas = new float[cantidadBarras];
float anchoBarra;

void setup() {
  size(800, 400);
  anchoBarra = width / (float)cantidadBarras;
  
  for (int i = 0; i < cantidadBarras; i++) {
    alturas[i] = height / 2;
  }
}

void draw() {
  background(30);
  
  if (mousePressed) {
    int indice = floor(mouseX / anchoBarra);
    
    if (indice >= 0 && indice < cantidadBarras) {
      alturas[indice] = constrain(height - mouseY, 0, height);
    }
  }
  
  for (int i = 0; i < cantidadBarras; i++) {
    float x = i * anchoBarra;
    float y = height - alturas[i];
    
    fill(100, 200, 255);
    stroke(255);
    rect(x, y, anchoBarra, alturas[i]);
  }
}
