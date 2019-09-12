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
-- Name: films; Type: TABLE; Schema: public; Owner: gmk
--

CREATE TABLE public.films (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    year integer NOT NULL,
    genre character varying(100) NOT NULL,
    director character varying(255) NOT NULL,
    duration integer NOT NULL,
    CONSTRAINT director_name CHECK (((length((director)::text) >= 1) AND ("position"((director)::text, ' '::text) > 0))),
    CONSTRAINT title_length CHECK ((length((title)::text) >= 1)),
    CONSTRAINT year_range CHECK (((year >= 1900) AND (year <= 2100)))
);


ALTER TABLE public.films OWNER TO gmk;

--
-- Name: films_id_seq; Type: SEQUENCE; Schema: public; Owner: gmk
--

CREATE SEQUENCE public.films_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.films_id_seq OWNER TO gmk;

--
-- Name: films_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gmk
--

ALTER SEQUENCE public.films_id_seq OWNED BY public.films.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gmk
--

ALTER TABLE ONLY public.films ALTER COLUMN id SET DEFAULT nextval('public.films_id_seq'::regclass);


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: gmk
--

INSERT INTO public.films VALUES (1, 'Die Hard', 1988, 'action', 'John McTiernan', 132);
INSERT INTO public.films VALUES (2, 'Casablanca', 1942, 'drama', 'Michael Curtiz', 102);
INSERT INTO public.films VALUES (3, 'The Conversation', 1974, 'thriller', 'Francis Ford Coppola', 113);
INSERT INTO public.films VALUES (4, '1984', 1956, 'scifi', 'Michael Anderson', 90);
INSERT INTO public.films VALUES (5, 'Tinker Tailor Soldier Spy', 2011, 'espionage', 'Tomas Alfredson', 127);
INSERT INTO public.films VALUES (6, 'The Birdcage', 1996, 'comedy', 'Mike Nichols', 118);
INSERT INTO public.films VALUES (7, '28 Days Later', 2002, 'horror', 'Danny Boyle', 113);
INSERT INTO public.films VALUES (8, 'The Godfather', 1972, 'crime', 'Francis Ford Coppola', 175);
INSERT INTO public.films VALUES (9, '12 Angry Men', 1957, 'drama', 'Sidney Lumet', 96);
INSERT INTO public.films VALUES (10, 'Interstellar', 2014, 'scifi', 'Christopher Nolan', 169);
INSERT INTO public.films VALUES (11, 'Midnight Special', 2016, 'scifi', 'Jeff Nicols', 111);
INSERT INTO public.films VALUES (12, 'Home Alone', 1990, 'comedy', 'John Wilden Hughes, Jr.', 102);
INSERT INTO public.films VALUES (13, 'Hairspray', 1988, 'comedy', 'John Waters', 92);
INSERT INTO public.films VALUES (14, 'Godzilla', 1998, 'scifi', 'Roland Emmerich', 139);
INSERT INTO public.films VALUES (15, 'Godzilla', 2014, 'scifi', 'Gareth Edwards', 123);


--
-- Name: films_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gmk
--

SELECT pg_catalog.setval('public.films_id_seq', 15, true);


--
-- Name: films_pkey; Type: CONSTRAINT; Schema: public; Owner: gmk
--

ALTER TABLE ONLY public.films
    ADD CONSTRAINT films_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

