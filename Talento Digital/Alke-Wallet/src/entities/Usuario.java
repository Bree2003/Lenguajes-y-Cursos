package entities;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

//entidad
public class Usuario {

    //atributos
    private String nombre;
    private String correo;
    private String contra;
    private List<Cuenta> cuentas; //puede tener muchas cuentas
    /*
     Administración de fondos: Los usuarios deben poder ver su saldo
 disponible, realizar depósitos y retiros de fondos.
 listo
 ● Envío y recepción de fondos: Los usuarios deben poder enviar
 fondos a otras cuentas dentro de la aplicación y recibir fondos de
 otros usuarios.
 ● Conversión de moneda: Los usuarios deben poder convertir fondos
 de una moneda a otra.
    * */

    // metodos

    // metodo envio
    // metodo recibir
    //metodo convertir


    // constructores

    public Usuario(String nombre, String correo, String contra) {
        this.nombre = nombre;
        this.correo = correo;
        this.contra = contra;
        this.cuentas = new ArrayList<>(); // Inicializar la lista de cuentas
    }

    //constructor por defecto

    public Usuario() {
        // para que se cree con al menos una cuenta
        this.cuentas = new ArrayList<>(); // Inicializar la lista de cuentas
        Cuenta cuenta = new Cuenta();
        cuentas.add(cuenta);
    }


    //getter y setter

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    // Agregar una cuenta
    public void setCuenta(Cuenta cuenta) {
        cuentas.add(cuenta);
    }

    // Obtener todas las cuentas
    public List<Cuenta> getCuentas() {
        return cuentas;
    }

    //obtener solo una cuenta
    public Cuenta getOnlyOneCuenta(int numeroCuenta) {
        for (Cuenta cuenta: cuentas) {
            if(cuenta.getNumeroCuenta() == numeroCuenta) {
                return cuenta;
            }
        }
        return null;
    }

    // convertir moneda
    public void convertirDolar(int nroCuenta1) {
        Cuenta cuenta = getOnlyOneCuenta(nroCuenta1);
        cuenta.conversionADolar();
    }

    // transferir entre otras cuentas
    public void transferirCuentas(int nroCuenta1, int nroCuenta2, double monto) {
        // nrocuenta1 va a ser el que transferira
        //acceder al metodo retirar dinero
        Cuenta cuenta1 = getOnlyOneCuenta(nroCuenta1);
        cuenta1.retirarDinero(monto);
        // nrocuenta2 va a ser el que recibira
        Cuenta cuenta2 = getOnlyOneCuenta(nroCuenta2);
        cuenta2.ingresarDinero(monto);
    }

    // tostring

    @Override
    public String toString() {
        return "Usuario{" +
                "nombre='" + nombre + '\'' +
                ", correo='" + correo + '\'' +
                ", contra='" + contra + '\'' +
                ", cuentas=" + cuentas +
                '}';
    }


    // no es necesario agregar metodos
}
