--
-- PostgreSQL database dump
--

\restrict GMKFb58ZLbhIw0rWvcwO3GlDIwuktEQIUFPN6iC7UywhZvndeCaZHiv7K2P1KhC

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-04-09 01:04:56

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16423)
-- Name: currencies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.currencies (
    id integer NOT NULL,
    name character varying(10) CONSTRAINT currencies_currency_not_null NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 16422)
-- Name: currencies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.currencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 221
-- Name: currencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.currencies_id_seq OWNED BY public.currencies.id;


--
-- TOC entry 220 (class 1259 OID 16412)
-- Name: service_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_types (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 16411)
-- Name: service_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.service_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 219
-- Name: service_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.service_types_id_seq OWNED BY public.service_types.id;


--
-- TOC entry 224 (class 1259 OID 16434)
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer,
    currency_id integer,
    service_type_id integer
);


--
-- TOC entry 223 (class 1259 OID 16433)
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 223
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- TOC entry 4766 (class 2604 OID 16426)
-- Name: currencies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currencies ALTER COLUMN id SET DEFAULT nextval('public.currencies_id_seq'::regclass);


--
-- TOC entry 4765 (class 2604 OID 16415)
-- Name: service_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_types ALTER COLUMN id SET DEFAULT nextval('public.service_types_id_seq'::regclass);


--
-- TOC entry 4767 (class 2604 OID 16437)
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- TOC entry 4932 (class 0 OID 16423)
-- Dependencies: 222
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.currencies (id, name) FROM stdin;
1	UAH
2	USD
\.


--
-- TOC entry 4930 (class 0 OID 16412)
-- Dependencies: 220
-- Data for Name: service_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.service_types (id, name) FROM stdin;
1	General services
2	Endodontic treatment
3	Restoration of teeth
4	Surgery
5	Orthopedic treatment
6	Orthodontic treatment
7	X-ray
8	Whitening
9	Children Treatment
10	Periodontology
\.


