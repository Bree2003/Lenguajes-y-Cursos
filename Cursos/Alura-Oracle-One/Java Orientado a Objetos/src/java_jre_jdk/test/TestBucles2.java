package java_jre_jdk.test;

public class TestBucles2 {
    public static void main(String[] args) {
        for (int fila = 0;fila < 10; fila++) {
            for (int columna = 0;columna < fila;columna++) {
                if(columna > fila) {
                    break;
                }
                System.out.println("*");
            }
            System.out.println();
        }
    }
}
