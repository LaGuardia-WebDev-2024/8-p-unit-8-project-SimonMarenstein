//🟢setup Function - will run once
function setup() {
    createCanvas(600, 400);
    background(255, 255, 255);

    drawFish(200, 200, color(200, 0, 200));
    drawFish(300, 200, color(0, 200, 200));
}

//🟢draw Function - will run on repeat
function draw() {
    // ocean background stays constant
    background(180, 220, 255);

    // simple "water line"
    fill(0, 100, 200);
    rect(0, 250, 600, 150);
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