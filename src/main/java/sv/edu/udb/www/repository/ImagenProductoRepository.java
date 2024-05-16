package sv.edu.udb.www.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sv.edu.udb.www.model.ImagenProducto;

public interface ImagenProductoRepository extends JpaRepository<ImagenProducto, Long> {
}
