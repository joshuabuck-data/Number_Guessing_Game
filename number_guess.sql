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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    username character varying,
    number_of_guesses integer,
    random_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying NOT NULL,
    games integer,
    results character varying
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Joshy', 3, 831);
INSERT INTO public.games VALUES (2, 'Joshy', 1, 55);
INSERT INTO public.games VALUES (3, 'Josy', 5, 55);
INSERT INTO public.games VALUES (4, 'user_1657730755674', 697, 696);
INSERT INTO public.games VALUES (5, 'user_1657730755674', 629, 628);
INSERT INTO public.games VALUES (6, 'user_1657730755673', 649, 648);
INSERT INTO public.games VALUES (7, 'user_1657730755673', 374, 373);
INSERT INTO public.games VALUES (8, 'user_1657730755674', 543, 540);
INSERT INTO public.games VALUES (9, 'user_1657730755674', 595, 593);
INSERT INTO public.games VALUES (10, 'user_1657730755674', 458, 457);
INSERT INTO public.games VALUES (11, 'user_1657730816765', 111, 110);
INSERT INTO public.games VALUES (12, 'user_1657730816765', 989, 988);
INSERT INTO public.games VALUES (13, 'user_1657730816764', 519, 518);
INSERT INTO public.games VALUES (14, 'user_1657730816764', 203, 202);
INSERT INTO public.games VALUES (15, 'user_1657730816765', 815, 812);
INSERT INTO public.games VALUES (16, 'user_1657730816765', 829, 827);
INSERT INTO public.games VALUES (17, 'user_1657730816765', 471, 470);
INSERT INTO public.games VALUES (18, 'user_1657730832549', 716, 715);
INSERT INTO public.games VALUES (19, 'user_1657730832549', 194, 193);
INSERT INTO public.games VALUES (20, 'user_1657730832548', 91, 90);
INSERT INTO public.games VALUES (21, 'user_1657730832548', 435, 434);
INSERT INTO public.games VALUES (22, 'user_1657730832549', 746, 743);
INSERT INTO public.games VALUES (23, 'user_1657730832549', 957, 955);
INSERT INTO public.games VALUES (24, 'user_1657730832549', 666, 665);
INSERT INTO public.games VALUES (25, 'user_1657731217594', 109, 108);
INSERT INTO public.games VALUES (26, 'user_1657731217594', 647, 646);
INSERT INTO public.games VALUES (27, 'user_1657731217593', 501, 500);
INSERT INTO public.games VALUES (28, 'user_1657731217593', 326, 325);
INSERT INTO public.games VALUES (29, 'user_1657731217594', 536, 533);
INSERT INTO public.games VALUES (30, 'user_1657731217594', 314, 312);
INSERT INTO public.games VALUES (31, 'user_1657731217594', 185, 184);
INSERT INTO public.games VALUES (32, 'user_1657731723706', 530, 529);
INSERT INTO public.games VALUES (33, 'user_1657731723706', 232, 231);
INSERT INTO public.games VALUES (34, 'user_1657731723705', 425, 424);
INSERT INTO public.games VALUES (35, 'user_1657731723705', 741, 740);
INSERT INTO public.games VALUES (36, 'user_1657731723706', 807, 804);
INSERT INTO public.games VALUES (37, 'user_1657731723706', 86, 84);
INSERT INTO public.games VALUES (38, 'user_1657731723706', 209, 208);
INSERT INTO public.games VALUES (39, 'user_1657731908673', 941, 940);
INSERT INTO public.games VALUES (40, 'user_1657731908673', 342, 341);
INSERT INTO public.games VALUES (41, 'user_1657731908672', 875, 874);
INSERT INTO public.games VALUES (42, 'user_1657731908672', 252, 251);
INSERT INTO public.games VALUES (43, 'user_1657731908673', 620, 617);
INSERT INTO public.games VALUES (44, 'user_1657731908673', 255, 253);
INSERT INTO public.games VALUES (45, 'user_1657731908673', 853, 852);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Joshy', NULL, NULL);
INSERT INTO public.users VALUES ('Josy', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657730755674', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657730755673', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657730816765', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657730816764', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657730832549', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657730832548', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657731217594', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657731217593', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657731723706', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657731723705', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657731908673', NULL, NULL);
INSERT INTO public.users VALUES ('user_1657731908672', NULL, NULL);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 45, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

