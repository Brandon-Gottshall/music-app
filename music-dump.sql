--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

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
-- Name: artists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artists (
    id integer NOT NULL,
    name text NOT NULL,
    age integer,
    img text
);


--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.artists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.songs (
    id integer NOT NULL,
    artistid integer,
    name text NOT NULL,
    duration text NOT NULL,
    play_count character varying(50),
    img text
);


--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.artists (id, name, age, img) FROM stdin;
1	Nas	48	https://www.rollingstone.com/wp-content/uploads/2021/06/Nas-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
2	J. Cole	37	https://www.rollingstone.com/wp-content/uploads/2021/06/J-Cole-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
3	Travis Scott	30	https://www.rollingstone.com/wp-content/uploads/2021/06/Travis-Scott-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
4	Cardi B	29	https://www.rollingstone.com/wp-content/uploads/2021/06/Cardi-B-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
5	Nicki Minaj	39	https://www.rollingstone.com/wp-content/uploads/2021/06/Nicki-Minaj-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
6	Post Malone	27	https://www.rollingstone.com/wp-content/uploads/2021/06/Post-Malone-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
7	Jay-Z	51	https://www.rollingstone.com/wp-content/uploads/2021/06/Jay-Z-GettyImages-1234567890.jpg?resize=1800,1200&w=1200
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.songs (id, artistid, name, duration, play_count, img) FROM stdin;
1	7	Song Cry	5:03	0	https://i.discogs.com/lgxYHTfoiQe4WSHpqgEvHf9UcqTXv7CJxPUOlPK32Kw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTUzMjk5/MTEtMTYxMDM5MDA3/Ni01Njc5LmpwZWc.jpeg
2	1	Empire State of Mind	4:30	0	https://i1.sndcdn.com/artworks-000000000000-0tq7xq-t500x500.jpg
3	7	99 Problems	4:30	0	https://i1.sndcdn.com/artworks-000000000000-0tq7xq-t500x500.jpg
4	7	Dirt Off Your Shoulder	4:30	0	https://i1.sndcdn.com/artworks-000000000000-0tq7xq-t500x500.jpg
5	7	Run This Town	4:30	0	https://i1.sndcdn.com/artworks-000000000000-0tq7xq-t500x500.jpg
6	7	Numb/Encore	4:30	0	https://i1.sndcdn.com/artworks-000000000000-0tq7xq-t500x500.jpg
\.


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.artists_id_seq', 7, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.songs_id_seq', 6, true);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: songs songs_artistid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_artistid_fkey FOREIGN KEY (artistid) REFERENCES public.artists(id);


--
-- PostgreSQL database dump complete
--

