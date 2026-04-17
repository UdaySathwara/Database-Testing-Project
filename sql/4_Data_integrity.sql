USE Ecom_Project;

-- ==============================================
-- TC001 : Check Data Integrity on Users Table --
-- ==============================================

-- Validate USER_ID --
INSERT INTO users VALUES(1,'Uday','uday@mail.com','123','9945985978');
INSERT INTO users VALUES(1,'Test','test@mail.com','123','8888888888'); -- NOT VALID --
INSERT INTO users VALUES(NULL,'Test','test2@mail.com','123','7777777777'); -- NOT VALID --

-- Validate NAME --	
INSERT INTO users VALUES(2,NULL,'abc@mail.com','123','9999999996'); -- NOT VALID --

-- Validate EMAIL --	
INSERT INTO users VALUES(2,'Rahul','rahul@mail.com','123','7899563978');
INSERT INTO users VALUES(3,'Amit','rahul@mail.com','123','9999999997'); -- NOT VALID --
	
-- Validate PASSWORD --
INSERT INTO users VALUES(3,'Test',NULL,'123','9999999995'); -- NOT VALID --
	
-- Validate PHONE -- 
INSERT INTO users VALUES(3,'Mahi','mahi6@mail.com','123',NULL);

SELECT * FROM users;

-- ===================================================
-- TC002 : Check Data Integrity on Categories Table --
-- ===================================================

-- Validate CATEGORY_ID	--
INSERT INTO categories VALUES(1,'Accessories');
INSERT INTO categories VALUES(1,'Fitness'); -- NOT VALID --
INSERT INTO categories VALUES(NULL,'Health'); -- NOT VALID --
			
-- Validate CATEGORY_NAME --	
INSERT INTO categories VALUES(2,NULL); -- NOT VALID --
INSERT INTO categories VALUES(2,'Clothing');

SELECT * FROM categories;

-- =================================================
-- TC003 : Check Data Integrity on Products Table -- 
-- =================================================

-- Validate PRODUCT_ID -- 
INSERT INTO products VALUES(1,'Earphones',499.99,20,1);	
INSERT INTO products VALUES(1,'Dumbbell Set',999.99,10,2); -- NOT VALID --
INSERT INTO products VALUES(NULL,'Resistance Band',299.99,15,1); -- NOT VALID --
				
-- Validate NAME --
INSERT INTO products VALUES(2,NULL,399.99,10,1); -- NOT VALID --
				
-- Validate PRICE --
INSERT INTO products VALUES(2,'Sunglasses',350.00,25,1);
INSERT INTO products VALUES(3,'Skipping Rope',-100.00,30,2); -- NOT VALID --
				
-- Validate STOCK -- 
INSERT INTO products VALUES(3,'Dress',799.00,10,2);
INSERT INTO products VALUES(4,'Kettlebell',1200.00,-5,2); -- NOT VALID --
				
-- Validate CATEGORY_ID --
INSERT INTO products VALUES(4,'Hoodie',899.00,12,2);
INSERT INTO products VALUES(5,'Protein Powder',1499.00,20,999); -- NOT VALID -- 

SELECT * FROM products;

-- ==============================================
-- TC004 : Check Data Integrity on order Table -- 
-- ==============================================

-- Validate ORDER_ID --	
INSERT INTO orders VALUES(1,1,NOW(),1299.99,'Pending');
INSERT INTO orders VALUES(1,2,NOW(),799.00,'Pending'); -- NOT VALID -- 
INSERT INTO orders VALUES(NULL,1,NOW(),500.00,'Pending'); -- NOT VALID --
		
-- Validate USER_ID --
INSERT INTO orders VALUES(2,2,NOW(),999.00,'Pending');
INSERT INTO orders VALUES(3,999,NOW(),499.00,'Pending'); -- NOT VALID --
		
-- Validate ORDER_DATE --	
INSERT INTO orders(order_id,user_id,total_amount,status)
VALUES(3,1,1500.00,'Pending');
		
