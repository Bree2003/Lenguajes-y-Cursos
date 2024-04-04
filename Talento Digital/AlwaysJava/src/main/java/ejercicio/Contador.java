package ejercicio;

public class Contador {

    //atributo
    private int contador;

    //constructor vacio o por defecto
    public Contador() {
    }

    // constructor, validar a 0 si es negativo
    public Contador(int contador) {
        if(contador >= 0) {
            this.contador = contador;
        } else {
            this.contador = 0;
        }
    }

    // constructor copia
    public Contador(Contador contador) {
        this.contador = contador.contador;
    }

    //metodos getter y setter
    public int getContador() {
        return contador;
    }

    public void setContador(int contador) {
        if(contador >= 0) {
            this.contador = contador;
        } else {
            this.contador = 0;
        }
    }

    // tostring
    @Override
    public String toString() {
        return "Contador{" +
                "contador=" + contador +
                '}';
    }

    //metodo incrementar en una unidad
    public void incrementar() {
        this.contador++;
        System.out.println("Su contador ha incrementado por 1");
        System.out.println("Total contador: " + this.contador);
    }
    // metodo decrementar en una unidad, validar a 0 so es negativo
    public void decrementar() {
        this.contador--;
        System.out.println("Su contador ha disminuido por 1");
        if(this.contador < 0) {
            System.out.println("Su contador no puede bajar de cero");
            this.contador = 0;
        }
        System.out.println("Total contador: " + this.contador);
    }

    //metodo incrementar por cantidad
    public void incrementarPorValor(int cantidad) {
        if(cantidad >= 0) {
            this.contador += cantidad;
            System.out.println("Su contador ha incrementado por: " + cantidad);
            System.out.println("Total contador: " + this.contador);
        } else {
            System.out.println("Ingresó un monto inválido");
        }
    }
    // metodo decrementar por valor, validar a 0 so es negativo
    public void decrementarPorValor(int cantidad) {
        if(cantidad >= 0 && cantidad <= this.contador) {
            this.contador -= cantidad;
            System.out.println("Su contador ha disminuido por: " + cantidad);
            System.out.println("Total contador: " + this.contador);
        } else if (cantidad >= this.contador) {
            System.out.println("La cantidad es mayor al contador");
            this.contador = 0;
            System.out.println("Total contador: " + this.contador);
        } else {
            System.out.println("Ingresó un monto inválido");
        }
       }

    //metodo main
    public static void main(String[] args) {
        Contador contador = new Contador();
        contador.setContador(-500);
        contador.toString();
        System.out.println(contador);
        contador.incrementar();
        contador.decrementar();
        contador.incrementarPorValor(500);
        contador.decrementarPorValor(800);
    }
}
