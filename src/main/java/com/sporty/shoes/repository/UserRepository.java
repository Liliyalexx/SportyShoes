package com.sporty.shoes.repository;

import com.sporty.shoes.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByLoginUsernameAndLoginPassword(String username, String password);
    List<User> findByFirstNameContainsOrLastNameContainsOrEmailContains(String firstName, String lastName, String email);
}
