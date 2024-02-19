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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    light_years_from_earth integer,
    constellation character varying(30)
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
    name character varying(30),
    planet_id integer,
    shines boolean NOT NULL,
    diameter_in_thousand_km numeric(4,1),
    has_life boolean,
    description text
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
    star_id integer,
    has_life boolean NOT NULL,
    has_idiots boolean,
    description text
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
-- Name: reuniverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.reuniverse (
    reuniverse_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer,
    name character varying(30)
);


ALTER TABLE public.reuniverse OWNER TO freecodecamp;

--
-- Name: reuniverse_reuniverse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.reuniverse_reuniverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reuniverse_reuniverse_id_seq OWNER TO freecodecamp;

--
-- Name: reuniverse_reuniverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.reuniverse_reuniverse_id_seq OWNED BY public.reuniverse.reuniverse_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    color character varying(30),
    age_in_million_years integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_system_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_system_id_seq OWNED BY public.star.star_id;


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
-- Name: reuniverse reuniverse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reuniverse ALTER COLUMN reuniverse_id SET DEFAULT nextval('public.reuniverse_reuniverse_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 30000, 60, 'Andromeda');
INSERT INTO public.galaxy VALUES (2, 'Bode', 20000, 10, 'Ursa Major');
INSERT INTO public.galaxy VALUES (3, 'Butterfly', 15000, 1500, 'Virgo');
INSERT INTO public.galaxy VALUES (4, 'Malin 1', 18000, 70, 'Coma Berenices');
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 14000, 0, 'Sagittarius');
INSERT INTO public.galaxy VALUES (6, 'Needle Galaxy', 1600, 1000, 'Coma Berenices');
INSERT INTO public.galaxy VALUES (7, 'FreeCodeCamp', 0, 0, 'Sagittarius');
INSERT INTO public.galaxy VALUES (8, 'Black Eye', 100, 2000, 'Coma Berenices');
INSERT INTO public.galaxy VALUES (9, 'Kratos', 0, 0, 'Nifgaard');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Aje', 9, true, 99.1, true, 'A satelite of traders from Ogun');
INSERT INTO public.moon VALUES (2, 'Eji Ogbe', 11, true, 11.1, true, 'The first of the 16 moons of Ifa planet. 
 The Balogun star warriors are the only beings who can access this satelite');
INSERT INTO public.moon VALUES (3, 'Ita-Alamu', 6, true, 5.2, true, 'This satelite is for fun seekers and families. 
 People are a community here');
INSERT INTO public.moon VALUES (4, 'Dalimo', 5, true, 19.1, true, 'Some Balogun star warriors and Olurunlambe people 
 were raised here by the Matriarch of Mopelola star system');
INSERT INTO public.moon VALUES (5, 'Purity', 10, true, 50.1, true, 'This satelite shines ultra bright. It is known as the source of purity the 
 Balogun star Warriors attained on their Father planet');
INSERT INTO public.moon VALUES (6, 'Ori Ade', 2, true, 21.1, false, 'This moon revolving Saturn is where the Balogun star people come 
 to errect monuments of their Royals. They watch from afar');
INSERT INTO public.moon VALUES (7, 'Itan Ola', 12, true, 20.4, true, 'The name means stories of tomorrow in the Balogun star peoples language. 
 The future of all and any is revealed on this satelite');
INSERT INTO public.moon VALUES (8, 'Imole Ola', 11, true, 30.1, true, 'Meaning light of tomorrow, after visiting Itan Ola for revelation, 
 the Balogun star people must come here and accept to be guided by light in future');
INSERT INTO public.moon VALUES (9, 'Irawo Ikeji', 13, true, 99.2, true, 'This Means second star. This is an enigmatic moon, It was a wondering satelite so big, 
 it swallowed 7 stars. Only the balogun star planets are bigger than this gigantic moon. 
 It is the abode of the Balogun mother herself. Only the Balogun star and Yemoja planet was able 
 to capture this moon with revolving 7 stars. The 7 stars were lonely stars before the 
 Yemoja satelite caught them without collision. Only Balogun star beings can live on this satelite.');
INSERT INTO public.moon VALUES (10, 'Omi-Orun', 7, true, 20.3, true, 'Meaning Water of Heaven, This is a swimming pool of Balogun star beings.
 Although in a different star system, this moon of Osun planet is Balogun star beings favorite vacation spot.
 Newly weds drink from a sacred mountain to nourish their love. The water also provides
 healing for the Balogun star beings when they are not home as they are the defenders of the star system Osun
 planet is on.');
INSERT INTO public.moon VALUES (11, 'Odi Aiye', 8, true, 90.9, false, 'Meaning reversed world. This is a moon of silence; the graveyard of 
 souls in transition to renewal/rebirth');
INSERT INTO public.moon VALUES (12, 'Komi', 12, true, 20.2, true, 'This is the school of the universe. Anyone can learn anything here. 
 This is where the Balogun star beings are taught to be infinite by being teachable. The name means teach me');
INSERT INTO public.moon VALUES (13, 'Eye Nkorin', 6, true, 40.4, true, 'The singing bird satelite. This moon changes color 
 as the rhythm of the birdsongs changes. Only Balogun star beings can sing to the birds else 
 the birds sing to you according to your intentions.');
INSERT INTO public.moon VALUES (14, 'Oba', 5, true, 90.9, true, 'Moon of goddess of Balogun star beings who dwell in Oro. The source of
 happiness, music, culture, fashion trends, everything culture related 
 originated from this moon revolving Oro. Newly weds must dwell on this 
 satelite for some time to learn how to build a happy home according to their 
 personality. This. female Balogun star beings nurture their feminity here');
INSERT INTO public.moon VALUES (15, 'Sango', 4, true, 99.9, true, 'If the Baloguns are not in their home star system, 
 they learn to control lightning and thunder here. They also learn poetry, 
 dance and theatre arts on this. This moon thunders non stop if no Balogun star beings
 are around.');
INSERT INTO public.moon VALUES (16, 'Esu', 2, true, 10.4, true, 'This is a shining bright red moon. It is where Balogun star beings 
 learn about how their temptations keeps them in the right path
 When they are out of character and lost, they are set straight by the divinity
 dwelling on this satelite. This satelite is a microcosm of the red police star
 which wonders into the Balogun star area every 10000 years to 
 teach them about order through chaos and or force');
INSERT INTO public.moon VALUES (17, 'Eshin Onirin', 9, true, 55.3, true, 'This gigantic satelite got its name from what the Balogun star beings
 do here. Meaning Iron Horse, this is where the Balogun star beings build their spaceships 
 and other transport techs. The metals abundantly available here can not be damaged by 
 any force or process once they solidify.');
INSERT INTO public.moon VALUES (18, 'Ariya', 8, true, 90.0, true, 'This is where beings party hardest.
 Unmarried single beings from Olorunlambe and Balogun star systems 
 often meet nymphos and caring female beings here to choose partners. Single 
 female beings from different planets/star systems also frequent 
 here to find suitable males. No fights or quarrels allowed or possible
 A section of this moon is inaccessible to the living as
 souls departing to odi-aiye party here one last time');
INSERT INTO public.moon VALUES (19, 'Ilubirin', 7, false, 2.1, true, 'This moon is very troublesome/inhabitable to male beings.
 Only feminine beings and spirits dwell here. The philosophy here is feminism.
 The dwellers used to capture and enslave male beings here until
 nymphos visited; their nature to care for male beings lovingly made them cry
 to infinite embodiment who chopped off half of the satelite before the 
 feminist spirits and beings cowered while captured male beings were set free');
INSERT INTO public.moon VALUES (20, 'Oju', 11, true, 99.2, true, 'Name meaning eyes, this is an observation satelite of Ifa planet.
 Here, everything in the universe is seen. Anyone can see anything in 
 anywhere in the universe through the observatory developed in Oju.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true, 'A bluish looking ball with gremlins roaming its landscape.');
INSERT INTO public.planet VALUES (2, 'Saturn', 1, false, false, 'A very gigantic planet with well over hundred moons');
INSERT INTO public.planet VALUES (3, 'Oro', 5, true, false, 'A planet with magical but real phenomenons/beings. Oro has 900 moons');
INSERT INTO public.planet VALUES (4, 'Oke Ola', 5, true, false, 'This planet is twin of Oro. The beings here are capable of anything');
INSERT INTO public.planet VALUES (5, 'Ado Ekiti', 4, true, true, 'This planet of nymphos is spectacular. The people here are all about sex, food, health');
INSERT INTO public.planet VALUES (6, 'Ilorin', 7, true, true, 'Close to Oro and Ado-Ekiti, the planet enjoys the magic of Oro and sex of Ado-Ekiti beings');
INSERT INTO public.planet VALUES (7, 'Osun', 7, true, true, 'A goddess rules this planet with love and music which uses to tune the beings to the ryhthm of Oro');
INSERT INTO public.planet VALUES (8, 'Oya', 9, true, false, 'The planet of warriors from star system Balogun, They are the source of everything in Oro/Oke-Ola');
INSERT INTO public.planet VALUES (9, 'Ogun', 2, true, false, 'Another planet the warriors from Balogun settled like Oro/Oke-Ola');
INSERT INTO public.planet VALUES (10, 'Obatala', 3, true, false, 'The planet of Balogun stars father, This is the planet the warriors from Balogun attain infinite purity, peace and wisdom');
INSERT INTO public.planet VALUES (11, 'Ifa', 3, true, false, 'The Balogun star system warriors come here for guidance and truth');
INSERT INTO public.planet VALUES (12, 'Orunmila', 3, true, false, 'The planet of Balogun star warriors for access to the knowledge of anything and everything');
INSERT INTO public.planet VALUES (13, 'Yemoja', 3, true, false, 'This is the mother planet of Balogun star system.Here they are nurtured, healed of any ailments; their plane of birth/rebirth.');


--
-- Data for Name: reuniverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.reuniverse VALUES (1, 2, 3, NULL);
INSERT INTO public.reuniverse VALUES (2, 5, 8, NULL);
INSERT INTO public.reuniverse VALUES (3, 5, 12, NULL);
INSERT INTO public.reuniverse VALUES (4, 5, 10, NULL);
INSERT INTO public.reuniverse VALUES (5, 5, 13, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5, 'White', 13000);
INSERT INTO public.star VALUES (2, 'Olorunlambe', 3, 'Blue', 18000);
INSERT INTO public.star VALUES (3, 'Balogun', 2, 'Variant', 18500);
INSERT INTO public.star VALUES (4, 'Mopelola', 4, 'Red', 17500);
INSERT INTO public.star VALUES (5, 'Sirius A', 5, 'Yellow', 10000);
INSERT INTO public.star VALUES (6, 'YZ Ceti', 5, 'Variant', 13000);
INSERT INTO public.star VALUES (7, 'Luyten', 5, 'NULL', 7000);
INSERT INTO public.star VALUES (8, 'Altair', 5, 'Brown', 14000);
INSERT INTO public.star VALUES (9, 'Delta Pavonis', 5, 'NULL', 10000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: reuniverse_reuniverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.reuniverse_reuniverse_id_seq', 5, true);


--
-- Name: star_star_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_system_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: reuniverse reuniverse_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reuniverse
    ADD CONSTRAINT reuniverse_name_key UNIQUE (name);


--
-- Name: reuniverse reuniverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reuniverse
    ADD CONSTRAINT reuniverse_pkey PRIMARY KEY (reuniverse_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_system_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: reuniverse reuniverse_access_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reuniverse
    ADD CONSTRAINT reuniverse_access_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: reuniverse reuniverse_access_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reuniverse
    ADD CONSTRAINT reuniverse_access_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

