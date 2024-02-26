package java_jre_jdk.test;

public class TestFactorial {
    public static void main(String[] args) {
        //factorial de los números entre 1 y 10
        //si declaramos una variable fuera del for el valor se actualiza en cada ciclo
        int factorial = 1;

        for (int numero = 1;numero <= 10;numero++) {
            factorial *= numero;
            System.out.println("El factorial de " + numero + " es " + factorial);
        }
    }
}
