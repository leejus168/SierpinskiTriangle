private int pot = 400;
public void setup()
{
size(400,400);
}
public void draw()
{
background(100);
sierpinski(30,390,350);
}
public void mouseDragged()//optional
{
   if(mouseButton>1)
   {
    pot = mouseButton; 
   }
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=pot)
  {
   triangle(x,y,x+len,y,x+len/2,y-len); 
  }
  else
  {
   sierpinski(x,y,len/2);
   sierpinski(x+len/2,y,len/2);
   sierpinski(x+len/4,y-len/2,len/2);
  }
}
