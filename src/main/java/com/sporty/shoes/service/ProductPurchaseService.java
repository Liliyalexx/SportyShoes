package com.sporty.shoes.service;

import com.sporty.shoes.model.ProductPurchase;
import com.sporty.shoes.repository.ProductPurchaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductPurchaseService {
    private ProductPurchaseRepository productPurchaseRepository;

    @Autowired
    public ProductPurchaseService(ProductPurchaseRepository productPurchaseRepository) {
        this.productPurchaseRepository = productPurchaseRepository;
    }

    public ProductPurchase save(ProductPurchase productPurchase) {
        return productPurchaseRepository.save(productPurchase);
    }
}
