import type {CategorySelector, Category} from "../types/food.ts"
import classes from "../assets/styles/foodCategorySelector.module.css"

function FoodCategorySelector({
    categories, 
    selectedCategoryId, 
    onCategoryClick,
}: CategorySelector) {
    console.log(`Categories: ${categories}`);

    return (
      <div className={classes.categorySelector}>
        <section className={classes.categorySelectorButtons}>
          {categories.map((category: Category) => (
            <button 
                key={category.id} 
                className={
                    category.id === selectedCategoryId
                        ? classes.categoryButtonActive
                        : classes.categoryButton
                }
                onClick={() => onCategoryClick(category.id)}
            >
              {category.name}
            </button>
          ))}
        </section>

        <div className={classes.categorySelectorSeparator}></div>
      </div>
    );
}

export default FoodCategorySelector;


