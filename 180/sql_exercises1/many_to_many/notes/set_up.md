## Set Up Database

### Understanding
- Database for web hosting company
  + Customers
    * Can have any number of services
    * Not all customers have services (modality)
  + Services
    * Can have any number of customers
    * Not every service must be in use (modality)
  + Many to many (M:M)

### Task
- Create a `billing1` db
  + `customers` table
    * `id` unique, auto-incrementing, PK
    * `name` text, not null
    * `payment_token` char(8), uppercase
  + `services` table
    * `id` unique, auto-incrementing, PK
    * `description` text, not null
    * `price` numeric(10, 2), not null
  + `contracted_services` (cross-reference table)
    * `id` unique, auto-incrementing, PK
    * `customer_id` integer, not null, foreign key on delete cascade
    * `service_id` integer, not null

### Implementation
- 
