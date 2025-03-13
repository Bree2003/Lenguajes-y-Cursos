package repasos;

import java.util.Scanner;

public class CondicionalPsicologo {
    public static void main(String[] args) {
        // 100 preguntas
        // 75 regular
        // 50 no llamar
        // 100 dar carta oferta

        Scanner entrada = new Scanner(System.in);
        int totalPreguntas, totalCorrectas;

        System.out.println("Ingresa el total de preguntas");
        totalPreguntas = entrada.nextInt();

        System.out.println("Ingrese total correctas");
        totalCorrectas = entrada.nextInt();

        int porcentaje = totalCorrectas * 100 / totalPreguntas;

        if (porcentaje == 100) {
            System.out.println("Dar carta oferta");
        } else if (porcentaje >= 75){
            System.out.println("Regular");
        }
        System.out.println(porcentaje);

    }
}
