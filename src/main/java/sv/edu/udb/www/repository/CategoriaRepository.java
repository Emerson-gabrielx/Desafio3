package sv.edu.udb.www.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sv.edu.udb.www.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}
