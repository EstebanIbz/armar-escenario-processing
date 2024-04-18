public Tank tank;
public Ruby ruby; 

PImage fondo;
PImage piso;
color tint_color = color(210,187,33);

void setup() {
  size(1280, 640);
  fondo = loadImage("fondo.png");
  piso = loadImage("OIP.png"); 
  tank = new Tank();
  tank.setPosicion(new PVector(width/2, 460));
  tank.setVelocidad(new PVector(10, 10));
  
  ruby = new Ruby(new PVector(width/2, 0), new PVector(0, 10));
}

void draw() {
  background(fondo); 

  
  tint(tint_color);;
  int linex = 0;
  int distance = 0;
  do {
    image(piso, linex, 565);
    linex += piso.width + distance;
  } while (linex < width);
  noTint(); 


  tank.dibujar();
  ruby.dibujar();
  ruby.mover();
}

void keyPressed() {
  if (key == 'd') {
    tank.mover(1);
  }
  if (key == 'a') {
    tank.mover(0);
  }
}
