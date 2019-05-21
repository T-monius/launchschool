## Set Up Database

### Understanding
- Billing Database
  + Company
    * Web hosting
    * Customers
  + Contents
    * Cx info
    * Service info
  + Relationships
    * Many to many
    * Many cxs have many services
    * Many services for many cxs
  + Modality
    * Not all cxs have services
    * Not every service in use by any cxs

### Implementation
- `billing`
  + Tables
    * `customers`
      - `id` serial PK
      - `name` text
      - `payment_token` char(8) check that all upper
    * `services`
      - `id` serial PK
      - `description` text
      - `price` numeric(10, 2) check that it's greater then 0.00
    * JOIN table (`customers_services`)
      - `id` serial PK
      - `custoemr_id` int FK
      - `services_id` int FK
