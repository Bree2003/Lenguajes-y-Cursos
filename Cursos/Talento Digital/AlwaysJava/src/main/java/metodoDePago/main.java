package metodoDePago;

public class main {
    public static void main(String[] args) {
        TarjetaDeCredito metodoPago = new TarjetaDeCredito();

        metodoPago.realizarPago();

        Moneda metodoPago2 = new Moneda();
        metodoPago2.realizarPago();
    }

}
