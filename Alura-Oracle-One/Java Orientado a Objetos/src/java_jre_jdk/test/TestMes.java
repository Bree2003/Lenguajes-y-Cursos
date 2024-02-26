package java_jre_jdk.test;

public class TestMes {
    public static void main(String[] args) {
        int mes = 1;

        switch (mes) {
            case 1:
                System.out.println("Enero");
                break;
            case 2:
                System.out.println("febrero");
                break;
            case 3:
                System.out.println("marzo");
                break;
            default:
                System.out.println("Mes inválido");
                break;
        }
    }
}
