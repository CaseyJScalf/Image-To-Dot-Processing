// Code for putting dots on the Artwork "Vapor David"
// Casey Scalf, 2022

// Init

PImage art;

int xSpace = 10;
int ySpace = 10;

int gap = 0;

int bright = 0;

int brightCountOne = 0;
int brightCountTwo = 0;
int brightCountThree = 0;
int brightCountFour = 0;
int brightCountFive = 0;
int brightCountSix = 0;
int brightCountSeven = 0;
int brightCountEight = 0;
int brightCountNine = 0;

////////////////////////////////////////////////////////

void setup() {

  size(920, 840);

  art = loadImage("VaporFireOutA2.png");
}

////////////////////////////////////////////////////////

void draw() {

  noStroke();
  textSize(16);

  background(0);
  image(art, 0, 0, width/2, height);

  loadPixels();

  for (int y = 0; y < height; y = y + ySpace) {


    //println(y % 20);

    for (int x = 0; x < width/2; x = x + xSpace) {

      if (y % 20 == 10) {
        gap = 5;
      } else {
        gap = 0;
      }

      bright = int(brightness(pixels[x + y*920]));

      bright = int(map(bright, 0, 255, 0, 9));

      if (bright == 1) {
        brightCountOne = brightCountOne + 1;
        fill(bright*25);
      } else if (bright == 2) {
        brightCountTwo = brightCountTwo + 1;
        fill(bright*25);
      } else if (bright == 3) {
        brightCountThree = brightCountThree + 1;
        fill(bright*25);
      } else if (bright == 4) {
        brightCountFour = brightCountFour + 1;
        fill(bright*25);
      } else if (bright == 5) {
        brightCountFive = brightCountFive + 1;
        fill(bright*25);
      } else if (bright == 6) {
        brightCountSix = brightCountSix + 1;
        fill(bright*25);
      } else if (bright == 7) {
        brightCountSeven = brightCountSeven + 1;
        fill(bright*25);
      } else if (bright == 8) {
        brightCountEight = brightCountEight + 1;
        fill(bright*25);
      } else if (bright == 9) {
        brightCountNine = brightCountNine + 1;
        fill(bright*25);
      }

      ellipse((x + width/2) + gap, y, bright, bright);
    }
  }

  println("brightCountOne = " + brightCountOne);
  println("brightCountTwo = " + brightCountTwo);
  println("brightCountThree = " + brightCountThree);
  println("brightCountFour = " + brightCountFour);
  println("brightCountFive = " + brightCountFive);
  println("brightCountSix = " + brightCountSix);
  println("brightCountSeven = " + brightCountSeven);
  println("brightCountEight = " + brightCountEight);
  println("brightCountNine = " + brightCountNine);

  saveFrame();

  println("The End");
  noLoop();
}

////////////////////////////////////////////////////////
