void setup(){
 size(800, 600);
}

void draw(){
 background(255);
 
 int cantidad = 5;
 float y = height/2;
 float diametro = 60;
 float crecimiento = 60;
 float x = diametro/2;
 
 for(int i = 0; i < cantidad; i++){
   
   ellipse(x, y, diametro, diametro);
   
   x += diametro/2;
   diametro += crecimiento;
   x += diametro/2;
   
 }
}
