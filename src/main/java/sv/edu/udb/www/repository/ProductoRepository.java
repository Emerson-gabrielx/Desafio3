package sv.edu.udb.www.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sv.edu.udb.www.model.Producto;

public interface ProductoRepository extends JpaRepository<Producto, Long> {
}
