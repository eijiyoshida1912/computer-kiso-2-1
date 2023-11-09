void setup() {
    size(500, 500);
    smooth();
    background(255);
    noLoop();
}

void draw() {
    
    int rWidth = 15;
    int rHeight = 8;
    
    for (float j = 1; j <= 4; j += 1) {
        for (float i = 0; i < 100; i += 1) {
            drawCell((rWidth + 2) * i + j * 4, rHeight * j * 1.2, rWidth, rHeight);
        }
    }
}

// 細胞ひとつの描画
void drawCell(float x, float y, float cellWidth, float cellHeight) {
    stroke(100, 100);
    strokeWeight(0.5);
    fill(100, 40);
    rect(x, y, cellWidth, cellHeight, 4);
    fill(100, 100);
    noStroke();
    ellipse(x + cellWidth / 2, y + cellHeight / 2, cellHeight / 2, cellHeight / 2);
}


