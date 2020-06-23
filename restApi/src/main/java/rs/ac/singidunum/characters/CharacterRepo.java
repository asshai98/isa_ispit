package rs.ac.singidunum.characters;

import org.springframework.data.jpa.repository.JpaRepository;


public interface CharacterRepo extends JpaRepository<Characters, Integer> {
}
