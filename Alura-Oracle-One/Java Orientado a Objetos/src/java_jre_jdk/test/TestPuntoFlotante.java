package java_jre_jdk.test;

public class TestPuntoFlotante {
    public static void main(String[] args) {
    double salario = 1250.70;

    System.out.println("MI salario es " + salario);

    double division = 5.0 / 2; //por default java trunca los decimales,
        //si queremos que se muestre el decimal hay que agregar decimales al número
    System.out.println(division);
    }
}
