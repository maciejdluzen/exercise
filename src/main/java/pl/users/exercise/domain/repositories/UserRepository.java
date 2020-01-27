package pl.users.exercise.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.users.exercise.domain.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {


}
