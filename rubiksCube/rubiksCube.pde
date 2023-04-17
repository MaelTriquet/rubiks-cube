enum Color {
  B, R, W, G, O, Y
};

Cube cube = new Cube();
boolean rotating = true;
boolean allowed = true;
void setup() {
  size(800, 800, P3D);
  strokeWeight(8);
  stroke(0);
}

void draw() {
  background(0);
  translate(width/2, height/2, -300);
  if (cube.turningX != 0) {
    rotateY(-.5 + cube.turningY);
    rotateX(-.5 + cube.turningX);
  } else {
    rotateX(-.5 + cube.turningX);
    rotateY(-.5 + cube.turningY);
  }
  if (cube.faceUp) {
    rotateZ(PI);
  }
  cube.show();
}

void keyPressed() {
  if (allowed) {
    if (key == 'u') {
      cube.U();
      if (mousePressed) {
        cube.U();
        cube.U();
      }
      allowed = false;
    }

    if (key == 'r') {
      cube.L();
      if (mousePressed) {
        cube.L();
        cube.L();
      }
      allowed = false;
    }

    if (key == 'l') {
      cube.R();
      if (mousePressed) {
        cube.R();
        cube.R();
      }
      allowed = false;
    }

    if (key == 'f') {
      cube.B();
      if (mousePressed) {
        cube.B();
        cube.B();
      }
      allowed = false;
    }

    if (key == 'b') {
      cube.F();
      if (mousePressed) {
        cube.F();
        cube.F();
      }
      allowed = false;
    }

    if (key == 'd') {
      cube.D();
      if (mousePressed) {
        cube.D();
        cube.D();
      }
      allowed = false;
    }

    if (keyCode == LEFT) {
      cube.y(false);
      allowed = false;
    }

    if (keyCode == RIGHT) {
      cube.y(true);
      allowed = false;
    }

    if (keyCode == UP) {
      cube.x(true);
      allowed = false;
    }

    if (keyCode == DOWN) {
      cube.x(false);
      allowed = false;
    }
  }
}

void mousePressed() {
  rotating = !rotating;
}
