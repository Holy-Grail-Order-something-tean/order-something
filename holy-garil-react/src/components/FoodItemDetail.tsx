import "../assets/styles/FoodItemDetail.css";
import type { FoodItemDetailInfo } from "../types/food.ts";

function FoodItemDetail({
  name,
  price,
  calories,
  description,
  pictureUrl,
}: FoodItemDetailInfo) {
  return (
    <div className="food-item">
      <img src={pictureUrl} alt={name} />
      <section>
        <FoodItemDescription
          name={name}
          price={price}
          calorie={calories}
          description={description}
        />
      </section>
    </div>
  );
}

/**
 * Render food item detail
 * @param name The name of the food
 * @param price Price
 * @param calorie Calorie
 * @param description Food description
 */
function FoodItemDescription({
  name,
  price,
  calorie,
  description,
}: {
  name: string;
  price: number;
  calorie: number;
  description: string;
}) {
  return (
    <>
      <h2>{name}</h2>
      <p>
        <strong>Price:</strong> £{price.toFixed(2)}
      </p>
      <p>
        <strong>Calories:</strong> {calorie}
      </p>
      <p>{description}</p>
    </>
  );
}

export default FoodItemDetail;
