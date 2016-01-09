class Cell {
  int row, col, centerX, centerY;
  String type;
  
  Cell(int row, int col, String type) {
    this.row = row;
    this.col = col;
    this.centerX = (col * CELL_SIZE) + CELL_SIZE / 2;
    this.centerY = (row * CELL_SIZE) + CELL_SIZE / 2;
    this.type = type;
  }
  
  void draw() {
    ellipseMode(CENTER);  // Set ellipseMode to CENTER
    int radius;
    
    if(type == "start") {
      fill(255, 0, 0);
      radius = 4;
    } else if (type == "end") {
      fill(0, 255, 0);
      radius = 4;
    } else {
      fill(0);
      radius = 1;
    }
    
    ellipse(centerX, centerY, radius, radius);
  }
  
  Cell up() {
    return game.grid[row - 1][col];
  }
  
  Cell down() {
    return game.grid[row + 1][col];
  }
  
  Cell left() {
    return game.grid[row][col - 1];
  }
  
  Cell right() {
    return game.grid[row][col + 1];
  }
}
