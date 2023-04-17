class Cube {

  float size = 200;
  float rotatingU = 0;
  float rotatingF = 0;
  float rotatingL = 0;
  float rotatingB = 0;
  float rotatingR = 0;
  float rotatingD = 0;
  float turningX = 0;
  float turningY = 0;
  boolean faceUp = true;


  Color[][] U = {{Color.W, Color.W, Color.W},
    {Color.W, Color.W, Color.W},
    {Color.W, Color.W, Color.W}};

  Color[][] F = {{Color.G, Color.G, Color.G},
    {Color.G, Color.G, Color.G},
    {Color.G, Color.G, Color.G}};

  Color[][] L = {{Color.O, Color.O, Color.O},
    {Color.O, Color.O, Color.O},
    {Color.O, Color.O, Color.O}};

  Color[][] B = {{Color.B, Color.B, Color.B},
    {Color.B, Color.B, Color.B},
    {Color.B, Color.B, Color.B}};

  Color[][] R = {{Color.R, Color.R, Color.R},
    {Color.R, Color.R, Color.R},
    {Color.R, Color.R, Color.R}};

  Color[][] D = {{Color.Y, Color.Y, Color.Y},
    {Color.Y, Color.Y, Color.Y},
    {Color.Y, Color.Y, Color.Y}};


  void R() {

    rotatingR += PI/2 * .1;
    if (rotatingR >= PI/2) {
      allowed = true;
      rotatingR = 0;
      //corner
      Color temp = R[0][0];
      R[0][0] = R[2][0];
      R[2][0] = R[2][2];
      R[2][2] = R[0][2];
      R[0][2] = temp;

      //edge
      temp = R[1][0];
      R[1][0] = R[2][1];
      R[2][1] = R[1][2];
      R[1][2] = R[0][1];
      R[0][1] = temp;

      //crown corner 1
      temp = U[2][2];
      U[2][2] = F[2][2];
      F[2][2] = D[2][0];
      D[2][0] = B[0][0];
      B[0][0] = temp;

      //crown corner 2
      temp = U[0][2];
      U[0][2] = F[0][2];
      F[0][2] = D[0][0];
      D[0][0] = B[2][0];
      B[2][0] = temp;

      //crown edge
      temp = U[1][2];
      U[1][2] = F[1][2];
      F[1][2] = D[1][0];
      D[1][0] = B[1][0];
      B[1][0] = temp;
    }
  }

  void L() {

    rotatingL += PI/2 * .1;
    if (rotatingL >= PI/2) {
      allowed = true;
      rotatingL = 0;
      //corner
      Color temp = L[0][0];
      L[0][0] = L[2][0];
      L[2][0] = L[2][2];
      L[2][2] = L[0][2];
      L[0][2] = temp;

      //edge
      temp = L[1][0];
      L[1][0] = L[2][1];
      L[2][1] = L[1][2];
      L[1][2] = L[0][1];
      L[0][1] = temp;

      //crown corner 1
      temp = F[0][0];
      F[0][0] = U[0][0];
      U[0][0] = B[2][2];
      B[2][2] = D[0][2];
      D[0][2] = temp;

      //crown corner 2
      temp = F[2][0];
      F[2][0] = U[2][0];
      U[2][0] = B[0][2];
      B[0][2] = D[2][2];
      D[2][2] = temp;

      //crown edge
      temp = D[1][2];
      D[1][2] = F[1][0];
      F[1][0] = U[1][0];
      U[1][0] = B[1][2];
      B[1][2] = temp;
    }
  }

  void U() {
    rotatingU += PI/2 * .1;
    if (rotatingU >= PI/2) {
      allowed = true;
      rotatingU = 0;
      //corner
      Color temp = U[0][0];
      U[0][0] = U[2][0];
      U[2][0] = U[2][2];
      U[2][2] = U[0][2];
      U[0][2] = temp;

      //edge
      temp = U[1][0];
      U[1][0] = U[2][1];
      U[2][1] = U[1][2];
      U[1][2] = U[0][1];
      U[0][1] = temp;

      //crown corner 1
      temp = F[0][2];
      F[0][2] = R[0][2];
      R[0][2] = B[0][2];
      B[0][2] = L[0][2];
      L[0][2] = temp;

      //crown corner 2
      temp = F[0][0];
      F[0][0] = R[0][0];
      R[0][0] = B[0][0];
      B[0][0] = L[0][0];
      L[0][0] = temp;

      //crown edge
      temp = F[0][1];
      F[0][1] = R[0][1];
      R[0][1] = B[0][1];
      B[0][1] = L[0][1];
      L[0][1] = temp;
    }
  }

  void D() {
    rotatingD += PI/2 * .1;
    if (rotatingD >= PI/2) {
      allowed = true;
      rotatingD = 0;
      //corner
      Color temp = D[0][0];
      D[0][0] = D[0][2];
      D[0][2] = D[2][2];
      D[2][2] = D[2][0];
      D[2][0] = temp;

      //edge
      temp = D[0][1];
      D[0][1] = D[1][2];
      D[1][2] = D[2][1];
      D[2][1] = D[1][0];
      D[1][0] = temp;

      //crown corner 1
      temp = F[2][0];
      F[2][0] = L[2][0];
      L[2][0] = B[2][0];
      B[2][0] = R[2][0];
      R[2][0] = temp;

      //crown corner 2
      temp = F[2][2];
      F[2][2] = L[2][2];
      L[2][2] = B[2][2];
      B[2][2] = R[2][2];
      R[2][2] = temp;

      //crown edge
      temp = F[2][1];
      F[2][1] = L[2][1];
      L[2][1] = B[2][1];
      B[2][1] = R[2][1];
      R[2][1] = temp;
    }
  }

  void B() {
    rotatingB += PI/2 * .1;
    if (rotatingB >= PI/2) {
      allowed = true;
      rotatingB = 0;
      //corner
      Color temp = B[0][0];
      B[0][0] = B[2][0];
      B[2][0] = B[2][2];
      B[2][2] = B[0][2];
      B[0][2] = temp;

      //edge
      temp = B[0][1];
      B[0][1] = B[1][0];
      B[1][0] = B[2][1];
      B[2][1] = B[1][2];
      B[1][2] = temp;

      //crown corner 1
      temp = U[0][0];
      U[0][0] = R[0][2];
      R[0][2] = D[2][0];
      D[2][0] = L[2][0];
      L[2][0] = temp;

      //crown corner 2
      temp = U[0][2];
      U[0][2] = R[2][2];
      R[2][2] = D[2][2];
      D[2][2] = L[0][0];
      L[0][0] = temp;

      //crown edge
      temp = U[0][1];
      U[0][1] = R[1][2];
      R[1][2] = D[2][1];
      D[2][1] = L[1][0];
      L[1][0] = temp;
    }
  }

  void F() {
    rotatingF += PI/2 * .1;
    if (rotatingF >= PI/2) {
      allowed = true;
      rotatingF = 0;
      //corner
      Color temp = F[0][0];
      F[0][0] = F[2][0];
      F[2][0] = F[2][2];
      F[2][2] = F[0][2];
      F[0][2] = temp;

      //edge
      temp = F[0][1];
      F[0][1] = F[1][0];
      F[1][0] = F[2][1];
      F[2][1] = F[1][2];
      F[1][2] = temp;

      //crown corner 1
      temp = U[2][0];
      U[2][0] = L[2][2];
      L[2][2] = D[0][0];
      D[0][0] = R[0][0];
      R[0][0] = temp;

      //crown corner 2
      temp = U[2][2];
      U[2][2] = L[0][2];
      L[0][2] = D[0][2];
      D[0][2] = R[2][0];
      R[2][0] = temp;

      //crown edge
      temp = U[2][1];
      U[2][1] = L[1][2];
      L[1][2] = D[0][1];
      D[0][1] = R[1][0];
      R[1][0] = temp;
    }
  }

  void y(boolean prime) {
    if (!prime) {//left
      turningY -= PI/2 * .1;
      if (turningY <= -PI/2) {
        allowed = true;
        turningY = 0;
        Color[][] temp = R;
        R = B;
        B = L;
        L = F;
        F = temp;
        
        Color temp1 = U[0][0];
        U[0][0] = U[2][0];
        U[2][0] = U[2][2];
        U[2][2] = U[0][2];
        U[0][2] = temp1;
        
        temp1 = U[1][0];
        U[1][0] = U[2][1];
        U[2][1] = U[1][2];
        U[1][2] = U[0][1];
        U[0][1] = temp1;
        
        temp1 = D[0][0];
        D[0][0] = D[2][0];
        D[2][0] = D[2][2];
        D[2][2] = D[0][2];
        D[0][2] = temp1;
        
        temp1 = D[1][0];
        D[1][0] = D[2][1];
        D[2][1] = D[1][2];
        D[1][2] = D[0][1];
        D[0][1] = temp1;
      }
    } else {//right
      turningY += PI/2 * .1;
      if (turningY >= PI/2) {
        allowed = true;
        turningY = 0;
        Color[][] temp = R;
        R = F;
        F = L;
        L = B;
        B = temp;
        
        Color temp1 = U[0][0];
        U[0][0] = U[0][2];
        U[0][2] = U[2][2];
        U[2][2] = U[2][0];
        U[2][0] = temp1;
        
        temp1 = U[1][0];
        U[1][0] = U[0][1];
        U[0][1] = U[1][2];
        U[1][2] = U[2][1];
        U[2][1] = temp1;
        
        temp1 = D[0][0];
        D[0][0] = D[0][2];
        D[0][2] = D[2][2];
        D[2][2] = D[2][0];
        D[2][0] = temp1;
        
        temp1 = D[1][0];
        D[1][0] = D[0][1];
        D[0][1] = D[1][2];
        D[1][2] = D[2][1];
        D[2][1] = temp1;
      }
    }
  }

  void x(boolean prime) {
    faceUp = !faceUp;
  }

  void show() {
    showU();
    showF();
    showL();
    showB();
    showR();
    showD();
    if (rotatingR != 0) {
      R();
    }
    if (rotatingU != 0) {
      U();
    }
    if (rotatingF != 0) {
      F();
    }
    if (rotatingL != 0) {
      L();
    }
    if (rotatingB != 0) {
      B();
    }
    if (rotatingD != 0) {
      D();
    }
    if (turningX != 0) {
      x(turningX > 0);
    }
    if (turningY != 0) {
      y(turningY > 0);
    }
  }

  color getCol(Color col) {
    switch(col) {
    case B :
      return color(0, 0, 255);
    case R :
      return color(255, 0, 0);
    case G :
      return color(0, 255, 0);
    case Y :
      return color(255, 255, 0);
    case O :
      return color(255, 100, 0);
    case W :
      return color(255, 255, 255);
    }
    return 0;
  }

  void showU() {

    rotateY(rotatingU);
    rotateX(-rotatingL);
    rotateZ(rotatingB);
    //UP
    fill(getCol(U[0][0]));
    beginShape();
    vertex(-size, size, size);
    vertex(-size/3, size, size);
    vertex(-size/3, size, size/3);
    vertex(-size, size, size/3);
    endShape();

    rotateZ(-rotatingB);

    fill(getCol(U[1][0]));
    beginShape();
    vertex(-size, size, size/3);
    vertex(-size/3, size, size/3);
    vertex(-size/3, size, -size/3);
    vertex(-size, size, -size/3);
    endShape();

    rotateZ(-rotatingF);

    fill(getCol(U[2][0]));
    beginShape();
    vertex(-size, size, -size/3);
    vertex(-size/3, size, -size/3);
    vertex(-size/3, size, -size);
    vertex(-size, size, -size);
    endShape();

    rotateZ(rotatingF);

    rotateX(rotatingL);

    rotateZ(rotatingB);

    fill(getCol(U[0][1]));
    beginShape();
    vertex(-size/3, size, size);
    vertex(size/3, size, size);
    vertex(size/3, size, size/3);
    vertex(-size/3, size, size/3);
    endShape();

    rotateZ(-rotatingB);

    fill(getCol(U[1][1]));
    beginShape();
    vertex(-size/3, size, size/3);
    vertex(size/3, size, size/3);
    vertex(size/3, size, -size/3);
    vertex(-size/3, size, -size/3);
    endShape();

    rotateZ(-rotatingF);

    fill(getCol(U[2][1]));
    beginShape();
    vertex(-size/3, size, -size/3);
    vertex(size/3, size, -size/3);
    vertex(size/3, size, -size);
    vertex(-size/3, size, -size);
    endShape();

    rotateZ(rotatingF);

    rotateX(rotatingR);

    rotateZ(rotatingB);

    fill(getCol(U[0][2]));
    beginShape();
    vertex(size/3, size, size);
    vertex(size, size, size);
    vertex(size, size, size/3);
    vertex(size/3, size, size/3);
    endShape();

    rotateZ(-rotatingB);

    fill(getCol(U[1][2]));
    beginShape();
    vertex(size/3, size, size/3);
    vertex(size, size, size/3);
    vertex(size, size, -size/3);
    vertex(size/3, size, -size/3);
    endShape();

    rotateZ(-rotatingF);

    fill(getCol(U[2][2]));
    beginShape();
    vertex(size/3, size, -size/3);
    vertex(size, size, -size/3);
    vertex(size, size, -size);
    vertex(size/3, size, -size);
    endShape();

    rotateZ(rotatingF);

    rotateX(-rotatingR);

    rotateY(-rotatingU);
  }

  void showF() {

    rotateZ(-rotatingF);

    //FRONT

    rotateY(rotatingU);
    rotateX(-rotatingL);

    fill(getCol(F[0][0]));
    beginShape();
    vertex(-size, size, -size);
    vertex(-size/3, size, -size);
    vertex(-size/3, size/3, -size);
    vertex(-size, size/3, -size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(F[1][0]));
    beginShape();
    vertex(-size, size/3, -size);
    vertex(-size/3, size/3, -size);
    vertex(-size/3, -size/3, -size);
    vertex(-size, -size/3, -size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(F[2][0]));
    beginShape();
    vertex(-size, -size/3, -size);
    vertex(-size/3, -size/3, -size);
    vertex(-size/3, -size, -size);
    vertex(-size, -size, -size);
    endShape();

    rotateY(rotatingD);

    rotateX(rotatingL);

    rotateY(rotatingU);

    fill(getCol(F[0][1]));
    beginShape();
    vertex(-size/3, size, -size);
    vertex(size/3, size, -size);
    vertex(size/3, size/3, -size);
    vertex(-size/3, size/3, -size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(F[1][1]));
    beginShape();
    vertex(-size/3, size/3, -size);
    vertex(size/3, size/3, -size);
    vertex(size/3, -size/3, -size);
    vertex(-size/3, -size/3, -size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(F[2][1]));
    beginShape();
    vertex(-size/3, -size/3, -size);
    vertex(size/3, -size/3, -size);
    vertex(size/3, -size, -size);
    vertex(-size/3, -size, -size);
    endShape();

    rotateY(rotatingD);
    rotateX(rotatingR);

    rotateY(rotatingU);

    fill(getCol(F[0][2]));
    beginShape();
    vertex(size/3, size, -size);
    vertex(size, size, -size);
    vertex(size, size/3, -size);
    vertex(size/3, size/3, -size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(F[1][2]));
    beginShape();
    vertex(size/3, size/3, -size);
    vertex(size, size/3, -size);
    vertex(size, -size/3, -size);
    vertex(size/3, -size/3, -size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(F[2][2]));
    beginShape();
    vertex(size/3, -size/3, -size);
    vertex(size, -size/3, -size);
    vertex(size, -size, -size);
    vertex(size/3, -size, -size);
    endShape();

    rotateY(rotatingD);
    rotateX(-rotatingR);

    rotateZ(rotatingF);
  }

  void showL() {

    rotateX(-rotatingL);

    //LEFT

    rotateY(rotatingU);
    rotateZ(rotatingB);

    fill(getCol(L[0][0]));
    beginShape();
    vertex(-size, size, size);
    vertex(-size, size, size/3);
    vertex(-size, size/3, size/3);
    vertex(-size, size/3, size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(L[1][0]));
    beginShape();
    vertex(-size, size/3, size);
    vertex(-size, size/3, size/3);
    vertex(-size, -size/3, size/3);
    vertex(-size, -size/3, size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(L[2][0]));
    beginShape();
    vertex(-size, -size/3, size);
    vertex(-size, -size/3, size/3);
    vertex(-size, -size, size/3);
    vertex(-size, -size, size);
    endShape();

    rotateZ(-rotatingB);

    rotateY(rotatingD);

    rotateY(rotatingU);

    fill(getCol(L[0][1]));
    beginShape();
    vertex(-size, size, size/3);
    vertex(-size, size, -size/3);
    vertex(-size, size/3, -size/3);
    vertex(-size, size/3, size/3);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(L[1][1]));
    beginShape();
    vertex(-size, size/3, size/3);
    vertex(-size, size/3, -size/3);
    vertex(-size, -size/3, -size/3);
    vertex(-size, -size/3, size/3);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(L[2][1]));
    beginShape();
    vertex(-size, -size/3, size/3);
    vertex(-size, -size/3, -size/3);
    vertex(-size, -size, -size/3);
    vertex(-size, -size, size/3);
    endShape();

    rotateY(rotatingD);

    rotateY(rotatingU);

    rotateZ(-rotatingF);

    fill(getCol(L[0][2]));
    beginShape();
    vertex(-size, size, -size/3);
    vertex(-size, size, -size);
    vertex(-size, size/3, -size);
    vertex(-size, size/3, -size/3);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(L[1][2]));
    beginShape();
    vertex(-size, size/3, -size/3);
    vertex(-size, size/3, -size);
    vertex(-size, -size/3, -size);
    vertex(-size, -size/3, -size/3);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(L[2][2]));
    beginShape();
    vertex(-size, -size/3, -size/3);
    vertex(-size, -size/3, -size);
    vertex(-size, -size, -size);
    vertex(-size, -size, -size/3);
    endShape();

    rotateZ(rotatingF);

    rotateY(rotatingD);

    rotateX(rotatingL);
  }

  void showB() {

    rotateZ(rotatingB);

    //BACK

    rotateX(rotatingR);

    rotateY(rotatingU);



    fill(getCol(B[0][0]));
    beginShape();
    vertex(size, size, size);
    vertex(size/3, size, size);
    vertex(size/3, size/3, size);
    vertex(size, size/3, size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(B[1][0]));
    beginShape();
    vertex(size, size/3, size);
    vertex(size/3, size/3, size);
    vertex(size/3, -size/3, size);
    vertex(size, -size/3, size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(B[2][0]));
    beginShape();
    vertex(size, -size/3, size);
    vertex(size/3, -size/3, size);
    vertex(size/3, -size, size);
    vertex(size, -size, size);
    endShape();

    rotateY(rotatingD);

    rotateX(-rotatingR);

    rotateY(rotatingU);

    fill(getCol(B[0][1]));
    beginShape();
    vertex(size/3, size, size);
    vertex(-size/3, size, size);
    vertex(-size/3, size/3, size);
    vertex(size/3, size/3, size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(B[1][1]));
    beginShape();
    vertex(size/3, size/3, size);
    vertex(-size/3, size/3, size);
    vertex(-size/3, -size/3, size);
    vertex(size/3, -size/3, size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(B[2][1]));
    beginShape();
    vertex(size/3, -size/3, size);
    vertex(-size/3, -size/3, size);
    vertex(-size/3, -size, size);
    vertex(size/3, -size, size);
    endShape();

    rotateY(rotatingD);

    rotateY(rotatingU);

    rotateX(-rotatingL);

    fill(getCol(B[0][2]));
    beginShape();
    vertex(-size/3, size, size);
    vertex(-size, size, size);
    vertex(-size, size/3, size);
    vertex(-size/3, size/3, size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(B[1][2]));
    beginShape();
    vertex(-size/3, size/3, size);
    vertex(-size, size/3, size);
    vertex(-size, -size/3, size);
    vertex(-size/3, -size/3, size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(B[2][2]));
    beginShape();
    vertex(-size/3, -size/3, size);
    vertex(-size, -size/3, size);
    vertex(-size, -size, size);
    vertex(-size/3, -size, size);
    endShape();

    rotateY(rotatingD);

    rotateX(rotatingL);

    rotateZ(-rotatingB);
  }

  void showR() {

    rotateX(rotatingR);

    //RIGHT

    rotateY(rotatingU);

    rotateZ(-rotatingF);

    fill(getCol(R[0][0]));
    beginShape();
    vertex(size, size, -size);
    vertex(size, size, -size/3);
    vertex(size, size/3, -size/3);
    vertex(size, size/3, -size);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(R[1][0]));
    beginShape();
    vertex(size, size/3, -size);
    vertex(size, size/3, -size/3);
    vertex(size, -size/3, -size/3);
    vertex(size, -size/3, -size);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(R[2][0]));
    beginShape();
    vertex(size, -size/3, -size);
    vertex(size, -size/3, -size/3);
    vertex(size, -size, -size/3);
    vertex(size, -size, -size);
    endShape();

    rotateZ(rotatingF);

    rotateY(rotatingD);

    rotateY(rotatingU);

    fill(getCol(R[0][1]));
    beginShape();
    vertex(size, size, -size/3);
    vertex(size, size, size/3);
    vertex(size, size/3, size/3);
    vertex(size, size/3, -size/3);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(R[1][1]));
    beginShape();
    vertex(size, size/3, -size/3);
    vertex(size, size/3, size/3);
    vertex(size, -size/3, size/3);
    vertex(size, -size/3, -size/3);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(R[2][1]));
    beginShape();
    vertex(size, -size/3, -size/3);
    vertex(size, -size/3, size/3);
    vertex(size, -size, size/3);
    vertex(size, -size, -size/3);
    endShape();

    rotateY(rotatingD);

    rotateY(rotatingU);

    rotateZ(rotatingB);

    fill(getCol(R[0][2]));
    beginShape();
    vertex(size, size, size/3);
    vertex(size, size, size);
    vertex(size, size/3, size);
    vertex(size, size/3, size/3);
    endShape();

    rotateY(-rotatingU);

    fill(getCol(R[1][2]));
    beginShape();
    vertex(size, size/3, size/3);
    vertex(size, size/3, size);
    vertex(size, -size/3, size);
    vertex(size, -size/3, size/3);
    endShape();

    rotateY(-rotatingD);

    fill(getCol(R[2][2]));
    beginShape();
    vertex(size, -size/3, size/3);
    vertex(size, -size/3, size);
    vertex(size, -size, size);
    vertex(size, -size, size/3);
    endShape();

    rotateZ(-rotatingB);

    rotateY(rotatingD);

    rotateX(-rotatingR);
  }

  void showD() {

    rotateY(-rotatingD);

    //DOWN

    rotateX(rotatingR);

    rotateZ(-rotatingF);

    fill(getCol(D[0][0]));
    beginShape();
    vertex(size, -size, -size);
    vertex(size/3, -size, -size);
    vertex(size/3, -size, -size/3);
    vertex(size, -size, -size/3);
    endShape();

    rotateZ(rotatingF);

    fill(getCol(D[1][0]));
    beginShape();
    vertex(size, -size, -size/3);
    vertex(size/3, -size, -size/3);
    vertex(size/3, -size, size/3);
    vertex(size, -size, size/3);
    endShape();

    rotateZ(rotatingB);

    fill(getCol(D[2][0]));
    beginShape();
    vertex(size, -size, size/3);
    vertex(size/3, -size, size/3);
    vertex(size/3, -size, size);
    vertex(size, -size, size);
    endShape();

    rotateZ(-rotatingB);

    rotateX(-rotatingR);

    rotateZ(-rotatingF);

    fill(getCol(D[0][1]));
    beginShape();
    vertex(size/3, -size, -size);
    vertex(-size/3, -size, -size);
    vertex(-size/3, -size, -size/3);
    vertex(size/3, -size, -size/3);
    endShape();

    rotateZ(rotatingF);

    fill(getCol(D[1][1]));
    beginShape();
    vertex(size/3, -size, -size/3);
    vertex(-size/3, -size, -size/3);
    vertex(-size/3, -size, size/3);
    vertex(size/3, -size, size/3);
    endShape();

    rotateZ(rotatingB);

    fill(getCol(D[2][1]));
    beginShape();
    vertex(size/3, -size, size/3);
    vertex(-size/3, -size, size/3);
    vertex(-size/3, -size, size);
    vertex(size/3, -size, size);
    endShape();

    rotateZ(-rotatingB);

    rotateX(-rotatingL);

    rotateZ(-rotatingF);

    fill(getCol(D[0][2]));
    beginShape();
    vertex(-size/3, -size, -size);
    vertex(-size, -size, -size);
    vertex(-size, -size, -size/3);
    vertex(-size/3, -size, -size/3);
    endShape();

    rotateZ(rotatingF);

    fill(getCol(D[1][2]));
    beginShape();
    vertex(-size/3, -size, -size/3);
    vertex(-size, -size, -size/3);
    vertex(-size, -size, size/3);
    vertex(-size/3, -size, size/3);
    endShape();

    rotateZ(rotatingB);

    fill(getCol(D[2][2]));
    beginShape();
    vertex(-size/3, -size, size/3);
    vertex(-size, -size, size/3);
    vertex(-size, -size, size);
    vertex(-size/3, -size, size);
    endShape();

    rotateZ(-rotatingB);

    rotateX(rotatingL);
    rotateY(rotatingD);
  }
}
