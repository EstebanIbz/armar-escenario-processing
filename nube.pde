private class Nube {
    private PVector posicion;
    private PImage imagen;
    private PVector velocidad;
    
    public Nube(PVector pos, PVector vel, PImage img) {
        posicion = pos;
        velocidad = vel;
        imagen = img; 
    }
    
    public void dibujar() {
        
        image(imagen, posicion.x, posicion.y);
    }
    
    public void mover() {
        
        posicion.add(velocidad);
               
        if (posicion.x < 0 || posicion.x > width - imagen.width) {
            velocidad.x *= -1; 
        }
    }
}
