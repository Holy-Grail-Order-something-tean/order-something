package com.order_something.holy_grail.repository;

import com.order_something.holy_grail.entity.Category;
import com.order_something.holy_grail.entity.FoodItem;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class FoodRepository {
    private final JdbcTemplate jdbcTemplate;

    /**
     * Get all categories
     * @return all categories
     */
    public List<Category> getCategories() {
        String sqlCategories = """
                SELECT category_id, name
                FROM category
                """;

        return jdbcTemplate.query(
                sqlCategories,
                (rs, rowNum) -> new Category(
                        rs.getLong("category_id"),
                        rs.getString("name")
                )
        );
    }

    /**
     * Get food by category id
     * @param categoryId category id
     * @return A list of food items that is contained in the category
     */
    public List<FoodItem> getFoodByCategoryId(Long categoryId) {
        String sqlItemsByCategory = """
                SELECT f.food_id, f.name, f.price, f.calories, f.description, f.pictureUrl
                FROM food_category fc
                JOIN food f ON fc.food_id = f.food_id
                WHERE fc.category_id = ?
                """;

        return jdbcTemplate.query(
                sqlItemsByCategory,
                (rs, rowNum) -> new FoodItem(
                        rs.getLong("food_id"),
                        rs.getString("name"),
                        rs.getBigDecimal("price"),
                        rs.getInt("calories"),
                        rs.getString("description"),
                        rs.getString("pictureUrl")
                ), categoryId
        );
    }
}
