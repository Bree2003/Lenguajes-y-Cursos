package java_jre_jdk.test;

public class TestCondicional2 {
    public static void main(String[] args) {
    int edad = 16;
        int cantidadPersonas = 3;
    boolean acompanado = cantidadPersonas >= 2;

    if (edad >= 18 || (edad < 18 && acompanado)) {
        System.out.println("Bienvenido");
    } else {
        System.out.println("Lamentablemente no puedes pasar");
    }
    }
}
