package entities;

import java.util.ArrayList;

//entidad
public class Cuenta {

    //atributos
    private int numeroCuenta;
    private double saldo;

    //dato ayuda
    private static int inicioNumeroCuenta = 1000;
    //metodo
    // metodo ver saldo
    public void mostrarSaldo() {
        System.out.println("Tu cuenta nro: " + numeroCuenta + " tiene $" + saldo);
    }
    // metodo deposito
    public void ingresarDinero(double monto) {
        this.saldo += monto;
        System.out.println("Ahora tienes: " + this.saldo);
    }
    // metodo retiro
    public void retirarDinero(double monto) {
        this.saldo -= monto;
        System.out.println("Ahora tienes: " + this.saldo);
    }

    // metodo conversion
    public void conversionADolar() {
        this.saldo *= 0.0011;
        System.out.println("En dolares son: " + this.saldo);
    }

    //constructores

    public Cuenta() {
        inicioNumeroCuenta++;
        this.numeroCuenta = inicioNumeroCuenta;
        //en el momento que se cree que el saldo sea automaticamente 0
        this.saldo = 0;
        // hacer validaciones para que no sea monto negativo
    }

    public Cuenta(int numeroCuenta, double saldo) {
        this.numeroCuenta = numeroCuenta;
        this.saldo = saldo;
    }



    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(int numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
//tostring

    @Override
    public String toString() {
        return "Cuenta{" +
                "numeroCuenta='" + numeroCuenta + '\'' +
                ", saldo=" + saldo +
                '}';
    }


    // los for son para iterar o hacer cosas repetitivas
    // es un bucle
    // if else para condiciones y validar
    // ooops salto error igual => se rompio y se paro la maquina
    // así tambien se puede usar el try catch -> porque te ayuda a gestionar errores
    // ooops salto error => te da mensaje segun lo que coloques y siguen corriendo la maquina

    //metodos






    //private Usuario usuario; // objeto Usuario foreign key
    // la cuenta va a estar asociada a usuario


    // un usuario puede tener muchas cuentas
    // clase usuario []cuentas

}
