package com.order_something.holy_grail.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FoodItem {
    private Long id;
    private String name;
    private BigDecimal price;
    private Integer calories;
    private String description;
    private String pictureUrl;
}
