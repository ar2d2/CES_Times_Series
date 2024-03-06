-- Table: public.AllCESSeries

-- DROP TABLE IF EXISTS public."AllCESSeries";

CREATE TABLE IF NOT EXISTS public."AllCESSeries"
(
    series_id character(20) COLLATE pg_catalog."default",
    year smallint,
    period character(3) COLLATE pg_catalog."default",
    value numeric,
    footnote_codes character(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
-- Table: public.Government_Employment

-- DROP TABLE IF EXISTS public."Government_Employment";

CREATE TABLE IF NOT EXISTS public."Government_Employment"
(
    series_id character(20) COLLATE pg_catalog."default",
    year smallint,
    period character(3) COLLATE pg_catalog."default",
    value numeric,
    footnote_codes character(10) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
-- Table: public.datatype

-- DROP TABLE IF EXISTS public.datatype;

CREATE TABLE IF NOT EXISTS public.datatype
(
    data_type_code character(2) COLLATE pg_catalog."default",
    data_type_text character(400) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
-- Table: public.footnote

-- DROP TABLE IF EXISTS public.footnote;

CREATE TABLE IF NOT EXISTS public.footnote
(
    footnote_code character(1) COLLATE pg_catalog."default",
    footnote_text character(200) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
	-- Table: public.industry

-- DROP TABLE IF EXISTS public.industry;

CREATE TABLE IF NOT EXISTS public.industry
(
    industry_code character(20) COLLATE pg_catalog."default",
    naics_code character(30) COLLATE pg_catalog."default",
    publishing_status character(30) COLLATE pg_catalog."default",
    industry_name character(300) COLLATE pg_catalog."default",
    display_level character(30) COLLATE pg_catalog."default",
    selectable character(10) COLLATE pg_catalog."default",
    sort_sequence character(30) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
	-- Table: public.period

-- DROP TABLE IF EXISTS public.period;

CREATE TABLE IF NOT EXISTS public.period
(
    period character(3) COLLATE pg_catalog."default",
    mm character(10) COLLATE pg_catalog."default",
    month character(20) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
	-- Table: public.seasonal

-- DROP TABLE IF EXISTS public.seasonal;

CREATE TABLE IF NOT EXISTS public.seasonal
(
    seasonal_code character(1) COLLATE pg_catalog."default",
    seasonal_text character(30) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
	
	-- Table: public.series

-- DROP TABLE IF EXISTS public.series;

CREATE TABLE IF NOT EXISTS public.series
(
    series_id character(20) COLLATE pg_catalog."default",
    supersector_code character(2) COLLATE pg_catalog."default",
    industry_code character(10) COLLATE pg_catalog."default",
    data_type_code character(2) COLLATE pg_catalog."default",
    seasonal character(1) COLLATE pg_catalog."default",
    series_title character(400) COLLATE pg_catalog."default",
    footnote_codes character(2) COLLATE pg_catalog."default",
    begin_year smallint,
    begin_period character(4) COLLATE pg_catalog."default",
    end_year smallint,
    end_period character(4) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

	-- Table: public.supersector

-- DROP TABLE IF EXISTS public.supersector;

CREATE TABLE IF NOT EXISTS public.supersector
(
    supersector_code character(2) COLLATE pg_catalog."default",
    supersector_name character(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;
