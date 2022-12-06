-- Features
-- users can sign into the app with their email and password
-- users can create recipes with ingredients and instructions
-- recipes can be marked as public or private
-- users can view other people’s recipes
-- ingredients from recipes can be added to user’s grocery lists
-- users can create their own occasions and assign recipes to occasions

-- Brainstorming
-- users
-- -users have pw and email
-- -users can create recipes
-- -users can create occasions

-- recipes
-- -made by users
-- -one user can have many recipes
-- - 1 recipe belongs to one user?

 
-- -ingredients

-- -grocery list





tables 
users
-user_id PRIMARY KEY
- email VARCHAR(50)
- password

recipes
recipe_id PRIMARY KEY
user_id FOREIGN KEY
-content TEXT
-private or public BOOLEAN

occasions
-occas_id
-name VARCHAR(50)
-user_id FOREIGN KEY users(user_id)
-content TEXT
-users can assign recipes

grocery list
-grocery_id
-grocery name
-user_id

ingredients
-ingre_id
-ingre_name


CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(100),
    password VARCHAR(10)
);


CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    user_id INTEGER NOT NULL,
    private BOOLEAN,
     REFERENCES users(user_id)
);

CREATE TABLE ingredients (
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    ingre_id INTEGER NOT NULL,
    ingre_name VARCHAR(50)
);

CREATE TABLE occasions (
    occas_id SERIAL PRIMARY KEY,
    occas_name VARCHAR(50),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    content TEXT
);

CREATE TABLE groceries (
    groc_id SERIAL PRIMARY KEY,
    groc_name VARCHAR(50),
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    content TEXT
);
 




