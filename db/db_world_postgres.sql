--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.3

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

DROP DATABASE IF EXISTS world;
--
-- Name: world; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE world WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE world OWNER TO admin;

\connect world

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
-- Name: city; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.city(
    id integer NOT NULL,
    name character varying,
    country_id integer NOT NULL
);


ALTER TABLE api.city OWNER TO admin;

--
-- Name: city_country_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.city_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.city_country_id_seq OWNER TO admin;

--
-- Name: city_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.city_country_id_seq OWNED BY api.city.country_id;


--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.city_id_seq OWNER TO admin;

--
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.city_id_seq OWNED BY api.city.id;


--
-- Name: continent; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.continent(
    id integer NOT NULL,
    name character varying
);


ALTER TABLE api.continent OWNER TO admin;

--
-- Name: continent_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.continent_id_seq OWNER TO admin;

--
-- Name: continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.continent_id_seq OWNED BY api.continent.id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.country(
    id integer NOT NULL,
    common_name character varying,
    independent boolean,
    landlocked boolean,
    area integer,
    un_member boolean,
    status character varying,
    cca2 character varying,
    ccn3 character varying,
    cca3 character varying,
    cioc character varying,
    region character varying,
    subregion character varying,
    official_name character varying
);


ALTER TABLE api.country OWNER TO admin;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.country_id_seq OWNER TO admin;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.country_id_seq OWNED BY api.country.id;


--
-- Name: currency; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.currency(
    id integer NOT NULL
);


ALTER TABLE api.currency OWNER TO admin;

--
-- Name: currency_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.currency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.currency_id_seq OWNER TO admin;

--
-- Name: currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.currency_id_seq OWNED BY api.currency.id;


--
-- Name: language; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.language(
    id integer NOT NULL,
    name character varying
);


ALTER TABLE api.language OWNER TO admin;

--
-- Name: language_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.language_id_seq OWNER TO admin;

--
-- Name: language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.language_id_seq OWNED BY api.language.id;


--
-- Name: region; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.region(
    id integer NOT NULL,
    name character varying
);


ALTER TABLE api.region OWNER TO admin;

--
-- Name: region_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.region_id_seq OWNER TO admin;

--
-- Name: region_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.region_id_seq OWNED BY api.region.id;


--
-- Name: subregion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.subregion(
    id integer NOT NULL,
    name character varying
);


ALTER TABLE api.subregion OWNER TO admin;

--
-- Name: subregion_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.subregion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.subregion_id_seq OWNER TO admin;

--
-- Name: subregion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.subregion_id_seq OWNED BY api.subregion.id;


--
-- Name: timezone; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.timezone(
    id integer NOT NULL,
    name integer
);


ALTER TABLE api.timezone OWNER TO admin;

--
-- Name: timezone_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.timezone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.timezone_id_seq OWNER TO admin;

--
-- Name: timezone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.timezone_id_seq OWNED BY api.timezone.id;


--
-- Name: tld; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api.tld(
    id integer NOT NULL,
    name character varying
);


ALTER TABLE api.tld OWNER TO admin;

--
-- Name: tld_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.tld_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.tld_id_seq OWNER TO admin;

--
-- Name: tld_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.tld_id_seq OWNED BY api.tld.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE api."user"(
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying NOT NULL,
    date_of_birth date,
    veryfied boolean
);


ALTER TABLE api."user" OWNER TO admin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE api.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE api.users_id_seq OWNER TO admin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE api.users_id_seq OWNED BY api."user".id;


--
-- Name: city id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.city ALTER COLUMN id SET DEFAULT nextval('api.city_id_seq'::regclass);


--
-- Name: city country_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.city ALTER COLUMN country_id SET DEFAULT nextval('api.city_country_id_seq'::regclass);


--
-- Name: continent id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.continent ALTER COLUMN id SET DEFAULT nextval('api.continent_id_seq'::regclass);


--
-- Name: country id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.country ALTER COLUMN id SET DEFAULT nextval('api.country_id_seq'::regclass);


--
-- Name: currency id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.currency ALTER COLUMN id SET DEFAULT nextval('api.currency_id_seq'::regclass);


