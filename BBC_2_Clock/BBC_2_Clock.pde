BBCClock bbcClock;
color backgroundColour = color(20,20,100);

void setup()
{
  size(800,600);
  pixelDensity(2);
  bbcClock = new BBCClock(width, height);
}

void draw()
{   
  bbcClock.display();
}
