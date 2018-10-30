class BBCClock
{
  //==============================================================================
  // Constructor
  BBCClock(int screenWidth, int screenHeight)
  {
    //----------------------------------------------------------------------------
    clockDiameter = screenHeight/2;
    clockRadius = clockDiameter/2;
    startHourWidth = clockDiameter/33;
    endHourWidth = clockDiameter/16;
    hourHeight = endHourWidth * 4;
    hourWidthDifference = abs(endHourWidth - startHourWidth);
    hourWidthInc = (float)hourWidthDifference/12.;
    tickCenterOuterDiameter = 2*clockDiameter/7;
    tickCenterInnerDiameter = 3*tickCenterOuterDiameter/4;
    //----------------------------------------------------------------------------  
    hourHandLength = clockRadius + hourHeight/5;
    minuteHandLength = clockRadius + (int)(hourHeight * 1.1);
    secondHandLength = clockRadius + (int)(hourHeight * 1.1);
    minuteHandWidth = endHourWidth - hourWidthDifference/2;
    secondHandWidth = secondHandLength/70; 
    hourHandWidth = minuteHandWidth;
    staticGraphics = createGraphics(screenWidth, screenHeight);
    //----------------------------------------------------------------------------
    drawClockFaceToPGraphics();
  }

  //==============================================================================

  void display()
  {
    //----------------------------------------------------------------------------
    pushMatrix();
    translate(width/2, height/2);
    //----------------------------------------------------------------------------
    // Static Section, to be drawn in buffer
    imageMode(CENTER);
    image(staticGraphics, 0, 0);
    //liveDrawClockFace();
    //----------------------------------------------------------------------------
    // Dynamic section, updated every frame
    int s = second();  
    int m = minute();  
    int h = hour() % 12; 

    fill(fillColour);
    stroke(fillColour);
    pushMatrix();
    rotate(s*PI/30);   
    rect(-secondHandWidth/2, 0, secondHandWidth, -secondHandLength);
    popMatrix();

    pushMatrix();
    rotate(m*PI/30 + s*(PI/1800));    
    rect(-minuteHandWidth/2, 0, minuteHandWidth, -minuteHandLength);
    popMatrix();

    pushMatrix();
    rotate(h*PI/6 + m*(PI/360));
    rect(-hourHandWidth/2, 0, hourHandWidth, -hourHandLength);
    popMatrix();

    ellipse(0, 0, tickCenterOuterDiameter, tickCenterOuterDiameter);
    fill(backgroundColour);
    ellipse(0, 0, tickCenterInnerDiameter, tickCenterInnerDiameter);
    //----------------------------------------------------------------------------
    popMatrix(); 
  }

  //==============================================================================

  void drawClockFaceToPGraphics()
  {
    staticGraphics.beginDraw();
    staticGraphics.background(backgroundColour);
    staticGraphics.pushMatrix();
    staticGraphics.translate(width/2, height/2);
    staticGraphics.stroke(fillColour);
    staticGraphics.fill(fillColour);
    for (int i = 0; i < 12; ++ i)
    {
      int hourWidth = startHourWidth + (int)((float)i *(hourWidthInc));
      float hourBarSpacing = hourWidth + endHourWidth/3;
      float tickxpos = -hourWidth/2 - hourBarSpacing/2;
      float tickypos = -hourHeight/2;
      float tickAngle = -((float)i * PI/6) + 5*PI/6;
      staticGraphics.pushMatrix();
      float xpos = (clockRadius + hourHeight/2)  * sin(tickAngle);
      float ypos = (clockRadius + hourHeight/2) * cos(tickAngle);
      staticGraphics.translate(xpos, ypos);
      staticGraphics.rotate(-tickAngle); 
      staticGraphics.rect(tickxpos, tickypos, hourWidth, hourHeight);
      staticGraphics.rect(hourBarSpacing + tickxpos, tickypos, hourWidth, hourHeight);
      staticGraphics.popMatrix();
    }
    staticGraphics.endDraw();
  }

  //==============================================================================
   //Draw the clock face on every draw loop
  void liveDrawClockFace()
  {
    background(backgroundColour);
    stroke(fillColour);
    fill(fillColour);
    for (int i = 0; i < 12; ++ i)
    {
      int hourWidth = startHourWidth + (int)((float)i *(hourWidthInc));
      float hourBarSpacing = hourWidth + endHourWidth/3;
      float tickxpos = -hourWidth/2 - hourBarSpacing/2;
      float tickypos = -hourHeight/2;
      float tickAngle = -((float)i * PI/6) + 5*PI/6;
      pushMatrix();
      float xpos = (clockRadius + hourHeight/2)  * sin(tickAngle);
      float ypos = (clockRadius + hourHeight/2) * cos(tickAngle);
      translate(xpos, ypos);
      rotate(-tickAngle); 
      rect(tickxpos, tickypos, hourWidth, hourHeight);
      rect(hourBarSpacing + tickxpos, tickypos, hourWidth, hourHeight);
      popMatrix();
    }
  }
  //==============================================================================
  // Geometry
  int clockDiameter;
  int clockRadius;
  int startHourWidth;
  int endHourWidth;
  int hourHeight;
  int hourWidthDifference;
  float hourWidthInc;
  int tickCenterOuterDiameter;
  int tickCenterInnerDiameter;

  int hourHandLength;
  int minuteHandLength;
  int secondHandLength;

  int hourHandWidth;
  int minuteHandWidth;
  int secondHandWidth;
  //==============================================================================
  // Appearance
  color fillColour = color(100, 170, 250, 250);
  color backgroundColour = color(24, 0, 170);
  //==============================================================================
  PGraphics staticGraphics;
  //==============================================================================
}
