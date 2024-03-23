package repasos;

import java.util.Random;

public class condicionTrabajadores {
    public static void main(String[] args) {
//        220 trabajadores, 3 turnos (mañana, tarde, noche)
        Random random = new Random();

//        datos
        int trabajador, trabajadorD, trabajadorT, trabajadorN, edad, sumaTotal, suma1, suma2, suma3, promedio1, promedio2, promedio3, promedioTotal;

        suma1 = 0;
        suma2 = 0;
        suma3 = 0;
        sumaTotal = 0;
        trabajadorD = 0;
        trabajadorT = 0;
        trabajadorN = 0;

//        condicion
        for(trabajador = 1; trabajador <= 220; trabajador++) {
            int randomNumber = random.nextInt(100) + 1;
            if (randomNumber >= 70) {
                trabajadorD++;
            } else if (randomNumber >= 40) {
                trabajadorT++;
            } else {
                trabajadorN++;
            }

        }

        System.out.println("td:" + trabajadorD);
        System.out.println("tt: " + trabajadorT);
        System.out.println("Tn:" + trabajadorN);

        for (int i = 1; i <= trabajadorD; i++) {
            edad = random.nextInt(100) + 1;
            suma1 += edad;
            sumaTotal += edad;
        }
        for (int i = 1; i <= trabajadorT; i++) {
            edad = random.nextInt(100) + 1;
            suma2 += edad;
            sumaTotal += edad;
        }
        for (int i = 1; i <= trabajadorN; i++) {
            edad = random.nextInt(100) + 1;
            suma3 += edad;
            sumaTotal += edad;
        }


        promedio1 = suma1/ trabajadorD;
        promedio2 = suma2/ trabajadorT;
        promedio3 = suma3/ trabajadorN;
        promedioTotal = sumaTotal / (220 );
        System.out.println("edad total promedio:" + promedioTotal);
        System.out.println("edad mañana promedio: " + promedio1);
        System.out.println("edad tarde promedio:" + promedio2);
        System.out.println("edad noche promedio: " + promedio3);

        if(promedio1 < promedio2 && promedio1 < promedio3) {
            System.out.println("turno mañana es más joven");
        } else if (promedio2 < promedio3) {
            System.out.println("turno tarde es mas joven");
        } else {
            System.out.println("turno noche es mas joven");
        }


    }

}
