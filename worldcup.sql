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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(30) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (22, 2018, 'Final', 45, 46, 4, 2);
INSERT INTO public.games VALUES (23, 2018, 'Third Place', 47, 48, 2, 0);
INSERT INTO public.games VALUES (24, 2018, 'Semi-Final', 46, 48, 2, 1);
INSERT INTO public.games VALUES (25, 2018, 'Semi-Final', 45, 47, 1, 0);
INSERT INTO public.games VALUES (26, 2018, 'Quarter-Final', 46, 49, 3, 2);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 48, 50, 2, 0);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 47, 51, 2, 1);
INSERT INTO public.games VALUES (29, 2018, 'Quarter-Final', 45, 52, 2, 0);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 48, 53, 2, 1);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 50, 54, 1, 0);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 47, 55, 3, 2);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 51, 56, 2, 0);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 46, 57, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 49, 58, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 52, 59, 2, 1);
INSERT INTO public.games VALUES (37, 2018, 'Eighth-Final', 45, 60, 4, 3);
INSERT INTO public.games VALUES (38, 2014, 'Final', 61, 60, 1, 0);
INSERT INTO public.games VALUES (39, 2014, 'Third Place', 62, 51, 3, 0);
INSERT INTO public.games VALUES (40, 2014, 'Semi-Final', 60, 62, 1, 0);
INSERT INTO public.games VALUES (41, 2014, 'Semi-Final', 61, 51, 7, 1);
INSERT INTO public.games VALUES (42, 2014, 'Quarter-Final', 62, 63, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 60, 47, 1, 0);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 51, 53, 2, 1);
INSERT INTO public.games VALUES (45, 2014, 'Quarter-Final', 61, 45, 1, 0);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 51, 64, 2, 1);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 53, 52, 2, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 45, 65, 2, 0);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 61, 66, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 62, 56, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 63, 67, 2, 1);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 60, 54, 1, 0);
INSERT INTO public.games VALUES (53, 2014, 'Eighth-Final', 47, 68, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 45);
INSERT INTO public.teams VALUES ('Croatia', 46);
INSERT INTO public.teams VALUES ('Belgium', 47);
INSERT INTO public.teams VALUES ('England', 48);
INSERT INTO public.teams VALUES ('Russia', 49);
INSERT INTO public.teams VALUES ('Sweden', 50);
INSERT INTO public.teams VALUES ('Brazil', 51);
INSERT INTO public.teams VALUES ('Uruguay', 52);
INSERT INTO public.teams VALUES ('Colombia', 53);
INSERT INTO public.teams VALUES ('Switzerland', 54);
INSERT INTO public.teams VALUES ('Japan', 55);
INSERT INTO public.teams VALUES ('Mexico', 56);
INSERT INTO public.teams VALUES ('Denmark', 57);
INSERT INTO public.teams VALUES ('Spain', 58);
INSERT INTO public.teams VALUES ('Portugal', 59);
INSERT INTO public.teams VALUES ('Argentina', 60);
INSERT INTO public.teams VALUES ('Germany', 61);
INSERT INTO public.teams VALUES ('Netherlands', 62);
INSERT INTO public.teams VALUES ('Costa Rica', 63);
INSERT INTO public.teams VALUES ('Chile', 64);
INSERT INTO public.teams VALUES ('Nigeria', 65);
INSERT INTO public.teams VALUES ('Algeria', 66);
INSERT INTO public.teams VALUES ('Greece', 67);
INSERT INTO public.teams VALUES ('United States', 68);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 53, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 68, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--