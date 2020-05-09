/*

  João Friaça (02/2020)

*/


int channel = 2; /* 1 = red | 2 = green | 3 = blue */
int threshold = 20; /* channel color threshold */
int dir = 1; /* 1 = vertical | 2 = horizontal */
String fileName;
String format;
PImage img;

void setup() {
  makeMap(args);
  fileName = arguments.get("filename");
  format = arguments.get("format");
  img = loadImage("assets/" + fileName + format);
  
  dir = Integer.parseInt(arguments.get("dir"));
  threshold = Integer.parseInt(arguments.get("amount"));
  channel = Integer.parseInt(arguments.get("channel"));
  
  size(1, 1);
  surface.setSize(img.width, img.height);
  
  image(img, 0, 0, width, height);
}

void draw() {
  img.loadPixels();

  if (dir == 1) {
    driftV();
  } else if (dir == 2) {
    driftH();
  }
  
  img.updatePixels();
  
  image(img, 0, 0, width, height);
  img.save("output/" + fileName + format);
  exit();
}

void driftV() {
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height - 1; y++) {
      color curr = img.pixels[y * img.width + x];
      color next = img.pixels[y * img.width + x + 1];

      if (getChannelValue(curr, channel) > threshold && getChannelValue(next, channel) > threshold - 2) {
        img.pixels[y * img.width + x + 1] = img.pixels[y * img.width + x];
      }
    }
  }
}

void driftH() {
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height - 1; y++) {
      color curr = img.pixels[y * img.width + x];
      color next = img.pixels[(y + 1) * img.width + x];

      if (getChannelValue(curr, channel) > threshold && getChannelValue(next, channel) > threshold - 2) {
        img.pixels[(y + 1) * img.width + x] = img.pixels[y * img.width + x];
      }
    }
  }
}

float getChannelValue(color pixel, int channel) {
  switch (channel) {
    case 1: 
      return red(pixel);
    case 2:
      return green(pixel);
    case 3:
      return blue(pixel);
    default:
      return red(pixel);
  }
}
