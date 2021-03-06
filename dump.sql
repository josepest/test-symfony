--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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

--
-- Data for Name: adminuser; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.adminuser (id, email, roles, password, name, surnames) FROM stdin;
10	josepe@gmail.com	["ROLE_ADMIN"]	$argon2id$v=19$m=65536,t=4,p=1$O0YgTtuCmepZyftz7EcxgQ$NrAxOvdgVTXS8ZuB3FLCJFxE2F2jylQH/hZ9PWHx0Bw	Josep	Estudis
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
21	Amsterdam	2019	t	amsterdam-2019
22	Paris	2020	f	paris-2020
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename, state) FROM stdin;
30	21	Fabien	This was a great conference.	fabien@example.com	2020-12-05 19:37:54	\N	published
31	21	Lucas	I think this one is going to be moderated.	lucas@example.com	2020-12-05 19:37:54	\N	submitted
32	22	Josep Estudis Figueras	TEST	josepe@gmail.com	2020-12-05 18:38:22	\N	published
33	22	Gala Estudis	EEEEEEE	josepe@gmail.com	2020-12-05 18:39:16	\N	submitted
34	22	eee	ffff	ff@fff.com	2020-12-05 18:46:58	\N	submitted
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20201202105039	2020-12-03 20:55:25	107
DoctrineMigrations\\Version20201202150137	2020-12-03 20:55:25	10
DoctrineMigrations\\Version20201202150554	2020-12-03 20:55:25	7
DoctrineMigrations\\Version20201203202836	2020-12-03 20:55:25	21
DoctrineMigrations\\Version20201204085924	2020-12-05 06:10:26	782
DoctrineMigrations\\Version20201204112032	2020-12-05 06:10:27	20
DoctrineMigrations\\Version20201205073204	2020-12-05 07:32:57	74
\.


--
-- Name: adminuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.adminuser_id_seq', 10, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.comment_id_seq', 34, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.conference_id_seq', 22, true);


--
-- PostgreSQL database dump complete
--

