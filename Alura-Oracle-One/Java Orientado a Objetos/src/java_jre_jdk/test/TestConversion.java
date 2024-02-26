package java_jre_jdk.test;

public class TestConversion {
    public static void main(String[] args) {
        float puntoflotante = 3.14F; //el número tiene que estar acompañado de F al final
        double salario = 1270.50;
        int valor = (int) salario; //tienes que convertirlo en tipo int el valor dado
        System.out.println(valor);

        double valor1 = 0.2;
        double valor2 = 0.1;
        double total = valor1 + valor2;
        System.out.println(total);


    }
}
