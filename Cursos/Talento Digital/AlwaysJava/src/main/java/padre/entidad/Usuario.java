package padre.entidad;

public class Usuario {
    // public - protected - private
    // modificadores de acceso
    // public -> acceso universal a las clases y métodos definidos por public
    // private -> solo el archivo (la clase) puede ocuparlo, no se puede acceder desde otros
    // protected -> se puede acceder desde la misma carpeta del archivo, subcarpetas, y para
    // las carpetas externas se hace herencia


    // static - final(== const)
    // el comportamiento de atributos o métodos
    // static ->  sirve para hacer conteos
    // final -> constantes

    static int id; // llevar un conteo de cuántos objetos hay

    final int  uno = 1; // constante, no se puede cambiar

// herencia puede acceder a el
protected static void soyHijo() {
    System.out.println("hijo");
}
    public Usuario() {
        id++;
    }
    public static void elemento() {
        System.out.println("Soy un atributo static: " + id);
    }

    private static void privado() {
        System.out.println("Soy privado ");
    }

    public static void main(String[] args) {
        Usuario u = new Usuario();
        Usuario p = new Usuario();
        Usuario x = new Usuario();

        x.elemento();
    }

}
