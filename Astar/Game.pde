class Game {
  Cell grid[][];
  Cell startCell, endCell;
  int rows, cols;
  Player player;
  
  Game() {
    cols = STAGE_WIDTH / CELL_SIZE;
    rows = STAGE_HEIGHT / CELL_SIZE;
    
    grid = new Cell[rows][cols];
    
    for(int i = 0; i < rows; i++) {
      for(int j = 0; j < cols; j++) {
        grid[i][j] = new Cell(i, j, "");
      }
    }
    
    startCell = grid[rows / 2][0];
    startCell.type = "start";
    endCell = grid[rows / 2][cols - 1];
    endCell.type = "end";
    
    player = new Player(startCell);
  }
  
  void tick() {
    for(int i = 0; i < rows; i++) {
      for(int j = 0; j < cols; j++) {
        grid[i][j].draw();
      }
    }
    
    player.update();
  }
}
