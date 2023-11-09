size(500, 500);
smooth();
background(255);


strokeWeight(0.5);


/*
for (float i = 0; i < 100; i += 0.1) {
stroke(0,noise(random(10)) * 180,noise(random(10)) * 180, 255);
float noiseWidth = noise(random(10)) * 100 * i;
float noiseHeight = noise(random(10)) * 100 * i;
float rad = radians(i);
ellipse(width / 2 + i, height / 2 + i, noiseWidth,noiseHeight);
}
*/

for (float i = 0; i < 10; i += 1) {
    float xnoise = noise(i * 5);
    rect(10 * i + 2 * i,10,xnoise,10,2);
}


