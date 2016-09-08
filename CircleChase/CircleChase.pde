float x;
float y;
float easing = 0.02;
float diameter = 12;

float destinationX;
float destinationY;

void setup() 
{
  size(500,500);
  smooth();
  frameRate(30);
  ellipse(250,250,50,50);

}
void draw() 
{
  background(100,200,150);
  fill(255,255,0);
  ellipse(250,250,50,50); 
  float targetX = mouseX;
  float targetY = mouseY;
  x = x + (targetX - x) * easing;
  y = y + (targetY - y) * easing;
  fill(255);
  ellipse(x, y, 15, 15);
  println(targetX + " : " + x);
  if(x>200 && x<300 && y>200 && y<300)
  {
    exit();
  }
}