package java_jre_jdk.test;

public class TestAlcance {
    public static void main(String[] args) {
        System.out.println("Pruebas condicionales");

        int edad = 20;
        int cantidadPersonas = 3;
        boolean acompañado;

        if (cantidadPersonas >= 2) {
            acompañado = true;
        } else {
            acompañado = false;
        }

        if (edad >= 18 || acompañado) {
            System.out.println("Bienvenido");
        } else {
            System.out.println("Desafortunadamente no puede entrar");
        }
    }
}
