void setup() {
  size(800, 800);
  background(255);

  //  DERECHA 
  noStroke();
  fill(140, 200, 60);
  rect(400, 0, 400, 800);

  // circulo derecho
  fill(180, 40, 60);
  ellipse(600, 400, 350, 350);

  fill(40, 120, 150);
  ellipse(600, 400, 260, 260);

  fill(240, 210, 60);
  ellipse(600, 400, 170, 170);

  fill(40, 120, 150);
  ellipse(600, 400, 80, 80);

  // CIRCULO (lado derecho)
  fill(180, 40, 60);
  arc(400, 400, 350, 350, -HALF_PI, HALF_PI);

  fill(40, 120, 150);
  arc(400, 400, 260, 260, -HALF_PI, HALF_PI);

  fill(240, 210, 60);
  arc(400, 400, 170, 170, -HALF_PI, HALF_PI);

  fill(40, 120, 150);
  arc(400, 400, 80, 80, -HALF_PI, HALF_PI);

  // RECTANGULO BLANCO 
  fill(255);
  rect(400, 0, 40, 800);

  // TRIANGULOS
  fill(240, 120, 50);
  triangle(440, 250, 520, 400, 440, 550);

  triangle(520, 250, 440, 400, 520, 550);

  // lieas 
  stroke(200, 0, 0);
  strokeWeight(6);
  line(400, 0, 800, 800);
  line(800, 0, 400, 800);

  // centro
  noFill();
  stroke(0, 80, 160);
  strokeWeight(8);

  arc(400, 400, 100, 100, -HALF_PI, HALF_PI);
  arc(400, 400, 150, 150, -HALF_PI, HALF_PI);
  arc(400, 400, 200, 200, -HALF_PI, HALF_PI);
  arc(400, 400, 250, 250, -HALF_PI, HALF_PI);
  arc(400, 400, 300, 300, -HALF_PI, HALF_PI);
  arc(400, 400, 350, 350, -HALF_PI, HALF_PI);
}
