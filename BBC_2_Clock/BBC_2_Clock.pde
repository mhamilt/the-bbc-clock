BBCClock bbcClock;

void setup()
{
  size(650,400);
  pixelDensity(2);
  bbcClock = new BBCClock(width, height);
}

void draw()
{   
  bbcClock.display();
}
