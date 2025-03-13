package java_jre_jdk.test;

public class TestCaracteres {
    public static void main(String[] args) {
        //char es con comilla simple
        char letra = 'a'; //char sólo permite un carácter de la tabla Unicode
        char valor = 65; // devuelve A
        valor = (char) (valor + 1); //hay que convertir para que se compile
        System.out.println(valor);

        //string es con semillas dobles
        String palabra = "Alura cursos online de tecnología";
        palabra = palabra + 2020;
        System.out.println(palabra);
    }
}
