import processing.sound.*;

import processing.sound.*;
private Cofre cofre;
private Ruby ruby;
private Puntaje puntaje;
private Nube nube;

PImage fondo;
PImage imagenNube; 
PImage piso;
color tint_color = color(210, 187, 33);
SoundFile sonido;

void setup() {
    size(1280, 640);
    
    fondo = loadImage("fondo.png");
    piso = loadImage("OIP.png"); 
    imagenNube = loadImage("nube.png");
    
    cofre = new Cofre(width); 
    cofre.setPosicion(new PVector(width/2, 460));
    cofre.setVelocidad(new PVector(10, 10));
    
    ruby = new Ruby(new PVector(width/2, 0), new PVector(0, 10));
    
    nube = new Nube(new PVector(width/2, 100), new PVector(5, 0), imagenNube);
    
    puntaje = new Puntaje(); 
    
    sonido = new SoundFile(this,"ForgottenAura.wav");
    sonido.loop();
}

void draw() {
  background(fondo); 
  
  tint(tint_color);
  
  int linex = 0;
  int distance = 0;
  do {
    image(piso, linex, 565);
    linex += piso.width + distance;
  } while (linex < width);
  
  noTint(); 

  cofre.dibujar();
  
  ruby.dibujar();
  ruby.mover();
  
  nube.dibujar();
  nube.mover();
  
  puntaje.mostrar(); 
  
  float distancia = PVector.dist(ruby.getPosicion(), cofre.getPosicion());
  
  if (distancia <= ruby.getRadio()) {
        println("Ruby encontrado y desaparecido");
        ruby.setPosicion(new PVector(-1000, -1000));
        puntaje.subir(); 
        ruby.actualizarPosicion(); 
    }
}


void keyPressed() {

  if (key == 'd') {
    cofre.mover(1);
  }
  
  if (key == 'a') {
    cofre.mover(0);
  }
}
