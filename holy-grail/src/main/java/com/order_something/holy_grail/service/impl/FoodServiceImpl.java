package com.order_something.holy_grail.service.impl;

import com.order_something.holy_grail.entity.Category;
import com.order_something.holy_grail.entity.FoodItem;
import com.order_something.holy_grail.repository.FoodRepository;
import com.order_something.holy_grail.service.FoodService;
import com.order_something.holy_grail.vo.CategoryAndFoodVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class FoodServiceImpl implements FoodService {

    private final FoodRepository foodRepository;

    @Override
    @Transactional
    public List<CategoryAndFoodVO> getCategoriesAndFoods() {
        // Get all categories
        List<Category> categories = foodRepository.getCategories();

        // Category and food view object list
        List<CategoryAndFoodVO> categoryAndFoodVOList = new ArrayList<>();

        // Query the foods of each category
        for (Category c : categories) {
            // query by category id
            List<FoodItem> foodItemList =  foodRepository.getFoodByCategoryId(c.getCategory_id());

            // Create categoryAndFood object and add to list
            categoryAndFoodVOList.add(new CategoryAndFoodVO(
                        c.getCategory_id(),
                        c.getName(),
                        foodItemList
            ));
        }

        return categoryAndFoodVOList;
    }
}
