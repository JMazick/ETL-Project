CREATE TABLE brewery (
  brewery_id INT PRIMARY KEY NOT NULL,
  brewery_name VARCHAR(100),
  city VARCHAR(100),
  state VARCHAR(2)
);

CREATE TABLE beers (
  beer_id INT PRIMARY KEY NOT NULL,
  beer_name VARCHAR(250),
  beer_style VARCHAR(250),
  brewery_id INT NOT NULL,
  ounces FLOAT,
  CONSTRAINT "FK_Brewery_id" FOREIGN KEY ("brewery_id") REFERENCES public.brewery (brewery_id)
);
