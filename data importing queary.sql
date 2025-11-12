-- Table: public.sales_china

-- DROP TABLE IF EXISTS public.sales_china;

CREATE TABLE IF NOT EXISTS public.sales_china
(
    transaction_id character(100) COLLATE pg_catalog."default" NOT NULL,
    date date,
    country character(50) COLLATE pg_catalog."default",
    product_id character(100) COLLATE pg_catalog."default",
    product_name character(100) COLLATE pg_catalog."default",
    category character(100) COLLATE pg_catalog."default",
    price_per_unit character(100) COLLATE pg_catalog."default",
    quantity_purchased character(100) COLLATE pg_catalog."default",
    cost_price character(100) COLLATE pg_catalog."default",
    discount_applied character(100) COLLATE pg_catalog."default",
    payment_method character(100) COLLATE pg_catalog."default",
    customer_age_group character(100) COLLATE pg_catalog."default",
    customer_gender character(100) COLLATE pg_catalog."default",
    store_location character(100) COLLATE pg_catalog."default",
    sales_representative character(100) COLLATE pg_catalog."default",
    CONSTRAINT sales_china_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_china
    OWNER to postgres;
	-- Table: public.sales_canada

-- DROP TABLE IF EXISTS public.sales_canada;

-- sales_canada
CREATE TABLE IF NOT EXISTS public.sales_canada
(
    transaction_id character(100) COLLATE pg_catalog."default" NOT NULL,
    date date,
    country character(50) COLLATE pg_catalog."default",
    product_id character(100) COLLATE pg_catalog."default",
    product_name character(100) COLLATE pg_catalog."default",
    category character(100) COLLATE pg_catalog."default",
    price_per_unit character(100) COLLATE pg_catalog."default",
    quantity_purchased character(100) COLLATE pg_catalog."default",
    cost_price character(100) COLLATE pg_catalog."default",
    discount_applied character(100) COLLATE pg_catalog."default",
    payment_method character(100) COLLATE pg_catalog."default",
    customer_age_group character(100) COLLATE pg_catalog."default",
    customer_gender character(100) COLLATE pg_catalog."default",
    store_location character(100) COLLATE pg_catalog."default",
    sales_representative character(100) COLLATE pg_catalog."default",
    CONSTRAINT sales_canada_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_canada
    OWNER to postgres;


-- sales_india

	CREATE TABLE IF NOT EXISTS public.sales_india
(
    transaction_id character(100) COLLATE pg_catalog."default" NOT NULL,
    date date,
    country character(50) COLLATE pg_catalog."default",
    product_id character(100) COLLATE pg_catalog."default",
    product_name character(100) COLLATE pg_catalog."default",
    category character(100) COLLATE pg_catalog."default",
    price_per_unit character(100) COLLATE pg_catalog."default",
    quantity_purchased character(100) COLLATE pg_catalog."default",
    cost_price character(100) COLLATE pg_catalog."default",
    discount_applied character(100) COLLATE pg_catalog."default",
    payment_method character(100) COLLATE pg_catalog."default",
    customer_age_group character(100) COLLATE pg_catalog."default",
    customer_gender character(100) COLLATE pg_catalog."default",
    store_location character(100) COLLATE pg_catalog."default",
    sales_representative character(100) COLLATE pg_catalog."default",
    CONSTRAINT sales_india_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_india
    OWNER to postgres;

-- sales_nigeria
CREATE TABLE IF NOT EXISTS public.sales_nigeria
(
    transaction_id character(100) COLLATE pg_catalog."default" NOT NULL,
    date date,
    country character(50) COLLATE pg_catalog."default",
    product_id character(100) COLLATE pg_catalog."default",
    product_name character(100) COLLATE pg_catalog."default",
    category character(100) COLLATE pg_catalog."default",
    price_per_unit character(100) COLLATE pg_catalog."default",
    quantity_purchased character(100) COLLATE pg_catalog."default",
    cost_price character(100) COLLATE pg_catalog."default",
    discount_applied character(100) COLLATE pg_catalog."default",
    payment_method character(100) COLLATE pg_catalog."default",
    customer_age_group character(100) COLLATE pg_catalog."default",
    customer_gender character(100) COLLATE pg_catalog."default",
    store_location character(100) COLLATE pg_catalog."default",
    sales_representative character(100) COLLATE pg_catalog."default",
    CONSTRAINT sales_nigeria_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_nigeria
    OWNER to postgres;	

-- sales_uk

CREATE TABLE IF NOT EXISTS public.sales_uk
(
    transaction_id character(100) COLLATE pg_catalog."default" NOT NULL,
    date date,
    country character(50) COLLATE pg_catalog."default",
    product_id character(100) COLLATE pg_catalog."default",
    product_name character(100) COLLATE pg_catalog."default",
    category character(100) COLLATE pg_catalog."default",
    price_per_unit character(100) COLLATE pg_catalog."default",
    quantity_purchased character(100) COLLATE pg_catalog."default",
    cost_price character(100) COLLATE pg_catalog."default",
    discount_applied character(100) COLLATE pg_catalog."default",
    payment_method character(100) COLLATE pg_catalog."default",
    customer_age_group character(100) COLLATE pg_catalog."default",
    customer_gender character(100) COLLATE pg_catalog."default",
    store_location character(100) COLLATE pg_catalog."default",
    sales_representative character(100) COLLATE pg_catalog."default",
    CONSTRAINT sales_uk_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_uk
    OWNER to postgres;


-- sales_us

CREATE TABLE IF NOT EXISTS public.sales_us
(
    transaction_id character(100) COLLATE pg_catalog."default" NOT NULL,
    date date,
    country character(50) COLLATE pg_catalog."default",
    product_id character(100) COLLATE pg_catalog."default",
    product_name character(100) COLLATE pg_catalog."default",
    category character(100) COLLATE pg_catalog."default",
    price_per_unit character(100) COLLATE pg_catalog."default",
    quantity_purchased character(100) COLLATE pg_catalog."default",
    cost_price character(100) COLLATE pg_catalog."default",
    discount_applied character(100) COLLATE pg_catalog."default",
    payment_method character(100) COLLATE pg_catalog."default",
    customer_age_group character(100) COLLATE pg_catalog."default",
    customer_gender character(100) COLLATE pg_catalog."default",
    store_location character(100) COLLATE pg_catalog."default",
    sales_representative character(100) COLLATE pg_catalog."default",
    CONSTRAINT sales_us_pkey PRIMARY KEY (transaction_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sales_us
    OWNER to postgres;

-- Mearged Table
create table public.sales_data as 
select * from public.sales_canada
union all
select * from public.sales_china
union all
select * from public.sales_india
union all
select * from public.sales_nigeria
union all
select * from public.sales_uk
union all
select * from public.sales_us

	