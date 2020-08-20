--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-4)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: nutrium_dev
--

CREATE TABLE public.appointments (
    id bigint NOT NULL,
    appointment_type character varying,
    price double precision,
    nutritionist_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.appointments OWNER TO nutrium_dev;

--
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: nutrium_dev
--

CREATE SEQUENCE public.appointments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_id_seq OWNER TO nutrium_dev;

--
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nutrium_dev
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: nutrium_dev
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO nutrium_dev;

--
-- Name: clinics; Type: TABLE; Schema: public; Owner: nutrium_dev
--

CREATE TABLE public.clinics (
    id bigint NOT NULL,
    name character varying,
    street character varying,
    place character varying,
    city character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.clinics OWNER TO nutrium_dev;

--
-- Name: clinics_id_seq; Type: SEQUENCE; Schema: public; Owner: nutrium_dev
--

CREATE SEQUENCE public.clinics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clinics_id_seq OWNER TO nutrium_dev;

--
-- Name: clinics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nutrium_dev
--

ALTER SEQUENCE public.clinics_id_seq OWNED BY public.clinics.id;


--
-- Name: nutritionists; Type: TABLE; Schema: public; Owner: nutrium_dev
--

CREATE TABLE public.nutritionists (
    id bigint NOT NULL,
    name character varying,
    code character varying,
    nutritionist_type character varying,
    clinic_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    image character varying
);


ALTER TABLE public.nutritionists OWNER TO nutrium_dev;

--
-- Name: nutritionists_id_seq; Type: SEQUENCE; Schema: public; Owner: nutrium_dev
--

CREATE SEQUENCE public.nutritionists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nutritionists_id_seq OWNER TO nutrium_dev;

--
-- Name: nutritionists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nutrium_dev
--

ALTER SEQUENCE public.nutritionists_id_seq OWNED BY public.nutritionists.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: nutrium_dev
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO nutrium_dev;

--
-- Name: appointments id; Type: DEFAULT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.appointments ALTER COLUMN id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- Name: clinics id; Type: DEFAULT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.clinics ALTER COLUMN id SET DEFAULT nextval('public.clinics_id_seq'::regclass);


--
-- Name: nutritionists id; Type: DEFAULT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.nutritionists ALTER COLUMN id SET DEFAULT nextval('public.nutritionists_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: nutrium_dev
--

COPY public.appointments (id, appointment_type, price, nutritionist_id, created_at, updated_at) FROM stdin;
1	Consulta Domiciliaria	35	1	2020-08-20 13:46:36	2020-08-20 13:46:38
2	Consulta Online	20	1	2020-08-20 14:18:32	2020-08-20 14:18:35
3	Consulta Domiciliaria	30	2	2020-08-20 15:57:17	2020-08-20 15:57:19
4	Consulta Online	20	2	2020-08-20 15:57:18	2020-08-20 15:57:20
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: nutrium_dev
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-08-19 11:25:53.998902	2020-08-19 11:25:53.998902
\.


--
-- Data for Name: clinics; Type: TABLE DATA; Schema: public; Owner: nutrium_dev
--

COPY public.clinics (id, name, street, place, city, created_at, updated_at) FROM stdin;
1	Clinica Jacome	Av. Marchal Humberto Delgado	Vila Nova de Famalicao	Braga	2020-08-20 13:45:18	2020-08-20 13:45:13
\.


--
-- Data for Name: nutritionists; Type: TABLE DATA; Schema: public; Owner: nutrium_dev
--

COPY public.nutritionists (id, name, code, nutritionist_type, clinic_id, created_at, updated_at, image) FROM stdin;
2	Maria Ferreira	2134N	Nutricionista	1	2020-08-20 15:56:05	2020-08-20 15:56:06	2.jpg
1	Sara Silva	2141N	Nutricionista Desportivo	1	2020-08-20 13:45:57	2020-08-20 13:46:00	1.jpg
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nutrium_dev
--

COPY public.schema_migrations (version) FROM stdin;
20200819114726
20200819120014
20200820114240
20200820115125
20200820115642
20200820115834
20200820121427
20200820161757
\.


--
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nutrium_dev
--

SELECT pg_catalog.setval('public.appointments_id_seq', 1, false);


--
-- Name: clinics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nutrium_dev
--

SELECT pg_catalog.setval('public.clinics_id_seq', 1, false);


--
-- Name: nutritionists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nutrium_dev
--

SELECT pg_catalog.setval('public.nutritionists_id_seq', 1, false);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: clinics clinics_pkey; Type: CONSTRAINT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT clinics_pkey PRIMARY KEY (id);


--
-- Name: nutritionists nutritionists_pkey; Type: CONSTRAINT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.nutritionists
    ADD CONSTRAINT nutritionists_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: nutrium_dev
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_appointments_on_nutritionist_id; Type: INDEX; Schema: public; Owner: nutrium_dev
--

CREATE INDEX index_appointments_on_nutritionist_id ON public.appointments USING btree (nutritionist_id);


--
-- Name: index_nutritionists_on_clinic_id; Type: INDEX; Schema: public; Owner: nutrium_dev
--

CREATE INDEX index_nutritionists_on_clinic_id ON public.nutritionists USING btree (clinic_id);


--
-- PostgreSQL database dump complete
--

