public class Puntaje {
  private int punto;
  
  public Puntaje() {
    punto = 0;
  }
  
  public void mostrar() {
    String texto = "000";
    texto = ""+nf(punto,4);
    fill(250);
    textAlign(LEFT);
    textSize(20);
    text(texto, width / 2, 20);
  }
  
  public void subir() {
    punto++;
  }
}
