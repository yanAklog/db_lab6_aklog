
-- функція повертає список усіх категорій програм, а також кількість програм у кожній категорії.

CREATE OR REPLACE FUNCTION get_category_app_count()
RETURNS TABLE (category_name VARCHAR, app_count BIGINT) AS $$
BEGIN
    RETURN QUERY
    SELECT c.category_name, COUNT(a.app_name)::BIGINT AS app_count
    FROM Category c
    LEFT JOIN App a ON c.category_name = a.category_name
    GROUP BY c.category_name
    ORDER BY app_count DESC;

END;
$$ LANGUAGE plpgsql;
