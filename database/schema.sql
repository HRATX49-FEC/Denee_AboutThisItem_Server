DROP DATABASE IF EXISTS purrget;

CREATE DATABASE purrget;

USE purrget;

CREATE TABLE categories (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(255) NOT NULL
);


CREATE TABLE specifications (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  size VARCHAR(255),
  mouseCount INT,
  dogFriend VARCHAR(255),
  in_out VARCHAR(255),
  itemNum INT NOT NULL
);




CREATE TABLE cats (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  catName VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  livesLeft INT NOT NULL,
  sex VARCHAR(255),
  specs INT NOT NULL,
  INDEX spec (specs),
    FOREIGN KEY (specs)
    REFERENCES specifications(ID)
    ON DELETE CASCADE,
  categoryID INT NOT NULL,
  INDEX categ_ind (categoryID),
  FOREIGN KEY (categoryID)
    REFERENCES categories(ID)
    ON DELETE CASCADE,
  UNIQUE KEY (catName)
);

INSERT INTO categories (category) VALUES ('Floof');
INSERT INTO categories (category) VALUES ('Chonk');
INSERT INTO categories (category) VALUES ('Hairless');
INSERT INTO categories (category) VALUES ('Adorable');




INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Gizmo', 4, 5, 'Male', 1, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Kimono', 3, 7, 'Female', 2, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Tuxedo', 2, 9, 'Male', 3, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Xito', 1, 9, 'Male', 4, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Covid', 8, 2, 'Male', 5, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Grumps', 10, 1, 'Female', 6, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Midnyght', 1, 9, 'Female', 7, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sassy', 12, 3, 'Female', 8, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Luna', 1, 8, 'Female', 9, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Ash', 2, 9, 'Male', 10, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Walnut', 5, 5, 'Male', 11, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sphynx', 15, 1, 'Male', 12, 3);


INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Oliver', 5, 5, 'Male', 13, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Bella', 5, 5, 'Male', 14, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Simba', 5, 5, 'Male', 15, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Chloe', 5, 5, 'Male', 16, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Max', 5, 5, 'Male', 17, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Lucy', 5, 5, 'Male', 18, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Lily', 5, 5, 'Male', 19, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Nala', 5, 5, 'Male', 20, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sophie', 5, 5, 'Male', 21, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Milo', 5, 5, 'Male', 22, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Rocky', 5, 5, 'Male', 23, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Coco', 5, 5, 'Male', 24, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Charlie', 5, 5, 'Male', 25, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Smokey', 5, 5, 'Male', 26, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Mia', 5, 5, 'Male', 27, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Jack', 5, 5, 'Male', 28, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Angel', 5, 5, 'Male', 29, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Tigger', 5, 5, 'Male', 30, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Oreo', 5, 5, 'Male', 31, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Shadow', 5, 5, 'Male', 32, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Felix', 5, 5, 'Male', 33, 4);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Willow', 5, 5, 'Male', 34, 4);


INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Romeo', 5, 5, 'Male', 35, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Molly', 5, 5, 'Male', 36, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Tiger', 5, 5, 'Male', 37, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sammy', 5, 5, 'Male', 38, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Jasper', 5, 5, 'Male', 39, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Biscuit', 5, 5, 'Male', 40, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Bailey', 5, 5, 'Male', 41, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Gracie', 5, 5, 'Male', 42, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Loki', 5, 5, 'Male', 43, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sasha', 5, 5, 'Male', 44, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Simon', 5, 5, 'Male', 45, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Toby', 5, 5, 'Male', 46, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Ruby', 5, 5, 'Male', 47, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Cleo', 5, 5, 'Male', 48, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Peanut', 5, 5, 'Male', 49, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Oscar', 5, 5, 'Male', 50, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Leo', 5, 5, 'Male', 51, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Lucky', 5, 5, 'Male', 52, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Buddy', 5, 5, 'Male', 53, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Daisy', 5, 5, 'Male', 54, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Jasmine', 5, 5, 'Male', 55, 1);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Callie', 5, 5, 'Male', 56, 1);


INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Pepper', 5, 5, 'Male', 57, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Leon', 5, 5, 'Male', 58, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Lola', 5, 5, 'Male', 59, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Kitty', 5, 5, 'Male', 60, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Patches', 5, 5, 'Male', 61, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Princess', 5, 5, 'Male', 62, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Missy', 5, 5, 'Male', 63, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Lulu', 5, 5, 'Male', 64, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Mittens', 5, 5, 'Male', 65, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sebastian', 5, 5, 'Male', 66, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Abby', 5, 5, 'Male', 67, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Orion', 5, 5, 'Male', 68, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Yuki', 5, 5, 'Male', 69, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Scout', 5, 5, 'Male', 70, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sadie', 5, 5, 'Male', 71, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Cupcake', 5, 5, 'Male', 72, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('George', 5, 5, 'Male', 73, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Butters', 5, 5, 'Male', 74, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Cuddles', 5, 5, 'Male', 75, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Boots', 5, 5, 'Male', 76, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Whiskers', 5, 5, 'Male', 77, 2);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Mr. Snuffles', 5, 5, 'Male', 78, 2);


INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sheba', 5, 5, 'Male', 79, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Daenerys', 5, 5, 'Male', 80, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Tiffany', 5, 5, 'Male', 81, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Stella', 5, 5, 'Male', 82, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Ella', 5, 5, 'Male', 83, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Gypsy', 5, 5, 'Male', 84, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Alice', 5, 5, 'Male', 85, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Penny', 5, 5, 'Male', 86, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Cooper', 5, 5, 'Male', 87, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Harley', 5, 5, 'Male', 88, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Sam', 5, 5, 'Male', 89, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Garfield', 5, 5, 'Male', 90, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('NiuNiu', 5, 5, 'Male', 91, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Tucker', 5, 5, 'Male', 92, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Bandit', 5, 5, 'Male', 93, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Candy', 5, 5, 'Male', 94, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Ziggy', 5, 5, 'Male', 95, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Socks', 5, 5, 'Male', 96, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Rusty', 5, 5, 'Male', 97, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Batman', 5, 5, 'Male', 98, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Gatsby', 5, 5, 'Male', 99, 3);
INSERT INTO cats (catName, age, livesLeft, sex, specs, categoryID) VALUES ('Raven', 5, 5, 'Male', 100, 3);





INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 11, 'Yes', 'Indoor/Outdoor', 74829);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 3, 'Yes', 'Indoor', 28465);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 1, 'No', 'Outdoor', 57842);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Large', 0, 'Yes', 'Indoor/Outdoor', 13758);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 23, 'Yes', 'Outdoor', 28347);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 4, 'No', 'Indoor', 75832);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 0, 'No', 'Indoor', 49563);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 6, 'Yes', 'Indoor/Outdoor', 58739);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 6, 'Yes', 'Indoor', 39275);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Large', 2, 'Yes', 'Indoor', 78493);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Small', 2, 'Yes', 'Indoor/Outdoor', 93847);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 38, 'No', 'Indoor/Outdoor', 29384);


INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);
INSERT INTO specifications (size, mouseCount, dogFriend, in_out, itemNum) VALUES ('Medium', 0, 'Yes', 'Outdoor', 55);