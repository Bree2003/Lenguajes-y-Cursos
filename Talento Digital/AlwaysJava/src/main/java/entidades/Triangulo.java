package entidades;

import java.util.Scanner;

public class Triangulo {
    /*
    desarrollar un programa que cargue los lados de un triángulo
    e implemente los siguientes metodos: inicializarr los
    atributos, imprimir el valor del lado mayor y otro metodo
    que muestre si es equilatero.
    * */

    // declarar datos
    private Scanner entrada;
    private int lado1;
    private int lado2;
    private int lado3;
    private int hipotenusa;
    public void esEquilatero(){
        if (lado1==lado2 || lado1==lado3 || lado2==lado3) {
            System.out.println("Es equilatero");
        }else{
            System.out.println("No es equilatero");
        }

    }

    public void esRectangulo(){
        if (hipotenusa==lado1) {
            if((lado2*lado2)+(lado3*lado3)==hipotenusa*hipotenusa){
                System.out.println("Es rectangulo");
            }else{
                System.out.println("No es rectangulo");
            }
        }else if (hipotenusa==lado2) {
            if((lado1*lado1)+(lado3*lado3)==hipotenusa*hipotenusa){
                System.out.println("Es rectangulo");
            }else{
                System.out.println("No es rectangulo");
            }
        }
    }
}
