CREATE TABLE IF NOT EXISTS public.items
(
    order_id text COLLATE pg_catalog."default",
    number_of_items integer,
    product_id text COLLATE pg_catalog."default",
    seller_id text COLLATE pg_catalog."default",
    shipping_limit_date timestamp without time zone,
    price text COLLATE pg_catalog."default",
    freight_price text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;