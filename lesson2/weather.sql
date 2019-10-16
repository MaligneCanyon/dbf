--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.17
-- Dumped by pg_dump version 9.5.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: weather; Type: TABLE; Schema: public; Owner: gmk
--

CREATE TABLE public.weather (
    date date NOT NULL,
    low integer NOT NULL,
    high integer NOT NULL,
    rainfall numeric(5,3) DEFAULT 0.000
);


ALTER TABLE public.weather OWNER TO gmk;

--
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: gmk
--

INSERT INTO public.weather VALUES ('2016-03-07', 29, 32, 0.000);
INSERT INTO public.weather VALUES ('2016-03-08', 23, 31, 0.000);
INSERT INTO public.weather VALUES ('2016-03-09', 17, 28, 0.000);
INSERT INTO public.weather VALUES ('2016-03-01', 34, 43, 3.000);
INSERT INTO public.weather VALUES ('2016-03-02', 32, 44, 3.000);
INSERT INTO public.weather VALUES ('2016-03-03', 31, 47, 4.000);
INSERT INTO public.weather VALUES ('2016-03-04', 33, 42, 2.000);
INSERT INTO public.weather VALUES ('2016-03-05', 39, 46, 7.000);
INSERT INTO public.weather VALUES ('2016-03-06', 32, 43, 2.000);


--
-- PostgreSQL database dump complete
--

