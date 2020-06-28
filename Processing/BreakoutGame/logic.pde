boolean isBlockedByBar(){
  boolean flag = false;
  if ((x > barX && x < (barX + 60)) && (y > barY && y < (barY + 20))) {
    flag =true;
  }
  return flag;
}

void blockedByBlock(){
  for (Block b : blocks) {
    if (x > b.x && x < (b.x + 100) && y > b.y && y < (b.y + 20) && b.ok) {
      b.ok = false;
      speedY *= -1;
      return;
    }
  }
}

void keyPressed(){
  if(keyCode == RIGHT) barX += speedBar;
  if(keyCode == LEFT) barX -= speedBar;
}

void gameOver(){
  if (y > end) {
    background(255,10,10);
    textSize(30);
    text("Game Over", 70, 150);
    noLoop();
  }
  int cnt = 0;
  for (Block b : blocks) {
    if (!b.ok) cnt++;
  }
  if (cnt == blocks.size()) {
    background(100,100,255);
    textSize(30);
    text("Game Clear!", 70, 150);
    noLoop();
  }
}
