package metodoDePago;

import java.util.Scanner;

public class TarjetaDeCredito extends FormaDePago{
    //atributos
    private int cantidadCuotas;

    // metodo
    @Override
    public void realizarPago(){
        entrada = new Scanner(System.in);
        System.out.print("Cuantas cuotas quieres pagar? (Hasta 12): ");
        cantidadCuotas = entrada.nextInt();
    }
}
