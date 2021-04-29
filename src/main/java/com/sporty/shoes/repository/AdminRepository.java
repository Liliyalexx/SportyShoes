package com.sporty.shoes.repository;

import com.sporty.shoes.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByLoginUsernameAndLoginPassword(String username, String password);
}