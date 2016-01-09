class Player {
  Cell currentCell;
  
  Player(Cell startCell) {
    this.currentCell = startCell;
  }
  
  void update() {
    currentCell = nextCell();
    
    if(currentCell == game.endCell) {
      resetGame();
    }
    
    draw();
  }
  
  void draw() {
    int centerX = (currentCell.col * CELL_SIZE) + CELL_SIZE / 2;
    int centerY = (currentCell.row * CELL_SIZE) + CELL_SIZE / 2;
    
    ellipseMode(CENTER);
    fill(0, 0, 255);
    ellipse(centerX, centerY, 5, 5);
  }
  
  Cell nextCell() {
    return currentCell.right();
  }
}
