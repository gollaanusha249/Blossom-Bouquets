create database flowers1;
use flowers1;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    mobile_number VARCHAR(15) NOT NULL UNIQUE
);


 select * from users;

-- Create the products table with specified fields
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert initial data into the products table
INSERT INTO products (id, name, category, price, image) VALUES
(1, 'Modern Romance', 'Red flower', 629, 'https://assets.winni.in/product/primary/2022/6/61608.jpeg?dpr=1&w=400'),
(2, 'Mystique 8 Red Roses Bouquet', 'Red flower', 579, 'https://assets.winni.in/product/primary/2021/10/54302.jpeg?dpr=1&w=400'),
(3, '6 Orchid Bunch', 'Ranunculus', 1049, 'https://assets.winni.in/product/primary/2023/5/84867.jpeg?dpr=1&w=400'),
(4, 'Beautiful Pink Lilies Bunch', 'Red flower', 1899, 'https://assets.winni.in/product/primary/2014/6/29518.jpeg?dpr=1&w=400'),
(5, 'Blooming Insight', 'Red flower', 629, 'https://assets.winni.in/product/primary/2014/10/49707.jpeg?dpr=1&w=400'),
(6, 'Attractive Mixed Lilies', 'Red flower', 1949, 'https://assets.winni.in/product/primary/2014/10/47277.jpeg?dpr=1&w=400'),
(7, 'Classic White Lilies', 'Red flower', 1099, 'https://assets.winni.in/product/primary/2021/10/54274.jpeg?dpr=1&w=400'),
(8, 'Mixed Roses Arrangement', 'Red flower', 1299, 'https://assets.winni.in/product/primary/2014/6/30536.jpeg?dpr=1&w=400');

select * from products;


 
 
 -- Create the products table with specified fields
