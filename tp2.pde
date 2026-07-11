PImage imgInicio;
PImage img1;
PImage img2;
PImage img3;
PImage img4;

PFont fuente;

int estado;
int contador;

float tituloY;
float textoAlpha;

void setup() {

  size(640, 480);

  imageMode(CORNER);
  textAlign(CENTER);

  // IMAGENES
  imgInicio = loadImage("inicio.jpg");
  img1 = loadImage("foto1.jpg");
  img2 = loadImage("foto2.jpg");
  img3 = loadImage("foto3.jpg");
  img4 = loadImage("foto4.jpg");
  
  fuente = loadFont("Georgia-BoldItalic-30.vlw");
textFont(fuente);

  inicializar();
}

void draw() {

  background(0);

  if (estado == 0) {

    pantallaInicio();

  } else if (estado == 1) {

    pantalla1();

  } else if (estado == 2) {

    pantalla2();

  } else if (estado == 3) {

    pantalla3();

  } else if (estado == 4) {

    pantalla4();

  } else if (estado == 5) {

    pantallaFinal();

  }

}

void inicializar() {

  estado = 0;
  contador = 0;

  tituloY = -50;

  textoAlpha = 0;

}

// ----------------------------
// PANTALLA INICIO
// ----------------------------

void pantallaInicio() {

  image(imgInicio, 0, 0, width, height);

  fill(0, 170);
  rect(0, 0, width, height);

  fill(255);

  textSize(42);

  text("Bandas famosas de Argentina", width/2, tituloY);

  if (tituloY < 120) {

    tituloY += 2;

  }

  // BOTON

  fill(255);

  rect(220, 320, 200, 60);

  fill(0);

  textSize(28);

  text("EMPEZAR", width/2, 360);

}

// ----------------------------
// PANTALLA 1
// ----------------------------

void pantalla1() {

  image(img1, 0, 0, width, height);

  fill(0, 150);
  rect(0, 0, width, height);

  fill(255, textoAlpha);

  textSize(38);

  text("Soda Stereo", width/2, 90);

  textSize(20);

  text("fue una legendaria banda argentina de rock y pop formada en 1982. Compuesta por Gustavo Cerati, Zeta Bosio y Charly Alberti, se convirtieron en uno de los grupos más influyentes de la música en español.", 80, 250, 480, 200);

  if (textoAlpha < 255) {

    textoAlpha += 2;

  }

  contador++;

  if (contador > 420) {

    estado = 2;
    contador = 0;
    textoAlpha = 0;

  }

}

// ----------------------------
// PANTALLA 2
// ----------------------------

void pantalla2() {

  image(img2, 0, 0, width, height);

  fill(0, 150);
  rect(0, 0, width, height);

  fill(255, textoAlpha);

  textSize(38);

  text("Serú Girán", width/2, 90);

  textSize(20);

  text("fue un supergrupo de rock argentino formado en 1978 por Charly García, David Lebón, Pedro Aznar y Oscar Moro. Conocidos como los Beatles criollos, fusionaron jazz rock, pop y música progresiva.", 80, 250, 480, 200);

  if (textoAlpha < 255) {

    textoAlpha += 2;

  }

  contador++;

  if (contador > 420) {

    estado = 3;
    contador = 0;
    textoAlpha = 0;

  }

}

// ----------------------------
// PANTALLA 3
// ----------------------------

void pantalla3() {

  image(img3, 0, 0, width, height);

  fill(0, 150);
  rect(0, 0, width, height);

  fill(255, textoAlpha);

  textSize(38);

  text("Los Redondos", width/2, 90);

  textSize(20);

  text("Patricio Rey y sus Redonditos de Ricota fue una banda de rock argentina formada en La Plata alrededor de 1976. Se destacaron por su independencia y por generar una devoción masiva.", 80, 250, 480, 200);

  if (textoAlpha < 255) {

    textoAlpha += 2;

  }

  contador++;

  if (contador > 420) {

    estado = 4;
    contador = 0;
    textoAlpha = 0;

  }

}

// ----------------------------
// PANTALLA 4
// ----------------------------

void pantalla4() {

  image(img4, 0, 0, width, height);

  fill(0, 150);
  rect(0, 0, width, height);

  fill(255, textoAlpha);

  textSize(38);

  text("Sumo", width/2, 90);

  textSize(20);

  text("Sumo fue una emblemática banda argentina de rock y post-punk formada en 1981. Liderada por Luca Prodan, revolucionó la escena musical mezclando punk, reggae, funk y ska.", 80, 250, 480, 200);

  if (textoAlpha < 255) {

    textoAlpha += 2;

  }

  contador++;

  if (contador > 420) {

    estado = 5;
    contador = 0;

  }

}

// ----------------------------
// PANTALLA FINAL
// ----------------------------

void pantallaFinal() {

  background(0);

  fill(255);

  textSize(42);

  text("FIN", width/2, 140);

  fill(255);

  rect(220, 250, 200, 70);

  fill(0);

  textSize(28);

  text("REINICIAR", width/2, 295);

}

// ----------------------------
// MOUSE
// ----------------------------

void mousePressed() {

  // EMPEZAR

  if (estado == 0 &&
    mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 320 &&
    mouseY < 380) {

    estado = 1;
    contador = 0;
    textoAlpha = 0;

  }

  // REINICIAR

  if (estado == 5 &&
    mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 250 &&
    mouseY < 320) {

    inicializar();

  }

}
```
