float x;
float y;
float easing = 0.1;
float diameter = 12;

float destinationX;
float destinationY;

float randomX;
float randomY;

boolean newoption = false;

void setup() 
{
  size(500,500);
  smooth();
  frameRate(30);
  //////////////////////////////////
  randomX = (random(50,450)*50)%450;
  randomY = (random(50,450)*50)%450;
  fill(255,255,0);
  ellipse(randomX,randomY,50,50);
  //////////////////////////////////
}
void draw() 
{
  background(100,200,150);
    
  float targetX = mouseX;
  float targetY = mouseY;
  x = x + (targetX - x) * easing;
  y = y + (targetY - y) * easing;
  
  fill(255);
  ellipse(x, y, 15, 15);
  
  if(x>(randomX-50) && x<(randomX+50) && y>(randomY-50) && y<(randomY+50))
  {
    newoption = true;
  }
  else
  {
    newoption = false;
  }
    if (newoption == true)
  {
   randomX = (random(50,450)*50)%450;
   randomY = (random(50,450)*50)%450;
   fill(255,255,0);
   ellipse(randomX,randomY,50,50);
  }

}