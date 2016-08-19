CREATE OR REPLACE FUNCTION ecommerce.upgradeRating() RETURNS TRIGGER AS '
DECLARE
amount integer ;
sum integer;

BEGIN
select cost into sum from ecommerce.orders where id = NEW.order_id;
select price into amount from ecommerce.product where id = NEW.product_id;
sum:= sum + amount;
update ecommerce.orders set cost = sum where id = NEW.order_id;
RETURN NULL;
END;
' LANGUAGE plpgsql;


CREATE TRIGGER update_price	
AFTER INSERT ON ecommerce.order_product
FOR EACH ROW
EXECUTE PROCEDURE ecommerce.upgradeRating();

