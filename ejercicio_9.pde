void setup(){
 size(800, 600);
}

void draw(){
 background(255);
 
 int filas = 8;
 int columnas = 8;
 
 float ancho = width;
 float alto = height;
 
 for(int j = 0; j < filas; j++){
   for(int i = 0; i < columnas; i++){
     
     float x = i * ancho;
     
     if(j % 2 == 1){
       x += ancho / 2;
     }
     rect(x, j * alto, ancho, alto);
   }
 }
}
