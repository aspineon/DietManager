package com.github.sirlacky.DietManager.domain.model;

import lombok.*;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "products")
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int code;
    private String name;
    private int calories;
    private int whey;
    private int carbs;
    private int fat;
    private String type;
    private int volume;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return calories == product.calories &&
                whey == product.whey &&
                carbs == product.carbs &&
                fat == product.fat &&
                volume == product.volume &&
                Objects.equals(id, product.id) &&
                Objects.equals(name, product.name) &&
                Objects.equals(type, product.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, calories, whey, carbs, fat, type, volume);
    }
}
