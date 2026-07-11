//Bianca Colman tp3 
// con flechas gira, con click se agranda, con r reinicio
// https://youtu.be/oo2N3f4duG4?si=Ia6JP5YvV-tJAFyQ

PImage referencia;

int cant = 15;
float rotacion = 0;
//.

void setup() {

  size(800, 400);

  referencia = loadImage("referencia.jpg");

  ellipseMode(CENTER);
}
//.

void draw() {

  background(255);

  // imagen de referencia izq
  image(referencia, 0, 0, 400, 400);

  // fondo negroderecha
  fill(0);
  noStroke();
  rect(400, 0, 400, 400);

  pushMatrix();

  translate(600, 200);

  rotate(rotacion);

  dibujarPatron();

  popMatrix();
}

// funcion q no retorna valor

void dibujarPatron() {

  float espacio = 300.0/cant;

  for (int j=0; j<cant; j++) {

    for (int i=0; i<cant; i++) {

      float x = -150 + i*espacio;
      float y = -150 + j*espacio;

      float tam = calcularTam(x, y);

      fill(255);

      ellipse(x, y, tam, tam);
    }
  }
}

// funcion que retorna valor

float calcularTam(float x, float y) {

  float d = dist(x, y, 0, 0);

  float tam = map(d, 0, 220, 24, 8);

  if (tam < 8) {

    tam = 8;

  } else {

    tam = tam + random(-0.3, 0.3);

  }

  return tam;
}
// situacion

void mousePressed() {

  cant++;

  if (cant > 25) {

    cant = 25;
  }
}


void keyPressed() {

  if (key == 'r' || key == 'R') {

    reiniciar();
  }

  if (keyCode == LEFT) {

    rotacion -= 0.1;

  } else if (keyCode == RIGHT) {

    rotacion += 0.1;
  }
}

// reiniciar (con r)

void reiniciar() {

  cant = 15;

  rotacion = 0;
}
