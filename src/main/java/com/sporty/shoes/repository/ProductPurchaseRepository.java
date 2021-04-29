package com.sporty.shoes.repository;

import com.sporty.shoes.model.ProductPurchase;
import com.sporty.shoes.model.ProductPurchaseKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductPurchaseRepository extends JpaRepository<ProductPurchase, ProductPurchaseKey> {
}
