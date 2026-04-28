void setup(){
 size(800, 600);
}

void draw(){
 background(255);
 
 int puntos = 6;
 float ancho = width / (puntos - 1);
 
 stroke(0);
 noFill();
 
 rect(0, 0, width, height);
 
 for(int i = 0; i < puntos; i++){
   float xArriba = i * ancho;
   
   for(int j = 0; j < puntos; j++){
     float xAbajo = j * ancho;
     
     line(xArriba, 0, xAbajo, height);
   }
 }
}