CREATE TABLE red (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert initial data into the products table
INSERT INTO red (id, name, category, price, image) VALUES
(1, 'adorable-red-roses-bunch', 'Red flower', 600, 'https://assets.winni.in/product/primary/2023/1/81909.jpeg?dpr=1&w=400'),
(2, 'adorable-red-roses-bunch', 'Red flower', 500, 'https://assets.winni.in/product/primary/2014/8/37563.jpeg?dpr=1&w=400'),
(3, 'hypnotic-red-roses-box', 'Red Flower', 1056, 'https://assets.winni.in/product/primary/2022/6/61605.jpeg?dpr=1&w=400'),
(4, 'divineful-ferrero-rocher-bunch', 'Red flower', 1000, 'https://assets.winni.in/product/primary/2023/5/84869.jpeg?dpr=1&w=400'),
(5, 'never-ending-love-roses-arrangement', 'Red flower', 570, 'https://assets.winni.in/product/primary/2023/1/82086.jpeg?dpr=1&w=400'),
(6, 'Blooming Insight', 'Red flower', 1621, 'https://assets.winni.in/product/primary/2022/9/73248.jpeg?dpr=1&w=400'),
(7, 'Red Roses Love', 'Red flower', 1099, 'https://assets.winni.in/product/primary/2014/8/46812.jpeg?dpr=1&w=400'),
(8, 'Passionate Bond', 'Red flower', 980, 'https://assets.winni.in/product/primary/2014/8/40362.jpeg?dpr=1&w=400');

select * from red;

CREATE TABLE lily (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);
INSERT INTO lily (id, name, category, price, image) VALUES
(1, 'Attractive Mixed', 'lily', 899, 'https://assets.winni.in/product/primary/2014/10/47277.jpeg?dpr=1&w=400'),
(2, 'Rose and Lily', 'rose-lily', 789, 'https://assets.winni.in/product/primary/2022/8/73058.jpeg?dpr=1&w=400'),
(3, 'lovely Asiatic lily', 'lily', 489, 'https://assets.winni.in/product/primary/2014/10/47275.jpeg?dpr=1&w=400'),
(4, 'Gem of Love', 'lily', 1299, 'https://assets.winni.in/product/primary/2014/10/47374.jpeg?dpr=1&w=400'),
(5, 'Bunch Of Yell', 'lily', 1029, 'https://assets.winni.in/product/primary/2014/8/37305.jpeg?dpr=1&w=400'),
(6, 'Charming Pink', 'lily', 1549, 'https://assets.winni.in/product/primary/2021/10/54305.jpeg?dpr=1&w=400'),
(7, 'Bliss Beauty', 'lily', 699, 'https://assets.winni.in/product/primary/2014/8/39436.jpeg?dpr=1&w=400'),
(8, 'Smile of lily', 'lily', 999, 'https://assets.winni.in/product/primary/2014/8/39467.jpeg?dpr=1&w=400');

select * from lily;

CREATE TABLE orchids (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);
INSERT INTO orchids (id, name, category, price, image) VALUES
(1, 'romantic tickle', 'blue', 1149, 'https://assets.winni.in/product/primary/2024/3/94256.jpeg?dpr=1&w=400'),
(2, 'Vibrant blue Bouquet', 'orchid', 1249, 'https://assets.winni.in/product/primary/2021/10/54302.jpeg?dpr=1&w=400'),
(3, 'Heart Winning', 'pink', 999, 'https://assets.winni.in/product/primary/2023/12/92565.jpeg?dpr=1&w=400'),
(4, 'perfect basket', 'basket', 1899, 'https://assets.winni.in/product/primary/2014/10/49801.jpeg?dpr=1&w=400'),
(5, 'Divine Beauty', 'orchid', 629, 'https://assets.winni.in/product/primary/2014/8/39436.jpeg?dpr=1&w=400'),
(6, 'purity of Bliss', 'orchid', 1549, 'https://assets.winni.in/product/primary/2014/8/39463.jpeg?dpr=1&w=400'),
(7, 'Epitome of Love', 'orchid', 2099, 'https://assets.winni.in/product/primary/2014/8/46841.jpeg?dpr=1&w=400'),
(8, 'Mixed Roses Arrangement', 'orchid', 1499, 'https://assets.winni.in/product/primary/2022/6/61621.jpeg?dpr=1&w=400');

select * from orchids;

-- Create the gerberas table with specified fields
CREATE TABLE gerberas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL,
    old_price DECIMAL(10, 2),
    discount INT,
    rating DECIMAL(2, 1)
);

-- Insert initial data into the gerberas table
INSERT INTO gerberas (id, name, category, price, image, old_price, discount, rating) VALUES
(1, 'Modern Romance', 'gerberas', 629.00, 'https://assets.winni.in/product/primary/2023/1/81939.jpeg?dpr=1&w=400', 879.00, 28, 4.7),
(2, 'Mystique 8 Red Roses Bouquet', 'gerberas', 579.00, 'https://assets.winni.in/product/primary/2023/1/81993.jpeg?dpr=1&w=400', 729.00, 21, 4.7),
(3, '6 Orchid Bunch', 'gerberas', 1049.00, 'https://assets.winni.in/product/primary/2022/6/61644.jpeg?dpr=1&w=400', 1699.00, 38, 4.8),
(4, 'Beautiful Pink Lilies Bunch', 'gerberas', 1899.00, 'https://assets.winni.in/product/primary/2022/6/61646.jpeg?dpr=1&w=400', 2299.00, 17, 5.0),
(5, 'Blooming Insight', 'gerberas', 629.00, 'https://assets.winni.in/product/primary/2023/2/82679.jpeg?dpr=1&w=400', 779.00, 19, 4.7),
(6, 'Attractive Mixed Lilies', 'gerberas', 1949.00, 'https://assets.winni.in/product/primary/2022/6/62412.jpeg?dpr=1&w=400', 2999.00, 35, 5.0),
(7, 'Classic White Lilies', 'gerberas', 1099.00, 'https://i.pinimg.com/474x/95/9c/d3/959cd3d03f7a7e42a35acfa108ad1b23.jpg', 1549.00, 29, 5.0),
(8, 'Mixed Roses Arrangement', 'gerberas', 1299.00, 'https://assets.winni.in/product/primary/2014/8/46836.jpeg?dpr=1&w=400', 1649.00, 21, 4.5);

