int STAGE_WIDTH = 800;
int STAGE_HEIGHT = 600;
int CELL_SIZE = 10;

Game game;

void setup() {
  frameRate(10);
  size(STAGE_WIDTH, STAGE_HEIGHT);
  background(255);
  game = new Game();
}

void draw() {
  background(255);
  game.tick();
}
