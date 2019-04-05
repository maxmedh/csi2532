--
-- PostgreSQL database cluster dump
--

-- Started on 2019-04-03 20:37:05

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5891d7d5079424b1cb973187d354d78de';






--
-- Database creation
--

CREATE DATABASE "project.db" WITH TEMPLATE = template0 OWNER = postgres;
REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

-- Started on 2019-04-03 20:37:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2819 (class 0 OID 0)
-- Dependencies: 2818
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- TOC entry 2 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2821 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2822 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 16408)
-- Name: catalog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.catalog (
    sid integer,
    pid integer,
    cost real
);


ALTER TABLE public.catalog OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16397)
-- Name: enrolled; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrolled (
    studid character(20) NOT NULL,
    cid character(20) NOT NULL,
    grade character(10)
);


ALTER TABLE public.enrolled OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16405)
-- Name: parts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parts (
    pid integer,
    pname character(20),
    colour character(10)
);


ALTER TABLE public.parts OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16394)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    sid character(20),
    name character(30),
    login character(20),
    age integer,
    gpa real
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16402)
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    sid integer,
    sname character(20),
    address character(10)
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- TOC entry 2812 (class 0 OID 16408)
-- Dependencies: 201
-- Data for Name: catalog; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2809 (class 0 OID 16397)
-- Dependencies: 198
-- Data for Name: enrolled; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2811 (class 0 OID 16405)
-- Dependencies: 200
-- Data for Name: parts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2808 (class 0 OID 16394)
-- Dependencies: 197
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students (sid, name, login, age, gpa) VALUES ('1                   ', 'Mo                            ', 'a@a.com             ', 29, 3);


--
-- TOC entry 2810 (class 0 OID 16402)
-- Dependencies: 199
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2686 (class 2606 OID 16401)
-- Name: enrolled enrolled_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrolled
    ADD CONSTRAINT enrolled_pkey PRIMARY KEY (studid, cid);


-- Completed on 2019-04-03 20:37:06

--
-- PostgreSQL database dump complete
--

\connect "project.db"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

-- Started on 2019-04-03 20:37:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;



--
-- TOC entry 202 (class 1259 OID 16462)
-- Name: Athletes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.athletes (
    aid character(50) NOT NULL,
    prenom character(50),
    nom character(50),
    adressevillage character(50),
    adressepermanente character(50),
    nationalite character(50),
    medaille character(50)
);

ALTER TABLE public.athletes OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16468)
-- Name: Disciplines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplines (
    nomd character(50) NOT NULL,
    epreuves character(50)
);


ALTER TABLE public.disciplines OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16450)
-- Name: Employesducojo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employesducojo (
    eid character(50) NOT NULL,
    prenom character(50),
    nom character(50),
    adressevillage character(50),
    adressepermanente character(50),
    numerotelephone character(50)
);


ALTER TABLE public.employesducojo OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16476)
-- Name: Epreuves; Type: TABLE; Schema: public; Owner: postgres
--


--
-- TOC entry 205 (class 1259 OID 16482)
-- Name: Installation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installation (
    iid character(50) NOT NULL,
    nom character(50),
    capacite character(50),
    addresse character(50),
    usage character(50),
    description character(50)
);


ALTER TABLE public.installation OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16456)
-- Name: Officiels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.officiels (
    oid character(50) NOT NULL,
    prenom character(50),
    nom character(50),
    adressevillage character(50),
    type character(50)
);


ALTER TABLE public.officiels OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16412)
-- Name: Service médicaux; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_medicaux (
    description character(50),
    numerotelephone character(50),
    adresse character(50),
    nomsm character(50) NOT NULL
);


ALTER TABLE public.service_medicaux OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16426)
-- Name: Service transport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_transport (
    tid character(50) NOT NULL,
    frequence character(50),
    ptdepart character(50),
    ptarrive character(50),
    itineraire character(50)
);


ALTER TABLE public.service_transport OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16434)
-- Name: villageolympique; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.villageolympique (
    address character(50) NOT NULL,
    capacite character(50),
    telephone character(50)
);


ALTER TABLE public.villageolympique OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 16462)
-- Dependencies: 202
-- Data for Name: Athletes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2854 (class 0 OID 16468)
-- Dependencies: 203
-- Data for Name: Disciplines; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2851 (class 0 OID 16450)
-- Dependencies: 200
-- Data for Name: Employesducojo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2855 (class 0 OID 16476)
-- Dependencies: 204
-- Data for Name: Epreuves; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2856 (class 0 OID 16482)
-- Dependencies: 205
-- Data for Name: Installation; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2852 (class 0 OID 16456)
-- Dependencies: 201
-- Data for Name: Officiels; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2850 (class 0 OID 16442)
-- Dependencies: 199
-- Data for Name: Participant; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2847 (class 0 OID 16412)
-- Dependencies: 196
-- Data for Name: Service médicaux; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2848 (class 0 OID 16426)
-- Dependencies: 197
-- Data for Name: Service transport; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2849 (class 0 OID 16434)
-- Dependencies: 198
-- Data for Name: villageolympique; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2723 (class 2606 OID 16475)
-- Name: Disciplines Disciplines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplines
    ADD CONSTRAINT "Disciplines_pkey" PRIMARY KEY (nomd);


--
-- TOC entry 2725 (class 2606 OID 16486)
-- Name: Installation Installation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installation
    ADD CONSTRAINT "Installation_pkey" PRIMARY KEY (iid);


--
-- TOC entry 2721 (class 2606 OID 16449)
-- Name: Participant Participant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.athletes
    ADD CONSTRAINT "Athlete_id" PRIMARY KEY (aid);

ALTER TABLE ONLY public.employesducojo
    ADD CONSTRAINT "Employe_id" PRIMARY KEY (eid);

ALTER TABLE ONLY public.officiels
    ADD CONSTRAINT "Officiel_id" PRIMARY KEY (oid);


--
-- TOC entry 2715 (class 2606 OID 16425)
-- Name: Service médicaux Service médicaux_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_medicaux
    ADD CONSTRAINT "Service médicaux_pkey" PRIMARY KEY (nomsm);


--
-- TOC entry 2717 (class 2606 OID 16433)
-- Name: Service transport Service transport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_transport
    ADD CONSTRAINT "Service transport_pkey" PRIMARY KEY (tid);


--
-- TOC entry 2719 (class 2606 OID 16493)
-- Name: villageolympique address; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.villageolympique
    ADD CONSTRAINT address PRIMARY KEY (address);


-- Completed on 2019-04-03 20:37:07

--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

-- Started on 2019-04-03 20:37:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2791 (class 0 OID 0)
-- Dependencies: 2790
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2793 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


-- Completed on 2019-04-03 20:37:08

--
-- PostgreSQL database dump complete
--

-- Completed on 2019-04-03 20:37:08

--
-- PostgreSQL database cluster dump complete
--

