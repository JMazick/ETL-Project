CREATE TABLE IF NOT EXISTS brewery (
  brewery_id INT PRIMARY KEY NOT NULL,
  brewery_name VARCHAR(100),
  city VARCHAR(100),
  state VARCHAR(5)
);

CREATE TABLE IF NOT EXISTS beers (
  beer_id INT PRIMARY KEY NOT NULL,
  abv FLOAT,
  beer_name VARCHAR(250),
  style VARCHAR(250),
  brewery_id INT NOT NULL,
  ounces FLOAT,
  CONSTRAINT "FK_Brewery_id" FOREIGN KEY ("brewery_id") REFERENCES public.brewery (brewery_id)
);
