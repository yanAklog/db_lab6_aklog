
-- процедура, що зменшує ціну додатків у категорії "Games" на 10%.

CREATE OR REPLACE PROCEDURE update_prices_in_category()
AS $$
DECLARE
    discount_percentage DECIMAL := 0.10;  -- 10% знижка
BEGIN
    -- Оновлення цін для застосунків у категорії "Games"
    UPDATE App
    SET app_price = app_price - (app_price * discount_percentage)
    WHERE category_name = 'Games';

END;
$$ LANGUAGE plpgsql;
