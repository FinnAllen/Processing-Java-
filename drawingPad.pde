// Author: Finnian N Allen
// Date: 10/8/2018
// Name: DrawingPad

boolean circleTrue = false;
boolean pointTrue = false;
boolean eraserTrue = false;

void setup()
{
  size(600, 600); 
  background(255);  
}

void draw()
{
  isCircles();
  isPoint();
  isEraser();
  whatDrawType();
  drawMenu();
}

void drawMenu()
{
  drawRect(5, 5);
  drawCircleIcon(30, 17);
  
  drawRect(55, 5);
  drawPointIcon(80, 17);
  
  drawRect(105, 5);
  drawEraserIcon(122, 11);
}

void drawRect(int x, int y)
{
 rect(x, y, 50, 25);
}

void drawCircleIcon(int x, int y)
{
  ellipse(x, y, 10, 10);
}

void drawPointIcon(int x, int y)
{
  point(x, y);
}

void drawEraserIcon(int x, int y)
{
  fill(0);
  rect(x + 2, y + 2, 15, 10);
  fill(255);
  rect(x, y, 15, 10);
}

void isCircles()
{
  if(mouseX <= 55 && mouseX >= 5 && mouseY >= 5 && mouseY <= 25)
  {
    if(mousePressed)
    {
      circleTrue = true;
      pointTrue = false;
      eraserTrue = false;
    }
  }
}

void isPoint()
{
  if(mouseX <= 105 && mouseX >= 55 && mouseY >= 5 && mouseY <= 50)
  {
    if(mousePressed)
    {
      pointTrue = true;
      circleTrue = false;
      eraserTrue = false;
    }
  }
}

void isEraser()
{
  if(mouseX <= 155 && mouseX >= 105 && mouseY >= 5 && mouseY <= 50)
  {
    if(mousePressed)
    {
      eraserTrue = true;
      circleTrue = false;
      pointTrue = false;
    }
  }
}

void whatDrawType()
{
  if(circleTrue)
  {
    if(mousePressed)
    {
    ellipse(mouseX, mouseY, 10, 10);
    }
  }
  
  if(pointTrue)
  {
    if(mousePressed)
    {
    point(mouseX, mouseY);
    }
  }
  
  if(eraserTrue)
  {
    if(mousePressed)
    {
    noStroke();
    rect(mouseX, mouseY, 10, 10);
    stroke(1);
    }
  }
}
