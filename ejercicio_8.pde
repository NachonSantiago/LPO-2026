void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  int cantfila=5, cantcol=4;
  float cont=0;
  float ancho=width/cantcol;
  float alto=height/cantfila;
  for (int i=0; i<cantcol; i++)
  {
    float x = i*ancho;
    for (int j=0; j<cantfila; j++)
    {
      float y = j*alto;
      cont++;
      if(cont%2==0){
        fill(0,0,255);
        rect(x,y,ancho,alto); 
      }
      else{
      fill(255,255,255);
      rect(x,y,ancho,alto);
      }
    }
  }
}
