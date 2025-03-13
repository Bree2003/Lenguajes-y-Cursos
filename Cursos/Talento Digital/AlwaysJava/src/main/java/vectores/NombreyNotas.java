package vectores;

import java.util.Scanner;

public class NombreyNotas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Ingrese una cadena que no contenga números:");
        String input = scanner.nextLine();

        while (input.matches(".*\\d.*")) {
            System.out.println("La cadena ingresada contiene números. Ingrese una cadena sin números:");
            input = scanner.nextLine();
        }

        System.out.println("La cadena ingresada sin números es: " + input);

        scanner.close();
    }
}

