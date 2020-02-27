CREATE TABLE "Beers" (
    "beer_id" int   NOT NULL,
    "beer_name" varchar(100)   NOT NULL,
    "beer_style" varchar(100)   NOT NULL,
    "abv" varchar(5)    NULL,
    "ibu" int    NULL,
    "brewery_id" int   NOT NULL,
    "ounces" int    NULL,
    CONSTRAINT "pk_Beers" PRIMARY KEY (
        "beer_id"
     )
);
CREATE TABLE "Breweries" (
    "brewery_id" int   NOT NULL,
    "name" varchar(50)   NOT NULL,
    "city" varchar(50)   NOT NULL,
    "state" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Breweries" PRIMARY KEY (
        "brewery_id"
     )
);
ALTER TABLE "Beers" ADD CONSTRAINT "fk_Beers_brewery_id" FOREIGN KEY("brewery_id")
REFERENCES "Breweries" ("brewery_id");