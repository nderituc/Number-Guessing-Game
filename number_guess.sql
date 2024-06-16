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
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    guess_id integer NOT NULL,
    guess integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.guesses_guess_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guesses_guess_id_seq OWNER TO freecodecamp;

--
-- Name: guesses_guess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.guesses_guess_id_seq OWNED BY public.guesses.guess_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: guesses guess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses ALTER COLUMN guess_id SET DEFAULT nextval('public.guesses_guess_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (1, 242, 1);
INSERT INTO public.guesses VALUES (2, 752, 1);
INSERT INTO public.guesses VALUES (3, 40, 2);
INSERT INTO public.guesses VALUES (4, 168, 2);
INSERT INTO public.guesses VALUES (5, 418, 1);
INSERT INTO public.guesses VALUES (6, 669, 1);
INSERT INTO public.guesses VALUES (7, 894, 1);
INSERT INTO public.guesses VALUES (8, 780, 4);
INSERT INTO public.guesses VALUES (9, 166, 4);
INSERT INTO public.guesses VALUES (10, 992, 5);
INSERT INTO public.guesses VALUES (11, 531, 5);
INSERT INTO public.guesses VALUES (12, 605, 4);
INSERT INTO public.guesses VALUES (13, 432, 4);
INSERT INTO public.guesses VALUES (14, 688, 4);
INSERT INTO public.guesses VALUES (15, 780, 6);
INSERT INTO public.guesses VALUES (16, 960, 6);
INSERT INTO public.guesses VALUES (17, 283, 7);
INSERT INTO public.guesses VALUES (18, 915, 7);
INSERT INTO public.guesses VALUES (19, 156, 6);
INSERT INTO public.guesses VALUES (20, 500, 6);
INSERT INTO public.guesses VALUES (21, 548, 6);
INSERT INTO public.guesses VALUES (22, 852, 8);
INSERT INTO public.guesses VALUES (23, 160, 8);
INSERT INTO public.guesses VALUES (24, 86, 9);
INSERT INTO public.guesses VALUES (25, 11, 9);
INSERT INTO public.guesses VALUES (26, 526, 8);
INSERT INTO public.guesses VALUES (27, 120, 8);
INSERT INTO public.guesses VALUES (28, 818, 8);
INSERT INTO public.guesses VALUES (29, 396, 10);
INSERT INTO public.guesses VALUES (30, 534, 10);
INSERT INTO public.guesses VALUES (31, 42, 11);
INSERT INTO public.guesses VALUES (32, 981, 11);
INSERT INTO public.guesses VALUES (33, 759, 10);
INSERT INTO public.guesses VALUES (34, 920, 10);
INSERT INTO public.guesses VALUES (35, 773, 10);
INSERT INTO public.guesses VALUES (36, 869, 12);
INSERT INTO public.guesses VALUES (37, 557, 12);
INSERT INTO public.guesses VALUES (38, 940, 13);
INSERT INTO public.guesses VALUES (39, 576, 13);
INSERT INTO public.guesses VALUES (40, 389, 12);
INSERT INTO public.guesses VALUES (41, 28, 12);
INSERT INTO public.guesses VALUES (42, 877, 12);
INSERT INTO public.guesses VALUES (43, 844, 14);
INSERT INTO public.guesses VALUES (44, 446, 14);
INSERT INTO public.guesses VALUES (45, 822, 15);
INSERT INTO public.guesses VALUES (46, 944, 15);
INSERT INTO public.guesses VALUES (47, 760, 14);
INSERT INTO public.guesses VALUES (48, 661, 14);
INSERT INTO public.guesses VALUES (49, 970, 14);
INSERT INTO public.guesses VALUES (50, 623, 16);
INSERT INTO public.guesses VALUES (51, 668, 16);
INSERT INTO public.guesses VALUES (52, 937, 17);
INSERT INTO public.guesses VALUES (53, 134, 17);
INSERT INTO public.guesses VALUES (54, 159, 16);
INSERT INTO public.guesses VALUES (55, 940, 16);
INSERT INTO public.guesses VALUES (56, 649, 16);
INSERT INTO public.guesses VALUES (57, 90, 18);
INSERT INTO public.guesses VALUES (58, 132, 18);
INSERT INTO public.guesses VALUES (59, 821, 19);
INSERT INTO public.guesses VALUES (60, 190, 19);
INSERT INTO public.guesses VALUES (61, 675, 18);
INSERT INTO public.guesses VALUES (62, 813, 18);
INSERT INTO public.guesses VALUES (63, 867, 18);
INSERT INTO public.guesses VALUES (64, 511, 21);
INSERT INTO public.guesses VALUES (65, 990, 21);
INSERT INTO public.guesses VALUES (66, 429, 22);
INSERT INTO public.guesses VALUES (67, 177, 22);
INSERT INTO public.guesses VALUES (68, 803, 21);
INSERT INTO public.guesses VALUES (69, 78, 21);
INSERT INTO public.guesses VALUES (70, 243, 21);
INSERT INTO public.guesses VALUES (71, 412, 23);
INSERT INTO public.guesses VALUES (72, 277, 23);
INSERT INTO public.guesses VALUES (73, 493, 24);
INSERT INTO public.guesses VALUES (74, 388, 24);
INSERT INTO public.guesses VALUES (75, 336, 23);
INSERT INTO public.guesses VALUES (76, 55, 23);
INSERT INTO public.guesses VALUES (77, 274, 23);
INSERT INTO public.guesses VALUES (78, 875, 25);
INSERT INTO public.guesses VALUES (79, 735, 25);
INSERT INTO public.guesses VALUES (80, 740, 26);
INSERT INTO public.guesses VALUES (81, 960, 26);
INSERT INTO public.guesses VALUES (82, 94, 25);
INSERT INTO public.guesses VALUES (83, 304, 25);
INSERT INTO public.guesses VALUES (84, 114, 25);
INSERT INTO public.guesses VALUES (85, 328, 27);
INSERT INTO public.guesses VALUES (86, 274, 27);
INSERT INTO public.guesses VALUES (87, 404, 28);
INSERT INTO public.guesses VALUES (88, 914, 28);
INSERT INTO public.guesses VALUES (89, 493, 27);
INSERT INTO public.guesses VALUES (90, 888, 27);
INSERT INTO public.guesses VALUES (91, 176, 27);
INSERT INTO public.guesses VALUES (92, 120, 29);
INSERT INTO public.guesses VALUES (93, 555, 29);
INSERT INTO public.guesses VALUES (94, 225, 30);
INSERT INTO public.guesses VALUES (95, 637, 30);
INSERT INTO public.guesses VALUES (96, 1001, 29);
INSERT INTO public.guesses VALUES (97, 431, 29);
INSERT INTO public.guesses VALUES (98, 437, 29);
INSERT INTO public.guesses VALUES (99, 118, 31);
INSERT INTO public.guesses VALUES (100, 375, 31);
INSERT INTO public.guesses VALUES (101, 168, 32);
INSERT INTO public.guesses VALUES (102, 299, 32);
INSERT INTO public.guesses VALUES (103, 755, 31);
INSERT INTO public.guesses VALUES (104, 568, 31);
INSERT INTO public.guesses VALUES (105, 250, 31);
INSERT INTO public.guesses VALUES (106, 546, 33);
INSERT INTO public.guesses VALUES (107, 947, 33);
INSERT INTO public.guesses VALUES (108, 99, 34);
INSERT INTO public.guesses VALUES (109, 119, 34);
INSERT INTO public.guesses VALUES (110, 799, 33);
INSERT INTO public.guesses VALUES (111, 174, 33);
INSERT INTO public.guesses VALUES (112, 173, 33);
INSERT INTO public.guesses VALUES (113, 476, 35);
INSERT INTO public.guesses VALUES (114, 839, 35);
INSERT INTO public.guesses VALUES (115, 212, 36);
INSERT INTO public.guesses VALUES (116, 789, 36);
INSERT INTO public.guesses VALUES (117, 137, 35);
INSERT INTO public.guesses VALUES (118, 817, 35);
INSERT INTO public.guesses VALUES (119, 119, 35);
INSERT INTO public.guesses VALUES (120, 478, 37);
INSERT INTO public.guesses VALUES (121, 700, 37);
INSERT INTO public.guesses VALUES (122, 898, 38);
INSERT INTO public.guesses VALUES (123, 628, 38);
INSERT INTO public.guesses VALUES (124, 895, 37);
INSERT INTO public.guesses VALUES (125, 392, 37);
INSERT INTO public.guesses VALUES (126, 644, 37);
INSERT INTO public.guesses VALUES (127, 176, 39);
INSERT INTO public.guesses VALUES (128, 663, 39);
INSERT INTO public.guesses VALUES (129, 152, 40);
INSERT INTO public.guesses VALUES (130, 188, 40);
INSERT INTO public.guesses VALUES (131, 153, 39);
INSERT INTO public.guesses VALUES (132, 584, 39);
INSERT INTO public.guesses VALUES (133, 962, 39);
INSERT INTO public.guesses VALUES (134, 791, 41);
INSERT INTO public.guesses VALUES (135, 528, 41);
INSERT INTO public.guesses VALUES (136, 703, 42);
INSERT INTO public.guesses VALUES (137, 699, 42);
INSERT INTO public.guesses VALUES (138, 112, 41);
INSERT INTO public.guesses VALUES (139, 181, 41);
INSERT INTO public.guesses VALUES (140, 521, 41);
INSERT INTO public.guesses VALUES (141, 382, 43);
INSERT INTO public.guesses VALUES (142, 726, 43);
INSERT INTO public.guesses VALUES (143, 321, 44);
INSERT INTO public.guesses VALUES (144, 99, 44);
INSERT INTO public.guesses VALUES (145, 223, 43);
INSERT INTO public.guesses VALUES (146, 621, 43);
INSERT INTO public.guesses VALUES (147, 551, 43);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1718506363928');
INSERT INTO public.users VALUES (2, 'user_1718506363927');
INSERT INTO public.users VALUES (3, 'cate');
INSERT INTO public.users VALUES (4, 'user_1718506462925');
INSERT INTO public.users VALUES (5, 'user_1718506462924');
INSERT INTO public.users VALUES (6, 'user_1718506490982');
INSERT INTO public.users VALUES (7, 'user_1718506490981');
INSERT INTO public.users VALUES (8, 'user_1718506605629');
INSERT INTO public.users VALUES (9, 'user_1718506605628');
INSERT INTO public.users VALUES (10, 'user_1718506676131');
INSERT INTO public.users VALUES (11, 'user_1718506676130');
INSERT INTO public.users VALUES (12, 'user_1718506685555');
INSERT INTO public.users VALUES (13, 'user_1718506685554');
INSERT INTO public.users VALUES (14, 'user_1718506776896');
INSERT INTO public.users VALUES (15, 'user_1718506776895');
INSERT INTO public.users VALUES (16, 'user_1718506826723');
INSERT INTO public.users VALUES (17, 'user_1718506826722');
INSERT INTO public.users VALUES (18, 'user_1718506976231');
INSERT INTO public.users VALUES (19, 'user_1718506976230');
INSERT INTO public.users VALUES (20, 'tim');
INSERT INTO public.users VALUES (21, 'user_1718507108539');
INSERT INTO public.users VALUES (22, 'user_1718507108538');
INSERT INTO public.users VALUES (23, 'user_1718507239752');
INSERT INTO public.users VALUES (24, 'user_1718507239751');
INSERT INTO public.users VALUES (25, 'user_1718507428672');
INSERT INTO public.users VALUES (26, 'user_1718507428671');
INSERT INTO public.users VALUES (27, 'user_1718507466165');
INSERT INTO public.users VALUES (28, 'user_1718507466164');
INSERT INTO public.users VALUES (29, 'user_1718507653526');
INSERT INTO public.users VALUES (30, 'user_1718507653525');
INSERT INTO public.users VALUES (31, 'user_1718507672227');
INSERT INTO public.users VALUES (32, 'user_1718507672226');
INSERT INTO public.users VALUES (33, 'user_1718507721957');
INSERT INTO public.users VALUES (34, 'user_1718507721956');
INSERT INTO public.users VALUES (35, 'user_1718507868962');
INSERT INTO public.users VALUES (36, 'user_1718507868961');
INSERT INTO public.users VALUES (37, 'user_1718508001093');
INSERT INTO public.users VALUES (38, 'user_1718508001092');
INSERT INTO public.users VALUES (39, 'user_1718508048465');
INSERT INTO public.users VALUES (40, 'user_1718508048464');
INSERT INTO public.users VALUES (41, 'user_1718508110571');
INSERT INTO public.users VALUES (42, 'user_1718508110570');
INSERT INTO public.users VALUES (43, 'user_1718508163490');
INSERT INTO public.users VALUES (44, 'user_1718508163489');


--
-- Name: guesses_guess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.guesses_guess_id_seq', 147, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 44, true);


--
-- Name: guesses guesses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_pkey PRIMARY KEY (guess_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: guesses guesses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guesses
    ADD CONSTRAINT guesses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

