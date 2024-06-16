package metodoDePago;

import java.util.Scanner;

public class Moneda extends FormaDePago{
    private String tipoMoneda;

    @Override
    public void realizarPago() {
        entrada = new Scanner(System.in);
        System.out.println("Escoga tipo de moneda a pagar");
        tipoMoneda = entrada.next();
    }
}
