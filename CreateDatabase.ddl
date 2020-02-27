CREATE DATABASE beer_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;



CREATE TABLE public."Beers"
(
    beer_id integer NOT NULL,
    beer_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    beer_style character varying(100) COLLATE pg_catalog."default" NOT NULL,
    abv character varying(5) COLLATE pg_catalog."default",
    ibu integer,
    brewery_id integer NOT NULL,
    ounces integer,
    CONSTRAINT "pk_Beers" PRIMARY KEY (beer_id),
    CONSTRAINT "fk_Beers_brewery_id" FOREIGN KEY (brewery_id)
        REFERENCES public."Breweries" (brewery_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public."Beers"
    OWNER to postgres;


CREATE TABLE public."Breweries"
(
    brewery_id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    city character varying(50) COLLATE pg_catalog."default" NOT NULL,
    state character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "pk_Breweries" PRIMARY KEY (brewery_id)
)

TABLESPACE pg_default;

ALTER TABLE public."Breweries"
    OWNER to postgres;



