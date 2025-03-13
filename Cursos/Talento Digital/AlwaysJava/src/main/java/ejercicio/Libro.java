package ejercicio;

public class Libro {

    //atributos
    private String titulo;
    private String autor;
    private int ejemplares;
    private int ejemplaresPrestados;

    //constructo por defecto
    public Libro() {
    }

    //constructos copia
    public Libro(Libro libro) {
        this.titulo = libro.titulo;
        this.autor = libro.autor;
        this.ejemplares = libro.ejemplares;
        this.ejemplaresPrestados = libro.ejemplaresPrestados;
    }
    //constructor con parametros
    public Libro(String titulo, String autor, int ejemplares, int ejemplaresPrestados) {
        this.titulo = titulo;
        this.autor = autor;
        if(ejemplares >= 0) {
            this.ejemplares = ejemplares;
        } else {
            this.ejemplares = 0;
        }
        if(ejemplaresPrestados >= 0 && ejemplaresPrestados <= this.ejemplares) {
            this.ejemplaresPrestados = ejemplaresPrestados;
        } else {
            this.ejemplaresPrestados = 0;
        }
    }


    //metodos setter y getter
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getEjemplares() {
        return ejemplares;
    }

    public void setEjemplares(int ejemplares) {
        if(ejemplares >= 0) {
            this.ejemplares = ejemplares;
        } else {
            this.ejemplares = 0;
        }
    }

    public int getEjemplaresPrestados() {
        return ejemplaresPrestados;
    }

    public void setEjemplaresPrestados(int ejemplaresPrestados) {
        if(ejemplaresPrestados >= 0 && ejemplaresPrestados <= this.ejemplares) {
            this.ejemplaresPrestados = ejemplaresPrestados;
        } else {
            this.ejemplaresPrestados = 0;
        }
    }

    // metodo tostring
    @Override
    public String toString() {
        return "Libro{" +
                "titulo='" + titulo + '\'' +
                ", autor='" + autor + '\'' +
                ", ejemplares=" + ejemplares +
                ", ejemplaresPrestados=" + ejemplaresPrestados +
                '}';
    }

    //metodo boolean para prestar libros
    public boolean prestar() {
        boolean valido = false;

        if(this.ejemplaresPrestados < this.ejemplares) {
            System.out.println("Se prestó el libro");
            this.ejemplaresPrestados++;
            int stock = this.ejemplares - this.ejemplaresPrestados;
            System.out.println("Total de ejemplares en stock: " + stock);
            valido = true;
        } else {
            System.out.println("No quedan ejemplares para prestar");
        }
        return valido;
    }
    // metodo boolean para devolver libros
    public boolean devolver() {
        boolean valido = false;

        if(this.ejemplaresPrestados > 0 && this.ejemplaresPrestados <= this.ejemplares) {
            System.out.println("Se devolvió el libro");
            this.ejemplaresPrestados--;
            int stock = this.ejemplares - this.ejemplaresPrestados;
            System.out.println("Total de ejemplares en stock: " + stock);
            valido = true;
        } else{
            System.out.println("Ese libro no es de nosotros");
        }
        return valido;
    }

    //metodo main
    public static void main(String[] args) {
        Libro harry = new Libro("Harry Potter", "J.K Rowling", 5, 3);
        Libro draco = new Libro (harry);
        draco.setTitulo("Draco Malfoy");
        harry.toString();
        draco.toString();
        System.out.println(harry);
        System.out.println(draco);

        harry.prestar();
        harry.devolver();
    }
}
