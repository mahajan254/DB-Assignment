# Database Design Questions and Solutions

## Question 1:
Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

**Solution:**  
Product and Product_Category entities have a many-to-one relationship.  
Product * --- 1 Product_Category  
Product will have the id of the Product_Category as the foreign key inside Product table.

## Question 2:
How could you ensure that each product in the "Product" table has a valid category assigned to it?

**Solution:**  
Product_Category entity's id field will be the primary key. Hence it'll have UNIQUE and NOT NULL constraints assigned to it by default.  
The category_id field in the Product will be the foreign key, which will be referencing the Product_Category entity's id field.
