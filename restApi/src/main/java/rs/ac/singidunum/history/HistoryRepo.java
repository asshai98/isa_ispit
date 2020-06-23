package rs.ac.singidunum.history;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.history.History;

public interface HistoryRepo extends JpaRepository<History, Integer> {
}
