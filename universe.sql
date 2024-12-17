--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(45) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    diamater integer,
    mass integer,
    has_life boolean,
    population numeric,
    star_count integer
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
    name character varying(60) NOT NULL,
    explored boolean,
    distance_from_earth numeric,
    temperature integer,
    description text,
    age integer,
    planet_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    age numeric,
    inclination_grades integer,
    has_life boolean,
    description text,
    dominant_race character varying(20),
    temperature integer,
    moon_count numeric,
    star_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    description text,
    planet_count integer,
    luminosity integer,
    age numeric,
    color character varying(20),
    isalive boolean,
    galaxy_id integer NOT NULL
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
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


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
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Andrómeda', 1);
INSERT INTO public.constelation VALUES (2, 'Orión', 2);
INSERT INTO public.constelation VALUES (3, 'Cazopea', 3);
INSERT INTO public.constelation VALUES (4, 'Centauro', 4);
INSERT INTO public.constelation VALUES (5, 'Hidra', 5);
INSERT INTO public.constelation VALUES (6, 'Cruz del Sur', 6);
INSERT INTO public.constelation VALUES (7, 'Pegaso', 1);
INSERT INTO public.constelation VALUES (8, 'Leo', 2);
INSERT INTO public.constelation VALUES (9, 'Escorpio', 3);
INSERT INTO public.constelation VALUES (10, 'Sagitario', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Hoag', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Lindsay Shapley', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Medusa', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Magallanes', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Fobos', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Ío', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganimedes', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Titán', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Encélado', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Rea', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Japeto', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Miranda', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Titania', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Oberón', NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Tritón', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Nereida', NULL, NULL, NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'omaradrianoPlanet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'VLemonadePlanet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Carmex', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Mekin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (2, 'Alfa Centauri', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sirio', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'Canopus', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (5, 'Antares', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'Epsilon Eridani', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (7, 'Betelgeuse', NULL, NULL, NULL, NULL, NULL, NULL, 2);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constelation constelation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_name_key UNIQUE (name);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: constelation constelation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

