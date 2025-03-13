package entidades;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class Cuenta {
    private final int numeroCuenta;
    private String titular;
    private double saldo;

    private static final String CONFIG_FILE = "config.properties";
    private static final String PROP_NUMERO_INICIAR = "numeroIniciarDeCuenta";
    private static int numeroIniciarDeCuenta = 10000;

    static {
        loadConfig();
    }

    public Cuenta(String titular, double saldo) {
        this.numeroCuenta = numeroIniciarDeCuenta++;
        this.titular = titular;
        this.saldo = saldo;
        saveConfig();
    }

    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    private static void loadConfig() {
        Properties prop = new Properties();
        try (InputStream input = new FileInputStream(CONFIG_FILE)) {
            prop.load(input);
            numeroIniciarDeCuenta = Integer.parseInt(prop.getProperty(PROP_NUMERO_INICIAR));
        } catch (IOException ex) {
            ex.printStackTrace();
            numeroIniciarDeCuenta = 10000; // Valor predeterminado si hay algún error
        }
    }

    private static void saveConfig() {
        Properties prop = new Properties();
        prop.setProperty(PROP_NUMERO_INICIAR, String.valueOf(numeroIniciarDeCuenta + 1)); // Incrementa el valor para la próxima vez
        try (OutputStream output = new FileOutputStream(CONFIG_FILE)) {
            prop.store(output, "Configuración de la cuenta");
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public String toString() {
        return "Cuenta{" +
                "numeroCuenta=" + numeroCuenta +
                ", titular='" + titular + '\'' +
                ", saldo=" + saldo +
                '}';
    }

    public static void main(String[] args) {
        Cuenta cuenta1 = new Cuenta("pato", 5000000);
        System.out.println("los datos de cuenta es: " + cuenta1);
        Cuenta cuenta2 = new Cuenta("brisa", 100000);
        System.out.println("los datos de la cuenta 2 es: "+ cuenta2);
        Cuenta cuenta3 = new Cuenta("sasha", 100000);
        System.out.println("los datos de la cuenta 3 es: "+ cuenta3);
    }
}
