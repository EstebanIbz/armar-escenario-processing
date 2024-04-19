public class Cofre {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private int anchoPantalla;
  
  public Cofre(int anchoPantalla) {
    this.anchoPantalla = anchoPantalla;
    imagen = loadImage("cofre.png");
    posicion = new PVector(anchoPantalla / 2, 460); 
    velocidad = new PVector(10, 10);
  }
  
  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 150, 150);
  }
  
  public void mover(int direccion) {
    if (direccion == 0 && posicion.x > 0) {
      posicion.x -= velocidad.x;
    }
    if (direccion == 1 && posicion.x < anchoPantalla) {
      posicion.x += velocidad.x;
    }
  }
  
  public PVector getPosicion() {
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public void setVelocidad(PVector nuevaVelocidad) {
    this.velocidad = nuevaVelocidad;
  }
}
