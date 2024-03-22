package repasos;

import java.util.Scanner;

public class CondicionalSImple {
    public static void main(String[] args) {
        //sueldo por impuesto

        Scanner entrada = new Scanner(System.in); // captura un dato en pantalla
        // declarando datos que necesito
        float sueldo;
        System.out.println("Ingrese su sueldo");
        sueldo = entrada.nextFloat();

        //condiciones o operacion
        if (sueldo > 5000) {
            System.out.println("Debe pagar impuesto");
        }
    }
}
