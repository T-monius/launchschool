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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: expenses; Type: TABLE; Schema: public; Owner: tmo
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    amount numeric(6,2) NOT NULL,
    memo text NOT NULL,
    created_on date NOT NULL,
    CONSTRAINT positive_amount CHECK ((amount >= 0.01))
);


ALTER TABLE public.expenses OWNER TO tmo;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: tmo
--

CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expenses_id_seq OWNER TO tmo;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tmo
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: tmo
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: tmo
--

COPY public.expenses (id, amount, memo, created_on) FROM stdin;
3	14.56	Pencils	2019-06-07
4	3.29	Coffee	2019-06-07
5	49.99	Text Editor	2019-06-07
7	5.01	Binder	2019-06-07
8	8.08	lunch	2019-06-07
9	2.51	snack	2019-06-07
12	1.35	Gum	2019-06-11
13	4.55	London Fog	2019-06-11
14	2.12	Coffee	2019-06-11
\.


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tmo
--

SELECT pg_catalog.setval('public.expenses_id_seq', 14, true);


--
-- Name: expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: tmo
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

