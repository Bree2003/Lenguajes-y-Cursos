package ejercicio;

public class Cuenta {

    // atributos
    private String cliente;
    private String numeroCuenta;
    private double interes;
    private double saldo;

    // constructor vacio
    public Cuenta() {
    }

    // constructor
    public Cuenta(String cliente, String numeroCuenta, double interes, double saldo) {
        this.cliente = cliente;
        this.numeroCuenta = numeroCuenta;
        this.interes = interes;
        this.saldo = saldo;
    }

    // constructor copia
    public Cuenta(Cuenta cuenta) {
        this.cliente = cuenta.cliente;
        this.numeroCuenta = cuenta.numeroCuenta;
        this.interes = cuenta.interes;
        this.saldo = cuenta.saldo;
    }

    // metodo de ingreso
    public boolean ingreso(double cantidad) {
        boolean valido = false;

        if(cantidad >= 0) {
            System.out.println("Se ha ingresado en la cuenta: " + cantidad);
            this.saldo += cantidad;
            System.out.println("total saldo de la cuenta: " + this.saldo);
            valido = true;
        } else {
            System.out.println("Ingresó un monto inválido");
        }
        return valido;

    }
    // metodo de retiro
    public boolean retiro(double cantidad) {
        boolean valido = false;

        if(cantidad >= 0 && cantidad <= this.saldo) {
            System.out.println("Se ha retirado en la cuenta: " + cantidad);
            this.saldo -= cantidad;
            System.out.println("total saldo de la cuenta: " + this.saldo);
            valido = true;
        } else if(cantidad > this.saldo) {
            System.out.println("El monto supera el saldo");
        }else {
                System.out.println("Ingresó un monto inválido");
        }
        return valido;

    }
    // metodo de transferencia
    public boolean transferencia(Cuenta cuenta, double cantidad) {
        boolean valido = false;

        if(cantidad >= 0 && cantidad <= this.saldo) {
            System.out.println("Se ha transferido: " + cantidad);
            this.saldo -= cantidad;
            cuenta.saldo += cantidad;
            System.out.println("total saldo de la cuenta: " + this.saldo);
            valido = true;
        } else if(cantidad > this.saldo) {
            System.out.println("El monto supera el saldo");
        }else {
            System.out.println("Ingresó un monto inválido");
        }
        return valido;
    }

    // setters y getters
    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(String numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    //metodo to string
    @Override
    public String toString() {
        return "Cuenta{" +
                "cliente='" + cliente + '\'' +
                ", numeroCuenta='" + numeroCuenta + '\'' +
                ", interes=" + interes +
                ", saldo=" + saldo +
                '}';
    }

    // main
    public static void main(String[] args) {
        Cuenta sasha = new Cuenta("Sasha", "0123", 0.8, 165.59);
        Cuenta brisa = new Cuenta(sasha);
        brisa.setCliente("Brisa");
        brisa.setNumeroCuenta("0124");

        sasha.toString();
        brisa.toString();
        System.out.println(sasha);
        System.out.println(brisa);

        sasha.ingreso(200.4);
        sasha.retiro(400);
        sasha.transferencia(brisa, 260.8);
    }
}
