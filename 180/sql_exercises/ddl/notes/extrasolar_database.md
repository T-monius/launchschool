### Create an Extrasolar Planetary Database

#### Database that tracks planets around Stars (not the Sun)

- Create and modify tables with DDL
- Create a database named "extrasolar"
- Create two tables in "extrasolar"
  + `stars`
    * `id`: unique auto-incrementing serial number, pk
    * `name`: name of the star, 25 characters. Unique and not `ǸULL`
    * `distance`: distance in light years from Earth. Whole number that is non-null and greater than 0
    * `spectral_type` : O, B, A, F, G, K, and M. One character string.
    * `compananions` : Number of companion stars. Whole number. Non-null and non-negative.

  + `planets`
    * `id` : unique auto-incrementing serialized number, pk
    * `designation` : Single alpha-char that uniquely identifies the planet in its star system ('a', 'b', 'c', etc.)
    * `mass` : the estimated mass in terms of Jupiter masses; an integer
