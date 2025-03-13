
import entities.Cuenta;
import entities.Usuario;

public class Main {
    public static void main(String[] args) {
    // instanciar usuario
        Usuario julio = new Usuario();

    // colocar datos de julio
        julio.setNombre("Julio");
        julio.setCorreo("julio@gmail.com");
        julio.setContra("uno");

        // julio quiere tener otra cuenta dinero
        Cuenta cuenta2 = new Cuenta();
    julio.setCuenta(cuenta2);
        Cuenta cuenta3 = new Cuenta();
        julio.setCuenta(cuenta3);

        //acceder a una sola cuenta
        julio.getOnlyOneCuenta(1001).ingresarDinero(500000);

        julio.transferirCuentas(1001, 1002, 80000);
        julio.convertirDolar(1001);
        julio.toString();
        System.out.println(julio);
    }
}
