package com.order_something.holy_grail.vo;


import com.order_something.holy_grail.entity.FoodItem;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class CategoryAndFoodVO {
    private Long id;
    private String name;
    private List<FoodItem> foodItemList;
}
