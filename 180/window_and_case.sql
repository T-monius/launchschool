SELECT CASE customers.name WHEN previous THEN customers.name
       end,
       lag(customers.name)
         OVER (ORDER BY customers.name)
         AS previous,
       services.description
FROM customers
LEFT OUTER JOIN contracted_services
             ON customer_id = customers.id
LEFT OUTER JOIN services
             ON services.id = service_id;