--
-- PostgreSQL database dump
--

\restrict 6o5MlQqmVWcDjgPvlieVd8Ja8obqawaoAUnvDARBWF2dcImCZOtV3vSRl8yMZRN

-- Dumped from database version 15.14
-- Dumped by pg_dump version 15.14

-- Started on 2025-09-04 22:19:07

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
-- TOC entry 3330 (class 1262 OID 32768)
-- Name: startml_mock; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE startml_mock WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc;


ALTER DATABASE startml_mock OWNER TO postgres;

\unrestrict 6o5MlQqmVWcDjgPvlieVd8Ja8obqawaoAUnvDARBWF2dcImCZOtV3vSRl8yMZRN
\connect startml_mock
\restrict 6o5MlQqmVWcDjgPvlieVd8Ja8obqawaoAUnvDARBWF2dcImCZOtV3vSRl8yMZRN

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
-- TOC entry 216 (class 1259 OID 32781)
-- Name: sample_feed_action; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sample_feed_action (
    "timestamp" timestamp without time zone NOT NULL,
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    action character varying(50) NOT NULL,
    target integer NOT NULL
);


ALTER TABLE public.sample_feed_action OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32774)
-- Name: sample_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sample_post (
    post_id integer NOT NULL,
    text text NOT NULL,
    topic character varying(100) NOT NULL
);


ALTER TABLE public.sample_post OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 32769)
-- Name: sample_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sample_user (
    user_id integer NOT NULL,
    gender integer NOT NULL,
    age integer NOT NULL,
    country character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    exp_group integer NOT NULL,
    os character varying(50) NOT NULL,
    source character varying(50) NOT NULL
);


ALTER TABLE public.sample_user OWNER TO postgres;

--
-- TOC entry 3180 (class 2606 OID 32780)
-- Name: sample_post sample_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sample_post
    ADD CONSTRAINT sample_post_pkey PRIMARY KEY (post_id);


--
-- TOC entry 3178 (class 2606 OID 32773)
-- Name: sample_user sample_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sample_user
    ADD CONSTRAINT sample_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3181 (class 2606 OID 32789)
-- Name: sample_feed_action sample_feed_action_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sample_feed_action
    ADD CONSTRAINT sample_feed_action_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.sample_post(post_id);


--
-- TOC entry 3182 (class 2606 OID 32784)
-- Name: sample_feed_action sample_feed_action_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sample_feed_action
    ADD CONSTRAINT sample_feed_action_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.sample_user(user_id);


-- Completed on 2025-09-04 22:19:07

--
-- PostgreSQL database dump complete
--

\unrestrict 6o5MlQqmVWcDjgPvlieVd8Ja8obqawaoAUnvDARBWF2dcImCZOtV3vSRl8yMZRN

