// Missing Square Illusion in Processing by Justin Kugler 
// Interation 1: 9/2/2019

Grid grid1 = new Grid(30, color(255));
GridShape notchDown = new GridShape(color(0, 0, 255));
GridShape notchUp = new GridShape(color(0, 255, 255));

void setup() {
  background(0);
  fullScreen(P2D);
  frameRate(60);
  
  grid1 = new Grid(100, color(255));
  notchDown.addVertex(0, 0);
  notchDown.addVertex(3, 0);
  notchDown.addVertex(3, 1);
  notchDown.addVertex(5, 1);
  notchDown.addVertex(5, 2);
  notchDown.addVertex(0, 2);
  
  notchUp.addVertex(0, 0);
  notchUp.addVertex(5, 0);
  notchUp.addVertex(5, 2);
  notchUp.addVertex(3, 2);
  notchUp.addVertex(3, 1);
  notchUp.addVertex(0, 1);
}

void draw() {
  background(0);
  
  noStroke();
  
  fill(0, 255, 0);
  triangle(grid1.X2P(0), grid1.Y2P(0), grid1.X2P(0), grid1.Y2P(2), grid1.X2P(5), grid1.Y2P(2));
  triangle(grid1.X2P(8), grid1.Y2P(8), grid1.X2P(8), grid1.Y2P(10), grid1.X2P(13), grid1.Y2P(10));
  
  fill(255, 0, 0);
  triangle(grid1.X2P(5), grid1.Y2P(2), grid1.X2P(5), grid1.Y2P(5), grid1.X2P(13), grid1.Y2P(5));
  triangle(grid1.X2P(0), grid1.Y2P(5), grid1.X2P(0), grid1.Y2P(8), grid1.X2P(8), grid1.Y2P(8));
  
  notchUp.displayAt(grid1, 0, 2);
  notchUp.displayAt(grid1, 3, 8);
  
  notchDown.displayAt(grid1, 0, 3);
  notchDown.displayAt(grid1, 0, 8);
  
  grid1.drawGrid();
}
