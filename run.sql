
-- виклик функції
SELECT * FROM get_category_app_count();

--виклик процедури
CALL update_prices_in_category();

select * from app;

-- тригер
INSERT INTO App (app_name, app_price, app_content_rating, category_name) VALUES ('Example App', 12.00, 'Everyone', 'Social');
UPDATE App SET app_price = 15.00 WHERE app_name = 'Example App';
select * from app;