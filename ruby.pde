public class Ruby {
    private PVector posicion;
    private PImage imagen;
    private PVector velocidad;
    private float radio;
    private PVector ultimaPosicion; 

    public Ruby() {
        imagen = loadImage("diane.png");
        radio = 25; 
        ultimaPosicion = new PVector(0, 0); 
    }

    public Ruby(PVector posicion, PVector velocidad) {
        this.posicion = posicion;
        this.velocidad = velocidad;
        this.imagen = loadImage("diane.png");
        this.radio = 25; 
        ultimaPosicion = new PVector(0, 0); 
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

    public void actualizarPosicion() {
        PVector nuevaPosicion;
        do {
            nuevaPosicion = new PVector(random(width), random(height));
        } while (nuevaPosicion.x == ultimaPosicion.x && nuevaPosicion.y == ultimaPosicion.y); 
        this.posicion = nuevaPosicion;
        ultimaPosicion = nuevaPosicion; 
    }

    public float getRadio() {
        return this.radio;
    }
    public PVector getPosicion() {
    return this.posicion;
}

    public void setPosicion(PVector nuevaPosicion) {
        this.posicion = nuevaPosicion;
    }
}
