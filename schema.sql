CREATE TABLE product_category (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  description text,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at timestamp DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE product (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  description text,
  sku varchar(255) NOT NULL,
  category_id int NOT NULL,
  inventory_id int NOT NULL,
  price decimal(10,2) NOT NULL,
  discount_id int DEFAULT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at timestamp DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES product_category(id),
  FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
  FOREIGN KEY (discount_id) REFERENCES discount(id)
);

CREATE TABLE product_inventory (
  id int NOT NULL AUTO_INCREMENT,
  quantity int NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at timestamp DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE discount (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  description text,
  discount_percent decimal(5,2) NOT NULL,
  active boolean NOT NULL DEFAULT TRUE,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_at timestamp DEFAULT NULL,
  PRIMARY KEY (id)
);