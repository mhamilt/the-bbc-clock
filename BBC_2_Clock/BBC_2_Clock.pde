BBCClock bbcClock;
PFont font;

void settings()
{
  //size(650, 400); 
  fullScreen(1);
  pixelDensity(2);
  
}
void setup()
{
  frameRate(1.);
  bbcClock = new BBCClock(width, height); 
  font = createFont("Helvetica-BoldOblique", width/12);
  textFont(font);
}

void draw()
{ 
  background(bbcClock.backgroundColour);
  translate(0, -40);  
  bbcClock.display();
  //------------------------------------------------------------
  // drawing letters
  //int letterxpos = 240;
  int letterxpos = width/3 + width /30;
  int letterSpacing = width/11;
  int letterypos = height*37/40;
  stroke(255);
  strokeWeight(5.0);
  fill(255);
  strokeJoin(ROUND);
  beginShape(QUAD);
  vertex(letterxpos, letterypos + height/10);
  vertex(letterxpos+height/10, letterypos + height/10);
  vertex(letterxpos+height/10 +height/50, letterypos);
  vertex(letterxpos+height/50, letterypos);  
  endShape();
  strokeWeight(1);

  fill(bbcClock.backgroundColour);
  textAlign(CENTER);
  text("B", letterxpos+ width/36, letterypos +height/10);
  
  letterxpos += letterSpacing;
  strokeWeight(5.0);
  fill(255);
  beginShape(QUAD);
  vertex(letterxpos, letterypos + height/10);
  vertex(letterxpos+height/10, letterypos + height/10);
  vertex(letterxpos+height/10 +height/50, letterypos);
  vertex(letterxpos+height/50, letterypos);    
  endShape();
  strokeWeight(1);

  fill(bbcClock.backgroundColour);
  textAlign(CENTER);
  text("B", letterxpos+width/36, letterypos +height/10);
  
  letterxpos += letterSpacing;
  fill(255);
  strokeWeight(5.0);
  beginShape(QUAD);
  vertex(letterxpos, letterypos + height/10);
  vertex(letterxpos+height/10, letterypos + height/10);
  vertex(letterxpos+height/10 +height/50, letterypos);
  vertex(letterxpos+height/50, letterypos);  
  endShape();
  strokeWeight(1);

  fill(bbcClock.backgroundColour);
  textAlign(CENTER);
  text("C", letterxpos+width/36, letterypos +height/10);
  //------------------------------------------------------------
}
