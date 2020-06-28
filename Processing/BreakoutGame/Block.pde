class Block{
 int x;
 int y;
 boolean ok;
 
 Block(int x, int y, boolean ok) {
   this.x = x;
   this.y = y;
   this.ok = ok;
 }
}

void createBlock(){
  for (int i = 0; i < 18; i++) {
    int blockX = (i % 6) * 100;
    int blockY = (i / 6) * 30;
    Block block = new Block(blockX, blockY, true);
    blocks.add(block);
  }
}

void showBlock(){
  for(Block b : blocks) {
    if (b.ok) {
      rect(b.x, b.y, 100, 20);
   }
  }
}
