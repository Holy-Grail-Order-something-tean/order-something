import { forwardRef } from "react";
import FoodItemCard from "./FoodItemCard"
import type { CategorySection, FoodItem } from "../types/food"
import classes from "../assets/styles/foodCategory.module.css"


const FoodCategorySection = forwardRef<HTMLElement, CategorySection>(
  ({category, onCardClick}, ref) => (
      <section key={category.id} className={classes.categorySection} ref={ref}>
        <h2>{category.name}</h2>
        {category.foodItemList.map((item: FoodItem) => (
          <div
            key={item.id}
            onClick={() => onCardClick(item.id)}
            className={classes.foodItemCard}>
            <FoodItemCard {...item} />
          </div>
          ))}
      </section>
  )
);

export default FoodCategorySection;
          
          
          
          
