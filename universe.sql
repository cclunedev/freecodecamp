--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: crater; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.crater (
    crater_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer
);


ALTER TABLE public.crater OWNER TO freecodecamp;

--
-- Name: crater_crater_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.crater_crater_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.crater_crater_id_seq OWNER TO freecodecamp;

--
-- Name: crater_crater_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.crater_crater_id_seq OWNED BY public.crater.crater_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_light_years integer,
    is_spiral boolean NOT NULL,
    origin_of_name text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_tidally_locked boolean,
    period_of_revolution integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    period_of_revolution integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apparent_magnitude numeric(4,2) NOT NULL,
    type character varying(30) NOT NULL,
    distance_in_light_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: crater crater_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crater ALTER COLUMN crater_id SET DEFAULT nextval('public.crater_crater_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: crater; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.crater VALUES (1, 'Tycho', 1);
INSERT INTO public.crater VALUES (2, 'Apollo', 1);
INSERT INTO public.crater VALUES (3, 'Copernicus', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 185000, true, 'Named due to its slender appearance.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, true, 'The Andromeda Galaxy gets its name from the area of the sky in which it appears, the constellation of Andromeda.');
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 37000, false, 'Appears similar in shape to a cigar');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 170000, true, 'Appears similar in shape to a pinwheel');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 50000, true, 'Appears similar in shape to a sombrero');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 60000, true, 'Appears similar in shape to a whirlpool');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 27, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 1, 4);
INSERT INTO public.moon VALUES (4, 'Io', false, 2, 5);
INSERT INTO public.moon VALUES (5, 'Europa', false, 4, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 7, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 17, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', false, 1, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', false, 250, 5);
INSERT INTO public.moon VALUES (10, 'Elara', false, 260, 5);
INSERT INTO public.moon VALUES (11, 'Pasiphae', false, 743, 5);
INSERT INTO public.moon VALUES (12, 'Sinope', false, 744, 5);
INSERT INTO public.moon VALUES (13, 'Lysithea', false, 259, 5);
INSERT INTO public.moon VALUES (14, 'Mimas', false, 1, 6);
INSERT INTO public.moon VALUES (15, 'Enceladus', false, 1, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', false, 2, 6);
INSERT INTO public.moon VALUES (17, 'Dione', false, 3, 6);
INSERT INTO public.moon VALUES (18, 'Rhea', false, 5, 6);
INSERT INTO public.moon VALUES (19, 'Titan', false, 16, 6);
INSERT INTO public.moon VALUES (20, 'Ariel', false, 3, 7);
INSERT INTO public.moon VALUES (21, 'Miranda', false, 16, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 365, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 88, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 225, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 687, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4333, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 10759, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 30689, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 60182, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-90b', false, 7, 7);
INSERT INTO public.planet VALUES (10, 'Kepler-90c', false, 9, 7);
INSERT INTO public.planet VALUES (11, 'Kepler-90i', false, 14, 7);
INSERT INTO public.planet VALUES (12, 'Kepler-90d', false, 60, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', -26.74, 'G-type', 0, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 2.07, 'B9p', 97, 2);
INSERT INTO public.star VALUES (3, 'Mirach', 2.07, 'M0IIIvar', 199, 2);
INSERT INTO public.star VALUES (4, 'Almach', 2.10, 'K3IIb', 355, 2);
INSERT INTO public.star VALUES (5, 'Sadiradra', 3.27, 'K3III…', 101, 2);
INSERT INTO public.star VALUES (6, 'Nembus', 3.59, 'K3III', 174, 2);
INSERT INTO public.star VALUES (7, 'Kepler-90', 14.00, 'G-type', 2840, NULL);


--
-- Name: crater_crater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.crater_crater_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: crater crater_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crater
    ADD CONSTRAINT crater_name_key UNIQUE (name);


--
-- Name: crater crater_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crater
    ADD CONSTRAINT crater_pk PRIMARY KEY (crater_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: crater crater_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.crater
    ADD CONSTRAINT crater_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