--
-- TOC entry 4934 (class 0 OID 16434)
-- Dependencies: 224
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.services (id, name, price, currency_id, service_type_id) FROM stdin;
1	Head doctor consultation	950	1	1
2	Specialist consultation	500	1	1
3	Coferdam system	450	1	1
4	Applique anesthesia	200	1	1
5	Conduction anesthesia	350	1	1
6	Functional diagnostics	7500	1	1
7	Dental treatment with sedation (1 hour)	4800	1	1
8	Instrumental treatment 1 root canal	750	1	2
9	Medical treatment 1 root canal	550	1	2
10	Filling 1 root canalcalcium-containing paste	500	1	2
11	Filling 1 root canalvertical condensation	4500	1	2
12	Filling 2 root canalvertical condensation	5600	1	2
13	Filling 3 root canalvertical condensation	6700	1	2
14	Unsealing 1 root canal	1800	1	2
15	Removal of a tool	2200	1	2
16	Medical paste	550	1	2
17	Using MTA	1800	1	2
18	Preparation toendodontic treatment	1350	1	2
19	Remove the pin	1250	1	2
20	Tooth restoration afterendodontic treatment	2600	1	2
21	Tooth restoration afterendodontic treatment (molar)	3100	1	2
22	Treatment of the tooth by ICON system (superficial caries)	2500	1	3
23	Treatment of the tooth (superficial caries)	2000	1	3
24	Treatment of the tooth (the average caries)	2800	1	3
25	Treatment of teeth (deep caries)	3400	1	3
26	Restoration of the tooth (1/4 of the tooth)	3900	1	3
27	Restoration of the tooth (1/3 of the tooth)	4600	1	3
28	Restoration of the tooth (1/2 of the tooth)	4900	1	3
29	Restoration of the tooth (2/3 of the tooth)	5600	1	3
30	Restoration of the tooth (1/4 of the tooth) (molar)	3900	1	3
31	Restoration of the tooth (1/3 of the tooth) (molar)	4500	1	3
32	Restoration of the tooth (1/2 of the tooth) (molar)	5100	1	3
33	Restoration of the tooth (2/3 of the tooth) (molar)	5800	1	3
34	Fiberglass pin (tapered)	1200	1	3
35	Sticking bridge	17500	1	3
36	Restoration of the tooth under the crown 1st degree of complexity	2000	1	3
37	Restoration of the tooth under the crown 2nd degree of complexity	2500	1	3
38	Restoration of the tooth under the crown 3nd degree of complexity	3000	1	3
39	Fissure sealing (one tooth)	1950	1	3
40	Simple tooth extraction	1450	1	4
41	Complicated tooth extraction 1st degree of complexity	2000	1	4
42	Complicated tooth extraction 2nd degree of complexity	2800	1	4
43	Complicated tooth extraction 3rd degree of complexity	3500	1	4
44	Removal of impacted tooth, 1st degree of complexity	3700	1	4
45	Removal of impacted tooth, 2nd degree of complexity	4800	1	4
46	Removal of impacted tooth, 3rd degree of complexity	5900	1	4
47	Removal of impacted tooth, 4th degree of complexity	7200	1	4
48	Abnormal tooth extraction	4200	1	4
49	Atraumatic removal	3500	1	4
50	Removal of baby tooth	800	1	4
51	Bridle plastic surgery	2000	1	4
52	Implant Straumann (Titan)	25500	1	4
53	Implant Straumann	34000	1	4
54	Implant Straumann Active	38000	1	4
55	Gingival former for a Straumann implant	5000	1	4
56	Sinus lift (small)	27500	1	4
57	Sinus lift (large)	36500	1	4
58	Restoration small bone defect	8000	1	4
59	Restoration average bone defect	14000	1	4
60	Restoring large bone defect	20000	1	4
61	Root apex resection	8500	1	4
62	Cystic defect repair with using an autotransplant (small size) one tooth	13200	1	4
63	Ceramic overlay 1st degree of complexity	12600	1	5
64	Ceramic overlay 2nd degree of complexity	14000	1	5
65	Ceramic overlay 3rd degree of complexity	15000	1	5
66	Ceramic crown 1st degree of complexity	12600	1	5
67	Ceramic crown 2nd degree of complexity	14000	1	5
68	Ceramic crown 3rd degree of complexity	15000	1	5
69	Ceramic veneer 1st degree of complexity	15000	1	5
70	Ceramic veneer 2nd degree of complexity	19500	1	5
71	Ceramic veneer 3rd degree of complexity	21000	1	5
72	Digital scan, one jaw	1800	1	5
73	Temporary milled crown	1250	1	5
74	Temporary crown	3000	1	5
75	Temporary crown on the implant	8700	1	5
76	Crown from zirconium oxide on implant 1st type	21000	1	5
77	Crown from zirconium oxide on implant 2nd type	23500	1	5
78	А- silicone impression	1250	1	5
79	С- silicone impression	700	1	5
80	Equilibration (grinding)	1000	1	5
81	Plastic removable prosthesis	11700	1	5
82	Сrown removal 1st degree of complexity	900	1	5
83	Сrown removal 2nd degree of complexity	1200	1	5
84	Diagnosis and scanning, planning orthodontic treatment by ClearCorrect aligners	700	2	6
85	ClearCorrect aligners by Straumann, mild severity treatment	3700	2	6
86	ClearCorrect aligners by Straumann, moderate severity treatment	4300	2	6
87	ClearCorrect aligners by Straumann, severe severity treatment	5000	2	6
88	Fixing brackets Damon Clear (one jaw)	40500	1	6
89	Fixing brackets Damon Q (one jaw)	32000	1	6
90	Fixing brackets Roth mini (one jaw)	21500	1	6
91	Fixing brackets Roth mini (ligatures, ceramics) (one jaw)	34000	1	6
92	Activation and correction of the orthodontic appliances	650	1	6
93	Repeated orthodontist checkup	550	1	6
94	Replacement elastic ligatures (one jaw)	350	1	6
95	Replacing metal ligatures (ligating) (one jaw)	450	1	6
96	Replacing the arc NiTi (steel) (one jaw)	1200	1	6
97	Replacing the arc NiTi (esthetic) (one jaw)	1500	1	6
98	Removing the bracket (one jaw)	1500	1	6
99	Removable retainer (mouthguard)	2800	1	6
100	Removing a dental overlay	500	1	6
101	Installing the retainer (one jaw)	2500	1	6
102	External attachments	850	1	6
103	Removable orthodontic appliances 1st category	8500	1	6
104	Removable orthodontic appliances 2nd category	10500	1	6
105	Removable orthodontic appliances 3rd category	16000	1	6
106	Removable orthodontic appliances 4th category	19500	1	6
107	Unremovable orthodontic appliances 1st category	12200	1	6
108	Unremovable orthodontic appliances 2nd category	14800	1	6
109	Unremovable orthodontic appliances 3rd category	18500	1	6
110	Unremovable orthodontic appliances 4th category	21500	1	6
111	Microimplant installation 1st type	8500	1	6
112	Microimplant installation 2nd type	7500	1	6
113	Microimplant removal	600	1	6
114	Sighting X-ray	300	1	7
115	Panoramic X-ray	500	1	7
116	TRH (lateral, direct projection, wrist)	500	1	7
117	X-rays of the sinuse	500	1	7
118	3D diagnostics (one jaw)	800	1	7
119	3D segment diagnostics	500	1	7
120	3D diagnostics (two jaws)	1350	1	7
121	Laser whitening (two jaws)	8000	1	8
122	Рsychological adjustment of the child	500	1	9
123	Fissure sealing is non-invasive	700	1	9
124	Fissure sealing is invasive	1200	1	9
125	Photopolymer filling	1350	1	9
126	Preparation for endodontic treatment	600	1	9
127	Endodontic treatment (one tooth)	1700	1	9
128	Periodontist consultation	500	1	10
129	Periodontal chart	650	1	10
130	Primary professional oral hygiene - 1st degree of complexity (one jaw)	1500	1	10
131	Primary professional oral hygiene - 2nd degree of complexity (one jaw)	1750	1	10
132	Primary professional oral hygiene - 3rd degree of complexity (one jaw)	1950	1	10
133	Reapited oral hygiene - 1st degree of complexity (two jaws)	2500	1	10
134	Reapited oral hygiene - 2nd degree of complexity (two jaws)	3100	1	10
135	Reapited oral hygiene - 3rd degree of complexity (two jaws)	3500	1	10
136	Baby teeth primary professional oral hygiene (small number of dental pads)	1250	1	10
137	Baby teeth primary professional oral hygiene (significant number of dental pads)	1850	1	10
138	Professional polishing of the surface of the root and implant (4-6 teeth)	650	1	10
139	Scaling and smoothing of the root surface of a single-rooted tooth	500	1	10
140	Scaling and smoothing of root surfaces of 6-8 teeth	1100	1	10
141	Splinting of one tooth	800	1	10
\.