--
-- Name: language id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.language ALTER COLUMN id SET DEFAULT nextval('api.language_id_seq'::regclass);


--
-- Name: region id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.region ALTER COLUMN id SET DEFAULT nextval('api.region_id_seq'::regclass);


--
-- Name: subregion id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.subregion ALTER COLUMN id SET DEFAULT nextval('api.subregion_id_seq'::regclass);


--
-- Name: timezone id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.timezone ALTER COLUMN id SET DEFAULT nextval('api.timezone_id_seq'::regclass);


--
-- Name: tld id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.tld ALTER COLUMN id SET DEFAULT nextval('api.tld_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api."user" ALTER COLUMN id SET DEFAULT nextval('api.users_id_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO api.city (id, name, country_id)VALUES (1, 'Moscow', 1);
INSERT INTO api.city (id, name, country_id)VALUES (2, 'Saint-Petersburg', 1);


--
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO api.country (id, common_name, independent, landlocked, area, un_member, status, cca2, ccn3, cca3, cioc, region, subregion, official_name)VALUES (1, 'Russia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: region; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: subregion; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: timezone; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: tld; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO api."user" (id, first_name, last_name, email, date_of_birth, veryfied)VALUES (1, 'Daniil', 'Koltsov', 'forzalino@gmail.com', '1991-04-01', true);


--
-- Name: city_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.city_country_id_seq', 1, false);


--
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.city_id_seq', 2, true);


--
-- Name: continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.continent_id_seq', 1, false);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.country_id_seq', 1, true);


--
-- Name: currency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.currency_id_seq', 1, false);


--
-- Name: language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.language_id_seq', 1, false);


--
-- Name: region_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.region_id_seq', 1, false);


--
-- Name: subregion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.subregion_id_seq', 1, false);


--
-- Name: timezone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.timezone_id_seq', 1, false);


--
-- Name: tld_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.tld_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('api.users_id_seq', 1, true);


--
-- Name: city city_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.city
    ADD CONSTRAINT city_pk PRIMARY KEY (id);


--
-- Name: continent continent_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.continent
    ADD CONSTRAINT continent_pk PRIMARY KEY (id);


--
-- Name: country country_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.country
    ADD CONSTRAINT country_pk PRIMARY KEY (id);


--
-- Name: currency currency_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.currency
    ADD CONSTRAINT currency_pk PRIMARY KEY (id);


--
-- Name: language language_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.language
    ADD CONSTRAINT language_pk PRIMARY KEY (id);


--
-- Name: region region_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.region
    ADD CONSTRAINT region_pk PRIMARY KEY (id);


--
-- Name: subregion subregion_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.subregion
    ADD CONSTRAINT subregion_pk PRIMARY KEY (id);


--
-- Name: timezone timezone_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.timezone
    ADD CONSTRAINT timezone_pk PRIMARY KEY (id);


--
-- Name: tld tld_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.tld
    ADD CONSTRAINT tld_pk PRIMARY KEY (id);


--
-- Name: user users_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api."user"
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- Name: city_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX city_id_uindex ON api.city USING btree (id);


--
-- Name: continent_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX continent_id_uindex ON api.continent USING btree (id);


--
-- Name: country_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX country_id_uindex ON api.country USING btree (id);


--
-- Name: currency_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX currency_id_uindex ON api.currency USING btree (id);


--
-- Name: language_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX language_id_uindex ON api.language USING btree (id);


--
-- Name: region_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX region_id_uindex ON api.region USING btree (id);


--
-- Name: subregion_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX subregion_id_uindex ON api.subregion USING btree (id);


--
-- Name: timezone_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX timezone_id_uindex ON api.timezone USING btree (id);


--
-- Name: tld_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX tld_id_uindex ON api.tld USING btree (id);


--
-- Name: users_email_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX users_email_uindex ON api."user" USING btree (email);


--
-- Name: users_id_uindex; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX users_id_uindex ON api."user" USING btree (id);


--
-- Name: city country_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY api.city
    ADD CONSTRAINT country_fk FOREIGN KEY (country_id) REFERENCES api.country(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

