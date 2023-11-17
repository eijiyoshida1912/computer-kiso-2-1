void setup() {
    size(500, 500);
    smooth();
    background(0);
    noLoop();
}

void draw() {
    

    for (float j = 1; j < 10; j += 1) {
        float linePosition = noise(j) * width;
        float colorR = random(150, 255);
        float colorG = random(150, 255);
        float colorB = random(150, 255);
        float randomSize = random(50);
        float sinHeight = randomSize + 5;
        float rWidth = sinHeight * 0.2; 
        float lineOpacity = randomSize * 5;
float rad = radians(45);
 rotate(rad);
    for (float i = 0; i < 1500; i += 1) {
        float cellYNoise = noise(i) * 20;
        float opacityNoise = noise(i) * 200 + 50;
        drawCell(
            (rWidth + 2) * i * 0.1,
           // linePosition * j + sin(i) * sinHeight,
            linePosition + sin(i) * sinHeight,
            rWidth,
            colorR,
            colorG,
            colorB,
            opacityNoise,
            lineOpacity
        );
    }
    }
}

/*
細胞ひとつの描画
x: 細胞のx位置
y: 細胞の中心y位置
cellWidth: 細胞の幅
*/

void drawCell(float x, float y, float cellWidth, float r, float g, float b, float opacity, float allOpacity) {
    noStroke();
    fill(r, g, b, opacity - allOpacity);
    ellipse(x + cellWidth / 2, y, cellWidth, cellWidth);
    fill(r, g, b, opacity + 100 - allOpacity);
    ellipse(x + cellWidth / 2, y, 2, 2);
}


