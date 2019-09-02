// This class stores array coordinates of the vertices that make up a larger shape
class GridShape {
  
  FloatList verticesX = new FloatList();
  FloatList verticesY = new FloatList();
  color shapeColor;
  
  GridShape(color tempColor) {
    shapeColor = tempColor;
  }
  
  void addVertex(float x, float y) {
    verticesX.append(x);
    verticesY.append(y);
  }
  
  // Displays on a Grid object
  void displayAt(Grid displayOn, float x, float y) {
    fill(shapeColor);
    beginShape();
    for(int i = 0; i <= verticesX.size() - 1; i++) {
      vertex(displayOn.X2P(verticesX.get(i) + x), displayOn.Y2P(verticesY.get(i) + y));
    }
    endShape(CLOSE);
  }
  
}
