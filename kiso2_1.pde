void setup() {
    size(500, 500);
    smooth();
    background(255);
    noLoop();
}

void draw() {
    
    int rWidth = 10;
    int rHeight = 10;
    //int cellY = 50;
    
    /*
    for (float j = 1; j <= 4; j += 1) {
    for (float i = 0; i < 100; i += 1) {
    drawCell((rWidth + 2) * i + j * 4, rHeight * j * 1.2, rWidth, rHeight);
}
}
    */
    
    float nextHeightNoise = 0;
    float nextCellYNoise = 0;
    for (float i = 0; i < 100; i += 1) {
        float heightNoise = noise(i) * 20;
        float cellYNoise = noise(i) * 20;
       // float cellYNoise = 20;
        drawCell(
            (rWidth + 2) * i,
            cellYNoise + 50,
            rWidth,
            rHeight + nextHeightNoise + nextCellYNoise/2,
            rHeight + heightNoise + nextCellYNoise/2
        );

        nextHeightNoise = heightNoise;
        nextCellYNoise = cellYNoise;
    }
}

/*
細胞ひとつの描画
x: 細胞のx位置
y: 細胞の中心y位置
cellWidth: 細胞の幅
startHeight: 細胞の初めの高さ
endHeight: 細胞の終わりの高さ
*/

void drawCell(float x, float y, float cellWidth, float startHeight, float endHeight) {
    fill(100, 100);
    noStroke();
    ellipse(x + cellWidth / 2, y, 5, 5);
    fill(100, 40);
    beginShape();
    vertex(x, y - startHeight / 2);
    vertex(x + cellWidth, y - endHeight / 2);
    vertex(x + cellWidth, y + endHeight / 2);
    vertex(x, y + startHeight / 2);
    endShape();
}


