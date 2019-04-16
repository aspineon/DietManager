package com.github.sirlacky.DietManager.domain.repositories;

import com.github.sirlacky.DietManager.domain.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product,Long> {

    Optional<Product> findProductByCode(int code);

}


