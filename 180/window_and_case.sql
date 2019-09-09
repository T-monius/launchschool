SELECT CASE customers.name WHEN lag(customers.name)
            OVER (ORDER BY customers.name) AS previous THEN customers.name
       end,
       services.description
FROM customers
LEFT OUTER JOIN contracted_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id;