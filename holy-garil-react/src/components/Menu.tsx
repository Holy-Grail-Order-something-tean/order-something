import type { FoodItem, Category, } from "../types/food.ts"
import { useEffect, useState, useRef } from "react";
import Modal from "./Modal.tsx";
import FoodItemDetail from "./FoodItemDetail.tsx";
import classes from "../assets/styles/foodItemMenu.module.css";
import FoodCategorySelector from "./FoodCategorySelector.tsx"
import FoodCategorySection from "./FoodCategorySection.tsx";

function Menu() {
  const [menu, setMenu] = useState<Category[] | null>(null);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  const [selected, setSelected] = useState<FoodItem | null>(null);
  const [activeCategory, setActiveCategory] = useState<number | null>(null);

  const sectionRefs = useRef<Record<number, HTMLElement | null>>({});

  function handleCategoryClick(id: number) {
    setActiveCategory(id);
    const section = sectionRefs.current[id];
    if (section) {
      section.scrollIntoView({behavior: "smooth"});
    }
  }


  function handleCardClick(id: number) {
    if (!menu) return;
    const allItems = menu.flatMap((cat) => cat.foodItemList);
    const foodItem = allItems.find((item) => item.id === id) ?? null;
    setSelected(foodItem);
  }


  useEffect(() => {
    fetch(`http://localhost:8080/food/menu`)
      .then(async (response) => {
        if (!response.ok) throw new Error(`HTTP ${response.status}`);
        const data: Category[] = await response.json();
        console.log(data);
        setMenu(data);
      })
      .catch((err) => {
        console.error("Failed to fetch the menu", err);
        setError(err.message);
      })
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error: {error}</p>;
  if (!menu) return <p>No data.</p>;

  return (
    <>
      <div className={classes.foodItemMenu}>

      <FoodCategorySelector 
        categories={menu}
        selectedCategoryId={activeCategory} 
        onCategoryClick={handleCategoryClick}
      />


      {menu.map(category => (
        <FoodCategorySection
          key={category.id}
          category={category}
          onCardClick={handleCardClick}
          ref={el => {sectionRefs.current[category.id] = el}}
        />
      ))}
      </div>

      <Modal open={!!selected} onClose={() => setSelected(null)}>
        {selected && <FoodItemDetail {...selected} />}
      </Modal>
    </>
  );
}

export default Menu