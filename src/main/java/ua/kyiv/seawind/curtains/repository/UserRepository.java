package ua.kyiv.seawind.curtains.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.kyiv.seawind.curtains.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findByActivateCode(String code);

}
