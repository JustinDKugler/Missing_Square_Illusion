class Grid {

  float rectWidth, rectHeight;
  color lineColor;

  // Defined by square size
  Grid(float sizeTemp, color colorTemp) {
    rectWidth = sizeTemp;
    rectHeight = sizeTemp;
    lineColor = colorTemp;
  }

  // Defined by number of lines
  Grid(int linesX, int linesY, color colorTemp) {
    rectWidth = width/linesX;
    rectHeight = height/linesY;
    lineColor = colorTemp;
  }

  void drawGrid() {
    stroke(lineColor);
    strokeWeight(2);
    for (int i = 0; i <= width; i += rectWidth) {
      line(i, 0, i, height);
    }
    for (int i = 0; i <= height; i += rectHeight) {
      line(0, i, width, i);
    }
  }

  // Convert a grid Coordinate x value into pixels
  float X2P(float x) {
    return x * rectWidth;
  }

  // Convert a grid Coordinate y value into pixels
  float Y2P(float y) {
    return y * rectHeight;
  }
}
