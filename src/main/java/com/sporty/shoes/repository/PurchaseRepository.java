package com.sporty.shoes.repository;

import com.sporty.shoes.model.Purchase;
import com.sporty.shoes.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Long> {
    List<Purchase> findAllByUser(User user);
    List<Purchase> findByDate(LocalDate date);
}