--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 221
-- Name: currencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.currencies_id_seq', 2, true);


--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 219
-- Name: service_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.service_types_id_seq', 10, true);


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 223
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.services_id_seq', 141, true);


--
-- TOC entry 4773 (class 2606 OID 16432)
-- Name: currencies currencies_currency_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_currency_key UNIQUE (name);


--
-- TOC entry 4775 (class 2606 OID 16430)
-- Name: currencies currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (id);


--
-- TOC entry 4769 (class 2606 OID 16421)
-- Name: service_types service_types_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_types
    ADD CONSTRAINT service_types_name_key UNIQUE (name);


--
-- TOC entry 4771 (class 2606 OID 16419)
-- Name: service_types service_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_types
    ADD CONSTRAINT service_types_pkey PRIMARY KEY (id);


--
-- TOC entry 4777 (class 2606 OID 16443)
-- Name: services services_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_name_key UNIQUE (name);


--
-- TOC entry 4779 (class 2606 OID 16441)
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- TOC entry 4780 (class 2606 OID 16444)
-- Name: services fk_currency; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_currency FOREIGN KEY (currency_id) REFERENCES public.currencies(id);


--
-- TOC entry 4781 (class 2606 OID 16449)
-- Name: services fk_service_type; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_service_type FOREIGN KEY (service_type_id) REFERENCES public.service_types(id);


-- Completed on 2026-04-09 01:04:57

--
-- PostgreSQL database dump complete
--

\unrestrict GMKFb58ZLbhIw0rWvcwO3GlDIwuktEQIUFPN6iC7UywhZvndeCaZHiv7K2P1KhC

