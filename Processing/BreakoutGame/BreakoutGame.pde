/*
* 以下のほとんどが@sawamur氏の記事を参考にさせていただいた
* https://qiita.com/sawamur@github/items/204b93638a4f117c9cc2
*
*/

import java.util.*;

float x = 100;
float y = 100;
float barX = 300;
float barY = 550;
float speedX = 2;
float speedY = 2;
int speedBar = 10;
int end = 600;

List<Block> blocks = new ArrayList<Block>();

void setup(){
  size(600,600); 
  createBlock();
}

void draw(){
  background(0);
  if(x == 0 || x == end || y == 0 || isBlockedByBar()) background(100, 255, 0);
  fill(255);
  x += speedX;
  y += speedY;
  if (x < 0 || end < x) speedX *= -1;
  if (y < 0 || isBlockedByBar()) speedY *= -1;
  ellipse(x,y,30,30);
  rect(barX,barY, 60,20);
  blockedByBlock();
  showBlock();
  gameOver();
}
