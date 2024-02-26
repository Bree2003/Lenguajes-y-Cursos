package java_jre_jdk.test;

public class ValorConDescuento {
    public static void main(String[] args) {
        double valorCompra = 250.0;
        boolean mayor100Ymenor199 =  valorCompra >= 100.0 && valorCompra <= 199.99;
        boolean mayor200Ymenor299 = valorCompra >= 200.0 && valorCompra <= 299.99;
        boolean mayor300 = valorCompra >= 300.0;

        if (mayor100Ymenor199){
            valorCompra = valorCompra - (valorCompra * 0.10); // % -> no es válido para representar porcentajes
            System.out.println("Tu compra es de " + valorCompra);
        } else if (mayor200Ymenor299) {
            valorCompra = valorCompra - (valorCompra * 0.15);
            System.out.println("Tu compra es de " + valorCompra);
        } else if (mayor300) {
            valorCompra = valorCompra - (valorCompra * 0.20);
            System.out.println("Tu compra es de " + valorCompra);
        } else {
            System.out.println("Tu compra es de " + valorCompra);
        }
    }
}
