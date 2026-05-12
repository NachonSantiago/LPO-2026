PVector pos, vel;

void setup(){
  size(800,600);
  pos = new PVector(width/2 ,height/2);
  vel = new PVector(6, -1);
}

void draw(){
  background(200);
  
  pos.add(vel);
  
  if (pos.x > width || pos.x < 0) {
    vel.x *= -1;
  }
  
  if (pos.y > height || pos.y < 0) {
    vel.y *= -1;
  }
  
  ellipse(pos.x, pos.y, 50, 50);
}