-- Select all data from the gerberas table
SELECT * FROM gerberas;

-- Create the products table with specified fields
CREATE TABLE purple (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert initial data into the products table
INSERT INTO purple (id, name, category, price, image) VALUES
(1, 'Heart Winning', 'purple', 919, 'https://assets.winni.in/product/primary/2023/12/92565.jpeg?dpr=1&w=400'),
(2, 'Fantasy Pink', 'purple', 929, 'https://assets.winni.in/product/primary/2022/6/61635.jpeg?dpr=1&w=400'),
(3, 'Exotic purple', 'purple', 819, 'https://assets.winni.in/product/primary/2022/6/61617.jpeg?dpr=1&w=400'),
(4, 'Bold Beauty', 'purple', 889, 'https://assets.winni.in/product/primary/2014/10/49711.jpeg?dpr=1&w=400'),
(5, 'Blooming purple', 'purple', 659, 'https://assets.winni.in/product/primary/2022/12/79784.jpeg?dpr=1&w=400'),
(6, 'Attractive Mixed purple', 'purple', 929, 'https://assets.winni.in/product/primary/2014/8/46841.jpeg?dpr=1&w=400'),
(7, 'Classic purple roses', 'purple', 999, 'https://assets.winni.in/product/primary/2022/9/73211.jpeg?dpr=1&w=400'),
(8, 'Mixed purple Roses Arrangement', 'purple', 829, 'https://assets.winni.in/product/primary/2014/8/46832.jpeg?dpr=1&w=400');

select * from purple;

CREATE TABLE Birthday (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert initial data into the products table
INSERT INTO Birthday (id, name, category, price, image) VALUES
(1, 'Modern Romance', 'Birthday', 629, 'https://assets.winni.in/product/primary/2014/6/29518.jpeg?dpr=1&w=400'),
(2, 'Mystique 8 Red Roses Bouquet', 'Birthday', 579, 'https://assets.winni.in/product/primary/2023/1/81906.jpeg?dpr=1&w=400'),
(3, '6 Orchid Bunch', 'Birthday', 1049, 'https://assets.winni.in/product/primary/2022/7/71828.jpeg?dpr=1&w=400'),
(4, 'Beautiful Pink Lilies Bunch', 'Birthday', 1899, 'https://assets.winni.in/product/primary/2022/9/73203.jpeg?dpr=1&w=400'),
(5, 'Blooming Insight', 'Birthday', 629, 'https://assets.winni.in/product/primary/2023/1/82086.jpeg?dpr=1&w=400'),
(6, 'Attractive Mixed Lilies', 'Birthday', 1949, 'https://assets.winni.in/product/primary/2014/10/47277.jpeg?dpr=1&w=400'),
(7, 'Season of Flowery Gifts', 'Birthday', 1099, 'https://assets.winni.in/product/primary/2014/10/49707.jpeg?dpr=1&w=400'),
(8, 'Mixed Roses Arrangement', 'Birthday', 1299, 'https://assets.winni.in/product/primary/2022/9/73371.png?dpr=1&w=400');

select * from Birthday;

CREATE TABLE Premiumflowers(
   id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);
INSERT INTO premiumflowers (id, name, category, price, image) VALUES
(1, "Love Confessing Delights", "Premium Flower", 1189.00,"https://assets.winni.in/product/primary/2014/8/37717.jpeg?dpr=1&w=400" ),
(2,"Touch Of Luxury Mix Roses ", "Premium Flower", 1579, 'https://assets.winni.in/product/primary/2021/10/54302.jpeg?dpr=1&w=400'),
(3, "Mesmerizing Red Roses","Premium Flower", 1049, 'https://assets.winni.in/product/primary/2023/5/84867.jpeg?dpr=1&w=400'),
(4, 'Pink Roses Of Happiness',"Premium Flower", 999, 'https://assets.winni.in/product/primary/2022/8/73051.jpeg?dpr=1&w=400'),
(5, 'Divineful Ferrero Rocher Bunch',"Premium Flower",1629, 'https://assets.winni.in/product/primary/2022/6/61827.jpeg?dpr=1&w=400'),
(6, 'Exquisite Mix Bouquet', "Premium Flower", 1949, 'https://assets.winni.in/product/primary/2022/6/61837.jpeg?dpr=1&w=400'),
(7, 'Gem Of Love ', "Premium Flower", 1199,'https://assets.winni.in/product/primary/2014/10/47374.jpeg?dpr=1&w=400' ),
(8, "MyLove Forever", "Premium Flower", 1299, 'https://assets.winni.in/product/primary/2014/8/39318.jpeg?dpr=1&w=400');

select * from premiumflowers;

-- Create the products table with specified fields
CREATE TABLE whiteflowers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert initial data into the products table
INSERT INTO whiteflowers (id, name, category, price, image) VALUES
(1, 'White Feather', 'whiteflowers', 829, 'https://assets.winni.in/product/primary/2024/2/94169.jpeg?dpr=1&w=400'),
(2, 'Mystique 8 White Roses Bouquet', 'whiteflowers', 949, 'https://assets.winni.in/product/primary/2014/10/47374.jpeg?dpr=1&w=400'),
(3, 'Exotic White', 'whiteflowers', 3459, 'https://assets.winni.in/product/primary/2014/8/38534.jpeg?dpr=1&w=400'),
(4, 'White Beauty', 'whiteflowers', 789, 'https://assets.winni.in/product/primary/2014/10/47374.jpeg?dpr=1&w=400'),
(5, 'Blooming white', 'whiteflowers', 829, 'https://assets.winni.in/product/primary/2014/8/34878.jpeg?dpr=1&w=400'),
(6, 'Attractive white roses', 'whiteflowers', 1149, 'https://assets.winni.in/product/primary/2014/10/47277.jpeg?dpr=1&w=400'),
(7, 'Classic White roses', 'whiteflowers', 999, 'https://assets.winni.in/product/primary/2021/10/54601.jpeg?dpr=1&w=400'),
(8, 'Mixed Roses Arrangement', 'whiteflowers', 569, 'https://assets.winni.in/product/primary/2023/1/81993.jpeg?dpr=1&w=400');

select * from whiteflowers;
-- Create the products table with specified fields

CREATE TABLE mixed (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Insert initial data into the products table
INSERT INTO mixed (id, name, category, price, image) VALUES
(1, 'Heart Winning', 'mixed', 929, 'https://assets.winni.in/product/primary/2021/10/55146.jpeg?dpr=1&w=400'),
(2, 'Mixed magic', 'mixed', 939, 'https://assets.winni.in/product/primary/2014/8/46841.jpeg?dpr=1&w=400'),
(3, 'Exotic mixture', 'mixed', 849, 'https://assets.winni.in/product/primary/2023/1/81936.jpeg?dpr=1&w=400'),
(4, 'Bold Beauty', 'mixed', 859, 'https://assets.winni.in/product/primary/2024/2/94179.jpeg?dpr=1&w=400'),
(5, 'Blooming Insights', 'mixed', 669, 'https://assets.winni.in/product/primary/2022/8/73058.jpeg?dpr=1&w=400'),
(6, 'Attractive Mixed roses', 'mixed', 979, 'https://assets.winni.in/product/primary/2014/6/29518.jpeg?dpr=1&w=400'),
(7, 'Classic mixed roses', 'mixed', 989, 'https://assets.winni.in/product/primary/2014/8/39471.jpeg?dpr=1&w=400'),
(8, 'Mixed Roses Arrangement', 'mixeproductsd', 899, 'https://assets.winni.in/product/primary/2021/10/54274.jpeg?dpr=1&w=400');

select * from mixed;