-- Validate TOTAL_AMOUNT -- 
INSERT INTO orders VALUES(4,1,NOW(),799.00,'Completed');
INSERT INTO orders VALUES(5,1,NOW(),-100.00,'Completed'); -- NOT VALID BUT RUNS --
		
-- Validate STATUS	-- 
INSERT INTO orders VALUES(5,2,NOW(),1200.00,'Pending');
INSERT INTO orders VALUES(6,2,NOW(),1200.00,NULL);

SELECT * FROM orders;

-- ====================================================
-- TC005 : Check Data Integrity on order_items Table -- 
-- ====================================================

-- Validate ORDER_ITEM_ID --	
INSERT INTO order_items VALUES(1,1,1,2,999.98);
INSERT INTO order_items VALUES(1,2,2,1,350.00); -- NOT VALID --
INSERT INTO order_items VALUES(NULL,1,1,1,499.99); -- NOT VALID --
		
-- Validate ORDER_ID --
INSERT INTO order_items VALUES(2,2,2,1,350.00);
INSERT INTO order_items VALUES(3,999,1,1,499.99); -- NOT VALID --
		
-- Validate PRODUCT_ID --
INSERT INTO order_items VALUES(3,1,3,1,799.00);	
INSERT INTO order_items VALUES(4,1,999,1,1000.00); -- NOT VALID --

-- Validate QUANTITY -- 
INSERT INTO order_items VALUES(4,1,1,2,999.98);
INSERT INTO order_items VALUES(5,1,1,0,499.99); -- NOT VALID --

-- Validate PRICE --
INSERT INTO order_items VALUES(5,1,2,1,350.00);	
INSERT INTO order_items VALUES(6,1,2,1,NULL); -- NOT VALID --

SELECT * FROM order_items;

-- ==================================================
-- TC006 : Check Data Integrity on payments Table -- 
-- ==================================================

-- Validate PAYMENT_ID -- 
INSERT INTO payments VALUES(1,1,'UPI','Completed',NOW());
INSERT INTO payments VALUES(1,2,'Card','Pending',NOW());  -- NOT VALID --
INSERT INTO payments VALUES(NULL,1,'UPI','Completed',NOW()); -- NOT VALID --
		
-- Validate ORDER_ID -- 
INSERT INTO payments VALUES(2,2,'Card','Completed',NOW());
INSERT INTO payments VALUES(3,999,'UPI','Completed',NOW());	 -- NOT VALID --
		
-- Validate PAYMENT_METHOD --	
INSERT INTO payments VALUES(3,1,'UPI','Completed',NOW());
INSERT INTO payments VALUES(4,1,NULL,'Completed',NOW());
-- Validate PAYMENT_STATUS --
INSERT INTO payments VALUES(5,2,'Card','Pending',NOW());
INSERT INTO payments VALUES(6,2,'Card',NULL,NOW());
		
-- Validate PAYMENT_DATE --
INSERT INTO payments(payment_id,order_id,payment_method,payment_status) 
VALUES(7,1,'UPI','Completed');

SELECT * FROM payments;

-- ==================================================
-- TC007 : Check Data Integrity on cart Table -- 
-- ==================================================

-- Validate CART_ID --	
INSERT INTO cart VALUES(1,1,1,2);
INSERT INTO cart VALUES(1,2,2,1);-- NOT VALID --
INSERT INTO cart VALUES(NULL,1,1,1);-- NOT VALID --
		
-- Validate USER_ID	-- 
INSERT INTO cart VALUES(2,2,2,1);
INSERT INTO cart VALUES(3,999,1,1); 
    
-- Validate PRODUCT_ID	-- 
INSERT INTO cart VALUES(3,1,3,1);
INSERT INTO cart VALUES(4,1,999,1);	-- NOT VALID --
		
-- Validate QUANTITY --	
INSERT INTO cart VALUES(4,1,1,2);
INSERT INTO cart VALUES(5,1,1,0); -- NOT VALID --

SELECT * FROM cart;