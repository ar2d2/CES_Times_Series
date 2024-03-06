-- View: public.Women_Goverment

-- DROP VIEW public."Women_Goverment";

CREATE OR REPLACE VIEW public."Women_Goverment"
 AS
 SELECT ge.year,
    p.period,
    p.month,
    sum(ge.value) AS total_value
   FROM "Government_Employment" ge
     JOIN period p ON ge.period = p.period
  WHERE ge.series_id ~~ '%10 %'::text
  GROUP BY ge.year, p.period, p.month
  ORDER BY ge.year, p.period;

-- View: public.Production_Employees

-- DROP VIEW public."Production_Employees";

CREATE OR REPLACE VIEW public."Production_Employees"
 AS
 SELECT aces.year,
    p.period,
    p.month,
    sum(aces.value) AS total_value
   FROM "AllCESSeries" aces
     JOIN period p ON aces.period = p.period
  WHERE aces.series_id ~~ 'CES%06 %'::text
  GROUP BY aces.year, p.period, p.month
  ORDER BY aces.year, p.period;

-- View: public.Non_Production_Employees AS

-- DROP VIEW public."Non_Production_Employees AS";

CREATE OR REPLACE VIEW public."Non_Production_Employees AS"
 AS
 SELECT aces.year,
    p.period,
    p.month,
    sum(aces.value) AS total_value
   FROM "AllCESSeries" aces
     JOIN period p ON aces.period = p.period
  WHERE aces.series_id ~~ 'CES%01 %'::text
  GROUP BY aces.year, p.period, p.month
  ORDER BY aces.year, p.period;

-- View: public.Ratio_Production_Employees

-- DROP VIEW public."Ratio_Production_Employees";

CREATE OR REPLACE VIEW public."Ratio_Production_Employees"
 AS
 SELECT pe.year,
    pe.period,
    pe.month,
    pe.total_value AS total_production,
    npe.total_value AS total_non_production,
    concat((pe.total_value || ' : '::text) || npe.total_value) AS production_employees_ratio
   FROM "Production_Employees" pe
     JOIN "Non_Production_Employees AS" npe ON pe.year = npe.year AND pe.period = npe.period
  ORDER BY pe.year, pe.period;



