package com.order_something.holy_grail.controller;

import com.order_something.holy_grail.service.FoodService;
import com.order_something.holy_grail.vo.CategoryAndFoodVO;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/food")
@RequiredArgsConstructor
public class FoodController {

    private final FoodService foodService;

    /**
     * Get categories and it's foods
     * @return Return the JSON object of the complete menu
     */
    @GetMapping("/menu")
    public List<CategoryAndFoodVO> getCategoriesAndFood() {
        return foodService.getCategoriesAndFoods();
    }
}
