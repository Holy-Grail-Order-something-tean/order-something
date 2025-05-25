import type {FoodItem} from "../types/food.ts"
import classes from "../assets/styles/foodItemCard.module.css";


function FoodItemCard({
  pictureUrl,
  name,
  price,
  calories,
  description,
}: FoodItem) {
  return (
    <div className={classes.foodItemCard}>
      <div className={classes.cardText}>
        <h4>{name}</h4>
        <p>
          <span className={classes.price}>£{price}</span>
          <span className={classes.calories}> • {calories} kcal</span>
        </p>
        <p className={classes.description}>{description}</p>
      </div>
      <div className={classes.cardImageContainer}>
        <img src={pictureUrl} alt={`A picture of a ${name}`}/>
      </div>
    </div>
  );
}

export default FoodItemCard;
