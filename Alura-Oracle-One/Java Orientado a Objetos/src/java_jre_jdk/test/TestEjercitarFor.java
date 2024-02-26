package java_jre_jdk.test;

public class TestEjercitarFor {
    public static void main(String[] args) {
        // imprimir todos los múltiplos de 3, entre 1 y 100
        for (int numero = 1; numero <= 100; numero++){
            if (numero % 3 == 0) {
                System.out.print(numero);
                System.out.print(" ");
            }
        }

        // otra forma
        for (int i = 3;i < 100; i +=3) {
            System.out.println(i);
        }
    }
}
