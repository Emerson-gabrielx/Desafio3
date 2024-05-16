package sv.edu.udb.www.model;

import javax.persistence.*;

@Entity
public class Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String codigoProducto;
    private String nombre;
    private String descripcion;
    private String imagen;
    @ManyToOne
    @JoinColumn(name = "categoria_id", nullable = false)
    private Categoria categoria;
    private double precio;
    private int existencias;

    // Getters y Setters
}
