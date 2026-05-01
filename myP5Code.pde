 //🟢setup Function - will run once
function setup() {
    createCanvas(600, 400);
    background(255, 255, 255);

    drawFish(200, 200, color(200, 0, 200));
    drawFish(300, 200, color(0, 200, 200));
}

//🟢draw Function - will run on repeat
function draw() {

    // sky
    background(180, 220, 255);

    // ocean
    drawOcean();

    // fish already in scene
    drawFish(200, 200, color(200, 0, 200));
    drawFish(300, 220, color(0, 200, 200));

    // seaweed
    drawSeaweed(100, 350, 60);
    drawSeaweed(300, 350, 80);
    drawSeaweed(500, 350, 70);
}

//🟢mouseClicked Function - will run when mouse is clicked
function mouseClicked() {
    // add a new random fish where you click
    drawFish(mouseX, mouseY, color(random(255), random(255), random(255)));
}

//🟡drawFish Function - will run when called
function drawFish(fishX, fishY, fishColor) {
    textSize(80);
    fill(fishColor);
    text("𓆝", fishX, fishY);
}

//🟡drawOcean Function - custom function #2
function drawOcean() {
    fill(0, 100, 200);
    rect(0, 250, 600, 150);
}

//🟡drawSeaweed Function - custom function #3
function drawSeaweed(x, y, h) {
    stroke(0, 150, 0);
    strokeWeight(3);
    line(x, y, x, y - h);
}