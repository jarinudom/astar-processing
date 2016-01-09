class Game {
  Cell grid[][];
  
  int rows, cols;
  
  Game() {
    cols = STAGE_WIDTH / 10;
    rows = STAGE_HEIGHT / 10;
    
    grid = new Cell[rows][cols];
    
    for(int i = 0; i < rows; i++) {
      for(int j = 0; j < cols; j++) {
        grid[i][j] = new Cell(i, j, "");
      }
    }
    
    grid[rows / 2][0].type = "start";
    grid[rows / 2][cols - 1].type = "end";
  }
  
  void tick() {
    for(int i = 0; i < rows; i++) {
      for(int j = 0; j < cols; j++) {
        grid[i][j].draw();
      }
    }
  }
}
