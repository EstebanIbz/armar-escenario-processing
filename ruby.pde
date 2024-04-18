class Ruby {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public Ruby() {
    imagen = loadImage("diane.png");
  }
  
  public Ruby(PVector posicion, PVector velocidad) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("diane.png");
  }
  
  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 50, 50);
  }
  
  public void mover() {
    if (this.posicion.y <= height) {
      this.posicion.y += this.velocidad.y;
    } else {
      this.posicion.y = 0;
    }
  }
}
