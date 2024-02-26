package java_jre_jdk.test;

public class TestCondicional {
    public static void main(String[] args) {
        System.out.println("probando condiciones");
        int edad = 20;
        int cantidadPersonas = 3;
        if (edad >= 18) {
            System.out.println("puedes pasar");
        } else {
            if (cantidadPersonas >= 2) {
                System.out.println("NO tienes 18 pero puedes pasar");
            }
            System.out.println("No tienes la edad suficiente para pasar");
        }
    }
}
