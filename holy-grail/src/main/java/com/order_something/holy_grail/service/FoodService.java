package com.order_something.holy_grail.service;

import com.order_something.holy_grail.vo.CategoryAndFoodVO;

import java.util.List;

public interface FoodService {

    /**
     * Getting a restaurant's complete food menu. a menu contains food categories and food items.
     * @return Returns all categories and nested food items.
     */
    List<CategoryAndFoodVO> getCategoriesAndFoods();

}
