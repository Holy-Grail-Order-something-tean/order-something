USE holy_grail;


INSERT INTO food (name, price, calories, description, pictureUrl)
VALUES ('McSpicy® x Frank\'s RedHot®',
        '6.59',
        507,
        'Hot and spicy 100% chicken breast in a crispy coating, served with lettuce, cheese made with Emmental, jalapenos, onions and a Frank’s RedHot® Mayo in a sesame seed bun. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Steakhouse Stack',
        '6.49',
        667,
        'Two 100% British and Irish beef patties, a slice of cheddar cheese, crispy onions, red onions and lettuce served with a black peppercorn sauce, all in a freshly toasted glazed sesame topped bun. Allergen info: www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Cheesy Garlic Bread Dippers Sharebox®',
        '6.99',
        641,
        'A portion of twelve dippers of mozzarella cheese flavoured with garlic and chives, in a ciabatta-style breadcrumb coating, served with rich tomato dip. Serves 3. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('The Deluxe Duo Deal (for Two)',
        '11.99',
        2160,
        'Choose two burgers with two medium fries. Product customisation may not be possible on this deal. Allergen information available at mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Feed the Family Deal (for Four)',
        '14.99',
        3008,
        'Choose two core burgers & two small burgers with two medium fries & two small fries. Product customisation may not be possible on this deal. Allergen information available at mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('The McDonald\'s Chicken Sharebox®',
        '10.99',
        1240,
        '6x Chicken Selects® with 12x Chicken McNuggets®, 2x McNuggets® Dips and 2x Selects Dips. Serves 4 people (per serving 1297KJ/310kcal). Allergen info: www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('5 Chicken Selects®',
        '6.39',
        599,
        'Strips of tender chicken breast in a seasoned, crispy coating. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('3 Chicken Selects®',
        '5.29',
        359,
        'Strips of tender chicken breast in a seasoned, crispy coating. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Frank''s RedHot® Mayo Dip',
        '0.80',
        103,
        'Spicy chilli mayonnaise-based sauce. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('The Katsu Chicken One (Grilled)',
        '3.89',
        342,
        'Grilled chicken breast, katsu sauce, crispy onions, cucumber and lettuce in a soft, toasted tortilla wrap. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Cheesy Garlic Bread Dippers',
        '3.19',
        214,
        'Four dippers of mozzarella cheese flavoured with garlic and chives, in a ciabatta-style breadcrumb coating, served with rich tomato dip. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Cheesy Garlic Bread Dippers Sharebox®',
        '6.99',
        641,
        'A portion of twelve dippers of mozzarella cheese flavoured with garlic and chives, in a ciabatta-style breadcrumb coating, served with rich tomato dip. Serves 3. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Raspberry & White Chocolate Pie',
        '2.29',
        313,
        'Crispy pink pastry filled with a smooth white chocolate ganache and sharp raspberry compote. Allergen information available at www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Regular Frozen Cherry Lemonade',
        '3.39',
        110,
        'Tangy frozen lemonade with a deliciously sweet cherry flavoured swirl. Allergen info: www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       ),
       ('Tropicana® Apple Juice',
        '2.29',
        115,
        'Perfectly pressed apple juice, made from handpicked apples and delivering the signature Tropicana taste. Perfect addition to your meal. Allergen info: www.mcdonalds.co.uk/nutrition',
        'https://stevefengsbucket.s3.eu-west-2.amazonaws.com/Holy_Grail/mc_burger.avif'
       );

INSERT INTO category (name)
VALUES ('Featured'),
       ('What\'s New?'),
       ('Sharers & Bundles');

INSERT INTO food_category (food_id, category_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (1, 2),
       (2, 2),
       (7, 2),
       (8, 2),
       (9, 2),
       (10, 2),
       (11, 2),
       (12, 2),
       (13, 2),
       (14, 2),
       (15, 2),
       (3, 3),
       (4, 3),
       (5, 3),
       (6, 3);



