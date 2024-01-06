
--Тригер, що автоматично встановлює ціну програми в 10.00, якщо нова ціна перевищує це значення.

-- Тригерна функція
CREATE OR REPLACE FUNCTION enforce_price_limit()
RETURNS TRIGGER AS $$
BEGIN
    -- Якщо нова ціна перевищує 10.00, встановлюємо її рівною 10.
    IF NEW.app_price > 10.00 THEN
        NEW.app_price := 10.00;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


--Тригер
CREATE TRIGGER before_update_price
BEFORE UPDATE ON App
FOR EACH ROW
EXECUTE FUNCTION enforce_price_limit();