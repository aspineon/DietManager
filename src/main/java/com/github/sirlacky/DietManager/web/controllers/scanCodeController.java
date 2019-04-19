package com.github.sirlacky.DietManager.web.controllers;

import com.github.sirlacky.DietManager.domain.model.Product;
import com.github.sirlacky.DietManager.domain.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping("/scanCode")
public class scanCodeController {

    @Autowired
    ProductRepository productRepository;

    @GetMapping
    public String prepareScanningPage(Model model) {
        model.addAttribute("product", new Product());
        return "scanCode";
    }

    @PostMapping
    public String lookForProductInBase(@Valid Model model, Product product, BindingResult result) {
        model.addAttribute("product",new Product());
        if (result.hasErrors()) {
            return "scanCode";
        }
        Optional<Product> existingProductOpt = productRepository.findProductByCode(product.getCode());
        Product existingProduct = existingProductOpt.orElse(null);
        if (existingProduct != null) {
            return "foundProduct";
        }
        return "redirect:addProduct";
    }
}
