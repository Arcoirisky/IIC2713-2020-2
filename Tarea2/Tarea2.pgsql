--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

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
-- Name: afiliados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.afiliados (
    id integer NOT NULL,
    nombre character varying,
    sexo character varying,
    rut character varying,
    fecha_nacimiento date,
    direccion character varying,
    correo character varying
);


ALTER TABLE public.afiliados OWNER TO postgres;

--
-- Name: afp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.afp (
    id integer NOT NULL,
    nombre character varying,
    cantidad_afiliados integer,
    porcentaje_total double precision,
    capital_de_inversion bigint,
    comision_anual double precision
);


ALTER TABLE public.afp OWNER TO postgres;

--
-- Name: afp_afiliados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.afp_afiliados (
    id integer,
    afp character varying,
    apv boolean,
    saldo_afp integer,
    saldo_apv integer,
    inicio_cotizacion date,
    ultima_cotizacion date
);


ALTER TABLE public.afp_afiliados OWNER TO postgres;

--
-- Name: fondos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fondos (
    rut character varying,
    fondo_a integer,
    fondo_b integer,
    fondo_c integer,
    fondo_d integer,
    fondo_e integer
);


ALTER TABLE public.fondos OWNER TO postgres;

--
-- Name: rentabilidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rentabilidad (
    id integer,
    fondo_a double precision,
    fondo_b double precision,
    fondo_c double precision,
    fondo_d double precision,
    fondo_e double precision
);


ALTER TABLE public.rentabilidad OWNER TO postgres;

--
-- Data for Name: afiliados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.afiliados (id, nombre, sexo, rut, fecha_nacimiento, direccion, correo) FROM stdin;
1	Dante Booth	M	6751759-1	1965-07-19	881 4th Dr.Williamstown NJ 08094	DanteBooth@gmail.com
2	Germaine Tillman	F	6610321-K	1962-08-28	9588 Riverside St.Clifton Park NY 12065	GermaineTillman@gmail.com
3	Devin Gardner	M	10231340-K	1974-01-18	149 Snake Hill Rd.Atlantic City NJ 08401	DevinGardner@gmail.com
4	Giacomo Justice	F	7954161-4	1964-11-15	9206 Whitemarsh St.Pewaukee WI 53072	GiacomoJustice@gmail.com
5	Sharon Stewart	M	7049091-1	1968-07-26	513 Locust AvenuePhillipsburg NJ 08865	SharonStewart@gmail.com
6	Howard Molina	F	13407637-K	1988-03-27	403 Brook St.Panama City FL 32404	HowardMolina@gmail.com
7	Connor Brooks	M	17451494-K	1984-12-02	9160 Marlborough Ave.Middle River MD 21220	ConnorBrooks@gmail.com
8	Jordan Elliott	M	15490775-K	1990-09-25	66 South Colonial CourtBrunswick GA 31525	JordanElliott@gmail.com
9	Zephania Mcguire	M	8081126-K	1977-10-12	7986 Homestead Ave.Temple Hills MD 20748	ZephaniaMcguire@gmail.com
10	Sarah Owen	F	19683574-4	1985-04-23	91 Lafayette Dr.Euless TX 76039	SarahOwen@gmail.com
11	Rylee Gonzalez	M	7145749-6	1970-04-24	36 Peachtree St.Aberdeen SD 57401	RyleeGonzalez@gmail.com
12	Melinda Foreman	M	13870566-8	1992-03-05	66 SW. Glen Eagles Ave.Waukegan IL 60085	MelindaForeman@gmail.com
13	Belle Finch	M	19510967-9	1992-05-06	61 Manchester LaneChicago IL 60621	BelleFinch@gmail.com
14	Mason Hansen	M	6991463-K	1968-01-02	599 Fremont Ave.Groton CT 06340	MasonHansen@gmail.com
15	Lars Sharpe	M	13137853-K	1989-07-31	464 Princess Ave.Simpsonville SC 29680	LarsSharpe@gmail.com
16	Baker Grimes	M	14967023-0	1983-05-29	972 E. Park LaneMount Prospect IL 60056	BakerGrimes@gmail.com
17	Giacomo Garcia	M	11569756-5	1979-12-07	302 Pulaski CourtDekalb IL 60115	GiacomoGarcia@gmail.com
18	Jarrod Finch	F	14338355-2	1986-10-27	222 Pennington St.Kennewick WA 99337	JarrodFinch@gmail.com
19	Bertha Bernard	M	16614615-K	1982-04-14	8587 Sage LaneRichmond Hill NY 11418	BerthaBernard@gmail.com
20	Jerome Rowe	F	9504579-7	1978-06-16	80 S. Gonzales DriveSheboygan WI 53081	JeromeRowe@gmail.com
21	Alexander Schroeder	F	8640434-4	1977-11-01	5 South Tunnel DriveRedford MI 48239	AlexanderSchroeder@gmail.com
22	Ulric Sharpe	M	8401857-2	1975-12-27	8162 Cedar Swamp DriveWisconsin Rapids WI 54494	UlricSharpe@gmail.com
23	Clare Craft	F	10136477-5	1975-11-09	731 Market Dr.Falls Church VA 22041	ClareCraft@gmail.com
24	Devin Brooks	M	7383589-6	1964-11-27	9637 Court StreetFairfax VA 22030	DevinBrooks@gmail.com
25	Josephine Hebert	M	9262635-7	1976-05-19	23 Lookout RoadManassas VA 20109	JosephineHebert@gmail.com
26	Alfonso Gonzalez	M	8226550-K	1975-09-24	6 Harrison RoadPort Charlotte FL 33952	AlfonsoGonzalez@gmail.com
27	Andrew Cleveland	F	16032178-3	1982-11-15	7 East Ocean RoadPalmetto FL 34221	AndrewCleveland@gmail.com
28	Fulton Rivera	F	7037034-1	1963-07-04	9322 Sunset DriveCanton GA 30114	FultonRivera@gmail.com
29	Patience Cain	F	12974270-K	1980-10-31	96 South Coffee Ave.Ashland OH 44805	PatienceCain@gmail.com
30	Lars Craig	F	9853267-3	1972-11-07	512 East Ashley StreetPrinceton NJ 08540	LarsCraig@gmail.com
31	Shaine Davenport	F	8881974-5	1973-01-25	6 8th LaneTualatin OR 97062	ShaineDavenport@gmail.com
32	Aline Frost	M	6040557-K	1970-03-11	61 Manchester LaneChicago IL 60621	AlineFrost@gmail.com
33	Raja Tyler	F	6027695-7	1969-06-13	409 Clinton St.Fairfield CT 06824	RajaTyler@gmail.com
34	Brenden Rivera	F	15386530-K	1990-07-10	935 Rose StreetValley Stream NY 11580	BrendenRivera@gmail.com
35	Holly Kent	F	16671795-5	1983-08-22	437 E. Devonshire Dr.Pompano Beach FL 33060	HollyKent@gmail.com
36	Clark Mcguire	F	7698887-0	1963-01-16	35 Golden Star Rd.Nampa ID 83651	ClarkMcguire@gmail.com
37	Josiah George	F	11725032-K	1973-02-11	431 Penn St.Brainerd MN 56401	JosiahGeorge@gmail.com
38	Denise Vega	F	19645239-K	1982-04-05	4 St Louis St.Kokomo IN 46901	DeniseVega@gmail.com
39	Kerry Heath	M	13974290-K	1986-11-29	58 Fulton St.Hicksville NY 11801	KerryHeath@gmail.com
40	Thaddeus Craig	F	9851153-4	1980-09-19	934 W. State St.Spartanburg SC 29301	ThaddeusCraig@gmail.com
41	Baker Donaldson	F	14152936-5	1985-10-28	7012 Thatcher AvenueNorth Royalton OH 44133	BakerDonaldson@gmail.com
42	Jocelyn Finley	M	9768629-0	1978-03-31	342 Edgewater Rd.Chapel Hill NC 27516	JocelynFinley@gmail.com
43	Jesse Sweeney	M	8847729-4	1978-09-25	21 Studebaker St.Lake Worth FL 33460	JesseSweeney@gmail.com
44	Sybill Decker	F	6226777-K	1969-03-01	71 Holly StreetBurnsville MN 55337	SybillDecker@gmail.com
45	Mechelle Love	F	15084774-K	1993-05-14	850 Glenholme AvenuePrattville AL 36067	MechelleLove@gmail.com
46	Elmo Heath	M	7020501-8	1968-07-28	553 W. Wellington Dr.Reston VA 20191	ElmoHeath@gmail.com
47	Drew Molina	F	17321385-K	1982-05-28	512 East Ashley StreetPrinceton NJ 08540	DrewMolina@gmail.com
48	Zephania Hebert	M	19363302-1	1989-12-21	547 Fairway St.Chicopee MA 01020	ZephaniaHebert@gmail.com
49	Ina Higgins	F	15022554-K	1985-05-05	164 Lincoln DriveRolla MO 65401	InaHiggins@gmail.com
50	Alfonso Wagner	F	14497077-K	1992-04-25	637 Chestnut DriveLynnwood WA 98037	AlfonsoWagner@gmail.com
51	Josephine Donaldson	F	16374031-8	1995-02-21	415 Glen Creek St.Maplewood NJ 07040	JosephineDonaldson@gmail.com
52	Arthur Wagner	F	14513242-K	1982-07-09	9A Old Rockville Ave.Sewell NJ 08080	ArthurWagner@gmail.com
53	Germaine Hutchinson	F	7735864-9	1964-08-20	7704 West Green Hill St.Freeport NY 11520	GermaineHutchinson@gmail.com
54	Rhea Gonzalez	M	10884957-7	1976-08-17	9839 Summer Dr.Palm Harbor FL 34683	RheaGonzalez@gmail.com
55	Sybill Estrada	M	13335902-K	1988-08-30	9521 N. Madison RoadBasking Ridge NJ 07920	SybillEstrada@gmail.com
56	Conan Finch	M	6016474-0	1964-12-24	25 Brandywine StreetHarrison Township MI 48045	ConanFinch@gmail.com
57	Melinda Craft	F	8354396-9	1972-11-30	98 Military LaneFredericksburg VA 22405	MelindaCraft@gmail.com
58	Conan Hutchinson	M	9378424-7	1974-07-26	7835 Spring St.New Bedford MA 02740	ConanHutchinson@gmail.com
59	Tanek Richard	M	17672673-K	1989-09-15	6 Constitution St.Savannah GA 31404	TanekRichard@gmail.com
60	Petra Saunders	F	19581991-1	1993-06-08	36 Newport Ave.Ormond Beach FL 32174	PetraSaunders@gmail.com
61	Tanek Farrell	F	17459547-K	1982-03-23	77 Newbridge Dr.East Haven CT 06512	TanekFarrell@gmail.com
62	Melinda Foreman	F	18194579-K	1996-02-25	934 W. State St.Spartanburg SC 29301	MelindaForeman@gmail.com
63	Sarah Mcdowell	M	19806020-7	1986-02-01	78 2nd AvenueBloomfield NJ 07003	SarahMcdowell@gmail.com
64	Graham Velez	M	8384849-7	1977-04-21	736 Carson LaneWoodstock GA 30188	GrahamVelez@gmail.com
65	Mason Kirkland	M	9780298-K	1976-08-25	8056 SE. Honey Creek Dr.East Orange NJ 07017	MasonKirkland@gmail.com
66	Jackson Blake	F	7926824-6	1968-09-16	68 Bradford St.Riverview FL 33569	JacksonBlake@gmail.com
67	Jordan Holt	M	17282708-K	1997-11-02	8519 Liberty St.Apopka FL 32703	JordanHolt@gmail.com
68	Patience Grimes	F	18332545-5	1982-08-29	795 Tunnel Rd.Chelsea MA 02150	PatienceGrimes@gmail.com
69	Connor Hull	F	14541228-4	1994-10-22	9600 North Sherman Ave.Sykesville MD 21784	ConnorHull@gmail.com
70	Arthur Scott	M	12589985-6	1980-05-20	101 West Coffee Ave.Providence RI 02904	ArthurScott@gmail.com
71	Josiah Davenport	M	6515164-K	1962-06-16	94 Linda St.Bolingbrook IL 60440	JosiahDavenport@gmail.com
72	Hoyt Mcgee	M	7925485-K	1961-08-19	10 Orchard St.Ashburn VA 20147	HoytMcgee@gmail.com
73	Jesse Gonzalez	M	17709690-4	1981-09-29	24 Green StreetCuyahoga Falls OH 44221	JesseGonzalez@gmail.com
74	Sebastian Sharpe	F	7004061-8	1969-09-03	979 Ivy St.Saint Johns FL 32259	SebastianSharpe@gmail.com
75	Kirk Cain	M	8522610-K	1972-01-10	42 Brook St.San Pablo CA 94806	KirkCain@gmail.com
76	Clayton Walters	M	6659467-6	1964-11-16	23 Jennings Rd.Framingham MA 01701	ClaytonWalters@gmail.com
77	Timothy Sears	M	14733839-K	1993-03-15	6 Constitution St.Savannah GA 31404	TimothySears@gmail.com
78	Rhea Davenport	M	7410070-K	1970-06-26	45 Goldfield Rd.Tacoma WA 98444	RheaDavenport@gmail.com
79	Cairo Donaldson	F	7755496-K	1969-12-12	39 Cherry DriveOzone Park NY 11417	CairoDonaldson@gmail.com
80	Conan Love	M	16366006-0	1987-04-01	756 Edgewater Dr.Grand Rapids MI 49503	ConanLove@gmail.com
81	Wyatt Daniel	F	12517343-5	1979-05-11	38 Beaver Ridge Rd.Zion IL 60099	WyattDaniel@gmail.com
82	Abbot Velez	F	13520038-0	1983-02-17	341 E. Canterbury RoadYonkers NY 10701	AbbotVelez@gmail.com
83	Cooper Dillon	M	13243422-K	1992-03-25	48 Mayflower StreetEverett MA 02149	CooperDillon@gmail.com
84	Rhea Owen	F	16306464-5	1983-05-15	8831 W. Oakwood DriveChester PA 19013	RheaOwen@gmail.com
85	Bertha Graves	F	14391080-K	1996-01-05	635 Logan St.Cumming GA 30040	BerthaGraves@gmail.com
86	Sarah Finch	M	10947213-4	1971-02-12	12 Hillcrest LaneDearborn Heights MI 48127	SarahFinch@gmail.com
87	Nadine Schroeder	M	12191814-K	1976-12-14	4 West 1st LaneLittleton CO 80123	NadineSchroeder@gmail.com
88	Joan Riddle	M	6443005-K	1970-01-05	38 Forest CircleWilliamsburg VA 23185	JoanRiddle@gmail.com
89	Abbot Tyler	F	7539299-1	1961-08-18	804 Fairway Rd.Chattanooga TN 37421	AbbotTyler@gmail.com
90	Clare Thomas	M	19709957-K	1993-06-30	315 Center StreetBowling Green KY 42101	ClareThomas@gmail.com
91	Kibo Farrell	F	19133282-K	1992-05-14	8628 Ivy DriveJamestown NY 14701	KiboFarrell@gmail.com
92	Brianna Hull	F	9674613-K	1971-02-12	421 North Thatcher Rd.Rolling Meadows IL 60008	BriannaHull@gmail.com
93	Jarrod Brewer	M	15006835-4	1991-07-27	125 NW. Studebaker LaneShelton CT 06484	JarrodBrewer@gmail.com
94	Cairo Mckay	M	9316569-1	1974-04-14	25 Cherry Dr.Lake Zurich IL 60047	CairoMckay@gmail.com
95	Melinda Velez	F	6522263-4	1967-11-06	864 River DriveTwin Falls ID 83301	MelindaVelez@gmail.com
96	Bruce Hull	M	7566633-8	1968-12-19	94 Harvey AvenueBurlington MA 01803	BruceHull@gmail.com
97	Timothy Walters	M	13336497-K	1984-01-02	9131 Bow Ridge St.Mocksville NC 27028	TimothyWalters@gmail.com
98	Elizabeth Brooks	M	7324700-5	1970-09-24	9176 Union St.Bemidji MN 56601	ElizabethBrooks@gmail.com
99	Raja Hansen	F	15263707-8	1985-11-07	460 Blackburn RoadNewnan GA 30263	RajaHansen@gmail.com
100	Jarrod Scott	F	6259343-7	1964-04-04	7952 South Studebaker St.Coraopolis PA 15108	JarrodScott@gmail.com
101	Brianna Garcia	M	9722966-4	1972-12-08	68 Annadale RoadAbingdon MD 21009	BriannaGarcia@gmail.com
102	Hoyt Craft	F	11277453-K	1974-03-14	7952 South Studebaker St.Coraopolis PA 15108	HoytCraft@gmail.com
103	Eliana Hutchinson	M	8501761-K	1972-08-27	847 Marshall St.Dedham MA 02026	ElianaHutchinson@gmail.com
104	Belle Brooks	F	12698642-4	1978-01-15	566 West Saxon Rd.Enterprise AL 36330	BelleBrooks@gmail.com
105	Dennis Owen	M	12418825-K	1980-02-09	393 Center LaneElizabeth City NC 27909	DennisOwen@gmail.com
106	Baker Gregory	M	18917373-K	1986-09-05	61 Bayberry St.Macomb MI 48042	BakerGregory@gmail.com
107	Elizabeth Higgins	M	7559454-7	1964-02-22	9322 Sunset DriveCanton GA 30114	ElizabethHiggins@gmail.com
108	Drew Estrada	F	9689771-K	1976-12-25	9466 Smith DriveSouthaven MS 38671	DrewEstrada@gmail.com
109	Ina Buchanan	F	13538527-5	1994-09-11	9580 Charles St.Phoenixville PA 19460	InaBuchanan@gmail.com
110	Uriel Schroeder	M	13914789-2	1995-07-24	538 Race RoadBuckeye AZ 85326	UrielSchroeder@gmail.com
111	Paki Gonzalez	F	16010758-5	1982-02-23	8094 Lilac StreetOswego NY 13126	PakiGonzalez@gmail.com
112	Armando Velez	M	10410765-K	1975-09-02	57 Adams DriveCapitol Heights MD 20743	ArmandoVelez@gmail.com
113	Eliana Hull	F	7002215-0	1970-03-16	948 Cambridge StreetMount Vernon NY 10550	ElianaHull@gmail.com
114	Fulton Howard	F	16201718-K	1997-07-20	623 Hudson LaneGreat Falls MT 59404	FultonHoward@gmail.com
115	Fulton Hull	M	14030063-K	1994-01-28	183 Howard St.Lewis Center OH 43035	FultonHull@gmail.com
116	Jocelyn Tillman	M	18944430-K	1995-11-17	85 North Mayflower LaneElk River MN 55330	JocelynTillman@gmail.com
117	Sharon Walters	F	7067272-6	1961-02-13	920 Harvard Ave.Duarte CA 91010	SharonWalters@gmail.com
118	Jackson Cabrera	F	7071494-5	1962-02-13	39 S. Newbridge St.Londonderry NH 03053	JacksonCabrera@gmail.com
119	Benjamin Cain	M	10007546-K	1974-07-31	96 Rockland CourtStarkville MS 39759	BenjaminCain@gmail.com
120	Graham Sears	F	16532334-K	1995-05-24	863 Mulberry Ave.Streamwood IL 60107	GrahamSears@gmail.com
121	Jarrod Monroe	M	7223193-K	1964-08-09	183 Howard St.Lewis Center OH 43035	JarrodMonroe@gmail.com
122	Jesse Day	M	18629881-K	1995-06-07	235 Hillside St.Randolph MA 02368	JesseDay@gmail.com
123	Devin Craft	F	15785728-4	1998-08-07	38 Sutor AvenueLincolnton NC 28092	DevinCraft@gmail.com
124	Sebastian Sweeney	F	11459351-K	1972-04-08	48 Mayflower StreetEverett MA 02149	SebastianSweeney@gmail.com
125	Susan Blake	M	7785814-K	1970-06-03	53 Rockaway DriveFlorence SC 29501	SusanBlake@gmail.com
126	Dante Mcguire	M	18419696-K	1985-09-23	622 South Gates StreetDerby KS 67037	DanteMcguire@gmail.com
127	Mannix Hutchinson	F	10213931-K	1979-07-28	704 Alderwood St.Hackettstown NJ 07840	MannixHutchinson@gmail.com
128	Abbot Monroe	F	19303847-K	1991-09-05	90 South Fairfield Rd.Clayton NC 27520	AbbotMonroe@gmail.com
129	Mason Sears	M	15214236-3	1988-02-11	84 Arnold Ave.Greenville NC 27834	MasonSears@gmail.com
130	Brianna Gardner	M	6282353-6	1964-09-26	9316 Cambridge St.Westlake OH 44145	BriannaGardner@gmail.com
131	Petra Stewart	F	14274049-5	1986-11-09	1 Hamilton StreetOwensboro KY 42301	PetraStewart@gmail.com
132	Sybill Tyler	M	7653414-3	1970-05-02	57 Shadow Brook DriveLorain OH 44052	SybillTyler@gmail.com
133	Caleb Booth	F	16292451-4	1990-07-05	8698 Poor House DriveClover SC 29710	CalebBooth@gmail.com
134	Oprah Gonzalez	M	18401563-6	1983-03-16	97 Beech DriveRossville GA 30741	OprahGonzalez@gmail.com
135	Armando Walters	F	16539217-8	1985-04-15	7450 Walt Whitman St.Royal Oak MI 48067	ArmandoWalters@gmail.com
136	Brianna Sweeney	M	17431650-9	1991-02-23	75 North Heritage Dr.Munster IN 46321	BriannaSweeney@gmail.com
137	Debra Monroe	M	9518787-4	1979-05-15	7404 Amherst Ave.Eastpointe MI 48021	DebraMonroe@gmail.com
138	Armando Hull	M	19651376-K	1990-03-07	87 South Valley Farms StreetSaint Paul MN 55104	ArmandoHull@gmail.com
139	Amber Finch	F	6458943-4	1964-12-03	9318 Peg Shop St.Strongsville OH 44136	AmberFinch@gmail.com
140	Preston Frost	F	9953266-K	1978-04-13	7052 Ivy CourtCantonment FL 32533	PrestonFrost@gmail.com
141	Fulton Rivers	M	13444285-4	1988-09-01	9499 Snake Hill St.Park Forest IL 60466	FultonRivers@gmail.com
142	Sharon Blake	M	14445317-8	1992-04-29	7076 Overlook AvenueLutherville Timonium MD 21093	SharonBlake@gmail.com
143	Dante Rivera	M	18905659-K	1988-03-05	221 Lakewood St.Fremont OH 43420	DanteRivera@gmail.com
144	Sybill Booth	M	17519052-K	1995-05-11	7229 Indian Spring StreetWausau WI 54401	SybillBooth@gmail.com
145	Nadine Stewart	M	16557732-K	1994-07-03	781 Creekside StreetGreensboro NC 27405	NadineStewart@gmail.com
146	Sebastian Stewart	F	14933954-K	1983-12-29	622 South Gates StreetDerby KS 67037	SebastianStewart@gmail.com
147	Jocelyn Garza	M	7055822-9	1960-01-14	373 Lincoln StreetZanesville OH 43701	JocelynGarza@gmail.com
148	Joan Heath	F	14050765-8	1984-11-13	991B Sunnyslope Ave.Alliance OH 44601	JoanHeath@gmail.com
149	Louis Cain	M	15258443-K	1998-07-18	7778 Bay Meadows Rd.Yakima WA 98908	LouisCain@gmail.com
150	Lysandra Foreman	M	17825801-K	1995-05-30	8424 Summerhouse Ave.Piscataway NJ 08854	LysandraForeman@gmail.com
151	Connor Sweeney	F	8372469-K	1971-06-10	7050 Columbia StreetLittle Falls NJ 07424	ConnorSweeney@gmail.com
152	Wyatt Kennedy	M	18377931-K	1994-03-28	380 Fairground DriveGarland TX 75043	WyattKennedy@gmail.com
153	Denise Griffin	F	13789509-K	1992-11-17	34 Iroquois CourtLake In The Hills IL 60156	DeniseGriffin@gmail.com
154	Ina Hull	F	9380128-4	1976-08-20	762 Aspen St.Kissimmee FL 34741	InaHull@gmail.com
155	Amber Frost	M	6401066-K	1969-04-04	179 Wall Ave.Bridgeport CT 06606	AmberFrost@gmail.com
156	Imani Higgins	F	17588017-1	1990-07-08	935 Rose StreetValley Stream NY 11580	ImaniHiggins@gmail.com
157	Cooper Bernard	F	14284136-K	1994-09-02	105 Argyle StreetWest Bend WI 53095	CooperBernard@gmail.com
158	Castor Farrell	F	13577314-4	1990-01-12	5 Windfall StreetFort Dodge IA 50501	CastorFarrell@gmail.com
159	Patience Estrada	F	13118317-K	1990-12-23	8793 Harvard St.Blacksburg VA 24060	PatienceEstrada@gmail.com
160	Sarah Nielsen	F	17665146-5	1998-01-22	680 Green Lake DriveNiceville FL 32578	SarahNielsen@gmail.com
161	Alfonso Craft	F	12008912-4	1976-02-27	421 North Thatcher Rd.Rolling Meadows IL 60008	AlfonsoCraft@gmail.com
162	Mason Nielsen	F	12748153-9	1978-09-29	79 NW. Ramblewood Dr.Elmont NY 11003	MasonNielsen@gmail.com
163	Joan Thomas	M	12783885-K	1976-03-09	8793 Harvard St.Blacksburg VA 24060	JoanThomas@gmail.com
164	Eliana Brooks	F	17630650-K	1992-08-08	361 Wrangler Ave.Massapequa Park NY 11762	ElianaBrooks@gmail.com
165	Ulric Kent	M	14847392-8	1996-10-13	66 Old York St.Adrian MI 49221	UlricKent@gmail.com
166	Wyatt Graves	M	6669889-4	1961-10-30	2 Deerfield Ave.Champaign IL 61821	WyattGraves@gmail.com
167	Kibo Justice	F	15034654-9	1990-01-23	9503C Creek DriveBloomington IN 47401	KiboJustice@gmail.com
168	Wyatt Rivera	F	19234858-5	1996-04-29	7940 Garfield CircleDayton OH 45420	WyattRivera@gmail.com
169	Clark Craft	M	9697556-K	1978-07-10	530 Brewery St.Morristown NJ 07960	ClarkCraft@gmail.com
170	Devin Parker	F	7273218-9	1969-08-25	7037 Oklahoma Ave.Voorhees NJ 08043	DevinParker@gmail.com
171	Josephine Brooks	M	16196080-K	1987-02-19	809 Lake View St.Greenfield IN 46140	JosephineBrooks@gmail.com
172	Jesse Hebert	F	14876555-K	1995-10-31	112 Ohio St.Murrells Inlet SC 29576	JesseHebert@gmail.com
173	Sarah Davenport	F	14355254-4	1993-12-10	9858 Ramblewood St.Caldwell NJ 07006	SarahDavenport@gmail.com
174	Kimberly Love	M	6902270-K	1961-06-03	297 Fulton Dr.Harrisonburg VA 22801	KimberlyLove@gmail.com
175	Rhea Hutchinson	F	11121774-5	1975-02-21	984 Division Dr.Greer SC 29650	RheaHutchinson@gmail.com
176	Cairo Owen	F	6136052-K	1964-07-06	9867 Roosevelt StreetEnfield CT 06082	CairoOwen@gmail.com
177	Lysandra Thomas	M	8472936-K	1976-10-11	237 Cooper St.Fairhope AL 36532	LysandraThomas@gmail.com
178	Nadine Craft	F	10960136-1	1977-01-18	7773 West Trout StreetFlowery Branch GA 30542	NadineCraft@gmail.com
179	Patience Sharpe	F	7091286-3	1961-05-03	8656 Oak Meadow Ave.Holland MI 49423	PatienceSharpe@gmail.com
180	Jerome Love	M	16465873-K	1997-03-26	7679 Manchester Dr.Vicksburg MS 39180	JeromeLove@gmail.com
181	Josiah Dillon	M	10628467-9	1976-02-22	6 San Pablo AvenueFullerton CA 92831	JosiahDillon@gmail.com
182	Bernard Richard	M	7318316-K	1970-12-06	2 S. Clark St.Bethpage NY 11714	BernardRichard@gmail.com
183	Kaseem Hutchinson	M	6540151-K	1962-10-03	497 53rd Ave.Goose Creek SC 29445	KaseemHutchinson@gmail.com
184	Alfonso Hull	F	6295343-K	1964-11-16	9860 Meadow StreetApple Valley CA 92307	AlfonsoHull@gmail.com
185	Mason Farrell	F	7377585-7	1970-02-26	183 Howard St.Lewis Center OH 43035	MasonFarrell@gmail.com
186	Sebastian Hull	F	13719764-K	1997-07-04	93 Green CourtOshkosh WI 54901	SebastianHull@gmail.com
187	Fulton Sweeney	F	6346078-K	1970-08-29	421 North Thatcher Rd.Rolling Meadows IL 60008	FultonSweeney@gmail.com
188	Connor Hardin	M	6816713-1	1970-01-19	8449 Pheasant StreetNew York NY 10002	ConnorHardin@gmail.com
189	Debra Fuller	M	10274958-3	1976-03-04	7709 Spring Dr.Elkridge MD 21075	DebraFuller@gmail.com
190	Dennis Abbott	M	7873584-9	1968-01-20	439 Proctor DriveCouncil Bluffs IA 51501	DennisAbbott@gmail.com
191	Lars Decker	F	17229355-K	1986-03-16	423 Cypress Ave.Macungie PA 18062	LarsDecker@gmail.com
192	Patience Cleveland	F	12762596-7	1971-04-24	9214 Baker LaneLoganville GA 30052	PatienceCleveland@gmail.com
193	Shaine Holt	M	12359755-7	1977-03-31	93 Bridge DriveBergenfield NJ 07621	ShaineHolt@gmail.com
194	Brianna Monroe	M	7371508-K	1960-10-23	183 Cambridge DriveFort Mill SC 29708	BriannaMonroe@gmail.com
195	Clare Finch	F	13606784-K	1981-07-15	535 Talbot St.Sebastian FL 32958	ClareFinch@gmail.com
196	Benjamin Whitehead	M	16656121-9	1982-03-24	47 Church St.Alpharetta GA 30004	BenjaminWhitehead@gmail.com
197	Raja Hinton	M	15760912-K	1998-10-30	8691 New St.Fenton MI 48430	RajaHinton@gmail.com
198	Ulric Cain	M	9926067-3	1973-04-05	82 Silver Spear CourtWestport CT 06880	UlricCain@gmail.com
199	Devin Cain	M	14777808-K	1981-01-15	952 Westminster LaneFitchburg MA 01420	DevinCain@gmail.com
200	Belle Kent	M	16875341-K	1993-08-20	7201 Sussex St.Holyoke MA 01040	BelleKent@gmail.com
201	Seth Owen	M	6034298-3	1967-05-30	544 York LaneCentereach NY 11720	SethOwen@gmail.com
202	Alfonso Mcgee	M	7643762-K	1968-03-08	354 Shirley LaneCedar Rapids IA 52402	AlfonsoMcgee@gmail.com
203	Jerome Kent	M	8700912-K	1977-11-19	9175 Plumb Branch Ave.Logansport IN 46947	JeromeKent@gmail.com
204	Melinda Craft	M	15617218-4	1986-08-14	7692 Tarkiln Hill St.Roy UT 84067	MelindaCraft@gmail.com
205	Brenden Kent	F	7409507-4	1970-06-12	969 Iroquois LanePlymouth MA 02360	BrendenKent@gmail.com
206	Caleb Mcdowell	F	7815342-6	1966-12-29	8277 Shady St.Commack NY 11725	CalebMcdowell@gmail.com
207	Howard Frye	F	6994223-1	1964-12-14	94 Arlington Dr.North Ridgeville OH 44039	HowardFrye@gmail.com
208	Connor Frost	M	7302906-3	1964-03-15	66 Sherwood RoadBay City MI 48706	ConnorFrost@gmail.com
209	Brenden Hull	M	19888017-8	1990-04-02	443 Tanglewood RoadCoventry RI 02816	BrendenHull@gmail.com
210	Jackson Gardner	F	8346213-K	1978-08-20	385 Devonshire StreetRavenna OH 44266	JacksonGardner@gmail.com
211	Kaseem Cain	M	17526510-8	1983-03-02	11 Lexington St.Sterling Heights MI 48310	KaseemCain@gmail.com
212	Imani Walters	F	10216682-K	1978-01-19	517 Fordham St.Wallingford CT 06492	ImaniWalters@gmail.com
213	Ulric Howard	M	16124748-0	1986-03-08	7773 West Trout StreetFlowery Branch GA 30542	UlricHoward@gmail.com
214	Hoyt Bernard	F	7300103-K	1966-07-11	805 Woodside Ave.Mishawaka IN 46544	HoytBernard@gmail.com
215	Sylvester Alford	M	13732797-6	1992-12-10	9 Tanglewood St.Waterloo IA 50701	SylvesterAlford@gmail.com
216	Elizabeth Mckay	F	15456204-1	1998-12-01	255 Lafayette LaneApt 121Arlington MA 02474	ElizabethMckay@gmail.com
217	Connor Nielsen	M	14838564-1	1984-04-12	9953 Ridgewood Dr.South Portland ME 04106	ConnorNielsen@gmail.com
218	Abbot Colon	F	18491660-8	1993-09-20	785 North Goldfield DriveNew Philadelphia OH 44663	AbbotColon@gmail.com
219	Bruce Walters	M	15512656-K	1982-03-27	7822 Prospect StreetSouth Plainfield NJ 07080	BruceWalters@gmail.com
220	Arthur Obrien	M	18164891-9	1983-02-13	8353 Winchester St.Wenatchee WA 98801	ArthurObrien@gmail.com
221	Giacomo Walters	M	13717283-K	1990-01-21	178 3rd CircleRidgecrest CA 93555	GiacomoWalters@gmail.com
222	Uriel Brewer	M	9995417-K	1971-07-01	920 Harvard Ave.Duarte CA 91010	UrielBrewer@gmail.com
223	Rose Alford	F	7860905-5	1963-07-02	608 Mammoth StreetPowhatan VA 23139	RoseAlford@gmail.com
224	Petra Bernard	M	19375654-K	1990-12-16	9 Cross CircleAthens GA 30605	PetraBernard@gmail.com
225	Graham Hutchinson	M	7337280-0	1970-05-29	8466 Spring DriveNewtown PA 18940	GrahamHutchinson@gmail.com
226	Felicia Garcia	M	15861982-4	1984-08-09	7315 Essex St.Poughkeepsie NY 12601	FeliciaGarcia@gmail.com
227	Armando Higgins	M	14732676-4	1996-03-26	419 Santa Clara DriveAlbany NY 12203	ArmandoHiggins@gmail.com
228	Jerome Scott	M	9505723-9	1972-04-10	173 Meadowbrook StreetNashua NH 03060	JeromeScott@gmail.com
229	Fulton Estrada	M	16600239-K	1996-03-26	9634 Glenridge AvenueLiverpool NY 13090	FultonEstrada@gmail.com
230	Kibo Fuller	M	19986681-K	1981-09-13	81 Argyle LaneVienna VA 22180	KiboFuller@gmail.com
231	Cooper Kim	F	6585906-K	1965-05-21	722 Lower River St.Easton PA 18042	CooperKim@gmail.com
232	Fulton Frost	F	11385704-5	1977-02-11	48 Olive Dr.Orange NJ 07050	FultonFrost@gmail.com
233	Susan Griffin	M	14637120-K	1986-02-19	25 Leeton Ridge St.Odenton MD 21113	SusanGriffin@gmail.com
234	Joan Dillon	F	17932524-K	1997-10-17	269 Gregory St.Crown Point IN 46307	JoanDillon@gmail.com
235	Graham Obrien	F	17146572-1	1994-11-03	500 Grandrose LaneSaint Augustine FL 32084	GrahamObrien@gmail.com
236	Giacomo Daniel	M	18925717-K	1984-07-18	195 Greystone RoadMartinsville VA 24112	GiacomoDaniel@gmail.com
237	Aline Tillman	M	17234378-1	1996-06-11	8913 North Marvon LaneDeltona FL 32725	AlineTillman@gmail.com
238	Sebastian Molina	M	13701366-5	1990-06-27	7558 South Gulf Ave.Ft Mitchell KY 41017	SebastianMolina@gmail.com
239	Aline Owen	M	7639427-K	1963-04-22	393 Center LaneElizabeth City NC 27909	AlineOwen@gmail.com
240	Susan Davenport	F	10886688-K	1971-08-24	9981 South Fairview Dr.Natick MA 01760	SusanDavenport@gmail.com
241	Aline Patrick	F	14700352-1	1987-03-19	981 Foxrun Dr.Rego Park NY 11374	AlinePatrick@gmail.com
242	Imani Vega	M	17221038-K	1989-05-14	1 E. Circle LaneLawrence MA 01841	ImaniVega@gmail.com
243	Debra Kirkland	M	7997929-5	1969-01-01	547 SW. Courtland DriveTorrance CA 90505	DebraKirkland@gmail.com
244	Andrew Brooks	F	17350450-2	1996-09-13	718 East North St.Minot ND 58701	AndrewBrooks@gmail.com
245	Jerome Stewart	M	16238751-K	1996-04-28	8546 South Roehampton DriveWinter Park FL 32792	JeromeStewart@gmail.com
246	Sharon George	F	6444837-3	1967-01-02	10 Orchard St.Ashburn VA 20147	SharonGeorge@gmail.com
247	Rose Pollard	M	12429050-K	1971-06-05	8335 Van Dyke Rd.Union City NJ 07087	RosePollard@gmail.com
248	Abbot Hebert	M	14959834-7	1998-07-12	24 53rd AvenueMahopac NY 10541	AbbotHebert@gmail.com
249	Dennis Hansen	M	6042928-K	1963-01-05	69 Saxton DriveSaratoga Springs NY 12866	DennisHansen@gmail.com
250	Ulric Whitehead	M	18810158-6	1982-02-04	7592 Lake View St.Raleigh NC 27603	UlricWhitehead@gmail.com
251	Denise Booker	M	15488289-K	1995-05-08	8352 Oak Meadow StreetNew Lenox IL 60451	DeniseBooker@gmail.com
252	Eliana Rivera	M	14205162-2	1995-08-31	10 East DriveKearny NJ 07032	ElianaRivera@gmail.com
253	Sebastian Garcia	F	6851361-6	1967-05-26	800 Alton Rd.Desoto TX 75115	SebastianGarcia@gmail.com
254	Rose Scott	M	7095503-7	1962-03-30	93 Stillwater DriveBillings MT 59101	RoseScott@gmail.com
255	Ina Heath	M	18498293-K	1996-01-13	10 West High Point Ave.Baton Rouge LA 70806	InaHeath@gmail.com
256	Clare Holt	F	11037015-K	1971-09-09	8350 Rock Creek DriveAvon Lake OH 44012	ClareHolt@gmail.com
257	Rhona Gonzalez	M	17943721-K	1982-09-17	998 Illinois St.Warminster PA 18974	RhonaGonzalez@gmail.com
258	Josiah Mckay	F	7004354-K	1960-02-09	22 West Lancaster St.Oak Forest IL 60452	JosiahMckay@gmail.com
259	Preston Craft	M	7023735-K	1962-09-17	7524 Pheasant Dr.Baltimore MD 21206	PrestonCraft@gmail.com
260	Bertha Decker	M	6877166-5	1970-04-14	704 Alderwood St.Hackettstown NJ 07840	BerthaDecker@gmail.com
261	Jerome Mcgee	M	17002781-6	1982-07-16	895 Belmont StreetPottstown PA 19464	JeromeMcgee@gmail.com
262	Bruce Scott	M	6070626-6	1962-02-23	7760 Leatherwood CourtMc Lean VA 22101	BruceScott@gmail.com
263	Caleb Tillman	M	6439636-K	1966-08-23	7822 Plymouth Ave.District Heights MD 20747	CalebTillman@gmail.com
264	Camilla Thomas	M	18060987-K	1982-10-16	79 Alderwood StreetDothan AL 36301	CamillaThomas@gmail.com
265	Stephanie Cain	M	15741620-K	1983-11-03	22 Stillwater CourtHartselle AL 35640	StephanieCain@gmail.com
266	Nadine Saunders	F	18159183-6	1995-01-22	78 Primrose Dr.Nashville TN 37205	NadineSaunders@gmail.com
267	Elmo Justice	F	16752191-K	1990-04-27	9857 Border Dr.Fort Washington MD 20744	ElmoJustice@gmail.com
268	Sybill Stewart	F	10642669-K	1971-05-28	437 E. Devonshire Dr.Pompano Beach FL 33060	SybillStewart@gmail.com
269	Mechelle Decker	F	6885710-0	1969-10-15	47 Church St.Alpharetta GA 30004	MechelleDecker@gmail.com
270	Denise Tillman	M	13412995-7	1985-02-03	40 South Schoolhouse St.Oak Ridge TN 37830	DeniseTillman@gmail.com
271	Sage Hebert	M	18150213-K	1981-05-21	535 Talbot St.Sebastian FL 32958	SageHebert@gmail.com
272	Ina Donaldson	F	17182379-5	1995-07-23	751 Valley Farms St.Charleston SC 29406	InaDonaldson@gmail.com
273	Giacomo Brewer	M	8472534-4	1973-08-08	61 Hudson St.Winter Garden FL 34787	GiacomoBrewer@gmail.com
274	Sharon Dillon	M	18850074-1	1993-06-14	617 South Gartner StreetElizabeth NJ 07202	SharonDillon@gmail.com
275	Nadine George	M	17420172-K	1995-11-20	9322 Sunset DriveCanton GA 30114	NadineGeorge@gmail.com
276	Cooper Tillman	F	13537366-7	1989-12-21	7224 High Noon St.Warren MI 48089	CooperTillman@gmail.com
277	Josiah Holt	F	16425693-7	1983-11-18	9418 Circle RoadFort Walton Beach FL 32547	JosiahHolt@gmail.com
278	Kirk Owen	M	18755342-2	1995-03-24	552 Mill DrivePainesville OH 44077	KirkOwen@gmail.com
279	Eliana Thomas	M	19937335-2	1984-01-21	738 Roberts Rd.Bettendorf IA 52722	ElianaThomas@gmail.com
280	Sharon Elliott	F	17943724-8	1991-09-11	85 Overlook StreetMount Juliet TN 37122	SharonElliott@gmail.com
281	Nadine Brooks	M	9894518-8	1973-10-07	893 W. Canal DriveHartsville SC 29550	NadineBrooks@gmail.com
282	Paki Hardin	M	7028505-K	1964-05-21	9 Peninsula LanePark Ridge IL 60068	PakiHardin@gmail.com
283	Oprah Davenport	M	10319321-K	1979-07-06	9 Sunnyslope DriveHavertown PA 19083	OprahDavenport@gmail.com
284	Bernard Riddle	F	14469394-K	1990-08-27	601 Woodsman RoadHarlingen TX 78552	BernardRiddle@gmail.com
285	Clayton Bullock	F	12979197-7	1975-07-31	7822 Plymouth Ave.District Heights MD 20747	ClaytonBullock@gmail.com
286	Raja Baldwin	F	7243080-K	1964-09-30	907 North Fulton St.Davison MI 48423	RajaBaldwin@gmail.com
287	Jackson Sweeney	M	15255974-6	1984-03-08	906 Airport StreetGlendora CA 91740	JacksonSweeney@gmail.com
288	Jocelyn Bullock	M	16443388-K	1991-10-22	25 Leeton Ridge St.Odenton MD 21113	JocelynBullock@gmail.com
289	Lysandra Mcgee	F	9161085-K	1980-01-14	9214 Baker LaneLoganville GA 30052	LysandraMcgee@gmail.com
290	Howard Cabrera	M	11141969-3	1978-08-28	53 Rockaway DriveFlorence SC 29501	HowardCabrera@gmail.com
291	Kaseem Bernard	M	17779191-7	1983-04-02	221 Bellevue Ave.Butte MT 59701	KaseemBernard@gmail.com
292	Preston Lindsay	M	7195890-K	1967-02-21	801 Summit Ave.Oviedo FL 32765	PrestonLindsay@gmail.com
293	Shaine Schroeder	M	13268460-9	1988-08-14	7293 Wall Dr.Lakewood NJ 08701	ShaineSchroeder@gmail.com
294	Thaddeus Colon	M	11197926-K	1974-07-12	46 North Manor St.Stuart FL 34997	ThaddeusColon@gmail.com
295	Germaine Cabrera	F	7439812-3	1970-06-06	308 Lantern StreetBattle Ground WA 98604	GermaineCabrera@gmail.com
296	Petra James	F	15411544-K	1991-03-27	9322 Sunset DriveCanton GA 30114	PetraJames@gmail.com
297	Giacomo Rivers	F	19488499-K	1989-04-17	425 Prince CourtCranberry Twp PA 16066	GiacomoRivers@gmail.com
298	Baker Sharpe	F	17142072-K	1989-11-14	794 Jackson Ave.Loveland OH 45140	BakerSharpe@gmail.com
299	Rhea Grimes	M	16661167-K	1981-10-09	9160 Marlborough Ave.Middle River MD 21220	RheaGrimes@gmail.com
300	Clark Riddle	M	15827880-K	1984-03-14	7404 Amherst Ave.Eastpointe MI 48021	ClarkRiddle@gmail.com
301	Josiah Finch	M	6097694-K	1964-01-27	832 Mayfield RoadWest Islip NY 11795	JosiahFinch@gmail.com
302	Kerry Scott	F	17473265-K	1981-04-16	99 Railroad LaneCary NC 27511	KerryScott@gmail.com
303	Bertha Palmer	F	15590526-K	1987-12-10	853 Myers St.Hickory NC 28601	BerthaPalmer@gmail.com
304	Sage Hutchinson	M	19135750-3	1981-04-23	183 Cambridge DriveFort Mill SC 29708	SageHutchinson@gmail.com
305	Candice Finch	F	8500546-K	1976-07-12	7738 Old Blackburn LaneLoxahatchee FL 33470	CandiceFinch@gmail.com
306	Ulric Palmer	F	6788560-2	1962-01-15	43 Manhattan StreetRockville Centre NY 11570	UlricPalmer@gmail.com
307	Alexander Brooks	M	6380760-K	1968-05-19	538 Race RoadBuckeye AZ 85326	AlexanderBrooks@gmail.com
308	Mason Hinton	M	18544192-K	1993-06-08	8586 San Carlos StreetCordova TN 38016	MasonHinton@gmail.com
309	Jackson Scott	M	6654156-0	1961-12-24	9858 Ramblewood St.Caldwell NJ 07006	JacksonScott@gmail.com
310	Brianna Daniel	F	15378507-K	1998-11-19	237 Cooper St.Fairhope AL 36532	BriannaDaniel@gmail.com
311	Mason Richard	M	6522685-K	1962-05-31	8099 Proctor LaneFairport NY 14450	MasonRichard@gmail.com
312	Bertha Sears	F	6819843-K	1968-12-13	112 Ohio St.Murrells Inlet SC 29576	BerthaSears@gmail.com
313	Howard Wagner	F	12753041-7	1980-01-31	205 Westport Ave.Ann Arbor MI 48103	HowardWagner@gmail.com
314	Josiah Brewer	M	11839848-K	1977-02-11	468 Walt Whitman St.Stamford CT 06902	JosiahBrewer@gmail.com
315	Joan Estrada	F	13782993-5	1987-12-21	271 Myrtle Ave.Spring Hill FL 34608	JoanEstrada@gmail.com
316	Lysandra Abbott	F	16861143-K	1989-01-15	32 Delaware St.Oklahoma City OK 73112	LysandraAbbott@gmail.com
317	Debra Monroe	M	18828323-K	1983-02-11	809 Lake View St.Greenfield IN 46140	DebraMonroe@gmail.com
318	Jackson Grimes	F	7354538-1	1960-04-23	986 Cleveland CircleWestmont IL 60559	JacksonGrimes@gmail.com
319	Mannix Love	M	9974893-3	1980-04-10	421 Strawberry DriveMount Laurel NJ 08054	MannixLove@gmail.com
320	Drew Palmer	F	10469247-1	1972-09-26	85 Overlook StreetMount Juliet TN 37122	DrewPalmer@gmail.com
321	Giacomo Kennedy	M	10648569-K	1979-11-01	623 Hudson LaneGreat Falls MT 59404	GiacomoKennedy@gmail.com
322	Shaine Craft	M	7757580-K	1967-02-15	7371 Cobblestone StreetRockville MD 20850	ShaineCraft@gmail.com
323	Sarah Mcdowell	M	6680914-2	1969-10-19	952 Westminster LaneFitchburg MA 01420	SarahMcdowell@gmail.com
324	Devin Monroe	F	18827638-K	1981-10-23	5 Old Illinois Rd.Cedar Falls IA 50613	DevinMonroe@gmail.com
325	Benjamin Nielsen	F	18921450-K	1994-02-22	668 Sunbeam Ave.Bridgewater NJ 08807	BenjaminNielsen@gmail.com
326	Melinda Rivers	M	17622181-K	1986-04-21	986 Cleveland CircleWestmont IL 60559	MelindaRivers@gmail.com
327	Drew Fuller	F	8110880-K	1975-01-20	14 East Van Dyke Ave.Roanoke VA 24012	DrewFuller@gmail.com
328	Jocelyn Hinton	M	6844748-K	1965-11-24	544 York LaneCentereach NY 11720	JocelynHinton@gmail.com
329	Benjamin Rivera	M	10220868-K	1980-01-27	215 Miller StreetStevens Point WI 54481	BenjaminRivera@gmail.com
330	Louis Velez	M	9535123-8	1977-10-02	584 Arnold Dr.Lenoir NC 28645	LouisVelez@gmail.com
331	Jordan Finley	M	7939274-7	1968-08-18	9839 Summer Dr.Palm Harbor FL 34683	JordanFinley@gmail.com
332	Graham Thomas	F	15714912-8	1983-08-29	21 River StreetBiloxi MS 39532	GrahamThomas@gmail.com
333	Seth Finch	M	19847956-K	1981-08-07	790 N. Redwood AvenueTiffin OH 44883	SethFinch@gmail.com
334	Clayton Hull	F	8171058-2	1980-09-26	89 South Chapel LaneHaines City FL 33844	ClaytonHull@gmail.com
335	Rhona Riddle	F	15023936-K	1992-03-20	669 Ohio Ave.West Fargo ND 58078	RhonaRiddle@gmail.com
336	Kimberly Hull	F	13975393-K	1992-07-24	8227 Morris RoadClifton NJ 07011	KimberlyHull@gmail.com
337	Imani Craft	F	7524996-2	1967-08-19	942 Bayberry StreetEssex MD 21221	ImaniCraft@gmail.com
338	Mason Molina	F	19382831-0	1994-07-10	7146 Pine St.Hamtramck MI 48212	MasonMolina@gmail.com
339	Sebastian Molina	M	15665027-0	1996-10-30	24 53rd AvenueMahopac NY 10541	SebastianMolina@gmail.com
340	Brianna Hoover	M	7489921-K	1964-06-11	2 Greystone RoadNanuet NY 10954	BriannaHoover@gmail.com
341	Jocelyn Kirkland	F	7420518-4	1966-08-19	482 Bishop CirclePeabody MA 01960	JocelynKirkland@gmail.com
342	Elizabeth Justice	F	6776042-K	1970-06-08	9867 Roosevelt StreetEnfield CT 06082	ElizabethJustice@gmail.com
343	Josephine Thomas	F	7262484-K	1960-05-20	357 Foxrun Dr.Hope Mills NC 28348	JosephineThomas@gmail.com
344	Kaseem Sears	M	6428668-8	1960-09-21	9948 St Paul St.Palm Bay FL 32907	KaseemSears@gmail.com
345	Fulton Griffin	F	15720269-K	1989-11-22	76 West Depot St.Gurnee IL 60031	FultonGriffin@gmail.com
346	Josephine Mckay	M	10514347-4	1971-09-05	421 North Thatcher Rd.Rolling Meadows IL 60008	JosephineMckay@gmail.com
347	Kibo Wooten	M	14413935-6	1984-04-17	385 Devonshire StreetRavenna OH 44266	KiboWooten@gmail.com
348	Ina Gregory	M	7920284-K	1960-03-15	8 E. Plumb Branch St.Mooresville NC 28115	InaGregory@gmail.com
349	Camilla Decker	M	16254483-K	1988-06-06	4 Wayne StreetNorthville MI 48167	CamillaDecker@gmail.com
350	Kimberly Lindsay	M	13881199-K	1991-02-04	94 Alderwood StreetLindenhurst NY 11757	KimberlyLindsay@gmail.com
351	Alexander Craft	F	19152735-K	1995-03-09	832 State Ave.Griffin GA 30223	AlexanderCraft@gmail.com
352	Kibo Gonzalez	M	16739854-5	1983-04-09	951 West Carpenter Dr.Port Richey FL 34668	KiboGonzalez@gmail.com
353	Sebastian Saunders	F	6239564-K	1960-07-04	791 Alderwood St.Onalaska WI 54650	SebastianSaunders@gmail.com
354	Baker Davenport	F	18118973-5	1981-11-15	526 Randall Mill St.Morrisville PA 19067	BakerDavenport@gmail.com
355	Connor James	F	17821989-K	1986-04-03	93 Surrey LaneCleveland TN 37312	ConnorJames@gmail.com
356	Jocelyn Craig	M	16121301-4	1986-10-23	8052 Grand StreetUniondale NY 11553	JocelynCraig@gmail.com
357	Seth Blake	F	12773049-1	1976-01-15	947 Linden Ave.Piedmont SC 29673	SethBlake@gmail.com
358	Graham Vega	M	6677061-0	1967-11-21	413 Rockcrest AvenueDowningtown PA 19335	GrahamVega@gmail.com
359	Jarrod Rivers	M	16058292-K	1997-03-16	724 Howard St.Westbury NY 11590	JarrodRivers@gmail.com
360	Hoyt Finley	M	7899091-7	1962-09-24	47 Prospect St.Toms River NJ 08753	HoytFinley@gmail.com
361	Jesse Gregory	M	7509517-3	1966-02-28	361 Wrangler Ave.Massapequa Park NY 11762	JesseGregory@gmail.com
362	Wyatt Buchanan	M	13138196-K	1992-08-10	42 Bradford Dr.Hamilton OH 45011	WyattBuchanan@gmail.com
363	Connor Cain	F	7444526-K	1961-05-24	552 Wilson St.Garner NC 27529	ConnorCain@gmail.com
364	Amber Hansen	M	10397961-0	1976-09-22	77 Newbridge Dr.East Haven CT 06512	AmberHansen@gmail.com
365	Belle Estrada	F	6494143-K	1963-12-20	9139 Madison RoadGwynn Oak MD 21207	BelleEstrada@gmail.com
366	Kaseem Gonzalez	M	7805032-K	1961-04-21	8102 Brickell Rd.Perth Amboy NJ 08861	KaseemGonzalez@gmail.com
367	Nadine Colon	M	6888409-9	1962-11-05	9933 Rose St.Norwich CT 06360	NadineColon@gmail.com
368	Bertha Molina	F	19129686-9	1997-09-29	439 Proctor DriveCouncil Bluffs IA 51501	BerthaMolina@gmail.com
369	Hoyt Rivera	F	16805684-8	1994-06-04	8057 Miles StreetWoburn MA 01801	HoytRivera@gmail.com
370	Sarah Whitehead	F	19915775-4	1988-03-21	895 Lakeview St.Pearl MS 39208	SarahWhitehead@gmail.com
371	Cairo Sears	M	16796316-1	1990-04-20	617 E. Oak Valley StreetGoshen IN 46526	CairoSears@gmail.com
372	Kimberly Kennedy	M	14611732-8	1996-11-14	8790 Carson St.Edison NJ 08817	KimberlyKennedy@gmail.com
373	Brianna Rivers	M	6686999-K	1965-05-13	8119 College StreetAltoona PA 16601	BriannaRivers@gmail.com
374	Rhea Molina	M	7708784-K	1964-05-08	553 Cedar StreetBrentwood NY 11717	RheaMolina@gmail.com
375	Melinda Gardner	M	9127373-K	1980-06-18	9084 Glen Ridge LaneLargo FL 33771	MelindaGardner@gmail.com
376	Josiah Whitehead	M	7407041-6	1962-12-21	5 Lakeview Ave.Georgetown SC 29440	JosiahWhitehead@gmail.com
377	Ina Walters	F	13553577-2	1987-11-08	7 Stonybrook St.Charlottesville VA 22901	InaWalters@gmail.com
378	Patience Howard	M	17987685-5	1994-10-10	68 Bradford St.Riverview FL 33569	PatienceHoward@gmail.com
379	Giacomo Monroe	M	17458002-7	1991-10-02	7381 Oak Meadow Ave.Dracut MA 01826	GiacomoMonroe@gmail.com
380	Elmo Wagner	F	7535449-9	1964-08-08	7 East Ocean RoadPalmetto FL 34221	ElmoWagner@gmail.com
381	Caleb Buchanan	F	19379171-K	1987-01-10	58 Fulton St.Hicksville NY 11801	CalebBuchanan@gmail.com
382	Debra Hardin	F	8007677-7	1975-09-05	87 South Valley Farms StreetSaint Paul MN 55104	DebraHardin@gmail.com
383	Jackson Daniel	M	17945247-K	1993-10-08	8819 Pumpkin Hill St.Klamath Falls OR 97603	JacksonDaniel@gmail.com
384	Jackson Saunders	M	15876654-K	1989-11-14	677 Orange LaneOsseo MN 55311	JacksonSaunders@gmail.com
385	Stephanie Dillon	M	16520532-K	1989-10-04	9352 Rocky River Dr.Ooltewah TN 37363	StephanieDillon@gmail.com
386	Giacomo Hull	M	7553121-1	1970-06-12	550 Canterbury Rd.Mountain View CA 94043	GiacomoHull@gmail.com
387	Devin Daniel	M	18495248-K	1990-02-05	92 Mill Ave.Round Lake IL 60073	DevinDaniel@gmail.com
388	Jerome Alford	M	15515508-K	1982-12-28	9030 Tailwater Rd.Trussville AL 35173	JeromeAlford@gmail.com
389	Imani Cleveland	F	9473667-K	1976-01-20	9933 Rose St.Norwich CT 06360	ImaniCleveland@gmail.com
390	Paki Knapp	M	16873145-7	1982-12-18	24 Green StreetCuyahoga Falls OH 44221	PakiKnapp@gmail.com
391	Aline Craft	F	7496438-3	1960-11-03	91 Orange AvenueNew Brunswick NJ 08901	AlineCraft@gmail.com
392	Kerry Sears	M	18678874-2	1989-03-09	886 West Walt Whitman St.Upper Marlboro MD 20772	KerrySears@gmail.com
393	Jarrod Wooten	F	19913252-7	1984-11-18	497 53rd Ave.Goose Creek SC 29445	JarrodWooten@gmail.com
394	Elmo Baldwin	F	13519030-3	1989-10-01	54 Cypress CircleNicholasville KY 40356	ElmoBaldwin@gmail.com
395	Preston George	F	6454355-6	1968-04-08	9295 West Cherry Hill Dr.Glen Burnie MD 21060	PrestonGeorge@gmail.com
396	Rhea Dillon	M	6646897-9	1961-11-08	602 W. Race DriveParamus NJ 07652	RheaDillon@gmail.com
397	Ina Blake	F	7365670-K	1967-08-03	443 Tanglewood RoadCoventry RI 02816	InaBlake@gmail.com
398	Debra Sharpe	F	9060638-K	1972-06-25	6 San Pablo AvenueFullerton CA 92831	DebraSharpe@gmail.com
399	Elizabeth Holt	F	6405092-2	1962-10-19	84 Piper St.Lewiston ME 04240	ElizabethHolt@gmail.com
400	Candice Fuller	M	16607562-7	1994-12-31	9673 Woodsman St.East Meadow NY 11554	CandiceFuller@gmail.com
401	Sage Blake	M	6549920-0	1966-09-26	27 Grand CourtSalisbury MD 21801	SageBlake@gmail.com
402	Sarah Gonzalez	M	11231945-0	1976-05-22	963 Beaver Ridge LaneInman SC 29349	SarahGonzalez@gmail.com
403	Eliana Walters	F	18264047-K	1983-09-05	58 Center CourtBaldwin NY 11510	ElianaWalters@gmail.com
404	Jordan Lindsay	M	15369992-K	1998-05-11	374 Birchwood Ave.Vernon Hills IL 60061	JordanLindsay@gmail.com
405	Elizabeth Kirkland	M	15519863-0	1995-11-02	8227 Morris RoadClifton NJ 07011	ElizabethKirkland@gmail.com
406	Ulric Blake	F	9787168-4	1973-04-22	425 Prince CourtCranberry Twp PA 16066	UlricBlake@gmail.com
407	Giacomo Alford	F	13250908-3	1991-11-26	49 Leeton Ridge DriveHolly Springs NC 27540	GiacomoAlford@gmail.com
408	Kimberly Vega	F	12491288-K	1975-11-02	608 Plumb Branch St.Pasadena MD 21122	KimberlyVega@gmail.com
409	Camilla Finch	F	15321072-1	1992-04-30	9684 Kirkland Rd.Pensacola FL 32503	CamillaFinch@gmail.com
410	Conan Mcguire	M	13880062-0	1991-05-31	8449 Pheasant StreetNew York NY 10002	ConanMcguire@gmail.com
411	Mannix Alford	M	7236114-K	1967-12-15	95 S. Tunnel Rd.Mesa AZ 85203	MannixAlford@gmail.com
412	Devin Rivers	M	13080264-1	1986-06-20	1 Heather AvenueAnnapolis MD 21401	DevinRivers@gmail.com
413	Lysandra Wooten	M	11886411-K	1979-01-03	16 Lakewood St.Milford MA 01757	LysandraWooten@gmail.com
414	Jordan Sears	F	16635153-K	1993-06-15	7969 South Wentworth St.Youngstown OH 44512	JordanSears@gmail.com
415	Sebastian Lindsay	M	13029080-K	1995-02-14	53 Bradford Ave.Lapeer MI 48446	SebastianLindsay@gmail.com
416	Mason Hull	M	7215977-1	1969-07-16	9662 Thatcher Dr.Peachtree City GA 30269	MasonHull@gmail.com
417	Cooper Donaldson	M	19844724-7	1994-04-30	7807 Swanson St.New Orleans LA 70115	CooperDonaldson@gmail.com
418	Rhea Hull	F	14185886-K	1998-07-11	7738 Old Blackburn LaneLoxahatchee FL 33470	RheaHull@gmail.com
419	Uriel Hutchinson	F	6108874-4	1964-02-14	2 North Lantern LaneJamaica NY 11432	UrielHutchinson@gmail.com
420	Cooper Sears	M	19014750-0	1995-06-05	637 Chestnut DriveLynnwood WA 98037	CooperSears@gmail.com
421	Sarah Buchanan	F	7101743-8	1967-07-18	24 53rd AvenueMahopac NY 10541	SarahBuchanan@gmail.com
422	Oprah Graves	M	19942411-6	1984-09-10	981 Foxrun Dr.Rego Park NY 11374	OprahGraves@gmail.com
423	Josephine Wooten	F	15688924-K	1989-04-05	927 E. Paris Hill StreetNewton NJ 07860	JosephineWooten@gmail.com
424	Josephine Graves	M	7814728-7	1965-11-22	92 Riverview St.Romeoville IL 60446	JosephineGraves@gmail.com
425	Jocelyn Lindsay	F	6348438-K	1968-08-02	9637 Court StreetFairfax VA 22030	JocelynLindsay@gmail.com
426	Cooper Hull	M	6510953-2	1960-01-12	48 Olive Dr.Orange NJ 07050	CooperHull@gmail.com
427	Jordan Sears	M	7570976-9	1966-09-04	58 Fulton St.Hicksville NY 11801	JordanSears@gmail.com
428	Denise Owen	M	6937357-K	1966-01-16	251 Rockville Ave.Alexandria VA 22304	DeniseOwen@gmail.com
429	Armando Sweeney	F	6648138-K	1966-04-19	813 Cross St.Solon OH 44139	ArmandoSweeney@gmail.com
430	Rylee Palmer	M	16672543-3	1981-04-11	3 Brown St.Cape Coral FL 33904	RyleePalmer@gmail.com
431	Austin George	M	17593439-6	1991-07-31	22 Stillwater CourtHartselle AL 35640	AustinGeorge@gmail.com
432	Abbot Rowe	M	10489237-K	1979-05-06	801 Saxon StreetLowell MA 01851	AbbotRowe@gmail.com
433	Cairo Grimes	F	9188883-6	1979-03-18	491 Cherry Ave.Anderson SC 29621	CairoGrimes@gmail.com
434	Arthur Bernard	F	18172080-K	1981-01-24	9596 South Catherine StreetTerre Haute IN 47802	ArthurBernard@gmail.com
435	Germaine Kennedy	F	15385450-7	1984-01-25	416 Woodside St.Hollis NY 11423	GermaineKennedy@gmail.com
436	Seth Abbott	F	15238795-9	1994-11-28	42 Bradford Dr.Hamilton OH 45011	SethAbbott@gmail.com
437	Jerome Wagner	M	19311385-K	1990-06-18	55 Chestnut RoadNew Albany IN 47150	JeromeWagner@gmail.com
438	Josiah Hull	M	7108787-K	1969-11-14	45 Westport Dr.Evans GA 30809	JosiahHull@gmail.com
439	Conan Booth	F	16867284-K	1984-08-31	564 Sussex CourtBonita Springs FL 34135	ConanBooth@gmail.com
440	Amber Kim	M	13904734-K	1994-04-03	494 Inverness LaneNew Port Richey FL 34653	AmberKim@gmail.com
441	Dante Brooks	F	18820277-1	1997-10-30	8214 Old York DriveHanover Park IL 60133	DanteBrooks@gmail.com
442	Aurelia Hansen	F	14250821-4	1989-12-04	398 Hall LanePeoria IL 61604	AureliaHansen@gmail.com
443	Ulric Donaldson	F	12685183-9	1980-06-12	863 Albany StreetDawsonville GA 30534	UlricDonaldson@gmail.com
444	Josiah George	F	7116829-K	1968-06-08	58 Walnut LaneDaphne AL 36526	JosiahGeorge@gmail.com
445	Sebastian Cabrera	F	10068090-3	1974-06-06	9445 Vermont Rd.Kenosha WI 53140	SebastianCabrera@gmail.com
446	Mechelle Finch	M	7605154-1	1968-02-03	6 Randall Mill AvenueNatchez MS 39120	MechelleFinch@gmail.com
447	Holly Dillon	F	13147714-K	1994-11-17	9572 Linden Ave.Vista CA 92083	HollyDillon@gmail.com
448	Sebastian Brewer	F	6956413-8	1960-04-13	9864 Amherst StreetMyrtle Beach SC 29577	SebastianBrewer@gmail.com
449	Kirk Hardin	M	7612738-2	1970-01-16	40 Kent RoadDouglasville GA 30134	KirkHardin@gmail.com
450	Patience Foreman	F	17632240-4	1988-08-10	9809 Fairway Ave.Lockport NY 14094	PatienceForeman@gmail.com
451	Felicia Sharpe	M	10887413-K	1972-02-20	9854 Winchester Rd.Faribault MN 55021	FeliciaSharpe@gmail.com
452	Elizabeth Bernard	M	7009048-K	1965-04-01	380 Fairground DriveGarland TX 75043	ElizabethBernard@gmail.com
453	Dante Cabrera	F	18334799-K	1994-10-16	790 N. Redwood AvenueTiffin OH 44883	DanteCabrera@gmail.com
454	Susan Baldwin	M	16277643-K	1995-07-04	8229 Andover StreetWayne NJ 07470	SusanBaldwin@gmail.com
455	Hoyt Elliott	M	9296400-K	1974-07-13	7558 South Gulf Ave.Ft Mitchell KY 41017	HoytElliott@gmail.com
456	Kimberly Hutchinson	F	7455803-9	1969-12-05	863 Albany StreetDawsonville GA 30534	KimberlyHutchinson@gmail.com
457	Zephania Foreman	M	11880698-K	1971-09-13	89 Arnold Rd.Wellington FL 33414	ZephaniaForeman@gmail.com
458	Ina Frost	F	17420321-0	1992-04-24	94 Alderwood StreetLindenhurst NY 11757	InaFrost@gmail.com
459	Rhea Garcia	M	11388290-5	1971-08-17	722 Lower River St.Easton PA 18042	RheaGarcia@gmail.com
460	Paki Craft	M	8046798-9	1972-06-11	9 James StreetGraham NC 27253	PakiCraft@gmail.com
461	Connor Hull	M	12100891-K	1980-03-17	847 Marshall St.Dedham MA 02026	ConnorHull@gmail.com
462	Josiah Hansen	M	15173174-K	1996-07-08	735 Armstrong St.Gibsonia PA 15044	JosiahHansen@gmail.com
463	Stephanie James	F	9843445-2	1972-05-13	7 Sugar DriveThe Villages FL 32162	StephanieJames@gmail.com
464	Clayton Frye	M	10079897-K	1971-05-26	7188 Hill St.La Vergne TN 37086	ClaytonFrye@gmail.com
465	Debra Alford	F	12779041-K	1975-03-02	49 Saxton DriveArvada CO 80003	DebraAlford@gmail.com
466	Jesse Rowe	M	18183982-3	1998-09-07	468 Walt Whitman St.Stamford CT 06902	JesseRowe@gmail.com
467	Alexander Davenport	F	14382745-3	1993-08-01	9953 Ridgewood Dr.South Portland ME 04106	AlexanderDavenport@gmail.com
468	Lysandra Molina	F	18640619-K	1996-06-18	751 E. Wild Rose StreetMaineville OH 45039	LysandraMolina@gmail.com
469	Sharon Baldwin	F	15101510-K	1988-04-08	65 Sheffield St.East Brunswick NJ 08816	SharonBaldwin@gmail.com
470	Debra Whitehead	M	13544377-K	1988-04-04	920 Jefferson AvenueMansfield MA 02048	DebraWhitehead@gmail.com
471	Camilla Kent	M	6150930-1	1965-05-16	8698 Poor House DriveClover SC 29710	CamillaKent@gmail.com
472	Jocelyn Hebert	M	13748265-K	1996-10-10	63 Rockville RoadDecatur GA 30030	JocelynHebert@gmail.com
473	Clark Wagner	F	13879240-2	1990-04-02	9658 Schoolhouse St.Wyoming MI 49509	ClarkWagner@gmail.com
474	Eliana Bernard	F	11501043-K	1974-04-18	7759 NE. High Point AvenueEl Dorado AR 71730	ElianaBernard@gmail.com
475	Alfonso Finley	M	14593076-K	1996-06-03	53 Rockaway DriveFlorence SC 29501	AlfonsoFinley@gmail.com
476	Mechelle Sweeney	F	13347257-K	1983-03-05	46 Foxrun AvenueWest Orange NJ 07052	MechelleSweeney@gmail.com
477	Benjamin Finley	M	11933632-K	1974-10-12	28 Sleepy Hollow StreetNorristown PA 19401	BenjaminFinley@gmail.com
478	Conan Brewer	M	19402323-7	1985-01-08	8743 West Shipley Ave.Kaukauna WI 54130	ConanBrewer@gmail.com
479	Ina Foreman	M	12761264-K	1971-09-09	7201 Sussex St.Holyoke MA 01040	InaForeman@gmail.com
480	Josiah Sharpe	M	15288632-K	1983-08-30	893 W. Canal DriveHartsville SC 29550	JosiahSharpe@gmail.com
481	Alfonso Griffin	F	14631130-K	1994-11-02	409 Railroad St.Asheboro NC 27205	AlfonsoGriffin@gmail.com
482	Oprah Mcguire	F	13040199-K	1990-05-30	8394 Madison AvenueBrooklyn NY 11201	OprahMcguire@gmail.com
483	Ulric Tillman	M	7961523-K	1970-01-11	7944 Mountainview Ave.Ogden UT 84404	UlricTillman@gmail.com
484	Jocelyn Riddle	F	13988455-2	1987-04-27	623 Hudson LaneGreat Falls MT 59404	JocelynRiddle@gmail.com
485	Graham Griffin	M	6142373-K	1960-03-06	7 East Ocean RoadPalmetto FL 34221	GrahamGriffin@gmail.com
486	Camilla Hull	M	19671506-K	1996-09-14	7803 Greenrose LaneSavage MN 55378	CamillaHull@gmail.com
487	Nadine Thomas	M	8061651-4	1978-06-09	535 Talbot St.Sebastian FL 32958	NadineThomas@gmail.com
488	Benjamin Richard	F	10003055-6	1977-06-11	9 Tanglewood St.Waterloo IA 50701	BenjaminRichard@gmail.com
489	Uriel Mcguire	F	15338731-K	1998-02-16	41 Wild Horse St.Chambersburg PA 17201	UrielMcguire@gmail.com
490	Kirk Kent	F	7913776-6	1967-09-07	57 Shadow Brook DriveLorain OH 44052	KirkKent@gmail.com
491	Graham Cain	F	19616684-K	1992-06-02	429 Cobblestone St.Statesville NC 28625	GrahamCain@gmail.com
492	Benjamin Tillman	M	17172617-K	1995-11-20	293 Pleasant Ave.Hopewell VA 23860	BenjaminTillman@gmail.com
493	Elmo Stewart	M	14056371-9	1985-02-01	149 Snake Hill Rd.Atlantic City NJ 08401	ElmoStewart@gmail.com
494	Castor Mcdowell	F	17555390-7	1998-07-07	9542 Oxford StreetHomestead FL 33030	CastorMcdowell@gmail.com
495	Aline Day	M	17016247-2	1985-01-27	799 Center StreetChaska MN 55318	AlineDay@gmail.com
496	Shaine Brewer	F	16108415-4	1987-07-09	7848 Holly St.Herndon VA 20170	ShaineBrewer@gmail.com
497	Baker Abbott	F	7480671-9	1964-03-06	42 Laurel DriveOrland Park IL 60462	BakerAbbott@gmail.com
498	Nadine Riddle	M	9905665-K	1975-04-26	622 South Gates StreetDerby KS 67037	NadineRiddle@gmail.com
499	Josephine Patrick	F	14822147-4	1989-06-04	23 Bank St.Winter Haven FL 33880	JosephinePatrick@gmail.com
500	Aurelia Thomas	M	16202886-0	1989-06-24	25 Fremont StreetSan Jose CA 95127	AureliaThomas@gmail.com
501	Elizabeth Finley	F	10567848-K	1972-12-01	794 Jackson Ave.Loveland OH 45140	ElizabethFinley@gmail.com
502	Devin Schroeder	F	14039141-K	1984-09-28	69 Creekside StreetLeesburg VA 20175	DevinSchroeder@gmail.com
503	Aurelia Rowe	M	14152284-K	1996-09-03	7592 Lake View St.Raleigh NC 27603	AureliaRowe@gmail.com
504	Conan Kirkland	M	14495235-K	1986-04-25	7621 Cross St.Ypsilanti MI 48197	ConanKirkland@gmail.com
505	Shaine Booth	F	15005703-K	1998-05-12	157 Fairground StreetSyosset NY 11791	ShaineBooth@gmail.com
506	Sharon Frost	F	19087198-5	1984-11-04	28 King StreetGainesville VA 20155	SharonFrost@gmail.com
507	Bertha Riddle	F	10754561-2	1976-12-05	553 Shady Rd.Plattsburgh NY 12901	BerthaRiddle@gmail.com
508	Alfonso Gonzalez	M	6447731-K	1966-01-26	958 La Sierra Ave.Mokena IL 60448	AlfonsoGonzalez@gmail.com
509	Sebastian Tillman	F	16859041-K	1991-01-03	856A Arch AvenueDeerfield Beach FL 33442	SebastianTillman@gmail.com
510	Hoyt Farrell	M	6321989-8	1967-01-11	40 West Tallwood LaneGarfield NJ 07026	HoytFarrell@gmail.com
511	Aline Sweeney	F	6647903-K	1970-07-31	95 W. Highland St.Stillwater MN 55082	AlineSweeney@gmail.com
512	Connor Owen	F	6341602-K	1963-06-27	77 Park St.Fairborn OH 45324	ConnorOwen@gmail.com
513	Caleb Stewart	M	16068390-K	1998-10-08	9445 Vermont Rd.Kenosha WI 53140	CalebStewart@gmail.com
514	Louis James	M	16195981-K	1987-03-27	5 Lakeview Ave.Georgetown SC 29440	LouisJames@gmail.com
515	Wyatt Whitehead	M	16306625-K	1987-01-02	7952 South Studebaker St.Coraopolis PA 15108	WyattWhitehead@gmail.com
516	Arthur Molina	F	9079599-9	1976-04-01	866 Locust Ave.Port Chester NY 10573	ArthurMolina@gmail.com
517	Holly Daniel	M	10409505-K	1971-05-10	499 San Carlos Rd.Horn Lake MS 38637	HollyDaniel@gmail.com
518	Paki Kim	F	7428963-7	1966-07-23	6 San Pablo AvenueFullerton CA 92831	PakiKim@gmail.com
519	Bertha Hinton	F	12969044-K	1972-08-22	9063 W. Honey Creek Dr.Queensbury NY 12804	BerthaHinton@gmail.com
520	Mechelle Sears	M	13124305-K	1985-03-04	7639 Logan AvenueState College PA 16801	MechelleSears@gmail.com
521	Kimberly Cain	M	7268196-3	1964-02-06	813 Cross St.Solon OH 44139	KimberlyCain@gmail.com
522	Sage Donaldson	F	6279987-K	1966-11-11	94 Alderwood StreetLindenhurst NY 11757	SageDonaldson@gmail.com
523	Mason Schroeder	M	7160764-K	1961-10-11	7 Sugar DriveThe Villages FL 32162	MasonSchroeder@gmail.com
524	Patience Obrien	M	17375720-9	1993-04-17	7100 Alton St.Scarsdale NY 10583	PatienceObrien@gmail.com
525	Denise Palmer	M	6395042-0	1966-09-24	61 East South Ave.Conyers GA 30012	DenisePalmer@gmail.com
526	Connor Stewart	F	16128190-K	1984-12-25	7031 Cherry Hill StreetMuncie IN 47302	ConnorStewart@gmail.com
527	Kaseem Baldwin	F	6687085-8	1966-06-24	9857 Border Dr.Fort Washington MD 20744	KaseemBaldwin@gmail.com
528	Dennis James	M	9468441-K	1972-12-06	765 Hill RoadSuite 4Jonesboro GA 30236	DennisJames@gmail.com
529	Debra Rivers	M	10407669-K	1975-02-21	956 Arnold Ave.Kingston NY 12401	DebraRivers@gmail.com
530	Jesse Day	M	11801429-K	1973-08-31	8793 Harvard St.Blacksburg VA 24060	JesseDay@gmail.com
531	Germaine Nielsen	F	6775360-8	1967-02-04	302 Pulaski CourtDekalb IL 60115	GermaineNielsen@gmail.com
532	Abbot Gregory	F	6908114-4	1966-07-20	7 West Hillside StreetNorthbrook IL 60062	AbbotGregory@gmail.com
533	Jarrod Knapp	M	6650606-K	1961-11-12	5 Old Illinois Rd.Cedar Falls IA 50613	JarrodKnapp@gmail.com
534	Howard Justice	F	8351580-K	1976-03-16	942 Bayberry StreetEssex MD 21221	HowardJustice@gmail.com
535	Austin Gregory	F	19793928-6	1986-03-02	252 Airport RoadBurke VA 22015	AustinGregory@gmail.com
536	Graham Finch	M	14641527-1	1989-06-02	42 Jones St.Thomasville NC 27360	GrahamFinch@gmail.com
537	Sebastian Saunders	M	19295538-K	1990-02-19	791 Alderwood St.Onalaska WI 54650	SebastianSaunders@gmail.com
538	Louis Mckay	M	17192711-5	1994-09-18	48 Sheffield RoadOlive Branch MS 38654	LouisMckay@gmail.com
539	Jocelyn Estrada	F	12230560-K	1979-03-25	7199 Clay St.Glendale AZ 85302	JocelynEstrada@gmail.com
540	Alfonso Buchanan	F	11040813-3	1980-07-07	252 Airport RoadBurke VA 22015	AlfonsoBuchanan@gmail.com
541	Alfonso Baldwin	M	7381493-3	1970-12-05	10 West High Point Ave.Baton Rouge LA 70806	AlfonsoBaldwin@gmail.com
542	Thaddeus Garza	M	8041055-5	1972-04-13	7667 South Ohio St.Irvington NJ 07111	ThaddeusGarza@gmail.com
543	Wyatt Abbott	M	6908583-K	1970-03-18	77 Garfield CourtEugene OR 97402	WyattAbbott@gmail.com
544	Preston Gregory	M	15266549-K	1995-01-07	69 Green LaneGrayslake IL 60030	PrestonGregory@gmail.com
545	Dante Gardner	M	17315699-9	1994-05-18	5 Marshall Ave.Summerfield FL 34491	DanteGardner@gmail.com
546	Connor Vega	F	17970960-K	1997-11-24	992 Greystone StreetRosemount MN 55068	ConnorVega@gmail.com
547	Mason Frye	M	6663884-K	1966-04-01	7822 Plymouth Ave.District Heights MD 20747	MasonFrye@gmail.com
548	Louis Cain	M	18114341-7	1989-08-15	79 NW. Ramblewood Dr.Elmont NY 11003	LouisCain@gmail.com
549	Zephania Gardner	F	13501832-K	1983-04-20	300 Buckingham StreetHartford CT 06106	ZephaniaGardner@gmail.com
550	Zephania Hansen	F	12031127-3	1975-10-31	770 Sycamore AvenueZionsville IN 46077	ZephaniaHansen@gmail.com
551	Sharon Pollard	F	14807482-K	1983-07-17	795 Tunnel Rd.Chelsea MA 02150	SharonPollard@gmail.com
552	Alexander Mcdowell	F	18941549-7	1993-07-24	5 Acacia Ave.Piqua OH 45356	AlexanderMcdowell@gmail.com
553	Alexander Finch	F	10634351-7	1980-07-07	409 Railroad St.Asheboro NC 27205	AlexanderFinch@gmail.com
554	Lars Buchanan	M	7490674-K	1960-04-25	488 George RoadBenton Harbor MI 49022	LarsBuchanan@gmail.com
555	Wyatt Cleveland	F	7945661-K	1963-03-11	7656 Peg Shop St.Catonsville MD 21228	WyattCleveland@gmail.com
556	Imani Kent	F	11627669-4	1977-07-17	893 W. Canal DriveHartsville SC 29550	ImaniKent@gmail.com
557	Louis Hoover	M	12991377-3	1973-02-18	7254 Bridge Dr.Winona MN 55987	LouisHoover@gmail.com
558	Holly Pollard	M	18637182-K	1991-03-16	42 Jones St.Thomasville NC 27360	HollyPollard@gmail.com
559	Elmo Owen	M	12323982-K	1974-01-17	183 Howard St.Lewis Center OH 43035	ElmoOwen@gmail.com
560	Rhea Kent	F	10646405-4	1979-08-30	801 Summit Ave.Oviedo FL 32765	RheaKent@gmail.com
561	Camilla Lindsay	F	11214377-K	1973-03-17	949 Richardson CourtSevierville TN 37876	CamillaLindsay@gmail.com
562	Kirk Finch	F	10466374-K	1978-08-01	35 Liberty StreetPassaic NJ 07055	KirkFinch@gmail.com
563	Eliana Howard	F	9760437-3	1978-07-12	402 Cambridge Dr.Sioux Falls SD 57103	ElianaHoward@gmail.com
564	Bertha Gregory	F	6286338-K	1962-07-15	458 East St.Utica NY 13501	BerthaGregory@gmail.com
565	Graham Scott	M	15563825-K	1991-08-18	69 Green LaneGrayslake IL 60030	GrahamScott@gmail.com
566	Bruce Craft	F	6799015-5	1963-11-29	6 Myrtle AvenueBerwyn IL 60402	BruceCraft@gmail.com
567	Mason Booker	M	18297925-2	1981-05-09	70 E. Winding Way StreetSun Prairie WI 53590	MasonBooker@gmail.com
568	Alfonso Daniel	F	7483946-7	1970-11-09	758 East Rockland RoadAstoria NY 11102	AlfonsoDaniel@gmail.com
569	Brenden Gonzalez	F	15853519-5	1986-09-11	8352 Crescent Rd.Lombard IL 60148	BrendenGonzalez@gmail.com
570	Denise Whitehead	M	6131515-2	1968-03-23	256 Pine St.Dacula GA 30019	DeniseWhitehead@gmail.com
571	Armando Brewer	M	18726122-3	1996-07-07	163 College Ave.Westminster MD 21157	ArmandoBrewer@gmail.com
572	Stephanie Tillman	F	13903081-0	1996-06-11	741 Vernon StreetFond Du Lac WI 54935	StephanieTillman@gmail.com
573	Paki Patrick	M	6073520-K	1969-02-16	91 Orange AvenueNew Brunswick NJ 08901	PakiPatrick@gmail.com
574	Kirk Dillon	F	18369735-4	1984-03-18	9603 W. Virginia Ave.Salem MA 01970	KirkDillon@gmail.com
575	Dennis Rivera	F	18165292-K	1981-12-10	7492 E. Grove St.Schererville IN 46375	DennisRivera@gmail.com
576	Uriel Craft	F	16035814-9	1998-06-12	83 Gates AvenueSun City AZ 85351	UrielCraft@gmail.com
577	Kerry Knapp	F	7716868-K	1969-06-09	7998 N. Hill AvenueRoselle IL 60172	KerryKnapp@gmail.com
578	Clayton Molina	M	14653661-3	1994-08-23	464 Princess Ave.Simpsonville SC 29680	ClaytonMolina@gmail.com
579	Tanek Kent	F	19255758-K	1992-02-01	157 Fairground StreetSyosset NY 11791	TanekKent@gmail.com
580	Clayton Nielsen	F	18402362-8	1994-03-24	429 Cobblestone St.Statesville NC 28625	ClaytonNielsen@gmail.com
581	Sharon Estrada	F	17150200-0	1989-08-04	8056 SE. Honey Creek Dr.East Orange NJ 07017	SharonEstrada@gmail.com
582	Camilla Rowe	M	6588332-K	1962-07-25	600 Rockland DriveElkton MD 21921	CamillaRowe@gmail.com
583	Jordan Knapp	M	17096280-4	1992-01-09	939 West Cottage AvenueSouthampton PA 18966	JordanKnapp@gmail.com
584	Jordan Richard	M	16508548-9	1991-10-15	3 Brown St.Cape Coral FL 33904	JordanRichard@gmail.com
585	Cooper Monroe	F	18643789-K	1995-06-23	770 Sycamore AvenueZionsville IN 46077	CooperMonroe@gmail.com
586	Josephine Kent	M	19309470-7	1988-12-31	622 Bridle DriveMarysville OH 43040	JosephineKent@gmail.com
587	Lysandra Frye	M	17513277-5	1997-06-11	89 Wrangler LaneCamp Hill PA 17011	LysandraFrye@gmail.com
588	Mannix Parker	M	7183038-2	1962-03-26	8277 Shady St.Commack NY 11725	MannixParker@gmail.com
589	Hoyt Palmer	F	13620126-K	1984-08-23	7100 Alton St.Scarsdale NY 10583	HoytPalmer@gmail.com
590	Graham Craft	M	7594524-K	1963-08-31	25 Cherry Dr.Lake Zurich IL 60047	GrahamCraft@gmail.com
591	Sebastian Colon	F	8239417-K	1976-06-16	8325 Bayberry StreetFort Worth TX 76110	SebastianColon@gmail.com
592	Graham Monroe	M	16292261-4	1998-04-05	316 Spring St.Plainview NY 11803	GrahamMonroe@gmail.com
593	Sebastian Kent	M	17369066-7	1983-02-09	9039 Sugar DriveBluffton SC 29910	SebastianKent@gmail.com
594	Louis Cabrera	F	14475171-K	1997-10-18	34 Lancaster LaneLouisville KY 40207	LouisCabrera@gmail.com
595	Kaseem Heath	F	18034770-K	1995-05-19	2 Tower Rd.Levittown NY 11756	KaseemHeath@gmail.com
596	Aurelia Hinton	M	14761762-K	1995-12-05	404 Summit DriveHonolulu HI 96815	AureliaHinton@gmail.com
597	Petra Craft	M	16862861-K	1998-12-05	8723 Lake LaneGreen Cove Springs FL 32043	PetraCraft@gmail.com
598	Abbot Hardin	F	9139743-1	1976-07-20	550 Canterbury Rd.Mountain View CA 94043	AbbotHardin@gmail.com
599	Patience Holt	M	12016628-K	1979-10-22	636 Shipley St.Yorktown Heights NY 10598	PatienceHolt@gmail.com
600	Clark Frost	M	6307839-K	1964-04-04	444 Swanson CircleRidgefield CT 06877	ClarkFrost@gmail.com
601	Hoyt Sharpe	F	14932083-3	1989-09-28	7760 Leatherwood CourtMc Lean VA 22101	HoytSharpe@gmail.com
602	Kerry Holt	F	17122622-1	1984-12-11	21 Talbot St.Wantagh NY 11793	KerryHolt@gmail.com
603	Rhea Booker	F	13854917-4	1993-11-22	209 N. Brown Ave.Flushing NY 11354	RheaBooker@gmail.com
604	Sarah Patrick	M	16194262-4	1983-01-02	9214 Baker LaneLoganville GA 30052	SarahPatrick@gmail.com
605	Jerome Obrien	M	7073003-3	1969-02-14	211 School St.Shelbyville TN 37160	JeromeObrien@gmail.com
606	Melinda Obrien	M	14555418-2	1986-06-19	602 W. Race DriveParamus NJ 07652	MelindaObrien@gmail.com
607	Ina Elliott	M	16930526-K	1990-08-07	40 East Bedford St.Seattle WA 98144	InaElliott@gmail.com
608	Petra Booker	F	13565969-4	1984-02-08	54 Cypress CircleNicholasville KY 40356	PetraBooker@gmail.com
609	Armando Craig	M	13493998-K	1993-05-10	5 South Roberts Rd.Worcester MA 01604	ArmandoCraig@gmail.com
610	Josiah Kennedy	M	13668990-3	1986-11-28	921 Selby St.Asheville NC 28803	JosiahKennedy@gmail.com
611	Graham Saunders	M	19418713-8	1986-07-25	7224 High Noon St.Warren MI 48089	GrahamSaunders@gmail.com
612	Stephanie Gonzalez	M	6427034-4	1968-03-07	673 Arnold LaneEasley SC 29640	StephanieGonzalez@gmail.com
613	Sebastian Riddle	M	6308903-K	1967-11-24	538 Race RoadBuckeye AZ 85326	SebastianRiddle@gmail.com
614	Sage Sharpe	M	10600216-5	1978-03-27	981 Foxrun Dr.Rego Park NY 11374	SageSharpe@gmail.com
615	Stephanie Lindsay	M	11986345-K	1972-11-12	963 Main Dr.Blackwood NJ 08012	StephanieLindsay@gmail.com
616	Joan Blake	M	19055541-6	1985-09-04	8162 Cedar Swamp DriveWisconsin Rapids WI 54494	JoanBlake@gmail.com
617	Fulton Craft	M	7750670-9	1970-12-17	9 Albany LaneBeachwood OH 44122	FultonCraft@gmail.com
618	Bruce Rowe	F	17877642-K	1992-10-16	8766 Hall DriveUniontown PA 15401	BruceRowe@gmail.com
619	Armando Garcia	F	6420223-2	1963-01-20	215 Miller StreetStevens Point WI 54481	ArmandoGarcia@gmail.com
620	Eliana Gonzalez	M	10817910-K	1972-04-14	82 Silver Spear CourtWestport CT 06880	ElianaGonzalez@gmail.com
621	Rhea Hutchinson	F	17730971-K	1994-03-08	7226 North Paris Hill St.Lincoln NE 68506	RheaHutchinson@gmail.com
622	Josiah Mcdowell	F	6277400-2	1967-12-16	9059 Rockledge Ave.Pembroke Pines FL 33028	JosiahMcdowell@gmail.com
623	Hoyt Hull	M	7805352-1	1970-08-20	27 Bayberry RoadBakersfield CA 93306	HoytHull@gmail.com
624	Devin Booth	F	7564164-1	1965-11-05	7146 Pine St.Hamtramck MI 48212	DevinBooth@gmail.com
625	Fulton Griffin	F	6726060-K	1960-04-01	9131 Bow Ridge St.Mocksville NC 27028	FultonGriffin@gmail.com
626	Elmo Tyler	M	10832836-K	1977-03-09	9 Albany LaneBeachwood OH 44122	ElmoTyler@gmail.com
627	Caleb Velez	M	19355694-K	1987-05-30	7679 Manchester Dr.Vicksburg MS 39180	CalebVelez@gmail.com
628	Castor Wooten	F	14328367-K	1992-03-21	387 Thompson DriveCalumet City IL 60409	CastorWooten@gmail.com
629	Baker Grimes	M	14742420-K	1994-03-10	866 Lantern CourtYork PA 17402	BakerGrimes@gmail.com
630	Kirk Mcgee	F	6378362-0	1969-01-07	305 West Van Dyke AvenuePaducah KY 42001	KirkMcgee@gmail.com
631	Rhea Riddle	F	10585557-K	1978-04-26	87 Bear Hill St.Nazareth PA 18064	RheaRiddle@gmail.com
632	Cairo Donaldson	F	18429149-9	1995-02-15	8466 Spring DriveNewtown PA 18940	CairoDonaldson@gmail.com
633	Cairo Velez	M	16586175-2	1995-05-28	476 Dunbar StreetHightstown NJ 08520	CairoVelez@gmail.com
634	Kirk Holt	F	16828789-0	1997-04-25	455 Railroad RoadWoodbridge VA 22191	KirkHolt@gmail.com
635	Sebastian Holt	M	9297922-9	1977-07-01	64 Orange LaneTraverse City MI 49684	SebastianHolt@gmail.com
636	Howard Cleveland	M	17068993-4	1995-04-07	476 Dunbar StreetHightstown NJ 08520	HowardCleveland@gmail.com
637	Melinda Wagner	F	18705160-K	1987-07-25	9695C Chapel StreetBethesda MD 20814	MelindaWagner@gmail.com
638	Cairo Alford	M	13107117-6	1991-11-11	8615 William DriveSylvania OH 43560	CairoAlford@gmail.com
639	Petra Palmer	F	6670353-8	1961-05-07	9147 Beechwood DriveGlastonbury CT 06033	PetraPalmer@gmail.com
640	Louis Justice	F	6587412-0	1963-04-13	7244 Foster Dr.Omaha NE 68107	LouisJustice@gmail.com
641	Eliana Tyler	M	12548443-K	1975-12-31	429 Cobblestone St.Statesville NC 28625	ElianaTyler@gmail.com
642	Raja Finch	F	11246609-K	1980-10-25	407 Temple CourtSioux City IA 51106	RajaFinch@gmail.com
643	Sebastian Heath	M	6970246-5	1970-02-11	7639 Logan AvenueState College PA 16801	SebastianHeath@gmail.com
644	Aurelia Finch	M	13948033-1	1981-02-19	24 SE. Sherman StreetErie PA 16506	AureliaFinch@gmail.com
645	Devin Cabrera	M	17170884-K	1995-09-19	65 Roosevelt Ave.Taunton MA 02780	DevinCabrera@gmail.com
646	Louis Foreman	M	7872197-4	1966-06-27	671 Plymouth StreetCocoa FL 32927	LouisForeman@gmail.com
647	Armando Gonzalez	M	10830972-K	1980-08-21	120 Gartner St.Latrobe PA 15650	ArmandoGonzalez@gmail.com
648	Kimberly Hardin	F	12966131-0	1971-11-21	9199 Heritage Ave.Quakertown PA 18951	KimberlyHardin@gmail.com
649	Jerome Grimes	M	6203893-K	1963-11-18	8101 Hillcrest CourtNorth Wales PA 19454	JeromeGrimes@gmail.com
650	Clark Whitehead	F	17025897-8	1985-10-20	553 Shady Rd.Plattsburgh NY 12901	ClarkWhitehead@gmail.com
651	Belle Hardin	M	6978418-K	1961-08-19	922 Ramblewood AvenueFlint MI 48504	BelleHardin@gmail.com
652	Dante Gonzalez	F	10664630-4	1978-04-05	8719 Valley Farms LaneBoynton Beach FL 33435	DanteGonzalez@gmail.com
653	Felicia Finley	F	15009933-K	1990-02-10	7381 2nd St.Suwanee GA 30024	FeliciaFinley@gmail.com
654	Rhona Rivera	M	13123793-8	1987-11-14	723 Oklahoma Ave.Wilmette IL 60091	RhonaRivera@gmail.com
655	Nadine Rivers	F	11869206-K	1979-02-24	9432 North Tanglewood St.Ocean Springs MS 39564	NadineRivers@gmail.com
656	Raja Thomas	M	17842832-K	1998-04-03	93 Ann Rd.Franklin Square NY 11010	RajaThomas@gmail.com
657	Andrew Wooten	M	6058209-6	1968-04-23	85 N. Taylor AvenueSummerville SC 29483	AndrewWooten@gmail.com
658	Aline Mcgee	M	7383973-4	1969-01-27	8805 Oakwood Dr.Moncks Corner SC 29461	AlineMcgee@gmail.com
659	Sharon Brewer	F	15253525-3	1994-11-20	81 Henry Smith RoadElyria OH 44035	SharonBrewer@gmail.com
660	Mannix Rowe	F	18156823-K	1985-09-12	96 Garden Ave.Beaver Falls PA 15010	MannixRowe@gmail.com
661	Aurelia Mcguire	F	19647936-K	1986-09-25	133 Ivy StreetSaint Cloud MN 56301	AureliaMcguire@gmail.com
662	Devin Walters	M	6324969-K	1970-12-21	9715 Magnolia RoadBurbank IL 60459	DevinWalters@gmail.com
663	Graham Hull	F	15314776-K	1998-04-18	38 Sutor AvenueLincolnton NC 28092	GrahamHull@gmail.com
664	Seth Mckay	F	14172515-K	1998-11-04	63 Grove RoadTaylor MI 48180	SethMckay@gmail.com
665	Melinda Rivers	M	11254033-5	1977-01-23	7709 Spring Dr.Elkridge MD 21075	MelindaRivers@gmail.com
666	Caleb Buchanan	M	9914702-K	1980-04-03	315 Center StreetBowling Green KY 42101	CalebBuchanan@gmail.com
667	Fulton Abbott	F	13109476-K	1996-08-24	9145 Beech StreetManahawkin NJ 08050	FultonAbbott@gmail.com
668	Aurelia Booker	M	6810241-K	1962-06-07	9225 Addison Rd.Phoenix AZ 85021	AureliaBooker@gmail.com
669	Raja Finch	M	7351682-1	1961-12-31	8352 Crescent Rd.Lombard IL 60148	RajaFinch@gmail.com
670	Rylee Owen	M	6727856-2	1962-05-26	201 Hickory St.Aliquippa PA 15001	RyleeOwen@gmail.com
671	Jackson Love	F	6608615-8	1970-09-11	592 East Dunbar RoadMedia PA 19063	JacksonLove@gmail.com
672	Louis Brooks	M	15129463-7	1994-05-24	942 Bayberry StreetEssex MD 21221	LouisBrooks@gmail.com
673	Sebastian Rowe	F	19611240-K	1991-10-29	83 East Glenwood Dr.Ballston Spa NY 12020	SebastianRowe@gmail.com
674	Dennis Nielsen	F	7268617-7	1960-02-08	8101 Hillcrest CourtNorth Wales PA 19454	DennisNielsen@gmail.com
675	Patience Kent	F	8355244-8	1975-09-10	9499 Snake Hill St.Park Forest IL 60466	PatienceKent@gmail.com
676	Jordan Foreman	F	19103782-3	1982-02-19	500 Grandrose LaneSaint Augustine FL 32084	JordanForeman@gmail.com
677	Conan Finch	M	17271759-K	1996-06-08	11 Mulberry Rd.North Haven CT 06473	ConanFinch@gmail.com
678	Mason Finley	F	13615291-K	1984-01-17	5 Linda Dr.Johnson City TN 37601	MasonFinley@gmail.com
679	Felicia Gonzalez	F	7883782-K	1966-07-14	494 Roehampton StreetHopkins MN 55343	FeliciaGonzalez@gmail.com
680	Abbot Kim	F	17591766-6	1994-01-19	827 Rockaway St.West Bloomfield MI 48322	AbbotKim@gmail.com
681	Jocelyn Rowe	F	17990126-K	1992-06-12	958 La Sierra Ave.Mokena IL 60448	JocelynRowe@gmail.com
682	Timothy Kirkland	M	16297016-7	1987-02-06	65 Roosevelt Ave.Taunton MA 02780	TimothyKirkland@gmail.com
683	Melinda Riddle	F	11995511-K	1979-11-02	804 Fairway Rd.Chattanooga TN 37421	MelindaRiddle@gmail.com
684	Sylvester Schroeder	F	12580241-K	1976-06-01	93 Stillwater DriveBillings MT 59101	SylvesterSchroeder@gmail.com
685	Alexander Scott	M	10491526-5	1977-04-11	55 Carriage DriveWatertown MA 02472	AlexanderScott@gmail.com
686	Josiah Daniel	M	7566797-K	1965-07-04	14 Linda Dr.Mcallen TX 78501	JosiahDaniel@gmail.com
687	Sylvester Heath	F	10170145-0	1972-07-30	686 Sugar Dr.Lacey WA 98503	SylvesterHeath@gmail.com
688	Sarah Mcdowell	M	10493007-2	1973-02-05	454 Rose RoadFort Lauderdale FL 33308	SarahMcdowell@gmail.com
689	Seth Kirkland	M	12043258-6	1975-01-22	27 Bayberry RoadBakersfield CA 93306	SethKirkland@gmail.com
690	Graham Cabrera	M	19334179-K	1995-10-20	631 Colonial Ave.Atlanta GA 30303	GrahamCabrera@gmail.com
691	Graham Saunders	F	7407767-K	1960-04-22	912 Trout DriveGreen Bay WI 54302	GrahamSaunders@gmail.com
692	Conan Knapp	F	7139290-K	1964-03-22	7986 Homestead Ave.Temple Hills MD 20748	ConanKnapp@gmail.com
693	Howard Cain	M	17575257-K	1987-07-23	309 Albany LaneCranston RI 02920	HowardCain@gmail.com
694	Baker Hansen	F	6182816-2	1964-10-05	601 Woodsman RoadHarlingen TX 78552	BakerHansen@gmail.com
695	Aline Monroe	F	8251111-4	1979-04-17	515 Catherine St.Winter Springs FL 32708	AlineMonroe@gmail.com
696	Elizabeth Finch	M	12492471-K	1973-01-15	198 Bowman St.Memphis TN 38106	ElizabethFinch@gmail.com
697	Clare George	M	15990516-K	1985-04-06	9948 St Paul St.Palm Bay FL 32907	ClareGeorge@gmail.com
698	Lars Owen	M	15228401-3	1989-08-18	15 Berkshire LaneBangor ME 04401	LarsOwen@gmail.com
699	Germaine Craig	M	19234940-8	1993-03-31	9662 Thatcher Dr.Peachtree City GA 30269	GermaineCraig@gmail.com
700	Joan Dillon	F	6882957-8	1960-05-23	7974 Indian Summer St.Grove City OH 43123	JoanDillon@gmail.com
701	Mannix Obrien	F	7441268-0	1961-06-25	7348 Adams Ave.Amsterdam NY 12010	MannixObrien@gmail.com
702	Preston Gardner	F	11617857-K	1980-04-11	98 Elm StreetDurham NC 27703	PrestonGardner@gmail.com
703	Josiah Hoover	M	14407403-7	1981-04-17	48 Lookout St.Sanford NC 27330	JosiahHoover@gmail.com
704	Joan Colon	F	19547748-5	1990-02-05	374 Birchwood Ave.Vernon Hills IL 60061	JoanColon@gmail.com
705	Imani James	F	6118893-K	1961-10-04	69 Saxton DriveSaratoga Springs NY 12866	ImaniJames@gmail.com
706	Kaseem Sweeney	M	17492264-K	1994-03-31	9675 Dunbar StreetRoslindale MA 02131	KaseemSweeney@gmail.com
707	Denise Wagner	M	7191232-K	1965-12-07	48 Lookout St.Sanford NC 27330	DeniseWagner@gmail.com
708	Clark Wagner	M	6049121-K	1967-07-16	8925 Crescent LaneDefiance OH 43512	ClarkWagner@gmail.com
709	Aline Frye	F	7509816-K	1961-05-17	9860 Meadow StreetApple Valley CA 92307	AlineFrye@gmail.com
710	Rylee Molina	M	10997309-K	1975-01-27	850 Glenholme AvenuePrattville AL 36067	RyleeMolina@gmail.com
711	Arthur Kent	F	9025051-K	1971-07-30	9352 North Glen Ridge Rd.Ronkonkoma NY 11779	ArthurKent@gmail.com
712	Raja Hansen	M	6822400-3	1967-06-15	7995 Pawnee DriveCopperas Cove TX 76522	RajaHansen@gmail.com
713	Elmo Vega	M	19915851-K	1994-07-31	125 Leeton Ridge RoadAnnandale VA 22003	ElmoVega@gmail.com
714	Mason Donaldson	M	18010267-K	1998-10-28	7381 Oak Meadow Ave.Dracut MA 01826	MasonDonaldson@gmail.com
715	Graham Mcdowell	M	19277581-K	1987-06-25	8727 East Bowman Rd.Sandusky OH 44870	GrahamMcdowell@gmail.com
716	Josiah Hardin	M	16678116-K	1984-09-08	60 East Sutor St.Milwaukee WI 53204	JosiahHardin@gmail.com
717	Graham Bullock	F	15135580-4	1985-08-28	9929 Brookside Dr.Kings Mountain NC 28086	GrahamBullock@gmail.com
718	Bernard Hull	F	11460778-9	1974-05-30	981 Foxrun Dr.Rego Park NY 11374	BernardHull@gmail.com
719	Debra Bernard	F	16108582-9	1989-09-25	81 Henry Smith RoadElyria OH 44035	DebraBernard@gmail.com
720	Devin Frye	M	6139611-K	1960-09-09	27 Broad Dr.Coatesville PA 19320	DevinFrye@gmail.com
721	Mannix Wagner	M	6417234-5	1960-12-16	85 Sunset StreetSnohomish WA 98290	MannixWagner@gmail.com
722	Felicia Colon	M	12472285-3	1974-01-27	9032 Poor House Dr.Buford GA 30518	FeliciaColon@gmail.com
723	Dennis Craft	F	15222506-K	1982-11-08	27 Broad Dr.Coatesville PA 19320	DennisCraft@gmail.com
724	Jarrod Owen	M	9846553-8	1977-05-27	9940 Winchester St.Lilburn GA 30047	JarrodOwen@gmail.com
725	Jerome Booker	F	8703112-K	1980-08-27	715 Henry Smith LaneThibodaux LA 70301	JeromeBooker@gmail.com
726	Denise Frost	F	8212604-7	1971-11-05	7052 Ivy CourtCantonment FL 32533	DeniseFrost@gmail.com
727	Alexander Frost	F	12836309-2	1975-01-25	9582 South Mayflower St.Elmhurst NY 11373	AlexanderFrost@gmail.com
728	Candice Buchanan	M	6952103-6	1969-09-22	800 Alton Rd.Desoto TX 75115	CandiceBuchanan@gmail.com
729	Sarah Craft	F	17658089-K	1995-10-30	8729 Golf St.Middleton WI 53562	SarahCraft@gmail.com
730	Hoyt Kirkland	M	7415630-5	1967-07-25	21 Studebaker St.Lake Worth FL 33460	HoytKirkland@gmail.com
731	Denise Monroe	M	13404576-9	1987-06-14	8805 Oakwood Dr.Moncks Corner SC 29461	DeniseMonroe@gmail.com
732	Sage Sweeney	F	12375418-3	1973-11-07	26 West Vernon Dr.Antioch TN 37013	SageSweeney@gmail.com
733	Sage Patrick	F	17810390-9	1986-07-19	177 NW. Roosevelt St.Doylestown PA 18901	SagePatrick@gmail.com
734	Rhona Justice	F	6956174-K	1964-09-21	404 Summit DriveHonolulu HI 96815	RhonaJustice@gmail.com
735	Sharon Gonzalez	M	15844941-8	1990-11-08	966 Gregory LaneAndover MA 01810	SharonGonzalez@gmail.com
736	Jackson Abbott	F	9219769-4	1971-07-07	9234 Edgewood Ave.Camas WA 98607	JacksonAbbott@gmail.com
737	Patience Vega	F	6041124-K	1970-12-01	600 Rockland DriveElkton MD 21921	PatienceVega@gmail.com
738	Stephanie Rowe	F	13312085-K	1992-10-04	35 Fieldstone St.Grand Blanc MI 48439	StephanieRowe@gmail.com
739	Giacomo Hoover	M	8861148-2	1979-11-12	13 S. Alderwood DriveGrand Forks ND 58201	GiacomoHoover@gmail.com
740	Kibo Saunders	F	6657902-K	1965-11-14	9029 Smith Store Dr.Hampton VA 23666	KiboSaunders@gmail.com
741	Fulton Kirkland	F	10293539-K	1977-02-19	47 North Sherwood DriveMcdonough GA 30252	FultonKirkland@gmail.com
742	Elizabeth Schroeder	F	18224557-9	1990-03-08	30 E. 53rd Dr.Brookfield WI 53045	ElizabethSchroeder@gmail.com
743	Bruce Heath	M	15320303-K	1985-01-06	73 Kirkland St.East Elmhurst NY 11369	BruceHeath@gmail.com
744	Bruce Griffin	M	19208274-1	1986-10-20	10 Selby Ave.Belleville NJ 07109	BruceGriffin@gmail.com
745	Castor Hutchinson	M	14769808-2	1998-08-15	22 West Lancaster St.Oak Forest IL 60452	CastorHutchinson@gmail.com
746	Aurelia Sweeney	M	7887837-6	1970-09-28	26 Thompson St.Portage IN 46368	AureliaSweeney@gmail.com
747	Brianna Heath	M	15997665-1	1982-11-02	385 Lees Creek St.Rock Hill SC 29730	BriannaHeath@gmail.com
748	Nadine Molina	F	11872306-2	1979-10-09	85 North Mayflower LaneElk River MN 55330	NadineMolina@gmail.com
749	Aurelia Gonzalez	F	6043028-1	1967-06-29	7621 Cross St.Ypsilanti MI 48197	AureliaGonzalez@gmail.com
750	Melinda Wagner	M	18008375-7	1997-01-03	7284 Eagle RoadClarksburg WV 26301	MelindaWagner@gmail.com
751	Aurelia Gonzalez	M	16955240-7	1983-01-31	301 W. Riverview Ave.Westwood NJ 07675	AureliaGonzalez@gmail.com
752	Castor Hull	F	7568325-K	1966-11-07	97 Tower St.Pittsfield MA 01201	CastorHull@gmail.com
753	Jesse Bernard	M	9035970-K	1980-07-18	221 Lakewood St.Fremont OH 43420	JesseBernard@gmail.com
754	Alfonso Pollard	F	12421690-K	1972-03-26	834 Tailwater StreetTaylors SC 29687	AlfonsoPollard@gmail.com
755	Lysandra Parker	M	8032195-3	1976-06-14	778 Proctor StreetRaeford NC 28376	LysandraParker@gmail.com
756	Josephine Baldwin	M	16290087-K	1995-03-05	7293 Wall Dr.Lakewood NJ 08701	JosephineBaldwin@gmail.com
757	Melinda Whitehead	F	7985527-0	1967-03-09	715 Henry Smith LaneThibodaux LA 70301	MelindaWhitehead@gmail.com
758	Jackson Finch	F	16538413-5	1984-09-10	597 Mammoth St.Matawan NJ 07747	JacksonFinch@gmail.com
759	Jackson Monroe	M	8602813-3	1972-03-03	799 Center StreetChaska MN 55318	JacksonMonroe@gmail.com
760	Mason Farrell	M	7358671-K	1966-12-08	482 Bishop CirclePeabody MA 01960	MasonFarrell@gmail.com
761	Austin Gregory	F	16601260-K	1991-09-12	201 Hickory St.Aliquippa PA 15001	AustinGregory@gmail.com
762	Arthur Hinton	F	6060465-8	1968-07-29	948 Cambridge StreetMount Vernon NY 10550	ArthurHinton@gmail.com
763	Kaseem Rivers	F	15070874-K	1984-11-24	1 Bank AvenueNeenah WI 54956	KaseemRivers@gmail.com
764	Jerome Finley	M	10178400-1	1973-05-05	84 Arnold Ave.Greenville NC 27834	JeromeFinley@gmail.com
765	Alfonso Hull	F	7856894-K	1969-08-14	94 Harvey AvenueBurlington MA 01803	AlfonsoHull@gmail.com
766	Ulric Lindsay	F	7520929-K	1968-10-02	661 San Juan St.Centreville VA 20120	UlricLindsay@gmail.com
767	Bruce Decker	F	19228094-K	1996-11-09	375 Church St.Rocklin CA 95677	BruceDecker@gmail.com
768	Uriel Owen	F	7467990-K	1960-11-13	91 Shady DriveNew Britain CT 06051	UrielOwen@gmail.com
769	Dennis Brooks	M	15609650-7	1988-10-01	68 Virginia StreetLawrenceville GA 30043	DennisBrooks@gmail.com
770	Sebastian Rivers	F	7226997-6	1961-09-09	926 North Redwood Dr.Morgantown WV 26508	SebastianRivers@gmail.com
771	Melinda Gardner	F	14460514-K	1981-12-10	8335 Van Dyke Rd.Union City NJ 07087	MelindaGardner@gmail.com
772	Connor Dillon	M	10990490-K	1973-04-08	404 Riverside StreetDerry NH 03038	ConnorDillon@gmail.com
773	Dante Colon	M	6557055-K	1964-02-27	55 Carriage DriveWatertown MA 02472	DanteColon@gmail.com
774	Brenden George	M	9554570-5	1973-08-20	535 Talbot St.Sebastian FL 32958	BrendenGeorge@gmail.com
775	Dennis Kent	F	10020461-K	1973-05-02	939 West Cottage AvenueSouthampton PA 18966	DennisKent@gmail.com
776	Zephania Cain	F	12674738-K	1980-07-06	349 Hartford Dr.Tullahoma TN 37388	ZephaniaCain@gmail.com
777	Oprah Hull	F	12513293-K	1971-09-25	292 Pheasant St.Wake Forest NC 27587	OprahHull@gmail.com
778	Stephanie Hoover	F	6601777-K	1966-06-25	976 River Dr.Indianapolis IN 46201	StephanieHoover@gmail.com
779	Kerry Palmer	M	19699999-K	1996-11-28	84 Glendale DriveLa Porte IN 46350	KerryPalmer@gmail.com
780	Aurelia Gregory	F	13738642-K	1987-07-07	7509 Piper StreetAuburndale FL 33823	AureliaGregory@gmail.com
781	Sharon Griffin	M	19074326-K	1988-09-26	48 Indian Summer LaneMonsey NY 10952	SharonGriffin@gmail.com
782	Patience Farrell	F	17227133-6	1995-11-14	8257 Vernon CourtSaint Louis MO 63109	PatienceFarrell@gmail.com
783	Ina Scott	F	6189084-5	1963-11-02	267 Willow St.Far Rockaway NY 11691	InaScott@gmail.com
784	Elizabeth Velez	F	17954602-K	1987-03-22	807 Monroe Ave.Smithtown NY 11787	ElizabethVelez@gmail.com
785	Clayton Grimes	M	19185221-8	1998-04-19	158 East Miles LaneElkhart IN 46514	ClaytonGrimes@gmail.com
786	Uriel Monroe	M	12410822-K	1973-07-03	715 Pineknoll LaneWinston Salem NC 27103	UrielMonroe@gmail.com
787	Zephania Mcgee	M	8930584-9	1973-09-20	9352 North Glen Ridge Rd.Ronkonkoma NY 11779	ZephaniaMcgee@gmail.com
788	Sylvester Knapp	M	19765844-2	1988-04-21	47 Church St.Alpharetta GA 30004	SylvesterKnapp@gmail.com
789	Josiah Cain	F	15637968-K	1991-07-07	302 Pulaski CourtDekalb IL 60115	JosiahCain@gmail.com
790	Belle Hansen	M	14436268-8	1995-06-07	13 Brook St.Acworth GA 30101	BelleHansen@gmail.com
791	Alfonso Rivers	M	6447123-K	1968-06-24	9322 Sunset DriveCanton GA 30114	AlfonsoRivers@gmail.com
792	Oprah Higgins	M	14353231-3	1985-09-25	63 Pearl Dr.Evansville IN 47711	OprahHiggins@gmail.com
793	Felicia Mcgee	F	14305289-K	1983-10-24	5 St Margarets Ave.Carmel NY 10512	FeliciaMcgee@gmail.com
794	Preston Sweeney	F	13816859-8	1993-08-14	25 Fremont StreetSan Jose CA 95127	PrestonSweeney@gmail.com
795	Kaseem Gonzalez	M	8409793-4	1979-12-19	97B West Bishop StreetOak Creek WI 53154	KaseemGonzalez@gmail.com
796	Kaseem Walters	M	6325992-0	1969-06-13	301 W. Riverview Ave.Westwood NJ 07675	KaseemWalters@gmail.com
797	Zephania Booth	M	6929462-K	1967-02-11	24 Morris Ave.Waldorf MD 20601	ZephaniaBooth@gmail.com
798	Patience Abbott	M	17590886-2	1998-12-13	7738 Old Blackburn LaneLoxahatchee FL 33470	PatienceAbbott@gmail.com
799	Andrew Fuller	M	12743629-8	1973-01-19	54 Golden Star StreetColorado Springs CO 80911	AndrewFuller@gmail.com
800	Wyatt Wagner	M	14566440-K	1984-07-26	9 Green Lake Ave.Sacramento CA 95820	WyattWagner@gmail.com
801	Ulric Rivers	F	8402337-K	1978-04-25	126 Inverness St.Wilkes Barre PA 18702	UlricRivers@gmail.com
802	Nadine Sears	M	19740681-K	1982-07-27	91 Orange AvenueNew Brunswick NJ 08901	NadineSears@gmail.com
803	Bruce Craig	F	15920995-7	1991-01-11	99 Shub Farm CourtDe Pere WI 54115	BruceCraig@gmail.com
804	Alfonso Lindsay	M	7990371-3	1965-01-23	95 Boston St.Windermere FL 34786	AlfonsoLindsay@gmail.com
805	Jackson Dillon	F	13683102-K	1992-11-21	9225 Addison Rd.Phoenix AZ 85021	JacksonDillon@gmail.com
806	Jocelyn Scott	F	13814233-K	1995-06-12	671 Plymouth StreetCocoa FL 32927	JocelynScott@gmail.com
807	Uriel Blake	F	10771164-K	1971-08-27	721 Miles Ave.Santa Monica CA 90403	UrielBlake@gmail.com
808	Bernard Dillon	F	19145302-K	1988-02-06	340 W. King DrivePort Washington NY 11050	BernardDillon@gmail.com
809	Imani Howard	F	7106975-K	1965-11-22	4 NE. Joy Ridge LaneHigh Point NC 27265	ImaniHoward@gmail.com
810	Jerome Saunders	F	18875828-9	1997-01-01	224 East Williams RoadSaugus MA 01906	JeromeSaunders@gmail.com
811	Howard Finley	M	11070606-K	1979-01-10	7920 Lilac StreetBrandon FL 33510	HowardFinley@gmail.com
812	Bruce Kent	M	13478618-0	1981-03-22	721 Trout Dr.Marshalltown IA 50158	BruceKent@gmail.com
813	Sage Brewer	F	9536399-4	1977-06-14	588 Westport LanePetersburg VA 23803	SageBrewer@gmail.com
814	Germaine Saunders	F	8075903-4	1977-04-06	329 Santa Clara CourtSchenectady NY 12302	GermaineSaunders@gmail.com
815	Bertha Hinton	F	7194666-8	1964-12-24	636 Shipley St.Yorktown Heights NY 10598	BerthaHinton@gmail.com
816	Imani Mcgee	M	15453438-K	1995-10-15	8719 Summer StreetRosedale NY 11422	ImaniMcgee@gmail.com
817	Zephania Howard	M	16331963-1	1996-02-19	4 S. Mulberry StreetMaryville TN 37803	ZephaniaHoward@gmail.com
818	Mannix Fuller	F	6695701-K	1966-04-26	385 Lees Creek St.Rock Hill SC 29730	MannixFuller@gmail.com
819	Camilla Justice	M	7633037-K	1961-02-02	8308 Queen CourtSuperior WI 54880	CamillaJustice@gmail.com
820	Josiah Blake	M	16609292-K	1991-05-24	74 Green AvenueAltamonte Springs FL 32714	JosiahBlake@gmail.com
821	Bernard Heath	F	6633025-1	1965-01-15	21 Talbot St.Wantagh NY 11793	BernardHeath@gmail.com
822	Amber Sweeney	F	17569770-K	1996-09-08	671 Plymouth StreetCocoa FL 32927	AmberSweeney@gmail.com
823	Jerome Gonzalez	F	18685655-K	1994-05-22	9881 Stillwater St.Fayetteville NC 28303	JeromeGonzalez@gmail.com
824	Baker Knapp	F	17421734-0	1992-01-04	2 S. Clark St.Bethpage NY 11714	BakerKnapp@gmail.com
825	Dante Bernard	M	17971003-K	1982-07-22	385 Devonshire StreetRavenna OH 44266	DanteBernard@gmail.com
826	Kimberly Hoover	F	14587968-2	1982-08-18	946 Hillcrest Ave.Mason OH 45040	KimberlyHoover@gmail.com
827	Thaddeus Scott	F	12751860-K	1979-05-12	9033 Fawn DriveIndian Trail NC 28079	ThaddeusScott@gmail.com
828	Joan Baldwin	M	16569933-K	1984-06-08	7450 Walt Whitman St.Royal Oak MI 48067	JoanBaldwin@gmail.com
829	Caleb Howard	M	17915067-6	1997-01-17	867 Whitemarsh StreetSoddy Daisy TN 37379	CalebHoward@gmail.com
830	Bruce Wooten	F	8286255-K	1972-11-06	807 Monroe Ave.Smithtown NY 11787	BruceWooten@gmail.com
831	Kimberly Hutchinson	M	16135267-K	1987-05-20	972 E. Park LaneMount Prospect IL 60056	KimberlyHutchinson@gmail.com
832	Raja Higgins	F	17168919-K	1990-01-05	992 Greystone StreetRosemount MN 55068	RajaHiggins@gmail.com
833	Alfonso Mcdowell	F	6362692-9	1968-11-28	530 North Thompson St.Bethel Park PA 15102	AlfonsoMcdowell@gmail.com
834	Oprah Monroe	M	15365045-K	1983-06-22	271 Myrtle Ave.Spring Hill FL 34608	OprahMonroe@gmail.com
835	Josiah Mcdowell	M	19857246-K	1982-07-26	45 West Wentworth StreetNorman OK 73072	JosiahMcdowell@gmail.com
836	Sebastian Garza	M	19023305-3	1981-12-09	28 Sleepy Hollow StreetNorristown PA 19401	SebastianGarza@gmail.com
837	Aurelia Parker	F	7921194-3	1961-06-17	68 Maple St.Massillon OH 44646	AureliaParker@gmail.com
838	Connor Rivera	F	19885171-2	1983-02-27	887 W. Bay St.Jackson NJ 08527	ConnorRivera@gmail.com
839	Sarah Davenport	M	16602872-4	1994-02-12	400 Ketch Harbour St.Allison Park PA 15101	SarahDavenport@gmail.com
840	Mason Colon	F	15057983-K	1998-07-14	8721 Crescent St.Naples FL 34116	MasonColon@gmail.com
841	Rose Alford	F	18720525-K	1994-04-15	28 Sleepy Hollow StreetNorristown PA 19401	RoseAlford@gmail.com
842	Arthur Love	F	14421062-9	1988-12-30	535 Talbot St.Sebastian FL 32958	ArthurLove@gmail.com
843	Shaine Owen	F	12742355-1	1976-08-26	18 Wood St.Amarillo TX 79106	ShaineOwen@gmail.com
844	Elmo Walters	M	18191723-K	1991-07-02	7592 Berkshire Rd.Selden NY 11784	ElmoWalters@gmail.com
845	Giacomo Walters	M	15762644-K	1991-02-06	9316 Cambridge St.Westlake OH 44145	GiacomoWalters@gmail.com
846	Austin Sears	F	16953800-2	1997-01-03	301 W. Riverview Ave.Westwood NJ 07675	AustinSears@gmail.com
847	Preston Molina	M	14676638-9	1982-05-10	23 Anderson StreetWillingboro NJ 08046	PrestonMolina@gmail.com
848	Sarah Wooten	M	6637021-9	1963-07-07	254 Amerige St.Bayonne NJ 07002	SarahWooten@gmail.com
849	Josiah Stewart	F	8480914-0	1973-03-01	5 Canal St.Snellville GA 30039	JosiahStewart@gmail.com
850	Dante Foreman	M	6354020-1	1961-03-02	4 West 1st LaneLittleton CO 80123	DanteForeman@gmail.com
851	Kirk Patrick	M	16638545-K	1984-02-10	71 Holly StreetBurnsville MN 55337	KirkPatrick@gmail.com
852	Kimberly Stewart	F	19446470-K	1987-04-30	62 10th StreetNorth Brunswick NJ 08902	KimberlyStewart@gmail.com
853	Timothy Gonzalez	M	17713151-2	1997-11-28	291 Princess RoadDowners Grove IL 60515	TimothyGonzalez@gmail.com
854	Wyatt Wagner	M	13973776-K	1985-08-06	8165 South DriveLa Crosse WI 54601	WyattWagner@gmail.com
855	Elizabeth Sharpe	F	8665961-K	1971-03-29	13 Wagon CourtGlenside PA 19038	ElizabethSharpe@gmail.com
856	Camilla Rowe	M	6023630-K	1967-03-02	354 Shirley LaneCedar Rapids IA 52402	CamillaRowe@gmail.com
857	Dante Mckay	F	11252053-6	1975-10-20	74 Cypress Dr.Chippewa Falls WI 54729	DanteMckay@gmail.com
858	Camilla Garcia	F	7843536-6	1966-03-26	7538 West Iroquois Ave.Howell NJ 07731	CamillaGarcia@gmail.com
859	Fulton Graves	M	11417073-4	1976-02-14	18 Wood St.Amarillo TX 79106	FultonGraves@gmail.com
860	Connor Frye	F	15352739-7	1994-09-01	53 Armstrong St.Clinton MD 20735	ConnorFrye@gmail.com
861	Bernard Frost	F	17933222-K	1981-10-29	8587 Sage LaneRichmond Hill NY 11418	BernardFrost@gmail.com
862	Bertha Mcgee	F	11786811-K	1980-03-13	54 Cypress CircleNicholasville KY 40356	BerthaMcgee@gmail.com
863	Sylvester Howard	F	7158974-8	1965-05-15	6 Halifax Ave.Mount Pleasant SC 29464	SylvesterHoward@gmail.com
864	Josiah Saunders	M	7137974-K	1961-01-17	9769 Cardinal StreetNewark NJ 07103	JosiahSaunders@gmail.com
865	Raja Higgins	F	10870717-2	1972-06-30	2 Snake Hill StreetTitusville FL 32780	RajaHiggins@gmail.com
866	Lars Love	M	15576087-K	1994-11-18	8991 Longfellow StreetMaspeth NY 11378	LarsLove@gmail.com
867	Benjamin Estrada	M	6346044-K	1968-05-31	863 Albany StreetDawsonville GA 30534	BenjaminEstrada@gmail.com
868	Lars Hutchinson	M	13102609-5	1986-10-30	9580 Charles St.Phoenixville PA 19460	LarsHutchinson@gmail.com
869	Ina Dillon	M	6996832-8	1962-06-05	728 Franklin DriveHarleysville PA 19438	InaDillon@gmail.com
870	Wyatt Blake	M	7484383-K	1966-01-05	866 Locust Ave.Port Chester NY 10573	WyattBlake@gmail.com
871	Stephanie Riddle	F	19284033-K	1994-01-01	10 South Armstrong DriveVirginia Beach VA 23451	StephanieRiddle@gmail.com
872	Josephine Colon	M	8996295-1	1976-04-20	927 E. Paris Hill StreetNewton NJ 07860	JosephineColon@gmail.com
873	Fulton Bullock	M	16471074-8	1981-03-29	9673 Woodsman St.East Meadow NY 11554	FultonBullock@gmail.com
874	Rose Vega	M	14956254-5	1990-10-13	33 Beaver Ridge StreetHoboken NJ 07030	RoseVega@gmail.com
875	Kaseem Craft	M	19936262-K	1991-09-24	8671 Forest CourtAustin MN 55912	KaseemCraft@gmail.com
876	Dennis Garza	F	15951780-K	1993-10-16	269 Lancaster St.Dyersburg TN 38024	DennisGarza@gmail.com
877	Mechelle Palmer	M	17335690-K	1985-09-05	205 Westport Ave.Ann Arbor MI 48103	MechellePalmer@gmail.com
878	Germaine Cabrera	M	6164100-K	1964-09-26	550 Canterbury Rd.Mountain View CA 94043	GermaineCabrera@gmail.com
879	Wyatt Thomas	F	18804378-6	1981-04-30	8665 Greenrose St.Franklin MA 02038	WyattThomas@gmail.com
880	Elizabeth Obrien	F	13134357-K	1985-09-29	552 Mill DrivePainesville OH 44077	ElizabethObrien@gmail.com
881	Amber Rivers	F	18750395-K	1997-02-03	1 N. Edgewater CourtUpper Darby PA 19082	AmberRivers@gmail.com
882	Felicia Booth	M	6861840-9	1961-12-29	43 Manhattan StreetRockville Centre NY 11570	FeliciaBooth@gmail.com
883	Holly Day	M	14847907-6	1996-11-02	858 Hilltop Ave.Cranford NJ 07016	HollyDay@gmail.com
884	Elizabeth Rivera	F	19237635-K	1987-11-11	738 Roberts Rd.Bettendorf IA 52722	ElizabethRivera@gmail.com
885	Holly Holt	F	10493455-4	1973-11-06	7 Smoky Hollow St.Southfield MI 48076	HollyHolt@gmail.com
886	Dante Hoover	M	19929612-8	1991-02-14	895 Lakeview St.Pearl MS 39208	DanteHoover@gmail.com
887	Petra Alford	F	6908422-K	1969-12-06	9684 Kirkland Rd.Pensacola FL 32503	PetraAlford@gmail.com
888	Mechelle Whitehead	F	9833438-K	1980-08-27	4 Park AvenueThornton CO 80241	MechelleWhitehead@gmail.com
889	Abbot Day	F	6811123-K	1968-03-11	553 W. Wellington Dr.Reston VA 20191	AbbotDay@gmail.com
890	Drew Gonzalez	M	7972704-0	1966-07-09	778 Proctor StreetRaeford NC 28376	DrewGonzalez@gmail.com
891	Rhea Cleveland	F	16922022-K	1988-11-09	96 Rockland CourtStarkville MS 39759	RheaCleveland@gmail.com
892	Louis Hull	M	7972177-4	1964-07-14	30 Strawberry Ave.Long Branch NJ 07740	LouisHull@gmail.com
893	Jordan Richard	M	15943918-K	1996-11-08	9052 Sage St.Tonawanda NY 14150	JordanRichard@gmail.com
894	Holly Wagner	F	10721212-4	1977-02-23	329 Santa Clara CourtSchenectady NY 12302	HollyWagner@gmail.com
895	Sybill Frost	M	6609949-2	1969-11-23	8170 Tailwater St.Bayside NY 11361	SybillFrost@gmail.com
896	Benjamin Howard	F	15073231-K	1982-06-03	911 N. Columbia LaneLittle Rock AR 72209	BenjaminHoward@gmail.com
897	Elizabeth Pollard	M	14930862-K	1985-09-29	795 2nd St.Gaithersburg MD 20877	ElizabethPollard@gmail.com
898	Kaseem Patrick	F	17387635-K	1984-12-02	682 Church Rd.West Lafayette IN 47906	KaseemPatrick@gmail.com
899	Debra Monroe	F	8200336-K	1977-08-28	8454 Pumpkin Hill Ave.Royersford PA 19468	DebraMonroe@gmail.com
900	Lysandra Wagner	M	12638472-3	1979-02-23	7188 Hill St.La Vergne TN 37086	LysandraWagner@gmail.com
901	Devin Fuller	M	7521179-K	1965-12-22	9020 Coffee Dr.Farmington MI 48331	DevinFuller@gmail.com
902	Candice Decker	M	9778323-2	1974-12-06	828 Charles Ave.Ashtabula OH 44004	CandiceDecker@gmail.com
903	Belle Cleveland	M	16368600-7	1993-11-11	25 Leeton Ridge St.Odenton MD 21113	BelleCleveland@gmail.com
904	Stephanie Heath	F	11637278-9	1979-12-27	252 Airport RoadBurke VA 22015	StephanieHeath@gmail.com
905	Patience Sharpe	F	6536826-8	1966-11-20	45 Peninsula StreetIthaca NY 14850	PatienceSharpe@gmail.com
906	Bertha Donaldson	F	13425769-8	1993-02-25	79 Alderwood StreetDothan AL 36301	BerthaDonaldson@gmail.com
907	Stephanie Molina	F	6092669-K	1964-11-17	850 Glenholme AvenuePrattville AL 36067	StephanieMolina@gmail.com
908	Sebastian Decker	F	6094508-9	1962-09-26	458 Eagle RoadWilloughby OH 44094	SebastianDecker@gmail.com
909	Dennis Hardin	M	11921208-K	1974-03-23	12 Hillcrest LaneDearborn Heights MI 48127	DennisHardin@gmail.com
910	Sybill Davenport	F	7440756-K	1969-06-10	9731 S. White RoadMerrimack NH 03054	SybillDavenport@gmail.com
911	Sylvester Booker	F	7331627-K	1960-04-26	21 Studebaker St.Lake Worth FL 33460	SylvesterBooker@gmail.com
912	Aurelia Craft	M	7209401-1	1966-01-06	17 Vale St.Danbury CT 06810	AureliaCraft@gmail.com
913	Rhona Thomas	F	12872535-K	1977-02-08	234 Rockcrest Dr.Fairmont WV 26554	RhonaThomas@gmail.com
914	Raja Hansen	F	16508450-0	1985-03-08	1 Illinois Rd.Meriden CT 06450	RajaHansen@gmail.com
915	Armando Owen	M	16823058-0	1994-03-14	27 Mill Dr.Highland Park IL 60035	ArmandoOwen@gmail.com
916	Holly Palmer	F	9832822-K	1976-10-11	63 Pearl Dr.Evansville IN 47711	HollyPalmer@gmail.com
917	Clayton Vega	M	6587142-K	1965-04-13	3 S. Beach Ave.Miami Beach FL 33139	ClaytonVega@gmail.com
918	Hoyt Kent	M	8009356-7	1971-02-16	84 Piper St.Lewiston ME 04240	HoytKent@gmail.com
919	Rhea Mcguire	F	7578230-0	1965-09-01	179 Wall Ave.Bridgeport CT 06606	RheaMcguire@gmail.com
920	Lars Decker	F	15241899-7	1981-07-14	349 Hartford Dr.Tullahoma TN 37388	LarsDecker@gmail.com
921	Preston Blake	M	19012115-K	1998-10-02	517 Fordham St.Wallingford CT 06492	PrestonBlake@gmail.com
922	Dante Gregory	M	8553723-1	1975-12-08	13 Brook St.Acworth GA 30101	DanteGregory@gmail.com
923	Rose Gregory	M	19647729-0	1998-02-26	7345 Brandywine DriveChesterton IN 46304	RoseGregory@gmail.com
924	Sylvester Hutchinson	M	9125053-K	1973-10-31	258 E. Longfellow St.King Of Prussia PA 19406	SylvesterHutchinson@gmail.com
925	Lysandra Craft	M	17669421-K	1989-12-29	7592 Berkshire Rd.Selden NY 11784	LysandraCraft@gmail.com
926	Eliana Hull	M	9325143-K	1979-07-28	66 Sherwood RoadBay City MI 48706	ElianaHull@gmail.com
927	Andrew Rowe	F	14627147-7	1998-05-31	794 Jackson Ave.Loveland OH 45140	AndrewRowe@gmail.com
928	Imani Hinton	F	19651825-4	1981-03-03	53 Rockaway DriveFlorence SC 29501	ImaniHinton@gmail.com
929	Wyatt Dillon	F	11997864-K	1978-04-19	9370 North Snake Hill Ave.Parkville MD 21234	WyattDillon@gmail.com
930	Dante Wooten	M	6097923-9	1962-11-08	17 North Augusta Dr.Port Huron MI 48060	DanteWooten@gmail.com
931	Drew Mcdowell	M	10226266-K	1976-06-23	9770 Big Rock Cove Rd.Saginaw MI 48601	DrewMcdowell@gmail.com
932	Petra Sharpe	F	17897124-5	1993-07-28	981 Foxrun Dr.Rego Park NY 11374	PetraSharpe@gmail.com
933	Graham Gonzalez	M	9697447-9	1974-02-27	456 Westport LaneGarden City NY 11530	GrahamGonzalez@gmail.com
934	Kerry James	F	9280022-K	1977-05-02	7352 East White DriveLansing MI 48910	KerryJames@gmail.com
935	Alfonso Hansen	M	11381804-4	1973-12-11	89 Wrangler LaneCamp Hill PA 17011	AlfonsoHansen@gmail.com
936	Connor Obrien	M	19408073-1	1986-08-17	9 Bradford StreetYuba City CA 95993	ConnorObrien@gmail.com
937	Hoyt Higgins	M	17910651-4	1997-09-15	111 East Taylor St.Cincinnati OH 45211	HoytHiggins@gmail.com
938	Jackson Farrell	F	7002055-K	1967-02-13	790 Trenton CircleBeltsville MD 20705	JacksonFarrell@gmail.com
939	Dennis Hebert	M	15512535-K	1986-02-05	637 Heritage AvenueShakopee MN 55379	DennisHebert@gmail.com
940	Giacomo Kirkland	M	12438598-8	1973-01-28	70 E. Winding Way StreetSun Prairie WI 53590	GiacomoKirkland@gmail.com
941	Rylee Knapp	M	15053523-K	1993-07-25	75 West LaneCoram NY 11727	RyleeKnapp@gmail.com
942	Kibo Whitehead	F	10184519-7	1978-05-09	8766 Hall DriveUniontown PA 15401	KiboWhitehead@gmail.com
943	Candice Hull	M	18928952-3	1993-11-30	8047 Hillcrest St.Rome NY 13440	CandiceHull@gmail.com
944	Germaine Donaldson	M	10064359-K	1976-07-09	16 North Griffin Ave.Battle Creek MI 49015	GermaineDonaldson@gmail.com
945	Drew Velez	M	15500149-K	1990-05-17	146 E. Fairground Ave.Ontario CA 91762	DrewVelez@gmail.com
946	Clark Love	F	12305451-K	1975-11-08	236 Meadowbrook StreetShrewsbury MA 01545	ClarkLove@gmail.com
947	Jesse Hansen	F	11504333-K	1975-01-12	942 Bayberry StreetEssex MD 21221	JesseHansen@gmail.com
948	Jesse Buchanan	F	7585165-0	1962-01-25	75 Belmont LaneHempstead NY 11550	JesseBuchanan@gmail.com
949	Conan Hull	F	7144922-K	1970-10-03	305 Wood Ave.Braintree MA 02184	ConanHull@gmail.com
950	Graham Hinton	M	6792610-9	1960-08-14	248 Grandrose CourtNorth Attleboro MA 02760	GrahamHinton@gmail.com
951	Raja Garcia	F	16005357-K	1983-04-17	8064 Sunbeam DriveMidlothian VA 23112	RajaGarcia@gmail.com
952	Timothy Buchanan	F	6030819-4	1962-02-25	398 Hall LanePeoria IL 61604	TimothyBuchanan@gmail.com
953	Jordan Gonzalez	F	6108716-K	1966-08-30	9 Tanglewood St.Waterloo IA 50701	JordanGonzalez@gmail.com
954	Elmo Farrell	M	10492323-0	1978-07-10	49 Leeton Ridge DriveHolly Springs NC 27540	ElmoFarrell@gmail.com
955	Graham Grimes	F	12513467-K	1975-05-22	8299 High Point RoadMaumee OH 43537	GrahamGrimes@gmail.com
956	Thaddeus Mcguire	M	14756903-1	1987-01-08	1 Hamilton StreetOwensboro KY 42301	ThaddeusMcguire@gmail.com
957	Aurelia Kennedy	M	18522670-K	1997-07-26	7315 Essex St.Poughkeepsie NY 12601	AureliaKennedy@gmail.com
958	Ina Pollard	F	10457377-2	1975-11-03	42 Beech St.San Lorenzo CA 94580	InaPollard@gmail.com
959	Jocelyn Finley	M	6604427-K	1962-08-11	9701 Division CourtEast Northport NY 11731	JocelynFinley@gmail.com
960	Kimberly Bullock	M	15779828-K	1991-10-21	37 Honey Creek Dr.Bardstown KY 40004	KimberlyBullock@gmail.com
961	Ulric Richard	F	14877591-K	1985-03-21	8119 College StreetAltoona PA 16601	UlricRichard@gmail.com
962	Caleb Finch	F	9401086-1	1977-03-24	90 South Fairfield Rd.Clayton NC 27520	CalebFinch@gmail.com
963	Wyatt Schroeder	M	7655057-8	1966-05-08	788 La Sierra Rd.Akron OH 44312	WyattSchroeder@gmail.com
964	Jackson Rivera	M	7996208-6	1964-09-28	97B West Bishop StreetOak Creek WI 53154	JacksonRivera@gmail.com
965	Rhea Colon	F	18298992-9	1996-05-02	71 Pineknoll RoadCoachella CA 92236	RheaColon@gmail.com
966	Mechelle Riddle	M	16995109-3	1986-02-09	675 Annadale St.Apex NC 27502	MechelleRiddle@gmail.com
967	Denise Day	M	6637931-9	1960-12-14	636 Shipley St.Yorktown Heights NY 10598	DeniseDay@gmail.com
968	Jackson Knapp	M	19323047-K	1984-12-07	387 Thompson DriveCalumet City IL 60409	JacksonKnapp@gmail.com
969	Holly Day	M	14469602-K	1993-02-08	160 Ivy St.Lagrange GA 30240	HollyDay@gmail.com
970	Wyatt Obrien	M	16529896-K	1993-10-23	9A Old Rockville Ave.Sewell NJ 08080	WyattObrien@gmail.com
971	Stephanie Patrick	F	8773502-K	1972-05-12	7485 Gonzales DriveLongview TX 75604	StephaniePatrick@gmail.com
972	Castor Walters	M	11924231-K	1975-11-15	600 Rockland DriveElkton MD 21921	CastorWalters@gmail.com
973	Alexander Lindsay	M	18745639-0	1988-11-06	66 Fifth RoadCorona NY 11368	AlexanderLindsay@gmail.com
974	Castor Hull	M	9623556-K	1971-06-17	9052 Sage St.Tonawanda NY 14150	CastorHull@gmail.com
975	Bernard Garza	F	6649944-K	1963-12-18	8665 Greenrose St.Franklin MA 02038	BernardGarza@gmail.com
976	Sarah Tyler	M	6416638-K	1968-07-18	35 E. Oak St.Norcross GA 30092	SarahTyler@gmail.com
977	Rhea Foreman	M	18954106-2	1986-12-31	858 Hilltop Ave.Cranford NJ 07016	RheaForeman@gmail.com
978	Bertha Alford	M	7729904-K	1960-03-27	81 Whitemarsh Ave.Murfreesboro TN 37128	BerthaAlford@gmail.com
979	Sebastian Alford	F	17467663-K	1998-03-21	421 Strawberry DriveMount Laurel NJ 08054	SebastianAlford@gmail.com
980	Baker Finch	F	6969014-3	1968-08-03	48 Mayflower StreetEverett MA 02149	BakerFinch@gmail.com
981	Louis Thomas	F	7614619-K	1962-08-08	66 Old York St.Adrian MI 49221	LouisThomas@gmail.com
982	Jackson Decker	F	9584234-K	1971-02-02	8449 Pheasant StreetNew York NY 10002	JacksonDecker@gmail.com
983	Rose Kennedy	F	10744622-K	1978-05-31	9 Cross CircleAthens GA 30605	RoseKennedy@gmail.com
984	Lars Saunders	F	16339046-K	1990-11-19	476 Dunbar StreetHightstown NJ 08520	LarsSaunders@gmail.com
985	Hoyt Thomas	M	16556222-2	1991-07-03	7822 Prospect StreetSouth Plainfield NJ 07080	HoytThomas@gmail.com
986	Connor Finch	M	13744717-K	1993-06-09	7807 Swanson St.New Orleans LA 70115	ConnorFinch@gmail.com
987	Dennis Mckay	M	7763030-5	1960-04-10	847 Marshall St.Dedham MA 02026	DennisMckay@gmail.com
988	Debra Velez	M	7899462-5	1964-01-02	177 NW. Roosevelt St.Doylestown PA 18901	DebraVelez@gmail.com
989	Graham Tillman	F	13964985-K	1993-05-31	40 West Tallwood LaneGarfield NJ 07026	GrahamTillman@gmail.com
990	Baker Sweeney	F	18689141-K	1984-03-01	29 Oxford StreetLorton VA 22079	BakerSweeney@gmail.com
991	Jerome Sears	F	16496158-K	1987-09-14	7814 Heritage StreetCollierville TN 38017	JeromeSears@gmail.com
992	Aline Scott	M	12379362-K	1972-07-09	65 Acacia St.Whitehall PA 18052	AlineScott@gmail.com
993	Jackson Rowe	M	15662002-9	1997-11-23	98 Military LaneFredericksburg VA 22405	JacksonRowe@gmail.com
994	Melinda Farrell	F	16288135-2	1991-06-25	593 Sherwood RoadCambridge MA 02138	MelindaFarrell@gmail.com
995	Kirk Estrada	F	7906488-4	1968-11-24	1 Heather AvenueAnnapolis MD 21401	KirkEstrada@gmail.com
996	Candice Dillon	M	7328315-0	1964-04-18	9445 Vermont Rd.Kenosha WI 53140	CandiceDillon@gmail.com
997	Melinda Molina	M	6440586-1	1963-02-26	547 Fairway St.Chicopee MA 01020	MelindaMolina@gmail.com
998	Rylee Hinton	F	11281573-K	1978-05-31	89 Wrangler LaneCamp Hill PA 17011	RyleeHinton@gmail.com
999	Josephine Sharpe	F	14482100-K	1987-04-29	7439 Canterbury LaneLancaster NY 14086	JosephineSharpe@gmail.com
1000	Debra Higgins	M	14263832-5	1993-07-20	8409 Durham St.Tuckerton NJ 08087	DebraHiggins@gmail.com
1001	Kaseem Foreman	M	7119853-K	1967-03-28	9033 Fawn DriveIndian Trail NC 28079	KaseemForeman@gmail.com
1002	Lysandra Scott	F	17351855-0	1998-06-01	881 4th Dr.Williamstown NJ 08094	LysandraScott@gmail.com
1003	Ina Hutchinson	M	14727032-2	1986-02-13	55 Homewood LaneNorth Augusta SC 29841	InaHutchinson@gmail.com
1004	Caleb Kirkland	M	13663069-4	1991-11-23	552 Mill DrivePainesville OH 44077	CalebKirkland@gmail.com
1005	Josiah Knapp	M	16665040-K	1995-05-09	6 Randall Mill AvenueNatchez MS 39120	JosiahKnapp@gmail.com
1006	Josephine Knapp	F	6872295-2	1960-01-02	91 Airport Rd.Carlisle PA 17013	JosephineKnapp@gmail.com
1007	Zephania Thomas	M	7695316-7	1964-01-25	391 University Dr.Oxnard CA 93035	ZephaniaThomas@gmail.com
1008	Kerry Daniel	M	19510100-K	1998-06-15	9588 Riverside St.Clifton Park NY 12065	KerryDaniel@gmail.com
1009	Jarrod Molina	F	15381884-9	1988-10-03	16 Lakewood St.Milford MA 01757	JarrodMolina@gmail.com
1010	Holly Craig	F	13502529-2	1983-12-02	454 Rose RoadFort Lauderdale FL 33308	HollyCraig@gmail.com
1011	Clare Pollard	M	15882135-0	1994-03-01	482 Bishop CirclePeabody MA 01960	ClarePollard@gmail.com
1012	Eliana Frost	M	13008942-5	1988-12-18	593 Sherwood RoadCambridge MA 02138	ElianaFrost@gmail.com
1013	Nadine Saunders	F	19868088-K	1985-08-01	7814 Heritage StreetCollierville TN 38017	NadineSaunders@gmail.com
1014	Giacomo Mckay	M	8142305-K	1976-07-06	342 Edgewater Rd.Chapel Hill NC 27516	GiacomoMckay@gmail.com
1015	Josephine Wagner	M	13851456-1	1995-10-10	258 E. Longfellow St.King Of Prussia PA 19406	JosephineWagner@gmail.com
1016	Jocelyn Frye	M	19160243-K	1990-08-23	160 Carson StreetHoward Beach NY 11414	JocelynFrye@gmail.com
1017	Dennis Tillman	F	14445130-K	1990-01-29	851 Hillcrest Ave.Toledo OH 43612	DennisTillman@gmail.com
1018	Caleb Garza	M	19935159-1	1981-06-26	54 Cypress CircleNicholasville KY 40356	CalebGarza@gmail.com
1019	Elmo Patrick	M	15865218-K	1992-01-28	9573 Amerige St.Knoxville TN 37918	ElmoPatrick@gmail.com
1020	Mannix Booth	F	19695036-2	1986-09-21	468 Walt Whitman St.Stamford CT 06902	MannixBooth@gmail.com
1021	Caleb Molina	F	11181088-7	1980-12-14	45 Kirkland St.Smyrna GA 30080	CalebMolina@gmail.com
1022	Jesse Kennedy	F	19036251-K	1982-04-09	7293 Wall Dr.Lakewood NJ 08701	JesseKennedy@gmail.com
1023	Sharon Baldwin	M	17394452-K	1982-01-03	981 Foxrun Dr.Rego Park NY 11374	SharonBaldwin@gmail.com
1024	Wyatt Cabrera	F	16949902-K	1989-06-30	599 Fremont Ave.Groton CT 06340	WyattCabrera@gmail.com
1025	Graham Booth	M	8980710-K	1974-03-21	66 Westminster StreetValrico FL 33594	GrahamBooth@gmail.com
1026	Thaddeus Heath	M	15780553-K	1991-07-09	61 Hudson St.Winter Garden FL 34787	ThaddeusHeath@gmail.com
1027	Kimberly Nielsen	M	10130106-3	1978-07-18	247 Berkshire St.Melrose MA 02176	KimberlyNielsen@gmail.com
1028	Ulric Garza	F	17910637-1	1990-02-09	85 Sussex DriveJonesborough TN 37659	UlricGarza@gmail.com
1029	Zephania Day	M	16697333-K	1990-05-27	751 Valley Farms St.Charleston SC 29406	ZephaniaDay@gmail.com
1030	Alexander Garza	M	10472937-8	1975-01-09	358 Acacia Rd.Kennesaw GA 30144	AlexanderGarza@gmail.com
1031	Thaddeus Kent	M	8424020-8	1980-01-07	42 Laurel DriveOrland Park IL 60462	ThaddeusKent@gmail.com
1032	Castor Mcguire	M	10947243-K	1980-09-08	7037 Oklahoma Ave.Voorhees NJ 08043	CastorMcguire@gmail.com
1033	Lysandra Frye	F	12137081-K	1972-12-30	29 Winchester Rd.Oceanside NY 11572	LysandraFrye@gmail.com
1034	Sylvester Gardner	F	7717590-K	1963-11-09	7807 Swanson St.New Orleans LA 70115	SylvesterGardner@gmail.com
1035	Bruce Elliott	F	6079237-K	1962-05-20	421 North Thatcher Rd.Rolling Meadows IL 60008	BruceElliott@gmail.com
1036	Castor Donaldson	M	16432447-0	1989-08-03	91 Tailwater St.Henrico VA 23228	CastorDonaldson@gmail.com
1037	Rylee Alford	M	15269766-K	1986-10-22	9864 Amherst StreetMyrtle Beach SC 29577	RyleeAlford@gmail.com
1038	Cairo Craig	F	18248315-K	1984-08-30	762 Aspen St.Kissimmee FL 34741	CairoCraig@gmail.com
1039	Mechelle Hardin	M	15085965-5	1982-09-22	269 Lancaster St.Dyersburg TN 38024	MechelleHardin@gmail.com
1040	Petra Heath	F	11049985-K	1976-06-15	9084 Glen Ridge LaneLargo FL 33771	PetraHeath@gmail.com
1041	Elizabeth Stewart	M	6702519-7	1965-05-26	7986 Homestead Ave.Temple Hills MD 20748	ElizabethStewart@gmail.com
1042	Conan George	F	10661663-K	1979-10-14	9521 N. Madison RoadBasking Ridge NJ 07920	ConanGeorge@gmail.com
1043	Bernard Kennedy	F	7430071-7	1961-07-26	795 2nd St.Gaithersburg MD 20877	BernardKennedy@gmail.com
1044	Thaddeus Saunders	F	7237875-K	1969-08-29	437 N. Rocky River Dr.Racine WI 53402	ThaddeusSaunders@gmail.com
1045	Jackson Griffin	M	16187226-5	1989-11-26	991 Madison StreetBridgeton NJ 08302	JacksonGriffin@gmail.com
1046	Benjamin Wooten	M	14790243-6	1996-04-23	125 Leeton Ridge RoadAnnandale VA 22003	BenjaminWooten@gmail.com
1047	Lars Palmer	F	12721706-K	1974-05-13	899 Golf St.North Olmsted OH 44070	LarsPalmer@gmail.com
1048	Seth Hull	F	18820289-K	1992-05-05	9 Lawrence St.Williamsport PA 17701	SethHull@gmail.com
1049	Jackson Frye	M	6775352-K	1963-01-09	92 Old York StreetHighland IN 46322	JacksonFrye@gmail.com
1050	Jordan Molina	F	19309237-K	1989-05-21	499 San Carlos Rd.Horn Lake MS 38637	JordanMolina@gmail.com
1051	Dante Hebert	M	12232695-K	1980-03-23	256 Pine St.Dacula GA 30019	DanteHebert@gmail.com
1052	Elmo Gonzalez	M	12073384-K	1976-05-14	42 Beech St.San Lorenzo CA 94580	ElmoGonzalez@gmail.com
1053	Cairo Griffin	F	8193126-3	1976-04-25	899 Golf St.North Olmsted OH 44070	CairoGriffin@gmail.com
1054	Sybill Pollard	M	10046610-6	1980-09-26	731 Market Dr.Falls Church VA 22041	SybillPollard@gmail.com
1055	Germaine Hansen	F	9949892-7	1973-07-03	14 Linda Dr.Mcallen TX 78501	GermaineHansen@gmail.com
1056	Camilla Nielsen	F	8354148-2	1971-03-22	412 Tallwood RoadNorth Fort Myers FL 33917	CamillaNielsen@gmail.com
1057	Rhona Finch	M	19415386-K	1991-05-23	513 Locust AvenuePhillipsburg NJ 08865	RhonaFinch@gmail.com
1058	Kirk Hutchinson	M	18939749-2	1991-07-04	5 Canal St.Snellville GA 30039	KirkHutchinson@gmail.com
1059	Fulton Griffin	F	10371625-5	1978-02-01	715 Alderwood StreetSumter SC 29150	FultonGriffin@gmail.com
1060	Sharon Sears	M	7849696-K	1964-09-07	202 Glenridge Ave.Prior Lake MN 55372	SharonSears@gmail.com
1061	Rose Hinton	M	13487921-K	1981-09-10	2 S. Big Rock Cove Rd.Grovetown GA 30813	RoseHinton@gmail.com
1062	Rhea Cabrera	F	10047084-K	1974-12-18	90 Pilgrim St.Lakeville MN 55044	RheaCabrera@gmail.com
1063	Debra Rowe	M	14134692-K	1990-02-21	9029 Smith Store Dr.Hampton VA 23666	DebraRowe@gmail.com
1064	Nadine Tyler	M	6662267-3	1963-10-03	57 Shadow Brook DriveLorain OH 44052	NadineTyler@gmail.com
1065	Hoyt Kent	M	9376951-2	1980-09-02	40 Gulf RoadBay Shore NY 11706	HoytKent@gmail.com
1066	Bertha Mcguire	F	6346570-2	1964-02-29	5 Windfall StreetFort Dodge IA 50501	BerthaMcguire@gmail.com
1067	Clayton Pollard	F	12310593-7	1975-08-19	562 Princess St.West Roxbury MA 02132	ClaytonPollard@gmail.com
1068	Sage Blake	M	19033362-K	1987-10-22	224 East Williams RoadSaugus MA 01906	SageBlake@gmail.com
1069	Howard Lindsay	M	9527076-K	1972-01-04	715 Pineknoll LaneWinston Salem NC 27103	HowardLindsay@gmail.com
1070	Jocelyn Hinton	M	19417231-1	1998-09-06	976 River Dr.Indianapolis IN 46201	JocelynHinton@gmail.com
1071	Fulton Frye	F	6723690-K	1968-08-11	7 Harrison Dr.Reidsville NC 27320	FultonFrye@gmail.com
1072	Clare Walters	F	19254731-K	1989-05-23	7513 Roberts Dr.Canyon Country CA 91387	ClareWalters@gmail.com
1073	Brenden Hull	M	17925546-1	1998-03-04	7031 Cherry Hill StreetMuncie IN 47302	BrendenHull@gmail.com
1074	Alexander Finley	M	6165883-5	1964-07-29	423 Cypress Ave.Macungie PA 18062	AlexanderFinley@gmail.com
1075	Abbot Colon	M	14807444-K	1983-12-21	205 Westport Ave.Ann Arbor MI 48103	AbbotColon@gmail.com
1076	Brenden Mckay	F	7986370-K	1968-11-23	10 Selby Ave.Belleville NJ 07109	BrendenMckay@gmail.com
1077	Timothy Gardner	F	6211303-K	1964-06-10	7 Sugar DriveThe Villages FL 32162	TimothyGardner@gmail.com
1078	Dennis Kent	F	6240170-1	1969-12-03	895 Lakeview St.Pearl MS 39208	DennisKent@gmail.com
1079	Paki Walters	F	13573006-K	1994-03-05	99 3rd Dr.Patchogue NY 11772	PakiWalters@gmail.com
1080	Jocelyn Grimes	M	7937491-2	1964-06-03	251 Rockville Ave.Alexandria VA 22304	JocelynGrimes@gmail.com
1081	Kerry Kent	M	14391289-K	1990-08-07	361 Wrangler Ave.Massapequa Park NY 11762	KerryKent@gmail.com
1082	Drew Hinton	F	17012764-3	1993-03-05	1 Plumb Branch StreetHillsborough NJ 08844	DrewHinton@gmail.com
1083	Clark Pollard	F	15362941-K	1992-12-20	981 Foxrun Dr.Rego Park NY 11374	ClarkPollard@gmail.com
1084	Joan Nielsen	F	15809871-1	1984-04-27	8523 Academy St.Sidney OH 45365	JoanNielsen@gmail.com
1085	Josiah Frye	F	17915824-6	1995-11-22	8301 Middle River Ave.South El Monte CA 91733	JosiahFrye@gmail.com
1086	Louis Brewer	F	13089883-9	1994-02-28	7986 NW. Depot LaneParsippany NJ 07054	LouisBrewer@gmail.com
1087	Holly Foreman	F	17203780-1	1993-01-21	460 Blackburn RoadNewnan GA 30263	HollyForeman@gmail.com
1088	Brenden Tillman	F	8851746-3	1978-11-11	67 High Noon Dr.Somerset NJ 08873	BrendenTillman@gmail.com
1089	Jocelyn Holt	M	10274038-0	1978-07-03	9701 Division CourtEast Northport NY 11731	JocelynHolt@gmail.com
1090	Stephanie Cleveland	F	14213027-0	1991-05-16	553 Cedar StreetBrentwood NY 11717	StephanieCleveland@gmail.com
1091	Conan Donaldson	F	6358102-4	1961-12-04	434 Brandywine St.Lansdowne PA 19050	ConanDonaldson@gmail.com
1092	Debra Finley	F	9852024-5	1975-08-23	26 Thompson St.Portage IN 46368	DebraFinley@gmail.com
1093	Patience Blake	F	17306504-0	1981-09-18	26 Thompson St.Portage IN 46368	PatienceBlake@gmail.com
1094	Mannix Gonzalez	M	6072314-8	1970-06-17	46 Carriage St.Roswell GA 30075	MannixGonzalez@gmail.com
1095	Shaine Hebert	F	19637436-K	1996-10-27	268 Glendale Ave.Sunnyside NY 11104	ShaineHebert@gmail.com
1096	Seth Blake	F	8987772-K	1973-07-02	599 Fremont Ave.Groton CT 06340	SethBlake@gmail.com
1097	Josiah Kim	M	7756092-4	1967-06-02	8727 East Bowman Rd.Sandusky OH 44870	JosiahKim@gmail.com
1098	Alexander Rivers	M	12561982-K	1978-12-12	9139 Madison RoadGwynn Oak MD 21207	AlexanderRivers@gmail.com
1099	Aline Hull	M	10283505-9	1973-07-13	544 York LaneCentereach NY 11720	AlineHull@gmail.com
1100	Jordan Rivera	F	7412248-2	1969-04-30	7639 Logan AvenueState College PA 16801	JordanRivera@gmail.com
1101	Raja Palmer	F	13109796-3	1982-10-11	98 Newbridge Ave.Leland NC 28451	RajaPalmer@gmail.com
1102	Aline Owen	F	7523743-8	1965-06-17	963 Beaver Ridge LaneInman SC 29349	AlineOwen@gmail.com
1103	Bruce Day	M	19097217-K	1989-08-27	28 King StreetGainesville VA 20155	BruceDay@gmail.com
1104	Josiah Howard	M	13194690-K	1989-12-12	77 Newbridge Dr.East Haven CT 06512	JosiahHoward@gmail.com
1105	Dennis Frye	M	6185952-5	1968-01-18	8332 East Princeton StreetChevy Chase MD 20815	DennisFrye@gmail.com
1106	Josiah Kennedy	F	14712291-K	1985-09-13	7618 Peg Shop CourtWest Babylon NY 11704	JosiahKennedy@gmail.com
1107	Howard Graves	F	7525821-8	1960-06-16	423 Cypress Ave.Macungie PA 18062	HowardGraves@gmail.com
1108	Connor Hull	M	10677055-K	1976-02-28	1 N. Edgewater CourtUpper Darby PA 19082	ConnorHull@gmail.com
1109	Dante Abbott	M	7209899-K	1960-06-16	106 San Juan StreetGlendale Heights IL 60139	DanteAbbott@gmail.com
1110	Melinda Booker	F	11956868-9	1973-12-22	72 Homestead St.Key West FL 33040	MelindaBooker@gmail.com
1111	Hoyt James	F	11347822-K	1979-07-15	946 Hillcrest Ave.Mason OH 45040	HoytJames@gmail.com
1112	Bruce Daniel	F	17844551-K	1982-04-23	97 High Point St.Michigan City IN 46360	BruceDaniel@gmail.com
1113	Timothy Finch	F	16825737-K	1989-05-27	237 Cooper St.Fairhope AL 36532	TimothyFinch@gmail.com
1114	Josiah Richard	M	7546387-2	1963-04-28	5 South Roberts Rd.Worcester MA 01604	JosiahRichard@gmail.com
1115	Susan Finch	F	8627296-1	1980-06-03	1 E. Circle LaneLawrence MA 01841	SusanFinch@gmail.com
1116	Alexander Hardin	M	9931286-1	1972-01-30	9506 Myers StreetMundelein IL 60060	AlexanderHardin@gmail.com
1117	Tanek Heath	F	6099537-6	1961-10-10	7897 E. Water Ave.Suffolk VA 23434	TanekHeath@gmail.com
1118	Aline Thomas	M	13561373-K	1997-11-26	7897 E. Water Ave.Suffolk VA 23434	AlineThomas@gmail.com
1119	Castor Alford	M	12989427-8	1975-11-17	963 Beaver Ridge LaneInman SC 29349	CastorAlford@gmail.com
1120	Hoyt Day	F	13031746-0	1982-06-06	694 Sugar St.Camden NJ 08105	HoytDay@gmail.com
1121	Armando Booth	F	16125213-K	1996-10-11	799 Center StreetChaska MN 55318	ArmandoBooth@gmail.com
1122	Tanek Buchanan	M	18470457-K	1988-03-06	40 Kent RoadDouglasville GA 30134	TanekBuchanan@gmail.com
1123	Jocelyn Foreman	F	10217252-5	1973-10-26	404 Longbranch Ave.Bradenton FL 34203	JocelynForeman@gmail.com
1124	Lysandra Pollard	F	9505725-K	1980-12-29	785 North Goldfield DriveNew Philadelphia OH 44663	LysandraPollard@gmail.com
1125	Mannix Griffin	F	6502869-3	1967-10-04	74 Green AvenueAltamonte Springs FL 32714	MannixGriffin@gmail.com
1126	Candice Alford	F	7528549-7	1961-03-19	75 West LaneCoram NY 11727	CandiceAlford@gmail.com
1127	Sylvester Hinton	F	6739106-2	1966-02-05	68 Rockwell RoadKent OH 44240	SylvesterHinton@gmail.com
1128	Shaine Molina	M	14495504-K	1988-08-06	7835 Spring St.New Bedford MA 02740	ShaineMolina@gmail.com
1129	Dennis Hinton	M	14298785-7	1982-10-12	8352 Oak Meadow StreetNew Lenox IL 60451	DennisHinton@gmail.com
1130	Jarrod Molina	F	10305797-0	1972-01-16	351 Tower St.Hermitage TN 37076	JarrodMolina@gmail.com
1131	Clark Scott	F	13407261-K	1982-08-10	8230 Fieldstone Ave.Germantown MD 20874	ClarkScott@gmail.com
1132	Kibo Howard	M	12746498-K	1980-07-01	756 Edgewater Dr.Grand Rapids MI 49503	KiboHoward@gmail.com
1133	Sebastian Craft	M	7354789-5	1962-05-21	9506 Myers StreetMundelein IL 60060	SebastianCraft@gmail.com
1134	Abbot Grimes	M	17479601-K	1986-06-18	985 Corona CourtOconomowoc WI 53066	AbbotGrimes@gmail.com
1135	Petra Blake	M	6265036-5	1967-11-14	507 Gates St.Des Plaines IL 60016	PetraBlake@gmail.com
1136	Lysandra Brooks	F	9194563-7	1977-03-29	593 Sherwood RoadCambridge MA 02138	LysandraBrooks@gmail.com
1137	Nadine Hull	F	10860669-K	1976-09-04	42 S. Proctor StreetWest Des Moines IA 50265	NadineHull@gmail.com
1138	Jesse Davenport	F	9710799-K	1978-10-21	246 Lower River CourtRichmond VA 23223	JesseDavenport@gmail.com
1139	Rylee Cleveland	F	16184436-0	1989-03-26	24 Wentworth StreetMenasha WI 54952	RyleeCleveland@gmail.com
1140	Sebastian Fuller	F	19254826-K	1985-10-01	7353 Mayflower Rd.Lumberton NC 28358	SebastianFuller@gmail.com
1141	Lysandra Mcgee	M	12878044-K	1972-08-07	978 School StreetShirley NY 11967	LysandraMcgee@gmail.com
1142	Rylee Graves	M	14966529-K	1982-01-03	644 South Riverview St.Ridgewood NJ 07450	RyleeGraves@gmail.com
1143	Mechelle Craig	M	9762360-5	1977-01-27	196 Schoolhouse DriveChamplin MN 55316	MechelleCraig@gmail.com
1144	Conan Booker	M	7898648-K	1968-03-25	9521 N. Madison RoadBasking Ridge NJ 07920	ConanBooker@gmail.com
1145	Arthur Rivers	M	15782874-K	1994-08-29	8846 Manor DriveGettysburg PA 17325	ArthurRivers@gmail.com
1146	Jackson Patrick	F	10568968-K	1971-02-08	637 Chestnut DriveLynnwood WA 98037	JacksonPatrick@gmail.com
1147	Mechelle Bullock	F	10665199-K	1979-07-28	9 Pheasant LaneSilver Spring MD 20901	MechelleBullock@gmail.com
1148	Clayton Craig	F	15783630-K	1988-10-04	70 East Oakland StreetWheeling WV 26003	ClaytonCraig@gmail.com
1149	Mannix Finch	M	6419507-5	1969-10-10	94 Alderwood StreetLindenhurst NY 11757	MannixFinch@gmail.com
1150	Nadine Kim	M	16297580-7	1984-02-28	7697 Cherry LanePlainfield NJ 07060	NadineKim@gmail.com
1151	Jordan Davenport	F	13692135-4	1998-03-01	553 Amerige St.Stroudsburg PA 18360	JordanDavenport@gmail.com
1152	Baker Brooks	F	13772178-4	1985-03-23	8616 East Stillwater St.Neptune NJ 07753	BakerBrooks@gmail.com
1153	Candice Justice	M	14989078-K	1983-07-09	801 Saxon StreetLowell MA 01851	CandiceJustice@gmail.com
1154	Sylvester Higgins	M	8307600-0	1979-10-28	30 Strawberry Ave.Long Branch NJ 07740	SylvesterHiggins@gmail.com
1155	Sylvester Dillon	M	15027262-3	1993-01-13	7462 Green StreetPueblo CO 81001	SylvesterDillon@gmail.com
1156	Arthur Abbott	M	6751169-K	1963-10-13	866 Locust Ave.Port Chester NY 10573	ArthurAbbott@gmail.com
1157	Conan Mcguire	F	17429434-1	1996-04-11	8721 Crescent St.Naples FL 34116	ConanMcguire@gmail.com
1158	Graham Buchanan	M	16563150-K	1991-09-12	96 South Coffee Ave.Ashland OH 44805	GrahamBuchanan@gmail.com
1159	Mason Knapp	M	11000865-2	1977-05-17	36 Peachtree St.Aberdeen SD 57401	MasonKnapp@gmail.com
1160	Wyatt Mcguire	F	6149750-K	1965-01-19	8616 East Stillwater St.Neptune NJ 07753	WyattMcguire@gmail.com
1161	Thaddeus Howard	M	14350401-7	1989-05-09	667 Temple DriveOrchard Park NY 14127	ThaddeusHoward@gmail.com
1162	Debra Bernard	F	10041805-3	1972-04-01	301 W. Riverview Ave.Westwood NJ 07675	DebraBernard@gmail.com
1163	Camilla Frye	F	9354654-1	1980-08-21	271 Pendergast StreetMarlborough MA 01752	CamillaFrye@gmail.com
1164	Oprah Obrien	M	8051884-K	1977-05-22	53 Rockaway DriveFlorence SC 29501	OprahObrien@gmail.com
1165	Germaine Elliott	M	12511055-K	1973-08-03	8416 Jennings Rd.Perkasie PA 18944	GermaineElliott@gmail.com
1166	Brianna Sears	M	6100994-9	1962-12-13	592 East Dunbar RoadMedia PA 19063	BriannaSears@gmail.com
1167	Ulric Cain	M	9256400-K	1971-04-22	90 Pilgrim St.Lakeville MN 55044	UlricCain@gmail.com
1168	Eliana Obrien	F	8838169-5	1975-01-12	8615 William DriveSylvania OH 43560	ElianaObrien@gmail.com
1169	Seth Riddle	F	6089472-7	1961-05-01	781 Creekside StreetGreensboro NC 27405	SethRiddle@gmail.com
1170	Baker Fuller	F	7218766-1	1967-01-17	85 Sunset StreetSnohomish WA 98290	BakerFuller@gmail.com
1171	Ina Kirkland	F	8429393-0	1972-08-20	6 Stonybrook Ave.Roseville MI 48066	InaKirkland@gmail.com
1172	Clare Finch	F	7275971-0	1967-09-22	7919 Race DriveHazleton PA 18201	ClareFinch@gmail.com
1173	Kaseem Gregory	F	17127718-5	1993-08-12	9418 Van Dyke CourtWinder GA 30680	KaseemGregory@gmail.com
1174	Jesse Craig	M	18181331-3	1997-04-30	57 Glenholme Rd.Freehold NJ 07728	JesseCraig@gmail.com
1175	Abbot Decker	M	6877606-1	1965-12-25	544 York LaneCentereach NY 11720	AbbotDecker@gmail.com
1176	Mason Hansen	F	8901711-K	1973-12-15	8172 Manchester Ave.Wilmington MA 01887	MasonHansen@gmail.com
1177	Eliana Booth	F	10780083-K	1972-08-30	32 Delaware St.Oklahoma City OK 73112	ElianaBooth@gmail.com
1178	Cairo Day	F	14334628-K	1989-11-20	9712 South Hudson St.Harvey IL 60426	CairoDay@gmail.com
1179	Sharon James	F	6492335-K	1966-07-04	512 East Ashley StreetPrinceton NJ 08540	SharonJames@gmail.com
1180	Petra Garza	F	16888318-K	1998-01-27	41 Middle River St.Hallandale FL 33009	PetraGarza@gmail.com
1181	Patience Kim	M	7896482-K	1969-01-21	94 Harvey AvenueBurlington MA 01803	PatienceKim@gmail.com
1182	Kerry Holt	M	19261668-2	1992-12-26	715 Alderwood StreetSumter SC 29150	KerryHolt@gmail.com
1183	Josephine Craft	F	7445805-1	1968-03-30	991 Trusel St.Ossining NY 10562	JosephineCraft@gmail.com
1184	Rylee Graves	M	9696501-K	1975-09-04	96 Edgemont StreetRapid City SD 57701	RyleeGraves@gmail.com
1185	Jesse Hull	F	12915722-6	1976-09-06	20 Meadowbrook StreetXenia OH 45385	JesseHull@gmail.com
1186	Bruce Cleveland	F	9261405-1	1976-10-04	7339 Wrangler StreetPleasanton CA 94566	BruceCleveland@gmail.com
1187	Mechelle Craft	F	7284456-K	1964-09-14	8509 Depot St.Greensburg PA 15601	MechelleCraft@gmail.com
1188	Rhea Molina	M	6996077-K	1970-03-16	89 Arnold Rd.Wellington FL 33414	RheaMolina@gmail.com
1189	Dante Daniel	F	6043871-K	1961-06-19	8698 Poor House DriveClover SC 29710	DanteDaniel@gmail.com
1190	Uriel Colon	M	17402067-6	1990-03-21	9867 Roosevelt StreetEnfield CT 06082	UrielColon@gmail.com
1191	Josiah Pollard	M	16686964-0	1990-11-20	193 Fairway LaneSpringfield Gardens NY 11413	JosiahPollard@gmail.com
1192	Alexander Bernard	M	16694580-2	1992-10-10	9557 Oak Ave.Rockledge FL 32955	AlexanderBernard@gmail.com
1193	Alexander Grimes	M	14106100-4	1988-04-27	550 Canterbury Rd.Mountain View CA 94043	AlexanderGrimes@gmail.com
1194	Louis Farrell	M	19199515-3	1990-06-09	7352 East White DriveLansing MI 48910	LouisFarrell@gmail.com
1195	Oprah Walters	M	18034681-K	1998-03-18	120 SE. Buttonwood DriveYuma AZ 85365	OprahWalters@gmail.com
1196	Zephania Holt	F	12973473-9	1976-10-15	20 Meadowbrook StreetXenia OH 45385	ZephaniaHolt@gmail.com
1197	Cairo James	M	6363478-K	1970-04-24	8052 Grand StreetUniondale NY 11553	CairoJames@gmail.com
1198	Caleb Gregory	F	8137700-K	1977-08-07	8569 SE. Pleasant Ave.Lynchburg VA 24502	CalebGregory@gmail.com
1199	Austin Kennedy	M	18761914-1	1996-10-23	795 Tunnel Rd.Chelsea MA 02150	AustinKennedy@gmail.com
1200	Jocelyn Kennedy	F	18934771-0	1997-01-19	991 Madison StreetBridgeton NJ 08302	JocelynKennedy@gmail.com
1201	Bruce Hull	F	18701545-6	1996-03-10	87 Bear Hill St.Nazareth PA 18064	BruceHull@gmail.com
1202	Mason Fuller	M	13521635-9	1983-12-20	125 NW. Studebaker LaneShelton CT 06484	MasonFuller@gmail.com
1203	Joan Finch	F	17629401-7	1986-03-20	991 Madison StreetBridgeton NJ 08302	JoanFinch@gmail.com
1204	Wyatt James	F	6892320-0	1970-07-28	10 South Armstrong DriveVirginia Beach VA 23451	WyattJames@gmail.com
1205	Benjamin Justice	F	8939639-K	1972-05-23	54 Cypress CircleNicholasville KY 40356	BenjaminJustice@gmail.com
1206	Giacomo Colon	M	18210900-K	1982-09-19	456 Westport LaneGarden City NY 11530	GiacomoColon@gmail.com
1207	Caleb Love	M	18072512-9	1982-02-11	55 North Marshall LaneBronx NY 10451	CalebLove@gmail.com
1208	Timothy Alford	M	13248667-K	1992-06-08	52 Spruce St.Pittsford NY 14534	TimothyAlford@gmail.com
1209	Rose Howard	M	15675212-K	1998-12-27	9183 Green Rd.Palm City FL 34990	RoseHoward@gmail.com
1210	Kerry Blake	M	7115932-3	1961-03-31	195 Greystone RoadMartinsville VA 24112	KerryBlake@gmail.com
1211	Alfonso Donaldson	M	14269698-K	1987-06-06	10 Selby Ave.Belleville NJ 07109	AlfonsoDonaldson@gmail.com
1212	Clare Grimes	M	6280747-8	1962-07-06	755 Ryan St.Hendersonville NC 28792	ClareGrimes@gmail.com
1213	Jackson Kirkland	M	19611080-3	1988-05-19	7192 Williams StreetFort Wayne IN 46804	JacksonKirkland@gmail.com
1214	Jocelyn Rivers	M	6730654-K	1963-11-03	350 West Bayberry StreetSanta Cruz CA 95060	JocelynRivers@gmail.com
1215	Kibo Stewart	F	15455963-K	1986-02-17	8729 Golf St.Middleton WI 53562	KiboStewart@gmail.com
1216	Jackson Hebert	M	15952004-5	1987-07-23	58 Theatre St.Port Saint Lucie FL 34952	JacksonHebert@gmail.com
1217	Andrew Estrada	F	13176980-1	1982-11-12	9 Pheasant LaneSilver Spring MD 20901	AndrewEstrada@gmail.com
1218	Raja Hinton	M	17730440-6	1998-08-21	51 Depot Dr.Melbourne FL 32904	RajaHinton@gmail.com
1219	Sybill Walters	F	7272469-K	1962-12-14	8454 Pumpkin Hill Ave.Royersford PA 19468	SybillWalters@gmail.com
1220	Sarah Cleveland	M	9577936-K	1976-12-06	767 Cobblestone St.Barberton OH 44203	SarahCleveland@gmail.com
1221	Aurelia Gardner	F	16227445-K	1983-05-02	9273 NE. Green Ave.Windsor CT 06095	AureliaGardner@gmail.com
1222	Belle Wagner	F	15894813-0	1998-03-03	15 Berkshire LaneBangor ME 04401	BelleWagner@gmail.com
1223	Rose Buchanan	M	6557039-7	1963-05-15	9516 Golden Star StreetNorth Canton OH 44720	RoseBuchanan@gmail.com
1224	Sylvester Blake	F	10668422-K	1979-05-03	9864 Amherst StreetMyrtle Beach SC 29577	SylvesterBlake@gmail.com
1225	Bruce Day	M	8786944-5	1972-12-11	758 East Rockland RoadAstoria NY 11102	BruceDay@gmail.com
1226	Arthur Fuller	F	12597335-K	1977-01-16	659 W. 3rd StreetBozeman MT 59715	ArthurFuller@gmail.com
1227	Mason Davenport	M	9571187-9	1978-03-09	47 Parker St.Campbell CA 95008	MasonDavenport@gmail.com
1228	Ulric Sweeney	F	15561964-6	1994-06-22	41 St Margarets St.Stoughton MA 02072	UlricSweeney@gmail.com
1229	Devin Wagner	M	16342216-6	1989-01-09	594 North Alderwood St.West Warwick RI 02893	DevinWagner@gmail.com
1230	Preston Hutchinson	F	11250486-K	1979-05-04	20 Meadowbrook StreetXenia OH 45385	PrestonHutchinson@gmail.com
1231	Dante Love	F	9501788-7	1979-07-16	55 Carriage DriveWatertown MA 02472	DanteLove@gmail.com
1232	Sylvester Brewer	M	6007354-0	1966-10-26	8 Queen St.Ankeny IA 50023	SylvesterBrewer@gmail.com
1233	Aline Davenport	F	17533693-K	1990-03-18	157 Fairground StreetSyosset NY 11791	AlineDavenport@gmail.com
1234	Cooper Hutchinson	M	15017572-K	1996-03-06	8162 Cedar Swamp DriveWisconsin Rapids WI 54494	CooperHutchinson@gmail.com
1235	Belle Colon	M	13753851-4	1997-06-02	258 E. Longfellow St.King Of Prussia PA 19406	BelleColon@gmail.com
1236	Sybill Hardin	F	7340281-K	1965-12-28	8627 South Sleepy Hollow StreetVenice FL 34293	SybillHardin@gmail.com
1237	Bruce Mcdowell	F	16903249-6	1997-04-07	387 Thompson DriveCalumet City IL 60409	BruceMcdowell@gmail.com
1238	Sybill Gregory	M	10038524-8	1974-11-12	196 North Orange AvenueChristiansburg VA 24073	SybillGregory@gmail.com
1239	Conan Estrada	M	15815177-8	1996-08-15	121 Mayfield StreetSulphur LA 70663	ConanEstrada@gmail.com
1240	Mannix Saunders	F	6626191-9	1960-11-08	499 Greenrose St.Oakland CA 94603	MannixSaunders@gmail.com
1241	Cairo Decker	M	11097921-8	1977-07-29	7998 N. Hill AvenueRoselle IL 60172	CairoDecker@gmail.com
1242	Howard Baldwin	F	6617743-K	1967-06-22	234 Rockcrest Dr.Fairmont WV 26554	HowardBaldwin@gmail.com
1243	Amber Kent	M	9182187-8	1971-08-28	297 Hudson St.Amityville NY 11701	AmberKent@gmail.com
1244	Fulton Wagner	F	7984415-K	1961-06-15	553 Amerige St.Stroudsburg PA 18360	FultonWagner@gmail.com
1245	Jocelyn Hutchinson	M	15870056-3	1997-07-30	7100 Alton St.Scarsdale NY 10583	JocelynHutchinson@gmail.com
1246	Brianna Hutchinson	F	7904779-7	1962-12-04	8991 Longfellow StreetMaspeth NY 11378	BriannaHutchinson@gmail.com
1247	Petra Hull	M	18439884-K	1998-07-04	24 Foster Dr.Fair Lawn NJ 07410	PetraHull@gmail.com
1248	Timothy Brewer	M	7774939-K	1964-04-25	9400 Cherry Hill St.Hinesville GA 31313	TimothyBrewer@gmail.com
1249	Cairo Sears	M	14859922-K	1992-09-14	803 St Paul St.Saint Charles IL 60174	CairoSears@gmail.com
1250	Cairo Thomas	F	10349341-K	1971-04-07	73 NW. Rocky River St.Lafayette IN 47905	CairoThomas@gmail.com
1251	Andrew Rivera	F	18268531-K	1994-06-29	1 E. Circle LaneLawrence MA 01841	AndrewRivera@gmail.com
1252	Dante Brooks	M	6285592-6	1967-04-28	9736 Augusta St.Port Jefferson Station NY 11776	DanteBrooks@gmail.com
1253	Clark Molina	M	6163693-2	1969-12-22	599 Fremont Ave.Groton CT 06340	ClarkMolina@gmail.com
1254	Debra Gardner	M	12171379-7	1972-12-21	9234 Edgewood Ave.Camas WA 98607	DebraGardner@gmail.com
1255	Elizabeth Frost	F	6619392-8	1960-05-04	790 N. Redwood AvenueTiffin OH 44883	ElizabethFrost@gmail.com
1256	Sebastian Gonzalez	F	18869721-K	1994-08-18	36 N. Foster St.Grand Haven MI 49417	SebastianGonzalez@gmail.com
1257	Uriel Finch	F	8248613-K	1977-05-13	85 Sussex DriveJonesborough TN 37659	UrielFinch@gmail.com
1258	Bertha Gonzalez	F	7809195-2	1961-07-19	3 Purple Finch St.Santa Clara CA 95050	BerthaGonzalez@gmail.com
1259	Clark Schroeder	M	15368046-5	1985-01-17	8052 Grand StreetUniondale NY 11553	ClarkSchroeder@gmail.com
1260	Kimberly Hoover	F	15769129-K	1991-09-21	6 Front Ave.Beloit WI 53511	KimberlyHoover@gmail.com
1261	Timothy Schroeder	F	17346680-K	1998-08-11	9234 Edgewood Ave.Camas WA 98607	TimothySchroeder@gmail.com
1262	Ulric Pollard	M	14357359-K	1984-03-16	9809 Fairway Ave.Lockport NY 14094	UlricPollard@gmail.com
1263	Oprah Kennedy	M	12454906-K	1971-01-13	373 Lincoln StreetZanesville OH 43701	OprahKennedy@gmail.com
1264	Alexander Dillon	F	16123985-K	1998-10-31	84 Piper St.Lewiston ME 04240	AlexanderDillon@gmail.com
1265	Denise Griffin	F	7410094-K	1968-12-31	243 East Jockey Hollow StreetChillicothe OH 45601	DeniseGriffin@gmail.com
1266	Fulton Mcdowell	F	6115446-K	1963-04-17	9039 Sugar DriveBluffton SC 29910	FultonMcdowell@gmail.com
1267	Camilla Howard	F	18374441-K	1989-12-26	25 Brandywine StreetHarrison Township MI 48045	CamillaHoward@gmail.com
1268	Aurelia Abbott	F	8188884-9	1973-03-28	8 E. Plumb Branch St.Mooresville NC 28115	AureliaAbbott@gmail.com
1269	Paki Cleveland	F	15963409-K	1995-03-08	906 Airport StreetGlendora CA 91740	PakiCleveland@gmail.com
1270	Susan Brooks	M	6717399-6	1970-04-05	553 Amerige St.Stroudsburg PA 18360	SusanBrooks@gmail.com
1271	Hoyt Sweeney	F	17707270-K	1992-09-22	96 Rockland CourtStarkville MS 39759	HoytSweeney@gmail.com
1272	Kibo Patrick	F	13502450-4	1995-01-07	94 Harvey AvenueBurlington MA 01803	KiboPatrick@gmail.com
1273	Thaddeus Brooks	F	7534237-K	1964-12-12	44 King DriveCumberland RI 02864	ThaddeusBrooks@gmail.com
1274	Kibo Tyler	F	19577792-K	1996-10-20	387 Thompson DriveCalumet City IL 60409	KiboTyler@gmail.com
1275	Caleb Richard	M	11649013-K	1980-11-12	95 S. Tunnel Rd.Mesa AZ 85203	CalebRichard@gmail.com
1276	Nadine Gardner	M	17061597-K	1987-12-04	7076 Overlook AvenueLutherville Timonium MD 21093	NadineGardner@gmail.com
1277	Jocelyn Hebert	F	14811271-1	1990-12-20	682 Church RoadRichardson TX 75080	JocelynHebert@gmail.com
1278	Lars Love	F	11065894-6	1977-03-25	634 Sherwood DriveCrystal Lake IL 60014	LarsLove@gmail.com
1279	Jarrod Rivers	F	12393682-0	1974-05-25	297 Hudson St.Amityville NY 11701	JarrodRivers@gmail.com
1280	Jocelyn Kirkland	M	18393092-K	1992-06-13	597 Mammoth St.Matawan NJ 07747	JocelynKirkland@gmail.com
1281	Kibo Holt	M	12474532-K	1975-12-07	851 Hillcrest Ave.Toledo OH 43612	KiboHolt@gmail.com
1282	Jerome Riddle	F	18763361-K	1994-09-02	90 Pilgrim St.Lakeville MN 55044	JeromeRiddle@gmail.com
1283	Rose Obrien	M	6943882-K	1970-07-29	7037 Oklahoma Ave.Voorhees NJ 08043	RoseObrien@gmail.com
1284	Ulric Nielsen	F	12243216-K	1974-11-06	7226 North Paris Hill St.Lincoln NE 68506	UlricNielsen@gmail.com
1285	Brianna Howard	F	12888672-5	1971-08-14	58 Theatre St.Port Saint Lucie FL 34952	BriannaHoward@gmail.com
1286	Bernard Frost	F	6789272-7	1968-04-08	10 East DriveKearny NJ 07032	BernardFrost@gmail.com
1287	Caleb Holt	M	10393095-8	1978-09-01	659 W. 3rd StreetBozeman MT 59715	CalebHolt@gmail.com
1288	Tanek Dillon	F	6038623-5	1960-12-18	60 Second Dr.Wadsworth OH 44281	TanekDillon@gmail.com
1289	Ulric Hansen	F	17296041-K	1989-04-20	991 Madison StreetBridgeton NJ 08302	UlricHansen@gmail.com
1290	Cairo Foreman	F	15174180-8	1987-02-23	202 Green Ave.Merrillville IN 46410	CairoForeman@gmail.com
1291	Seth Parker	F	6179404-8	1965-01-03	160 Ivy St.Lagrange GA 30240	SethParker@gmail.com
1292	Mannix Holt	M	8180435-K	1979-01-12	179 Wall Ave.Bridgeport CT 06606	MannixHolt@gmail.com
1293	Graham Sweeney	M	6077833-6	1960-03-01	403 Mechanic Ave.Wappingers Falls NY 12590	GrahamSweeney@gmail.com
1294	Alfonso Hebert	M	14305822-6	1992-12-12	893 W. Canal DriveHartsville SC 29550	AlfonsoHebert@gmail.com
1295	Austin Craig	M	12285441-2	1976-04-29	179 Wall Ave.Bridgeport CT 06606	AustinCraig@gmail.com
1296	Elizabeth Frye	M	13700930-7	1988-06-01	8804 W. Nicolls AvenueClearwater FL 33756	ElizabethFrye@gmail.com
1297	Melinda Estrada	F	6589860-8	1967-01-13	851 Hillcrest Ave.Toledo OH 43612	MelindaEstrada@gmail.com
1298	Clayton Bullock	F	16144066-K	1989-05-29	7406 Garden St.Bristol CT 06010	ClaytonBullock@gmail.com
1299	Dante Davenport	F	14215373-8	1997-07-26	271 Pendergast StreetMarlborough MA 01752	DanteDavenport@gmail.com
1300	Hoyt Nielsen	F	7537307-6	1970-08-14	7037 Oklahoma Ave.Voorhees NJ 08043	HoytNielsen@gmail.com
1301	Jerome Rowe	M	15913996-7	1986-07-16	9499 Snake Hill St.Park Forest IL 60466	JeromeRowe@gmail.com
1302	Austin Craft	F	6487153-9	1962-10-23	9273 NE. Green Ave.Windsor CT 06095	AustinCraft@gmail.com
1303	Bernard Alford	F	19439589-K	1998-10-18	61 Manchester LaneChicago IL 60621	BernardAlford@gmail.com
1304	Drew Decker	M	10463568-9	1977-02-19	491 Cherry Ave.Anderson SC 29621	DrewDecker@gmail.com
1305	Clark Elliott	F	19720169-K	1983-04-16	16 North Griffin Ave.Battle Creek MI 49015	ClarkElliott@gmail.com
1306	Josiah Finch	F	19340296-0	1997-06-07	93 Stillwater DriveBillings MT 59101	JosiahFinch@gmail.com
1307	Susan Kim	M	16647508-6	1998-07-11	8301 Middle River Ave.South El Monte CA 91733	SusanKim@gmail.com
1308	Joan George	F	15909784-K	1994-06-13	9657 Roosevelt St.Delaware OH 43015	JoanGeorge@gmail.com
1309	Ina Finch	F	7501004-K	1961-08-15	9318 Peg Shop St.Strongsville OH 44136	InaFinch@gmail.com
1310	Alfonso Tillman	F	12314326-K	1978-09-29	79 Adams Dr.Collegeville PA 19426	AlfonsoTillman@gmail.com
1311	Candice Scott	M	14689867-5	1984-07-09	8116 Columbia DriveSouthington CT 06489	CandiceScott@gmail.com
1312	Alfonso Mcdowell	F	18698983-5	1984-09-04	215 Miller StreetStevens Point WI 54481	AlfonsoMcdowell@gmail.com
1313	Lars Rowe	M	6822451-K	1970-11-30	946 Hillcrest Ave.Mason OH 45040	LarsRowe@gmail.com
1314	Clare Craig	M	16042205-K	1989-09-24	60 Second Dr.Wadsworth OH 44281	ClareCraig@gmail.com
1315	Connor Cain	M	6051822-K	1966-03-24	367 Pacific St.Elizabethton TN 37643	ConnorCain@gmail.com
1316	Jordan Palmer	M	7023067-2	1966-08-01	7224 High Noon St.Warren MI 48089	JordanPalmer@gmail.com
1317	Clayton Tyler	F	8002743-K	1975-02-16	9 Cross CircleAthens GA 30605	ClaytonTyler@gmail.com
1318	Holly Hull	F	11331535-1	1973-02-04	8665 Greenrose St.Franklin MA 02038	HollyHull@gmail.com
1319	Devin Gonzalez	M	13267870-2	1998-07-27	8525 Ridgewood StreetEau Claire WI 54701	DevinGonzalez@gmail.com
1320	Giacomo Hull	M	7004448-K	1960-01-17	452 Blue Spring St.Mebane NC 27302	GiacomoHull@gmail.com
1321	Sage Hull	M	13845726-8	1986-11-26	7509 Piper StreetAuburndale FL 33823	SageHull@gmail.com
1322	Felicia Frye	M	7758542-K	1968-03-29	66 Mayflower StreetPerrysburg OH 43551	FeliciaFrye@gmail.com
1323	Mechelle Decker	F	19550815-7	1998-12-28	7 Sugar DriveThe Villages FL 32162	MechelleDecker@gmail.com
1324	Rhona Blake	F	7888441-K	1963-05-22	45 Kirkland St.Smyrna GA 30080	RhonaBlake@gmail.com
1325	Sebastian Decker	F	14005475-K	1984-02-13	7856 Greenview St.Kalamazoo MI 49009	SebastianDecker@gmail.com
1326	Elizabeth Mckay	M	7692097-8	1969-09-23	68 North Division Dr.Riverside NJ 08075	ElizabethMckay@gmail.com
1327	Giacomo Brooks	M	10746277-K	1972-05-19	65 Riverside St.Livingston NJ 07039	GiacomoBrooks@gmail.com
1328	Castor Hansen	M	16585230-0	1990-10-04	279 Westport St.Hilliard OH 43026	CastorHansen@gmail.com
1329	Preston Lindsay	F	19363277-K	1997-05-22	59 Golden Star Ave.Indiana PA 15701	PrestonLindsay@gmail.com
1330	Aline James	M	9309267-8	1974-04-29	7591 Harvard Ave.Madison Heights MI 48071	AlineJames@gmail.com
1331	Mannix Abbott	M	11987312-1	1980-08-03	36 Peachtree St.Aberdeen SD 57401	MannixAbbott@gmail.com
1332	Rylee Wagner	M	7012869-K	1963-09-05	623 Hudson LaneGreat Falls MT 59404	RyleeWagner@gmail.com
1333	Camilla Velez	F	19374294-K	1987-08-07	58 Del Monte DriveRevere MA 02151	CamillaVelez@gmail.com
1334	Baker Sears	F	10608721-K	1973-12-11	902 La Sierra Dr.Grandville MI 49418	BakerSears@gmail.com
1335	Andrew Brooks	F	9164908-8	1977-04-08	9344 Mountainview St.Brick NJ 08723	AndrewBrooks@gmail.com
1336	Rhona Hull	F	7219999-K	1969-12-25	61 Cactus StreetGulfport MS 39503	RhonaHull@gmail.com
1337	Clayton Riddle	M	11008839-7	1975-08-07	7281 Delaware Ave.Baldwinsville NY 13027	ClaytonRiddle@gmail.com
1338	Lars Bullock	F	6523192-6	1970-08-30	989 Jennings St.New Haven CT 06511	LarsBullock@gmail.com
1339	Nadine Scott	F	16951013-4	1985-06-16	7525 Kingston DriveSouth Windsor CT 06074	NadineScott@gmail.com
1340	Susan Cabrera	M	12610879-K	1980-04-08	431 Beaver Ridge DriveTupelo MS 38801	SusanCabrera@gmail.com
1341	Sharon Hull	F	6122810-2	1961-01-16	9273 NE. Green Ave.Windsor CT 06095	SharonHull@gmail.com
1342	Raja Craft	M	6730548-6	1970-10-19	331 N. Trenton Dr.Suite 8Millville NJ 08332	RajaCraft@gmail.com
1343	Raja Heath	M	8153698-K	1973-07-25	7615 Market Dr.Des Moines IA 50310	RajaHeath@gmail.com
1344	Bernard Day	M	17324314-0	1981-04-06	8407 Heather AvenueDavenport IA 52804	BernardDay@gmail.com
1345	Kimberly Schroeder	F	7475939-1	1966-02-24	25 Canterbury St.Anaheim CA 92806	KimberlySchroeder@gmail.com
1346	Kimberly Pollard	F	19010930-7	1985-06-01	9 South Hilldale Ave.Powell TN 37849	KimberlyPollard@gmail.com
1347	Brenden Wooten	M	18848530-K	1981-10-09	60 East Sutor St.Milwaukee WI 53204	BrendenWooten@gmail.com
1348	Ina Grimes	F	18157885-K	1983-08-21	38 Sutor AvenueLincolnton NC 28092	InaGrimes@gmail.com
1349	Jocelyn Velez	F	17291645-8	1991-09-18	163 College Ave.Westminster MD 21157	JocelynVelez@gmail.com
1350	Dennis Hinton	M	15273584-K	1985-02-15	8599 Windfall Dr.Milledgeville GA 31061	DennisHinton@gmail.com
1351	Kerry Gregory	F	9022393-3	1972-11-14	9580 Charles St.Phoenixville PA 19460	KerryGregory@gmail.com
1352	Candice Craig	M	11084562-7	1973-07-19	1 Plumb Branch StreetHillsborough NJ 08844	CandiceCraig@gmail.com
1353	Austin Mcguire	M	8001114-K	1973-09-07	7 Sugar DriveThe Villages FL 32162	AustinMcguire@gmail.com
1354	Denise Brooks	M	19434352-2	1984-12-09	39 Penn Rd.Encino CA 91316	DeniseBrooks@gmail.com
1355	Sybill Holt	F	13480307-K	1982-10-09	7146 Pine St.Hamtramck MI 48212	SybillHolt@gmail.com
1356	Sebastian Obrien	F	13092792-6	1985-03-26	7709 Spring Dr.Elkridge MD 21075	SebastianObrien@gmail.com
1357	Oprah Farrell	M	12290604-4	1977-07-30	105 Argyle StreetWest Bend WI 53095	OprahFarrell@gmail.com
1358	Seth Wooten	M	19172082-K	1984-09-12	125 Leeton Ridge RoadAnnandale VA 22003	SethWooten@gmail.com
1359	Clark Farrell	M	7136128-9	1966-09-13	45 Kirkland St.Smyrna GA 30080	ClarkFarrell@gmail.com
1360	Brianna Mckay	M	6376816-K	1967-03-11	7292 West William St.Hudson NH 03051	BriannaMckay@gmail.com
1361	Abbot Rivera	M	7730896-K	1968-10-23	44 King DriveCumberland RI 02864	AbbotRivera@gmail.com
1362	Denise Decker	F	15622040-8	1985-04-22	922 Tallwood Ave.Elgin IL 60120	DeniseDecker@gmail.com
1363	Cooper Nielsen	F	18271508-2	1997-08-20	7919 Race DriveHazleton PA 18201	CooperNielsen@gmail.com
1364	Susan Colon	F	10607246-1	1978-01-14	762 Aspen St.Kissimmee FL 34741	SusanColon@gmail.com
1365	Bernard Knapp	F	6961837-K	1966-07-25	90 NW. Bradford DriveMuskogee OK 74403	BernardKnapp@gmail.com
1366	Jesse Graves	M	15862705-1	1991-06-18	634 Pacific Dr.Clinton Township MI 48035	JesseGraves@gmail.com
1367	Joan Kim	M	17879947-0	1995-12-26	235 Hillside St.Randolph MA 02368	JoanKim@gmail.com
1368	Mason Fuller	M	17843417-0	1998-03-24	939 Race Ave.Glen Allen VA 23059	MasonFuller@gmail.com
1369	Giacomo Patrick	M	12551285-8	1976-01-12	98 Military LaneFredericksburg VA 22405	GiacomoPatrick@gmail.com
1370	Debra Higgins	F	14739562-K	1991-05-26	513 Strawberry Ave.Point Pleasant Beach NJ 08742	DebraHiggins@gmail.com
1371	Rhea Frye	F	6052320-0	1966-05-25	97 High Point St.Michigan City IN 46360	RheaFrye@gmail.com
1372	Rhea Velez	M	13258163-0	1996-06-05	178 3rd CircleRidgecrest CA 93555	RheaVelez@gmail.com
1373	Uriel Day	F	17450577-K	1996-06-17	9779 Gulf St.Tucker GA 30084	UrielDay@gmail.com
1374	Lysandra Booth	F	9092379-7	1978-08-05	9432 North Tanglewood St.Ocean Springs MS 39564	LysandraBooth@gmail.com
1375	Howard Scott	M	16666678-1	1987-06-14	27 Broad Dr.Coatesville PA 19320	HowardScott@gmail.com
1376	Josiah Finch	M	7864181-0	1960-08-07	59 Lancaster St.Fleming Island FL 32003	JosiahFinch@gmail.com
1377	Shaine Daniel	M	14413788-1	1982-07-29	9675 Dunbar StreetRoslindale MA 02131	ShaineDaniel@gmail.com
1378	Dante Parker	F	19410025-K	1986-07-19	275 SE. Tallwood Rd.Mason City IA 50401	DanteParker@gmail.com
1379	Eliana Booth	F	10382708-K	1975-07-27	9857 Border Dr.Fort Washington MD 20744	ElianaBooth@gmail.com
1380	Lysandra Patrick	F	13257200-K	1986-07-30	4 St Louis St.Kokomo IN 46901	LysandraPatrick@gmail.com
1381	Elizabeth Pollard	F	6589847-6	1961-03-14	807 Monroe Ave.Smithtown NY 11787	ElizabethPollard@gmail.com
1382	Castor Finley	F	17076100-9	1983-11-02	9 Peninsula LanePark Ridge IL 60068	CastorFinley@gmail.com
1383	Castor Colon	M	13526193-K	1992-05-25	497 53rd Ave.Goose Creek SC 29445	CastorColon@gmail.com
1384	Connor Hebert	F	6252850-K	1970-12-19	258 E. Longfellow St.King Of Prussia PA 19406	ConnorHebert@gmail.com
1385	Ulric Velez	F	7081937-K	1966-11-20	54 Howard Ave.Springboro OH 45066	UlricVelez@gmail.com
1386	Cairo Kirkland	M	9071130-5	1973-10-22	97 Tower St.Pittsfield MA 01201	CairoKirkland@gmail.com
1387	Petra Griffin	F	8031938-K	1973-07-14	886 West Walt Whitman St.Upper Marlboro MD 20772	PetraGriffin@gmail.com
1388	Bernard Schroeder	M	7477951-3	1962-12-04	112 Ohio St.Murrells Inlet SC 29576	BernardSchroeder@gmail.com
1389	Jordan Baldwin	F	15392329-K	1990-08-11	500 Overlook AvenueHanover PA 17331	JordanBaldwin@gmail.com
1390	Cooper Decker	F	15792354-K	1981-08-14	17 Vale St.Danbury CT 06810	CooperDecker@gmail.com
1391	Mechelle Farrell	F	11810200-K	1973-06-21	41 Middle River St.Hallandale FL 33009	MechelleFarrell@gmail.com
1392	Castor Dillon	F	7243629-9	1965-08-21	305 West Van Dyke AvenuePaducah KY 42001	CastorDillon@gmail.com
1393	Wyatt Mcdowell	F	15938169-K	1997-10-05	45 Peninsula StreetIthaca NY 14850	WyattMcdowell@gmail.com
1394	Conan Bullock	M	19226384-K	1990-01-06	415 Glen Creek St.Maplewood NJ 07040	ConanBullock@gmail.com
1395	Jackson Dillon	M	9704103-8	1973-06-29	8999 Illinois Rd.North Bergen NJ 07047	JacksonDillon@gmail.com
1396	Lysandra James	M	13584378-K	1991-05-22	6 Stonybrook Ave.Roseville MI 48066	LysandraJames@gmail.com
1397	Debra Howard	F	11343979-3	1974-05-07	307 Foxrun Ave.Lake Charles LA 70605	DebraHoward@gmail.com
1398	Candice Molina	M	17488033-0	1996-11-06	7656 Peg Shop St.Catonsville MD 21228	CandiceMolina@gmail.com
1399	Preston Finch	M	13234289-0	1983-03-05	6 8th LaneTualatin OR 97062	PrestonFinch@gmail.com
1400	Sybill Frost	M	15651316-8	1992-12-15	55 North Marshall LaneBronx NY 10451	SybillFrost@gmail.com
1401	Ulric Whitehead	M	13050254-4	1992-10-24	71 Holly StreetBurnsville MN 55337	UlricWhitehead@gmail.com
1402	Debra Walters	F	7892645-0	1966-11-18	444 Swanson CircleRidgefield CT 06877	DebraWalters@gmail.com
1403	Jackson Gonzalez	F	10672315-K	1977-01-15	920 Jefferson AvenueMansfield MA 02048	JacksonGonzalez@gmail.com
1404	Castor Saunders	F	8467001-3	1979-01-16	737 S. Euclid Dr.San Carlos CA 94070	CastorSaunders@gmail.com
1405	Denise Bernard	F	8546735-K	1971-06-30	49 Leeton Ridge DriveHolly Springs NC 27540	DeniseBernard@gmail.com
1406	Petra Lindsay	F	15219005-1	1989-11-07	7 Squaw Creek Rd.Chicago Heights IL 60411	PetraLindsay@gmail.com
1407	Alfonso Kent	M	18463447-2	1997-01-04	5 Old Illinois Rd.Cedar Falls IA 50613	AlfonsoKent@gmail.com
1408	Mason Hebert	M	19597482-K	1995-07-27	605 Grant St.Pikesville MD 21208	MasonHebert@gmail.com
1409	Cooper Vega	M	13703144-6	1987-06-11	966 Gregory LaneAndover MA 01810	CooperVega@gmail.com
1410	Uriel Hansen	F	19230260-9	1986-11-22	82 Silver Spear CourtWestport CT 06880	UrielHansen@gmail.com
1411	Clark Kent	M	6486008-K	1968-05-29	89 Arnold Rd.Wellington FL 33414	ClarkKent@gmail.com
1412	Thaddeus Patrick	M	7372448-K	1961-05-29	7812 Hudson DriveHamden CT 06514	ThaddeusPatrick@gmail.com
1413	Denise Gregory	M	9654126-3	1975-08-04	866 Lantern CourtYork PA 17402	DeniseGregory@gmail.com
1414	Arthur Rivera	M	17125230-1	1995-09-08	8335 Van Dyke Rd.Union City NJ 07087	ArthurRivera@gmail.com
1415	Petra Gonzalez	F	14854303-K	1997-06-04	66 Fifth RoadCorona NY 11368	PetraGonzalez@gmail.com
1416	Amber Velez	F	12090780-K	1974-02-20	256 S. Tower StreetIowa City IA 52240	AmberVelez@gmail.com
1417	Tanek Sears	M	13580760-K	1989-12-07	7621 Cross St.Ypsilanti MI 48197	TanekSears@gmail.com
1418	Ina Foreman	F	9718184-6	1974-11-27	5 St Margarets Ave.Carmel NY 10512	InaForeman@gmail.com
1419	Denise Craft	M	7941822-5	1968-12-18	8062 Thompson LaneNorfolk VA 23503	DeniseCraft@gmail.com
1420	Cairo Holt	M	6436807-2	1964-04-07	588 Westport LanePetersburg VA 23803	CairoHolt@gmail.com
1421	Dante Owen	F	6138549-3	1968-07-02	9561 North Sierra StreetWaltham MA 02453	DanteOwen@gmail.com
1422	Josiah Heath	M	10641276-4	1977-01-30	499 Greenrose St.Oakland CA 94603	JosiahHeath@gmail.com
1423	Connor Mcdowell	F	19941735-0	1994-12-25	62 10th StreetNorth Brunswick NJ 08902	ConnorMcdowell@gmail.com
1424	Bertha Hoover	F	12718833-6	1974-05-16	8 Queen St.Ankeny IA 50023	BerthaHoover@gmail.com
1425	Armando Frye	M	6049043-2	1967-02-08	547 SW. Courtland DriveTorrance CA 90505	ArmandoFrye@gmail.com
1426	Raja George	F	10939391-K	1975-01-20	9176 Union St.Bemidji MN 56601	RajaGeorge@gmail.com
1427	Sarah Abbott	F	15463105-6	1996-07-25	9175 Plumb Branch Ave.Logansport IN 46947	SarahAbbott@gmail.com
1428	Caleb Dillon	M	19669574-2	1997-01-03	761 East Surrey StreetDunedin FL 34698	CalebDillon@gmail.com
1429	Shaine Hebert	F	13029605-K	1981-09-19	5 South Roberts Rd.Worcester MA 01604	ShaineHebert@gmail.com
1430	Debra Love	M	8650559-K	1978-01-25	474 W. Middle River St.Lititz PA 17543	DebraLove@gmail.com
1431	Sebastian Finley	M	6761757-3	1961-11-21	7524 Pheasant Dr.Baltimore MD 21206	SebastianFinley@gmail.com
1432	Aurelia Buchanan	M	16764954-K	1983-01-07	7822 Plymouth Ave.District Heights MD 20747	AureliaBuchanan@gmail.com
1433	Elmo Booker	M	18017455-K	1997-03-07	57 Cedarwood St.Staten Island NY 10301	ElmoBooker@gmail.com
1434	Zephania Knapp	F	11680956-7	1978-06-03	7667 South Ohio St.Irvington NJ 07111	ZephaniaKnapp@gmail.com
1435	Thaddeus Vega	F	11681858-K	1973-12-29	460 Blackburn RoadNewnan GA 30263	ThaddeusVega@gmail.com
1436	Hoyt Craig	M	16493664-K	1993-01-24	655 2nd St.Grosse Pointe MI 48236	HoytCraig@gmail.com
1437	Ina Mcguire	F	14321554-K	1986-07-25	9657 Roosevelt St.Delaware OH 43015	InaMcguire@gmail.com
1438	Patience Palmer	M	13263996-K	1990-04-21	328 High Noon Rd.Huntington Station NY 11746	PatiencePalmer@gmail.com
1439	Conan Justice	F	14103771-7	1989-03-10	160 Ivy St.Lagrange GA 30240	ConanJustice@gmail.com
1440	Kibo Holt	F	16501185-K	1995-08-07	474 W. Middle River St.Lititz PA 17543	KiboHolt@gmail.com
1441	Josiah Whitehead	M	15300803-3	1996-12-08	7620 Golf Ave.Rowlett TX 75088	JosiahWhitehead@gmail.com
1442	Tanek Craft	F	16273014-3	1994-05-13	745 SE. Kent StreetQuincy MA 02169	TanekCraft@gmail.com
1443	Benjamin Alford	M	8870537-K	1978-09-30	9027 SW. Taylor Rd.Urbandale IA 50322	BenjaminAlford@gmail.com
1444	Armando Fuller	F	18708701-4	1994-09-29	637 Heritage AvenueShakopee MN 55379	ArmandoFuller@gmail.com
1445	Arthur George	F	15619995-K	1985-01-21	523 Mill DriveMalden MA 02148	ArthurGeorge@gmail.com
1446	Conan Palmer	M	17444012-K	1995-03-09	5 Acacia Ave.Piqua OH 45356	ConanPalmer@gmail.com
1447	Belle Daniel	M	13293979-4	1988-12-11	8227 Morris RoadClifton NJ 07011	BelleDaniel@gmail.com
1448	Timothy Hinton	M	6736658-K	1970-08-29	9347 South Deerfield St.Dundalk MD 21222	TimothyHinton@gmail.com
1449	Zephania Abbott	F	7030924-K	1963-06-21	444 Swanson CircleRidgefield CT 06877	ZephaniaAbbott@gmail.com
1450	Giacomo Walters	M	16730920-0	1992-07-25	58 Del Monte DriveRevere MA 02151	GiacomoWalters@gmail.com
1451	Jordan Graves	F	13666483-K	1998-03-31	8519 Liberty St.Apopka FL 32703	JordanGraves@gmail.com
1452	Hoyt Nielsen	F	16685163-K	1989-09-10	2 Greystone RoadNanuet NY 10954	HoytNielsen@gmail.com
1453	Rhona Finch	F	6485421-K	1966-11-12	8580 San Pablo Ave.Madisonville KY 42431	RhonaFinch@gmail.com
1454	Jackson Daniel	M	7206850-2	1965-10-09	40 Pulaski LaneParlin NJ 08859	JacksonDaniel@gmail.com
1455	Melinda Velez	F	14196901-K	1986-10-08	9176 Union St.Bemidji MN 56601	MelindaVelez@gmail.com
1456	Paki Rivers	F	6735010-K	1960-08-17	500 Grandrose LaneSaint Augustine FL 32084	PakiRivers@gmail.com
1457	Sarah Gonzalez	F	7435925-9	1966-11-27	71 Pineknoll RoadCoachella CA 92236	SarahGonzalez@gmail.com
1458	Oprah Brewer	F	18121091-4	1983-06-27	68 Garfield St.Ellenwood GA 30294	OprahBrewer@gmail.com
1459	Belle Mcdowell	M	7589936-K	1970-08-09	30 Strawberry Ave.Long Branch NJ 07740	BelleMcdowell@gmail.com
1460	Ulric Justice	M	18374023-K	1984-06-03	11 Birch Hill St.Bountiful UT 84010	UlricJustice@gmail.com
1461	Sage Knapp	F	18963742-K	1986-12-19	985 Corona CourtOconomowoc WI 53066	SageKnapp@gmail.com
1462	Sebastian Gregory	F	15339036-K	1988-02-28	120 Gartner St.Latrobe PA 15650	SebastianGregory@gmail.com
1463	Hoyt Booth	F	16266009-K	1989-08-26	437 E. Devonshire Dr.Pompano Beach FL 33060	HoytBooth@gmail.com
1464	Sarah Vega	F	9928859-5	1980-08-10	35 Liberty StreetPassaic NJ 07055	SarahVega@gmail.com
1465	Uriel Alford	M	10691148-7	1979-11-07	33 Country RoadKalispell MT 59901	UrielAlford@gmail.com
1466	Austin Mcdowell	F	15491479-0	1997-01-12	9051 Schoolhouse DriveLos Angeles CA 90008	AustinMcdowell@gmail.com
1467	Eliana Garza	F	17434302-K	1989-03-29	941 Vale Ave.Potomac MD 20854	ElianaGarza@gmail.com
1468	Josephine Booth	F	17044428-5	1986-07-27	361 East Leeton Ridge St.Pataskala OH 43062	JosephineBooth@gmail.com
1469	Graham Craft	M	7594531-K	1968-01-13	7031 Cherry Hill StreetMuncie IN 47302	GrahamCraft@gmail.com
1470	Benjamin Velez	M	9303026-K	1979-11-09	47 North Sherwood DriveMcdonough GA 30252	BenjaminVelez@gmail.com
1471	Kirk Vega	F	11691466-K	1972-04-18	8846 Manor DriveGettysburg PA 17325	KirkVega@gmail.com
1472	Connor Garcia	F	15174116-2	1985-08-13	388 Winchester St.West Hempstead NY 11552	ConnorGarcia@gmail.com
1473	Kibo Sweeney	M	19682314-K	1996-10-11	1 Oklahoma DriveOwatonna MN 55060	KiboSweeney@gmail.com
1474	Oprah Mckay	F	7340372-6	1965-02-08	7229 Indian Spring StreetWausau WI 54401	OprahMckay@gmail.com
1475	Mason Molina	F	16103231-K	1998-05-01	22 Amerige StreetBuffalo Grove IL 60089	MasonMolina@gmail.com
1476	Josephine George	M	16390729-9	1997-10-10	832 State Ave.Griffin GA 30223	JosephineGeorge@gmail.com
1477	Rylee Nielsen	M	17463425-8	1981-07-15	121 Mayfield StreetSulphur LA 70663	RyleeNielsen@gmail.com
1478	Baker Gonzalez	F	16774607-2	1994-05-31	316 Spring St.Plainview NY 11803	BakerGonzalez@gmail.com
1479	Rhona George	F	6427735-K	1968-07-22	91 Windsor LaneSouth Bend IN 46614	RhonaGeorge@gmail.com
1480	Kibo Sweeney	F	6277706-K	1964-12-31	133 Ivy StreetSaint Cloud MN 56301	KiboSweeney@gmail.com
1481	Zephania Estrada	M	8072998-K	1976-12-03	906 William St.Suite 29Charlotte NC 28205	ZephaniaEstrada@gmail.com
1482	Kirk Sweeney	F	17140777-8	1987-08-28	5 Marshall Ave.Summerfield FL 34491	KirkSweeney@gmail.com
1483	Arthur Buchanan	F	15417875-K	1991-06-28	594 North Alderwood St.West Warwick RI 02893	ArthurBuchanan@gmail.com
1484	Jordan Graves	M	11916071-1	1977-09-01	7292 West William St.Hudson NH 03051	JordanGraves@gmail.com
1485	Benjamin Lindsay	M	17596211-K	1996-03-26	1 Illinois Rd.Meriden CT 06450	BenjaminLindsay@gmail.com
1486	Zephania Holt	M	16720938-K	1998-08-31	7146 Shipley Ave.Billerica MA 01821	ZephaniaHolt@gmail.com
1487	Camilla Love	F	11868972-9	1972-03-31	8099 Proctor LaneFairport NY 14450	CamillaLove@gmail.com
1488	Denise Daniel	M	16599803-3	1994-05-16	863 Albany StreetDawsonville GA 30534	DeniseDaniel@gmail.com
1489	Clayton Cleveland	F	6897083-K	1962-08-09	8721 Crescent St.Naples FL 34116	ClaytonCleveland@gmail.com
1490	Benjamin Cabrera	F	16634695-K	1987-05-16	9445 Vermont Rd.Kenosha WI 53140	BenjaminCabrera@gmail.com
1491	Zephania Heath	F	6730015-8	1969-08-08	46 Carriage St.Roswell GA 30075	ZephaniaHeath@gmail.com
1492	Denise Lindsay	F	10030327-K	1975-05-20	494 Inverness LaneNew Port Richey FL 34653	DeniseLindsay@gmail.com
1493	Melinda Bullock	M	10262815-2	1979-02-22	7553 Thompson DriveBel Air MD 21014	MelindaBullock@gmail.com
1494	Hoyt Gregory	M	7898482-4	1962-12-25	291 Princess RoadDowners Grove IL 60515	HoytGregory@gmail.com
1495	Dennis Cabrera	F	19282590-K	1981-02-19	83 Brown StreetBelmont MA 02478	DennisCabrera@gmail.com
1496	Mannix Brooks	M	9961177-6	1972-11-02	518 East Wrangler StreetWilson NC 27893	MannixBrooks@gmail.com
1497	Dennis Booker	F	10504902-4	1977-05-30	9447 Woodland St.Lincoln Park MI 48146	DennisBooker@gmail.com
1498	Rylee Wooten	F	18494457-K	1990-10-21	8793 Harvard St.Blacksburg VA 24060	RyleeWooten@gmail.com
1499	Patience Brooks	M	6832743-K	1962-09-19	423 Cypress Ave.Macungie PA 18062	PatienceBrooks@gmail.com
1500	Jordan Kim	M	15682305-K	1992-07-03	9881 Stillwater St.Fayetteville NC 28303	JordanKim@gmail.com
1501	Jocelyn Thomas	F	10906528-K	1973-08-21	75 Smith Ave.Hagerstown MD 21740	JocelynThomas@gmail.com
1502	Aurelia Gonzalez	M	18670577-7	1988-08-17	7224 High Noon St.Warren MI 48089	AureliaGonzalez@gmail.com
1503	Kaseem Day	M	14334007-2	1983-01-18	450 Sherman St.Frankfort KY 40601	KaseemDay@gmail.com
1504	Imani Gonzalez	M	7273857-3	1967-05-24	761 East Surrey StreetDunedin FL 34698	ImaniGonzalez@gmail.com
1505	Brenden Tillman	F	13752515-K	1982-09-09	513 Strawberry Ave.Point Pleasant Beach NJ 08742	BrendenTillman@gmail.com
1506	Cooper Stewart	M	14852977-K	1982-03-30	92 Old York StreetHighland IN 46322	CooperStewart@gmail.com
1507	Bernard Hinton	M	7590222-K	1960-05-12	236 Meadowbrook StreetShrewsbury MA 01545	BernardHinton@gmail.com
1508	Sebastian Davenport	M	12475602-K	1973-06-13	691 South Van Dyke RoadMeadville PA 16335	SebastianDavenport@gmail.com
1509	Oprah Holt	M	14835455-3	1987-07-10	81 Henry Smith RoadElyria OH 44035	OprahHolt@gmail.com
1510	Dennis Mcguire	F	7949908-K	1963-11-01	97 South Sunbeam DriveEnglishtown NJ 07726	DennisMcguire@gmail.com
1511	Sebastian Sharpe	F	6122795-K	1965-06-24	964 Galvin St.Deland FL 32720	SebastianSharpe@gmail.com
1512	Mason Finley	M	7856153-6	1965-06-30	32 Delaware St.Oklahoma City OK 73112	MasonFinley@gmail.com
1513	Kaseem Nielsen	F	17411333-9	1997-03-08	53 N. Roosevelt Rd.Englewood NJ 07631	KaseemNielsen@gmail.com
1514	Fulton Frost	F	6824792-4	1965-06-06	111 East Taylor St.Cincinnati OH 45211	FultonFrost@gmail.com
1515	Kimberly Monroe	F	18489744-1	1990-01-01	21 Studebaker St.Lake Worth FL 33460	KimberlyMonroe@gmail.com
1516	Cairo Stewart	F	11545280-K	1980-09-04	45 West Wentworth StreetNorman OK 73072	CairoStewart@gmail.com
1517	Aline Scott	M	15853282-2	1993-04-21	9347 South Deerfield St.Dundalk MD 21222	AlineScott@gmail.com
1518	Brianna Bernard	M	7186751-4	1969-07-06	8599 Windfall Dr.Milledgeville GA 31061	BriannaBernard@gmail.com
1519	Aline Colon	M	9640349-K	1973-11-11	61 Manchester LaneChicago IL 60621	AlineColon@gmail.com
1520	Susan Hull	M	7335099-2	1962-03-25	5 Old Illinois Rd.Cedar Falls IA 50613	SusanHull@gmail.com
1521	Debra George	M	12415247-K	1975-06-23	267 Willow St.Far Rockaway NY 11691	DebraGeorge@gmail.com
1522	Zephania Decker	F	6377028-6	1969-02-12	677 Orange LaneOsseo MN 55311	ZephaniaDecker@gmail.com
1523	Cairo Wooten	F	7620256-0	1964-12-10	691 South Van Dyke RoadMeadville PA 16335	CairoWooten@gmail.com
1524	Dennis Sears	M	7060474-6	1961-04-17	2 Magnolia St.Stone Mountain GA 30083	DennisSears@gmail.com
1525	Cairo Hansen	F	12476967-K	1979-07-31	1 Hamilton StreetOwensboro KY 42301	CairoHansen@gmail.com
1526	Preston Obrien	F	15539351-5	1995-05-20	8451 Edgewater StreetEast Stroudsburg PA 18301	PrestonObrien@gmail.com
1527	Sarah Estrada	M	17234793-K	1995-07-11	456 Westport LaneGarden City NY 11530	SarahEstrada@gmail.com
1528	Jordan Cabrera	F	11166292-K	1971-03-08	634 Pacific Dr.Clinton Township MI 48035	JordanCabrera@gmail.com
1529	Felicia Bernard	F	16740578-6	1981-01-22	4 Lake LaneHuntersville NC 28078	FeliciaBernard@gmail.com
1530	Sebastian Farrell	M	17087327-K	1995-12-27	952 Westminster LaneFitchburg MA 01420	SebastianFarrell@gmail.com
1531	Shaine Dillon	F	7162103-4	1960-10-08	8721 Crescent St.Naples FL 34116	ShaineDillon@gmail.com
1532	Arthur Grimes	M	19139180-K	1995-01-09	7492 E. Grove St.Schererville IN 46375	ArthurGrimes@gmail.com
1533	Elmo Finley	M	17143180-K	1981-03-04	9234 Edgewood Ave.Camas WA 98607	ElmoFinley@gmail.com
1534	Bertha Blake	M	14534338-K	1988-08-29	7920 Lilac StreetBrandon FL 33510	BerthaBlake@gmail.com
1535	Josiah Rivera	M	14563424-K	1987-11-21	7284 Eagle RoadClarksburg WV 26301	JosiahRivera@gmail.com
1536	Josephine Lindsay	M	6330000-4	1961-03-26	474 W. Middle River St.Lititz PA 17543	JosephineLindsay@gmail.com
1537	Denise Garcia	F	6657454-8	1968-04-14	7807 Swanson St.New Orleans LA 70115	DeniseGarcia@gmail.com
1538	Caleb Elliott	M	16954747-K	1993-11-16	9839 Summer Dr.Palm Harbor FL 34683	CalebElliott@gmail.com
1539	Bruce Craft	F	9618094-0	1972-05-14	443 Tanglewood RoadCoventry RI 02816	BruceCraft@gmail.com
1540	Joan Hardin	F	9223838-8	1971-02-01	9 Newport St.Tallahassee FL 32303	JoanHardin@gmail.com
1541	Benjamin Knapp	F	13576584-7	1981-05-29	49 Saxton DriveArvada CO 80003	BenjaminKnapp@gmail.com
1542	Dennis Richard	M	13655411-9	1981-12-16	7462 Green StreetPueblo CO 81001	DennisRichard@gmail.com
1543	Baker Richard	M	6330815-K	1969-11-15	9178 Hall StreetConway SC 29526	BakerRichard@gmail.com
1544	Armando Heath	F	13659299-K	1994-05-17	25 Acacia Ave.Goodlettsville TN 37072	ArmandoHeath@gmail.com
1545	Jarrod Sears	M	15197502-K	1984-10-23	7244 Foster Dr.Omaha NE 68107	JarrodSears@gmail.com
1546	Dennis Hinton	F	15663411-K	1984-08-09	55 Chestnut RoadNew Albany IN 47150	DennisHinton@gmail.com
1547	Lysandra Day	M	18858059-0	1997-02-09	13 Wagon CourtGlenside PA 19038	LysandraDay@gmail.com
1548	Kimberly Hull	F	9766859-9	1978-04-13	8656 Oak Meadow Ave.Holland MI 49423	KimberlyHull@gmail.com
1549	Armando Cain	M	12513483-K	1975-10-16	959 Squaw Creek St.Stafford VA 22554	ArmandoCain@gmail.com
1550	Uriel Day	M	7969588-9	1966-12-20	7381 2nd St.Suwanee GA 30024	UrielDay@gmail.com
1551	Felicia Lindsay	F	14873092-K	1991-11-22	173 Meadowbrook StreetNashua NH 03060	FeliciaLindsay@gmail.com
1552	Baker Thomas	M	9473113-8	1975-01-01	78 Primrose Dr.Nashville TN 37205	BakerThomas@gmail.com
1553	Wyatt Gregory	M	10131693-9	1976-01-08	45 Peninsula StreetIthaca NY 14850	WyattGregory@gmail.com
1554	Melinda Grimes	F	9745638-6	1973-05-30	562 Princess St.West Roxbury MA 02132	MelindaGrimes@gmail.com
1555	Sebastian Pollard	M	14138931-K	1989-04-21	7254 Bridge Dr.Winona MN 55987	SebastianPollard@gmail.com
1556	Bernard Cabrera	M	14342227-K	1993-01-01	7012 Thatcher AvenueNorth Royalton OH 44133	BernardCabrera@gmail.com
1557	Giacomo Saunders	M	11016379-9	1975-01-13	563 NE. Primrose DriveWestfield MA 01085	GiacomoSaunders@gmail.com
1558	Denise Brooks	M	13627125-K	1991-01-22	9 Cross CircleAthens GA 30605	DeniseBrooks@gmail.com
1559	Bernard Riddle	F	14540397-K	1981-07-31	66 Westminster StreetValrico FL 33594	BernardRiddle@gmail.com
1560	Shaine Craft	M	6149074-K	1969-06-13	262 Bradford St.Ocoee FL 34761	ShaineCraft@gmail.com
1561	Eliana Obrien	F	15290391-K	1994-03-08	4 Oakland RoadScotch Plains NJ 07076	ElianaObrien@gmail.com
1562	Drew Estrada	F	15548142-9	1995-12-02	391 University Dr.Oxnard CA 93035	DrewEstrada@gmail.com
1563	Holly Alford	F	6939146-7	1966-03-30	4 Glen Creek St.Vineland NJ 08360	HollyAlford@gmail.com
1564	Imani Frye	F	19341814-9	1991-05-30	9063 W. Honey Creek Dr.Queensbury NY 12804	ImaniFrye@gmail.com
1565	Brianna Wooten	M	8703278-K	1979-07-11	682 Church Rd.West Lafayette IN 47906	BriannaWooten@gmail.com
1566	Eliana Abbott	F	14969810-K	1987-01-14	7281 Delaware Ave.Baldwinsville NY 13027	ElianaAbbott@gmail.com
1567	Sage Kennedy	F	18762112-8	1990-09-23	7814 Heritage StreetCollierville TN 38017	SageKennedy@gmail.com
1568	Bruce Mcdowell	M	7695935-K	1961-04-09	57 Miles StreetOwings Mills MD 21117	BruceMcdowell@gmail.com
1569	Joan Sears	F	17463433-8	1983-04-27	94 Arlington Dr.North Ridgeville OH 44039	JoanSears@gmail.com
1570	Rhea Brooks	F	7839212-K	1965-07-10	256 South San Juan StreetNorth Miami Beach FL 33160	RheaBrooks@gmail.com
1571	Devin Davenport	M	6000874-1	1962-09-27	608 Plumb Branch St.Pasadena MD 21122	DevinDavenport@gmail.com
1572	Kaseem Buchanan	F	7947246-1	1966-06-15	237 Cooper St.Fairhope AL 36532	KaseemBuchanan@gmail.com
1573	Josiah Booker	F	9985093-K	1980-02-14	196 North Orange AvenueChristiansburg VA 24073	JosiahBooker@gmail.com
1574	Candice Kim	M	14521525-K	1984-05-29	6 8th LaneTualatin OR 97062	CandiceKim@gmail.com
1575	Hoyt Howard	M	12786280-6	1977-07-11	342 Edgewater Rd.Chapel Hill NC 27516	HoytHoward@gmail.com
1576	Paki Rivers	F	7015345-1	1968-05-08	785 North Goldfield DriveNew Philadelphia OH 44663	PakiRivers@gmail.com
1577	Giacomo Hutchinson	F	10967163-3	1975-07-09	45 Goldfield Rd.Tacoma WA 98444	GiacomoHutchinson@gmail.com
1578	Joan Davenport	M	9907233-K	1976-01-30	790 N. Redwood AvenueTiffin OH 44883	JoanDavenport@gmail.com
1579	Bernard Wagner	F	17296991-1	1997-05-05	798 Greystone StreetMetairie LA 70001	BernardWagner@gmail.com
1580	Debra Foreman	M	17720871-K	1991-08-09	728 Franklin DriveHarleysville PA 19438	DebraForeman@gmail.com
1581	Kirk Vega	M	12712209-0	1972-06-04	66 Mayflower StreetPerrysburg OH 43551	KirkVega@gmail.com
1582	Uriel Lindsay	F	14803467-K	1991-04-08	164 Lincoln DriveRolla MO 65401	UrielLindsay@gmail.com
1583	Mason Gonzalez	M	13405417-K	1988-01-25	616 Grandrose DrivePickerington OH 43147	MasonGonzalez@gmail.com
1584	Sharon Hinton	F	6387756-K	1969-10-08	7339 Wrangler StreetPleasanton CA 94566	SharonHinton@gmail.com
1585	Oprah Booker	M	9498559-K	1978-07-15	1 Hamilton StreetOwensboro KY 42301	OprahBooker@gmail.com
1586	Andrew Finch	M	7035721-7	1961-09-03	694 Indian Spring St.Valdosta GA 31601	AndrewFinch@gmail.com
1587	Jackson Kent	M	6507947-K	1969-04-24	5 South Roberts Rd.Worcester MA 01604	JacksonKent@gmail.com
1588	Rhona Rowe	F	12774215-7	1974-04-03	6 Stonybrook Ave.Roseville MI 48066	RhonaRowe@gmail.com
1589	Cairo Vega	M	6378511-1	1970-09-14	84 Brown StreetPalatine IL 60067	CairoVega@gmail.com
1590	Sage Garza	M	15849002-K	1981-08-11	73 NW. Rocky River St.Lafayette IN 47905	SageGarza@gmail.com
1591	Joan Heath	F	11932907-K	1979-01-05	7738 Old Blackburn LaneLoxahatchee FL 33470	JoanHeath@gmail.com
1592	Thaddeus Whitehead	F	15592237-K	1991-09-21	8 Wentworth Dr.Eden Prairie MN 55347	ThaddeusWhitehead@gmail.com
1593	Melinda Kent	M	17110574-2	1981-09-20	984 Division Dr.Greer SC 29650	MelindaKent@gmail.com
1594	Conan Thomas	M	18848637-3	1984-01-22	315 Swanson Ave.Hudsonville MI 49426	ConanThomas@gmail.com
1595	Paki Heath	M	14505335-2	1993-01-21	67 Fairground Dr.Jamaica Plain MA 02130	PakiHeath@gmail.com
1596	Graham Monroe	F	17331462-1	1997-10-31	7513 Church Rd.Middletown CT 06457	GrahamMonroe@gmail.com
1597	Sage Hoover	F	8246095-K	1972-11-14	2 West Golden Star Dr.Bristow VA 20136	SageHoover@gmail.com
1598	Dennis Daniel	M	6219277-K	1969-03-05	163 College Ave.Westminster MD 21157	DennisDaniel@gmail.com
1599	Sylvester Blake	F	7181176-K	1970-08-02	9027 SW. Taylor Rd.Urbandale IA 50322	SylvesterBlake@gmail.com
1600	Zephania Alford	M	15652771-6	1990-06-28	7406 Garden St.Bristol CT 06010	ZephaniaAlford@gmail.com
1601	Andrew Craig	M	18746430-K	1991-06-29	44 N. Amerige St.Allen Park MI 48101	AndrewCraig@gmail.com
1602	Uriel Bullock	F	7341981-K	1970-07-29	9145 Beech StreetManahawkin NJ 08050	UrielBullock@gmail.com
1603	Jarrod Kent	M	6650000-5	1962-09-19	5 Lakeview Ave.Georgetown SC 29440	JarrodKent@gmail.com
1604	Kaseem Elliott	F	6409350-K	1964-06-14	7969 South Wentworth St.Youngstown OH 44512	KaseemElliott@gmail.com
1605	Jerome Heath	F	16910791-2	1996-09-02	173 Meadowbrook StreetNashua NH 03060	JeromeHeath@gmail.com
1606	Jerome Hutchinson	F	6539709-K	1970-10-10	482 Bishop CirclePeabody MA 01960	JeromeHutchinson@gmail.com
1607	Louis Whitehead	F	16580675-9	1993-12-02	608 Plumb Branch St.Pasadena MD 21122	LouisWhitehead@gmail.com
1608	Rhona Day	M	7988289-0	1969-09-14	25 Canterbury St.Anaheim CA 92806	RhonaDay@gmail.com
1609	Jackson Cleveland	F	12412078-0	1980-09-23	963 Main Dr.Blackwood NJ 08012	JacksonCleveland@gmail.com
1610	Howard Day	F	7268625-K	1969-06-14	30 E. 53rd Dr.Brookfield WI 53045	HowardDay@gmail.com
1611	Rhona Riddle	M	9050150-2	1973-04-09	69 Euclid LaneWest Springfield MA 01089	RhonaRiddle@gmail.com
1612	Tanek Justice	M	13481326-1	1991-07-29	9020 Coffee Dr.Farmington MI 48331	TanekJustice@gmail.com
1613	Connor Colon	M	7577497-1	1970-04-02	9178 Hall StreetConway SC 29526	ConnorColon@gmail.com
1614	Rose Finch	F	11138557-5	1979-02-12	956 Arnold Ave.Kingston NY 12401	RoseFinch@gmail.com
1615	Fulton Craig	F	9547500-K	1972-07-19	8228 Spruce Dr.Johnston RI 02919	FultonCraig@gmail.com
1616	Jocelyn Alford	M	6128026-2	1965-08-23	634 Sherwood DriveCrystal Lake IL 60014	JocelynAlford@gmail.com
1617	Amber Palmer	F	6013183-K	1965-09-21	41 Middle River St.Hallandale FL 33009	AmberPalmer@gmail.com
1618	Kerry Abbott	M	16864622-3	1996-10-28	2 S. Clark St.Bethpage NY 11714	KerryAbbott@gmail.com
1619	Conan Scott	M	12416273-K	1980-07-26	898 S. Sage LaneElizabethtown PA 17022	ConanScott@gmail.com
1620	Dennis Finch	M	15272528-K	1984-08-20	9316 Cambridge St.Westlake OH 44145	DennisFinch@gmail.com
1621	Clark Bernard	M	6324956-8	1960-07-12	16 Lakewood St.Milford MA 01757	ClarkBernard@gmail.com
1622	Dennis Hull	M	7593862-K	1962-08-06	91 Tailwater St.Henrico VA 23228	DennisHull@gmail.com
1623	Rhea Fuller	M	14315002-K	1989-05-29	979 Lakeshore Ave.Erlanger KY 41018	RheaFuller@gmail.com
1624	Sarah Higgins	M	13058303-K	1991-12-02	758 East Rockland RoadAstoria NY 11102	SarahHiggins@gmail.com
1625	Jerome Sharpe	M	6333940-6	1964-12-04	6 Halifax Ave.Romulus MI 48174	JeromeSharpe@gmail.com
1626	Jerome Hansen	M	14572224-K	1994-11-12	328 High Noon Rd.Huntington Station NY 11746	JeromeHansen@gmail.com
1627	Rhona Velez	F	7065993-K	1960-11-03	552 Mill DrivePainesville OH 44077	RhonaVelez@gmail.com
1628	Abbot Sharpe	M	14528320-K	1990-02-13	3 S. Beach Ave.Miami Beach FL 33139	AbbotSharpe@gmail.com
1629	Drew Finch	M	6081431-K	1970-03-31	456 Westport LaneGarden City NY 11530	DrewFinch@gmail.com
1630	Brianna Monroe	F	12679073-K	1980-07-25	853 Myers St.Hickory NC 28601	BriannaMonroe@gmail.com
1631	Hoyt Kirkland	M	18003104-K	1981-10-29	9 Albany LaneBeachwood OH 44122	HoytKirkland@gmail.com
1632	Aline Hinton	F	6866725-6	1963-04-03	40 East Bedford St.Seattle WA 98144	AlineHinton@gmail.com
1633	Rhea James	F	17220882-0	1982-04-14	675 Annadale St.Apex NC 27502	RheaJames@gmail.com
1634	Bernard Kirkland	F	16294865-K	1985-11-30	523 Mill DriveMalden MA 02148	BernardKirkland@gmail.com
1635	Bernard Cain	F	7357718-K	1964-08-22	9 Bradford StreetYuba City CA 95993	BernardCain@gmail.com
1636	Sarah Monroe	F	8845111-3	1975-12-16	75 Belmont LaneHempstead NY 11550	SarahMonroe@gmail.com
1637	Connor Craft	F	12088805-6	1973-09-16	3 Purple Finch St.Santa Clara CA 95050	ConnorCraft@gmail.com
1638	Bertha Wagner	M	18946513-K	1984-02-23	5 South Tunnel DriveRedford MI 48239	BerthaWagner@gmail.com
1639	Lysandra Parker	F	9171621-K	1976-11-04	8913 North Marvon LaneDeltona FL 32725	LysandraParker@gmail.com
1640	Brenden Lindsay	M	16158892-7	1983-04-24	622 Bridle DriveMarysville OH 43040	BrendenLindsay@gmail.com
1641	Sebastian Decker	F	11645892-2	1978-10-21	97 South Sunbeam DriveEnglishtown NJ 07726	SebastianDecker@gmail.com
1642	Camilla Rivers	M	16671423-K	1997-09-09	364 Heather CourtMount Airy MD 21771	CamillaRivers@gmail.com
1643	Rose Owen	F	6477240-K	1969-02-11	61 Walnutwood St.Bismarck ND 58501	RoseOwen@gmail.com
1644	Dante Hebert	F	7389068-7	1962-12-12	860 Saxon St.Lynn MA 01902	DanteHebert@gmail.com
1645	Josephine Hardin	M	13784984-K	1995-09-20	439 Proctor DriveCouncil Bluffs IA 51501	JosephineHardin@gmail.com
1646	Sharon Higgins	F	7346669-K	1969-08-14	56 Gulf Ave.Rocky Mount NC 27804	SharonHiggins@gmail.com
1647	Baker Alford	F	18854660-3	1991-04-27	562 Princess St.West Roxbury MA 02132	BakerAlford@gmail.com
1648	Brianna Brooks	F	19877574-K	1996-06-22	7270 Greystone St.Mechanicsville VA 23111	BriannaBrooks@gmail.com
1649	Clare Tyler	F	6735988-2	1966-08-15	860 Saxon St.Lynn MA 01902	ClareTyler@gmail.com
1650	Howard Richard	F	6556783-K	1970-05-29	8325 Bayberry StreetFort Worth TX 76110	HowardRichard@gmail.com
1651	Denise Alford	M	7984637-K	1967-05-04	927 White St.Navarre FL 32566	DeniseAlford@gmail.com
1652	Hoyt Mcdowell	F	7361868-K	1961-06-14	981 Foxrun Dr.Rego Park NY 11374	HoytMcdowell@gmail.com
1653	Kimberly Buchanan	M	9586782-K	1975-02-01	341 E. Canterbury RoadYonkers NY 10701	KimberlyBuchanan@gmail.com
1654	Andrew Higgins	M	6958017-K	1965-04-11	75 Belmont LaneHempstead NY 11550	AndrewHiggins@gmail.com
1655	Fulton Sears	M	6157035-K	1967-11-08	65 Acacia St.Whitehall PA 18052	FultonSears@gmail.com
1656	Timothy Hardin	M	8843363-0	1977-07-22	641 Glen Ridge CircleNiles MI 49120	TimothyHardin@gmail.com
1657	Uriel Frost	M	19383561-K	1983-02-27	79 Alderwood StreetDothan AL 36301	UrielFrost@gmail.com
1658	Imani Heath	F	6076148-1	1965-11-18	367 Pacific St.Elizabethton TN 37643	ImaniHeath@gmail.com
1659	Mason Monroe	M	8530036-K	1974-09-14	8172 Manchester Ave.Wilmington MA 01887	MasonMonroe@gmail.com
1660	Fulton Cabrera	M	9953029-K	1972-08-07	664 Coffee Ave.Bartlett IL 60103	FultonCabrera@gmail.com
1661	Sarah Velez	M	17337688-K	1997-06-25	8207 Coffee Dr.Norwalk CT 06851	SarahVelez@gmail.com
1662	Kimberly Holt	F	17618651-7	1991-08-16	25 Brandywine StreetHarrison Township MI 48045	KimberlyHolt@gmail.com
1663	Jerome Monroe	F	19213735-7	1991-11-27	7281 Delaware Ave.Baldwinsville NY 13027	JeromeMonroe@gmail.com
1664	Giacomo Colon	M	6747698-1	1965-04-16	668 Sunbeam Ave.Bridgewater NJ 08807	GiacomoColon@gmail.com
1665	Castor Hinton	M	17684226-K	1998-02-21	514 North Glenwood StreetFresh Meadows NY 11365	CastorHinton@gmail.com
1666	Devin Alford	M	19530919-6	1992-09-27	16 Manor Station Rd.Joliet IL 60435	DevinAlford@gmail.com
1667	Howard Booker	M	15172695-K	1988-02-18	75 West LaneCoram NY 11727	HowardBooker@gmail.com
1668	Brianna Hull	F	8181369-6	1971-04-11	18 Wood St.Amarillo TX 79106	BriannaHull@gmail.com
1669	Brenden Hansen	F	12632694-K	1977-03-15	655 Rock Creek St.Hattiesburg MS 39401	BrendenHansen@gmail.com
1670	Joan Thomas	F	18634644-K	1988-10-11	836 Pine St.Medford MA 02155	JoanThomas@gmail.com
1671	Josiah Graves	M	9648503-5	1976-11-05	8525 Ridgewood StreetEau Claire WI 54701	JosiahGraves@gmail.com
1672	Conan Gonzalez	M	6094479-K	1967-11-19	92 Old York StreetHighland IN 46322	ConanGonzalez@gmail.com
1673	Jordan Sharpe	F	19309094-0	1996-06-18	9623 Howard Rd.Lawrence Township NJ 08648	JordanSharpe@gmail.com
1674	Thaddeus Richard	F	15424949-2	1982-09-05	518 King St.Portsmouth VA 23703	ThaddeusRichard@gmail.com
1675	Kerry Thomas	F	7062792-K	1969-06-21	47 Church St.Alpharetta GA 30004	KerryThomas@gmail.com
1676	Drew Palmer	M	19340801-6	1986-10-21	873 Campfire LaneSan Angelo TX 76901	DrewPalmer@gmail.com
1677	Clark Walters	M	6838923-5	1965-01-24	450 Sherman St.Frankfort KY 40601	ClarkWalters@gmail.com
1678	Clare Mcguire	F	18886620-7	1984-06-24	258 E. Longfellow St.King Of Prussia PA 19406	ClareMcguire@gmail.com
1679	Timothy Craft	F	13575100-K	1992-11-26	963 Beaver Ridge LaneInman SC 29349	TimothyCraft@gmail.com
1680	Brianna Palmer	M	6541494-5	1965-09-19	588 Westport LanePetersburg VA 23803	BriannaPalmer@gmail.com
1681	Ulric Walters	F	14907408-K	1992-08-07	53 Armstrong St.Clinton MD 20735	UlricWalters@gmail.com
1682	Sebastian Rivers	F	19546410-7	1983-09-21	70 Yukon St.Clemmons NC 27012	SebastianRivers@gmail.com
1683	Seth Stewart	M	7436015-6	1963-05-24	9705 Saxon LaneDanville VA 24540	SethStewart@gmail.com
1684	Connor Velez	F	6839459-8	1962-07-23	177 NW. Roosevelt St.Doylestown PA 18901	ConnorVelez@gmail.com
1685	Clark James	F	6666759-8	1965-12-20	357 Foxrun Dr.Hope Mills NC 28348	ClarkJames@gmail.com
1686	Dennis Alford	F	17123885-K	1998-01-20	201 Hickory St.Aliquippa PA 15001	DennisAlford@gmail.com
1687	Bernard Kirkland	F	15692185-1	1981-04-10	36 N. Foster St.Grand Haven MI 49417	BernardKirkland@gmail.com
1688	Zephania Decker	M	8803134-K	1979-01-22	89 Wrangler LaneCamp Hill PA 17011	ZephaniaDecker@gmail.com
1689	Kerry Elliott	M	7053214-K	1966-08-25	101 West Coffee Ave.Providence RI 02904	KerryElliott@gmail.com
1690	Felicia Griffin	M	7239351-K	1964-11-21	638 West Depot St.Saint Joseph MI 49085	FeliciaGriffin@gmail.com
1691	Rose Wooten	F	18239106-K	1986-03-04	68 Maple St.Massillon OH 44646	RoseWooten@gmail.com
1692	Imani Patrick	F	16159897-6	1984-03-12	146 E. Fairground Ave.Ontario CA 91762	ImaniPatrick@gmail.com
1693	Clark Higgins	M	18480156-3	1992-02-21	60 East Sutor St.Milwaukee WI 53204	ClarkHiggins@gmail.com
1694	Nadine Gardner	M	7977760-9	1965-12-18	40 Gulf RoadBay Shore NY 11706	NadineGardner@gmail.com
1695	Jerome Tillman	M	10176796-9	1974-10-15	8487 Fairfield St.Mays Landing NJ 08330	JeromeTillman@gmail.com
1696	Lysandra Farrell	F	16915395-5	1990-08-09	222 Pennington St.Kennewick WA 99337	LysandraFarrell@gmail.com
1697	Stephanie Thomas	M	15896737-K	1986-07-21	9160 Marlborough Ave.Middle River MD 21220	StephanieThomas@gmail.com
1698	Holly Molina	M	17925813-K	1986-12-21	964 Galvin St.Deland FL 32720	HollyMolina@gmail.com
1699	Stephanie Hutchinson	M	13174446-K	1987-07-28	8885 Piper DriveMonroe NY 10950	StephanieHutchinson@gmail.com
1700	Seth Graves	F	9517057-8	1971-10-08	8409 Durham St.Tuckerton NJ 08087	SethGraves@gmail.com
1701	Jarrod Velez	F	13033567-K	1987-12-09	16 Lakewood St.Milford MA 01757	JarrodVelez@gmail.com
1702	Brianna Hebert	M	15122435-K	1994-03-21	413 Rockcrest AvenueDowningtown PA 19335	BriannaHebert@gmail.com
1703	Jarrod Richard	M	7524184-9	1963-10-01	41 Wild Horse St.Chambersburg PA 17201	JarrodRichard@gmail.com
1704	Baker Cleveland	M	7438502-3	1969-11-21	9948 Cedar St.Clarkston MI 48348	BakerCleveland@gmail.com
1705	Austin Mcdowell	F	17198648-K	1993-01-17	101 West Coffee Ave.Providence RI 02904	AustinMcdowell@gmail.com
1706	Dante Wagner	M	15968333-1	1987-08-07	544 Winchester LaneZeeland MI 49464	DanteWagner@gmail.com
1707	Aline Thomas	M	18485775-K	1990-06-23	8590 Cleveland St.Niagara Falls NY 14304	AlineThomas@gmail.com
1708	Denise Kim	M	12875011-K	1971-04-05	8683 Elm Ave.New Bern NC 28560	DeniseKim@gmail.com
1709	Sharon Kennedy	F	13222846-K	1992-03-13	605 Grant St.Pikesville MD 21208	SharonKennedy@gmail.com
1710	Rhea Cain	F	18547948-K	1996-04-13	550 Canterbury Rd.Mountain View CA 94043	RheaCain@gmail.com
1711	Josiah Palmer	M	10633658-K	1975-01-26	178 3rd CircleRidgecrest CA 93555	JosiahPalmer@gmail.com
1712	Jarrod Grimes	M	15803600-2	1993-02-22	659 W. 3rd StreetBozeman MT 59715	JarrodGrimes@gmail.com
1713	Holly Cleveland	M	18988397-K	1988-09-12	16 Locust Ave.Circle Pines MN 55014	HollyCleveland@gmail.com
1714	Fulton Sharpe	F	8986240-K	1975-07-13	342 Edgewater Rd.Chapel Hill NC 27516	FultonSharpe@gmail.com
1715	Rylee Farrell	M	16585604-K	1989-11-12	7969 South Wentworth St.Youngstown OH 44512	RyleeFarrell@gmail.com
1716	Baker Abbott	M	8265777-7	1975-07-25	8587 Sage LaneRichmond Hill NY 11418	BakerAbbott@gmail.com
1717	Andrew Justice	M	13936350-K	1985-03-01	767 Cobblestone St.Barberton OH 44203	AndrewJustice@gmail.com
1718	Sylvester Daniel	F	18669657-9	1988-03-22	28 Smith Store CourtWaterford MI 48329	SylvesterDaniel@gmail.com
1719	Holly Booth	M	9196468-K	1971-12-18	553 Shady Rd.Plattsburgh NY 12901	HollyBooth@gmail.com
1720	Mannix Justice	M	14138892-K	1993-08-09	9675 Dunbar StreetRoslindale MA 02131	MannixJustice@gmail.com
1721	Ina Sweeney	F	18716125-3	1981-01-09	6 San Pablo AvenueFullerton CA 92831	InaSweeney@gmail.com
1722	Rhona Craft	M	12531851-1	1972-10-29	9418 Circle RoadFort Walton Beach FL 32547	RhonaCraft@gmail.com
1723	Sharon Cleveland	F	13900228-7	1984-05-13	9512 Pacific St.Canandaigua NY 14424	SharonCleveland@gmail.com
1724	Clayton Craft	F	13038033-K	1991-12-06	670 Clinton Dr.Hoffman Estates IL 60169	ClaytonCraft@gmail.com
1725	Kirk Craft	M	17092082-5	1983-07-30	721 Trout Dr.Marshalltown IA 50158	KirkCraft@gmail.com
1726	Wyatt Frost	F	7268011-3	1962-12-18	7281 Delaware Ave.Baldwinsville NY 13027	WyattFrost@gmail.com
1727	Fulton Sweeney	M	17665214-K	1992-09-22	8691 New St.Fenton MI 48430	FultonSweeney@gmail.com
1728	Holly Lindsay	F	6185241-1	1962-11-19	121 Mayfield StreetSulphur LA 70663	HollyLindsay@gmail.com
1729	Raja Hull	F	6870853-4	1964-01-17	17 Gartner StreetHammonton NJ 08037	RajaHull@gmail.com
1730	Lysandra Holt	M	7817408-8	1970-02-06	22 Amerige StreetBuffalo Grove IL 60089	LysandraHolt@gmail.com
1731	Cairo Howard	M	9306363-K	1972-04-09	515 Catherine St.Winter Springs FL 32708	CairoHoward@gmail.com
1732	Kibo Hinton	F	18694350-6	1991-04-13	7492 E. Grove St.Schererville IN 46375	KiboHinton@gmail.com
1733	Sarah Gonzalez	F	13899798-4	1987-12-29	61 Manchester LaneChicago IL 60621	SarahGonzalez@gmail.com
1734	Melinda Buchanan	F	15100733-K	1987-03-26	7592 Berkshire Rd.Selden NY 11784	MelindaBuchanan@gmail.com
1735	Kerry Hinton	M	17096185-K	1987-10-15	8665 Greenrose St.Franklin MA 02038	KerryHinton@gmail.com
1736	Rylee Farrell	M	14407331-4	1988-05-13	53 Rockaway DriveFlorence SC 29501	RyleeFarrell@gmail.com
1737	Mannix Lindsay	F	11766241-6	1977-11-21	942 Westminster Ave.Linden NJ 07036	MannixLindsay@gmail.com
1738	Petra Garza	F	6260816-3	1970-01-10	66 Mayflower StreetPerrysburg OH 43551	PetraGarza@gmail.com
1739	Lysandra Palmer	M	18504280-K	1988-12-24	9352 Rocky River Dr.Ooltewah TN 37363	LysandraPalmer@gmail.com
1740	Clark Grimes	F	7625334-8	1961-10-16	8656 Oak Meadow Ave.Holland MI 49423	ClarkGrimes@gmail.com
1741	Sebastian Foreman	F	9506014-K	1975-09-27	149 Snake Hill Rd.Atlantic City NJ 08401	SebastianForeman@gmail.com
1742	Elizabeth Donaldson	M	18937450-K	1995-06-19	9059 Rockledge Ave.Pembroke Pines FL 33028	ElizabethDonaldson@gmail.com
1743	Aline Estrada	M	6077581-1	1962-01-01	236 Meadowbrook StreetShrewsbury MA 01545	AlineEstrada@gmail.com
1744	Susan Griffin	M	7888600-5	1965-07-15	8487 Fairfield St.Mays Landing NJ 08330	SusanGriffin@gmail.com
1745	Conan Finch	F	14214169-K	1993-12-05	790 Trenton CircleBeltsville MD 20705	ConanFinch@gmail.com
1746	Sybill Gonzalez	F	17981920-K	1989-11-10	407 Temple CourtSioux City IA 51106	SybillGonzalez@gmail.com
1747	Kaseem Hansen	M	17856118-4	1991-09-16	499 Greenrose St.Oakland CA 94603	KaseemHansen@gmail.com
1748	Jarrod Elliott	F	15961244-K	1998-08-14	42 Bradford Dr.Hamilton OH 45011	JarrodElliott@gmail.com
1749	Graham Garcia	F	6782438-K	1967-12-20	778 Proctor StreetRaeford NC 28376	GrahamGarcia@gmail.com
1750	Jesse Baldwin	M	9900049-K	1978-12-02	8718 King AvenueWaterbury CT 06705	JesseBaldwin@gmail.com
1751	Armando Stewart	F	17261035-K	1985-08-28	309 Albany LaneCranston RI 02920	ArmandoStewart@gmail.com
1752	Bernard Baldwin	M	13073712-K	1981-04-24	17 Crescent CourtWest Deptford NJ 08096	BernardBaldwin@gmail.com
1753	Dennis Griffin	M	14450516-1	1996-01-16	622 South Gates StreetDerby KS 67037	DennisGriffin@gmail.com
1754	Kaseem Kennedy	F	12863922-K	1979-10-12	8253 Longbranch St.Portland ME 04103	KaseemKennedy@gmail.com
1755	Preston Parker	M	6217205-4	1960-05-30	782 Birchwood CircleOlympia WA 98512	PrestonParker@gmail.com
1756	Josiah Vega	F	14413289-K	1994-06-02	91 Windsor LaneSouth Bend IN 46614	JosiahVega@gmail.com
1757	Candice Finch	F	15287411-3	1988-02-09	9352 North Glen Ridge Rd.Ronkonkoma NY 11779	CandiceFinch@gmail.com
1758	Eliana Estrada	M	6804458-K	1967-09-04	961 Squaw Creek St.Roanoke Rapids NC 27870	ElianaEstrada@gmail.com
1759	Josiah Justice	M	11241137-8	1979-07-30	655 Rock Creek St.Hattiesburg MS 39401	JosiahJustice@gmail.com
1760	Wyatt Hardin	F	13305452-K	1998-09-28	72 Grand Rd.Rockaway NJ 07866	WyattHardin@gmail.com
1761	Holly Howard	F	15217556-5	1985-12-18	686 Old Pacific CourtMahwah NJ 07430	HollyHoward@gmail.com
1762	Sylvester Garza	M	7461197-K	1964-04-07	72 Homestead St.Key West FL 33040	SylvesterGarza@gmail.com
1763	Kerry James	F	14727028-K	1996-06-11	9770 Big Rock Cove Rd.Saginaw MI 48601	KerryJames@gmail.com
1764	Elmo Thomas	M	19170353-0	1991-07-24	66 Old York St.Adrian MI 49221	ElmoThomas@gmail.com
1765	Dennis Elliott	M	17491458-5	1982-07-31	364 Heather CourtMount Airy MD 21771	DennisElliott@gmail.com
1766	Jordan Scott	M	17044060-K	1996-06-07	92 Old York StreetHighland IN 46322	JordanScott@gmail.com
1767	Bernard Finley	F	15270039-K	1998-02-12	46 E. Addison St.Reynoldsburg OH 43068	BernardFinley@gmail.com
1768	Nadine Dillon	M	16110255-2	1988-03-24	803 St Paul St.Saint Charles IL 60174	NadineDillon@gmail.com
1769	Oprah Hansen	F	16152472-K	1988-12-10	373 Lincoln StreetZanesville OH 43701	OprahHansen@gmail.com
1770	Uriel Brewer	F	16877106-1	1981-04-25	886B Santa Clara Dr.Covington GA 30014	UrielBrewer@gmail.com
1771	Melinda Wooten	F	6289562-K	1966-01-16	380 Fairground DriveGarland TX 75043	MelindaWooten@gmail.com
1772	Hoyt Buchanan	M	13941522-5	1995-10-17	9063 W. Honey Creek Dr.Queensbury NY 12804	HoytBuchanan@gmail.com
1773	Jocelyn Vega	F	6548329-K	1960-04-20	385 Ridge St.Los Banos CA 93635	JocelynVega@gmail.com
1774	Eliana Gonzalez	F	17968703-4	1988-03-06	7348 Adams Ave.Amsterdam NY 12010	ElianaGonzalez@gmail.com
1775	Bertha Finley	F	10940831-9	1978-07-03	77 Park St.Fairborn OH 45324	BerthaFinley@gmail.com
1776	Tanek Kennedy	M	16719986-K	1994-12-24	45 West Wentworth StreetNorman OK 73072	TanekKennedy@gmail.com
1777	Louis Wooten	F	8624095-8	1978-02-28	7926 Sulphur Springs StreetEllicott City MD 21042	LouisWooten@gmail.com
1778	Tanek Whitehead	F	12262741-4	1976-05-05	41 St Margarets St.Stoughton MA 02072	TanekWhitehead@gmail.com
1779	Bruce Finch	M	9953434-9	1978-10-11	7313 Creekside DriveClementon NJ 08021	BruceFinch@gmail.com
1780	Eliana Tyler	F	16916864-K	1985-08-21	8090 Liberty Dr.Dickson TN 37055	ElianaTyler@gmail.com
1781	Bertha Mcgee	M	10932549-K	1980-10-05	39 Cherry DriveOzone Park NY 11417	BerthaMcgee@gmail.com
1782	Sebastian Garcia	F	18958187-9	1992-03-03	431 Penn St.Brainerd MN 56401	SebastianGarcia@gmail.com
1783	Jocelyn Estrada	F	10509024-2	1979-05-16	60 Second Dr.Wadsworth OH 44281	JocelynEstrada@gmail.com
1784	Petra Day	M	16244082-2	1995-04-10	8913 North Marvon LaneDeltona FL 32725	PetraDay@gmail.com
1785	Louis Kent	F	13048287-6	1983-09-01	761 East Surrey StreetDunedin FL 34698	LouisKent@gmail.com
1786	Lars Gonzalez	F	14249169-K	1998-08-29	788 La Sierra Rd.Akron OH 44312	LarsGonzalez@gmail.com
1787	Timothy Bernard	M	16006767-8	1987-02-13	9052 Sage St.Tonawanda NY 14150	TimothyBernard@gmail.com
1788	Brianna Blake	F	11713067-1	1977-09-08	8719 Summer StreetRosedale NY 11422	BriannaBlake@gmail.com
1789	Josiah Hutchinson	F	12460985-5	1979-06-29	92 Old York StreetHighland IN 46322	JosiahHutchinson@gmail.com
1790	Sharon Davenport	F	7146487-0	1968-09-22	9981 South Fairview Dr.Natick MA 01760	SharonDavenport@gmail.com
1791	Josiah Stewart	M	16297054-9	1995-01-13	631 Henry Smith St.Augusta GA 30906	JosiahStewart@gmail.com
1792	Kerry Monroe	M	15095841-0	1994-10-01	94 Arlington Dr.North Ridgeville OH 44039	KerryMonroe@gmail.com
1793	Howard Holt	F	14665567-K	1981-03-01	66 Old York St.Adrian MI 49221	HowardHolt@gmail.com
1794	Clare Tyler	M	18115124-8	1991-06-24	733 Church Ave.Oak Lawn IL 60453	ClareTyler@gmail.com
1795	Devin James	M	6570396-K	1960-10-18	9992 Harvard StreetGloucester MA 01930	DevinJames@gmail.com
1796	Fulton Monroe	M	12410847-K	1974-05-02	90 Main Dr.Newburgh NY 12550	FultonMonroe@gmail.com
1797	Baker Donaldson	M	6544281-K	1967-04-17	305 Wood Ave.Braintree MA 02184	BakerDonaldson@gmail.com
1798	Jocelyn Nielsen	M	19309362-1	1997-05-25	541 North Schoolhouse RoadMcminnville TN 37110	JocelynNielsen@gmail.com
1799	Clark Hinton	F	9287101-6	1979-08-11	95 Boston St.Windermere FL 34786	ClarkHinton@gmail.com
1800	Kerry Baldwin	M	16093488-K	1981-06-02	9027 SW. Taylor Rd.Urbandale IA 50322	KerryBaldwin@gmail.com
1801	Ulric Molina	M	6116236-K	1964-05-23	7773 West Trout StreetFlowery Branch GA 30542	UlricMolina@gmail.com
1802	Bertha Bernard	M	17347029-K	1988-10-27	8616 East Stillwater St.Neptune NJ 07753	BerthaBernard@gmail.com
1803	Josiah Finch	F	19762043-K	1983-06-13	8227 Morris RoadClifton NJ 07011	JosiahFinch@gmail.com
1804	Austin Saunders	F	15023608-5	1988-10-31	92 Riverview St.Romeoville IL 60446	AustinSaunders@gmail.com
1805	Imani Kent	F	16466739-K	1984-07-27	27 Hill Field Dr.Cartersville GA 30120	ImaniKent@gmail.com
1806	Alfonso Cleveland	M	6372528-K	1964-02-05	61 East South Ave.Conyers GA 30012	AlfonsoCleveland@gmail.com
1807	Camilla Whitehead	M	16191797-2	1991-01-18	8424 Summerhouse Ave.Piscataway NJ 08854	CamillaWhitehead@gmail.com
1808	Ulric Alford	M	9115916-4	1977-07-15	569 Squaw Creek CourtWest Chicago IL 60185	UlricAlford@gmail.com
1809	Stephanie Colon	M	15829032-K	1998-08-05	41 Wild Horse St.Chambersburg PA 17201	StephanieColon@gmail.com
1810	Clare Estrada	F	13968145-K	1996-11-13	655 Rock Creek St.Hattiesburg MS 39401	ClareEstrada@gmail.com
1811	Sebastian Schroeder	F	7042294-8	1960-03-06	850 Glenholme AvenuePrattville AL 36067	SebastianSchroeder@gmail.com
1812	Belle Mcguire	M	13113315-K	1981-11-20	552 Mill DrivePainesville OH 44077	BelleMcguire@gmail.com
1813	Louis Craig	M	6062172-K	1964-06-13	9542 Oxford StreetHomestead FL 33030	LouisCraig@gmail.com
1814	Kerry Kim	M	11759565-K	1975-05-24	85 Sunset StreetSnohomish WA 98290	KerryKim@gmail.com
1815	Alfonso Justice	F	19030221-K	1990-11-12	7293 Walnut StreetHouston TX 77016	AlfonsoJustice@gmail.com
1816	Devin Decker	F	6906173-0	1962-12-20	976 River Dr.Indianapolis IN 46201	DevinDecker@gmail.com
1817	Louis Love	M	11711850-K	1979-11-25	856A Arch AvenueDeerfield Beach FL 33442	LouisLove@gmail.com
1818	Kimberly Baldwin	F	19963357-K	1985-09-10	968 N. Elizabeth CourtHephzibah GA 30815	KimberlyBaldwin@gmail.com
1819	Joan Gonzalez	M	16782233-4	1982-01-10	9465 Rock Creek Ave.Helena MT 59601	JoanGonzalez@gmail.com
1820	Castor Kim	M	7213732-K	1962-02-24	921 Selby St.Asheville NC 28803	CastorKim@gmail.com
1821	Debra Gardner	F	17288302-K	1984-10-24	8727 East Bowman Rd.Sandusky OH 44870	DebraGardner@gmail.com
1822	Imani Buchanan	M	6400151-K	1960-03-25	55 Halifax Ave.Bensalem PA 19020	ImaniBuchanan@gmail.com
1823	Wyatt Gonzalez	F	6042406-K	1966-05-02	55 Chestnut RoadNew Albany IN 47150	WyattGonzalez@gmail.com
1824	Denise Grimes	F	18901901-K	1981-05-12	7224 High Noon St.Warren MI 48089	DeniseGrimes@gmail.com
1825	Raja Stewart	M	16779487-7	1982-01-25	986 Sierra Dr.Windsor Mill MD 21244	RajaStewart@gmail.com
1826	Susan Daniel	F	6579754-9	1968-01-10	513 Strawberry Ave.Point Pleasant Beach NJ 08742	SusanDaniel@gmail.com
1827	Jesse Hull	F	6985505-K	1970-06-14	8719 Valley Farms LaneBoynton Beach FL 33435	JesseHull@gmail.com
1828	Louis Dillon	F	16203380-K	1996-12-20	7336 Strawberry StreetSatellite Beach FL 32937	LouisDillon@gmail.com
1829	Jerome Buchanan	F	7141334-K	1970-03-07	694 Indian Spring St.Valdosta GA 31601	JeromeBuchanan@gmail.com
1830	Drew Velez	M	12639236-K	1978-04-29	7 Applegate DriveLanghorne PA 19047	DrewVelez@gmail.com
1831	Castor Abbott	F	6102748-5	1968-09-26	49 Leeton Ridge DriveHolly Springs NC 27540	CastorAbbott@gmail.com
1832	Thaddeus Griffin	F	16321650-5	1987-06-07	5 South Tunnel DriveRedford MI 48239	ThaddeusGriffin@gmail.com
1833	Austin Foreman	M	6564437-K	1964-12-08	13 Brook St.Acworth GA 30101	AustinForeman@gmail.com
1834	Rhona Mckay	F	17530526-K	1986-03-16	694 Indian Spring St.Valdosta GA 31601	RhonaMckay@gmail.com
1835	Kibo Frye	M	14870440-3	1992-11-17	9695C Chapel StreetBethesda MD 20814	KiboFrye@gmail.com
1836	Stephanie Pollard	M	14346189-K	1990-02-23	655 Rock Creek St.Hattiesburg MS 39401	StephaniePollard@gmail.com
1837	Dennis Sears	M	9030225-K	1977-10-07	222 Pennington St.Kennewick WA 99337	DennisSears@gmail.com
1838	Joan Mckay	F	13342777-9	1981-11-03	43 Broad Ave.Tewksbury MA 01876	JoanMckay@gmail.com
1839	Elmo Tyler	F	7427750-5	1963-04-26	2 Snake Hill StreetTitusville FL 32780	ElmoTyler@gmail.com
1840	Brianna Craft	F	16120814-K	1985-10-30	9858 Ramblewood St.Caldwell NJ 07006	BriannaCraft@gmail.com
1841	Mannix Higgins	M	10105360-1	1972-08-26	8101 Hillcrest CourtNorth Wales PA 19454	MannixHiggins@gmail.com
1842	Aline Estrada	M	6926893-9	1963-05-27	9860 Meadow StreetApple Valley CA 92307	AlineEstrada@gmail.com
1843	Rhona Thomas	F	6037276-K	1965-12-09	23 Anderson StreetWillingboro NJ 08046	RhonaThomas@gmail.com
1844	Graham Frost	F	10828920-K	1976-05-21	392 Blackburn LaneCanal Winchester OH 43110	GrahamFrost@gmail.com
1845	Rhona Love	M	18663119-1	1982-02-16	8587 Sage LaneRichmond Hill NY 11418	RhonaLove@gmail.com
1846	Rhea Dillon	F	13153012-K	1986-12-14	305 West Van Dyke AvenuePaducah KY 42001	RheaDillon@gmail.com
1847	Connor Decker	M	15807720-7	1996-10-30	105 Argyle StreetWest Bend WI 53095	ConnorDecker@gmail.com
1848	Louis Hinton	M	15844656-K	1992-12-19	500 Grandrose LaneSaint Augustine FL 32084	LouisHinton@gmail.com
1849	Brianna Nielsen	F	6139304-9	1963-02-13	921 Selby St.Asheville NC 28803	BriannaNielsen@gmail.com
1850	Cooper Colon	M	6761002-K	1966-04-22	85 North Mayflower LaneElk River MN 55330	CooperColon@gmail.com
1851	Kaseem Craft	M	6711530-K	1970-07-25	8986 Birchwood St.Naugatuck CT 06770	KaseemCraft@gmail.com
1852	Armando Hoover	M	19916004-3	1987-02-04	8257 Vernon CourtSaint Louis MO 63109	ArmandoHoover@gmail.com
1853	Baker Molina	F	6601068-K	1961-09-05	293 Pleasant Ave.Hopewell VA 23860	BakerMolina@gmail.com
1854	Eliana Wagner	F	14647886-4	1982-11-30	599 Fremont Ave.Groton CT 06340	ElianaWagner@gmail.com
1855	Jocelyn Lindsay	M	13181477-K	1995-04-17	53 Bradford Ave.Lapeer MI 48446	JocelynLindsay@gmail.com
1856	Mechelle Bernard	M	7628013-9	1964-08-08	71 Pineknoll RoadCoachella CA 92236	MechelleBernard@gmail.com
1857	Mannix Monroe	F	14497968-6	1994-10-08	9933 Rose St.Norwich CT 06360	MannixMonroe@gmail.com
1858	Imani Hansen	M	6786401-4	1960-02-16	431 Penn St.Brainerd MN 56401	ImaniHansen@gmail.com
1859	Josiah Graves	F	13677886-6	1989-09-06	456 Westport LaneGarden City NY 11530	JosiahGraves@gmail.com
1860	Zephania Holt	M	6603851-7	1964-08-05	7313 Creekside DriveClementon NJ 08021	ZephaniaHolt@gmail.com
1861	Oprah Dillon	M	13669050-K	1987-01-01	398 Hall LanePeoria IL 61604	OprahDillon@gmail.com
1862	Brianna Kim	F	9093844-5	1979-03-08	906 William St.Suite 29Charlotte NC 28205	BriannaKim@gmail.com
1863	Elmo George	M	17425702-7	1995-10-09	7996 West Newbridge LaneWaynesboro PA 17268	ElmoGeorge@gmail.com
1864	Clayton Fuller	M	15991276-8	1988-06-08	733 Oklahoma Ave.Mount Holly NJ 08060	ClaytonFuller@gmail.com
1865	Kimberly Heath	M	7208408-1	1964-06-14	7364 Blue Spring StreetOxon Hill MD 20745	KimberlyHeath@gmail.com
1866	Camilla Craft	F	18415788-K	1996-10-26	8628 Ivy DriveJamestown NY 14701	CamillaCraft@gmail.com
1867	Germaine Finch	F	17440011-K	1986-06-16	357 Foxrun Dr.Hope Mills NC 28348	GermaineFinch@gmail.com
1868	Petra Obrien	M	19643766-2	1987-11-14	8925 Crescent LaneDefiance OH 43512	PetraObrien@gmail.com
1869	Brianna Lindsay	F	7890571-K	1963-02-27	9 Green Lake Ave.Sacramento CA 95820	BriannaLindsay@gmail.com
1870	Patience Hardin	M	18249773-2	1986-12-27	592 East Dunbar RoadMedia PA 19063	PatienceHardin@gmail.com
1871	Cairo George	F	9975341-K	1978-07-11	2 York St.Bethlehem PA 18015	CairoGeorge@gmail.com
1872	Austin Molina	M	15751059-K	1988-12-29	804 Fairway Rd.Chattanooga TN 37421	AustinMolina@gmail.com
1873	Zephania Frost	M	19036908-K	1992-09-27	341 E. Canterbury RoadYonkers NY 10701	ZephaniaFrost@gmail.com
1874	Uriel Pollard	F	7877757-K	1970-07-02	202 Glenridge Ave.Prior Lake MN 55372	UrielPollard@gmail.com
1875	Josiah Colon	F	6444520-4	1964-05-06	10 South Armstrong DriveVirginia Beach VA 23451	JosiahColon@gmail.com
1876	Kaseem Justice	M	19793227-K	1991-09-29	21 Princess St.Mobile AL 36605	KaseemJustice@gmail.com
1877	Oprah Dillon	M	19342597-9	1986-10-11	622 Bridle DriveMarysville OH 43040	OprahDillon@gmail.com
1878	Wyatt Love	M	7370847-K	1965-11-10	715 Henry Smith LaneThibodaux LA 70301	WyattLove@gmail.com
1879	Aline Rivera	M	8834330-6	1972-12-15	98 E. Kingston Ave.North Andover MA 01845	AlineRivera@gmail.com
1880	Mannix Garcia	F	14166567-K	1996-12-19	7897 E. Water Ave.Suffolk VA 23434	MannixGarcia@gmail.com
1881	Eliana Elliott	M	7369616-8	1962-03-11	65 Roosevelt Ave.Taunton MA 02780	ElianaElliott@gmail.com
1882	Bruce Craft	F	15552535-K	1993-07-19	349 Hartford Dr.Tullahoma TN 37388	BruceCraft@gmail.com
1883	Howard Monroe	F	17030985-5	1993-11-16	183 Cambridge DriveFort Mill SC 29708	HowardMonroe@gmail.com
1884	Brenden Finley	F	16012110-K	1994-11-26	75 Leeton Ridge St.Woonsocket RI 02895	BrendenFinley@gmail.com
1885	Graham Hull	M	7765704-9	1962-03-22	8624 Brown Ave.Pittsburgh PA 15206	GrahamHull@gmail.com
1886	Connor Hutchinson	F	12264304-8	1979-09-24	209 N. Brown Ave.Flushing NY 11354	ConnorHutchinson@gmail.com
1887	Conan Wooten	M	12187267-K	1977-10-07	350 West DriveBeverly MA 01915	ConanWooten@gmail.com
1888	Conan Booker	F	9085274-K	1971-08-20	83 Brown StreetBelmont MA 02478	ConanBooker@gmail.com
1889	Petra Garcia	M	18958524-0	1984-05-13	8509 Depot St.Greensburg PA 15601	PetraGarcia@gmail.com
1890	Arthur Heath	F	18406878-4	1988-03-11	7089 Carpenter AvenueSpring Valley NY 10977	ArthurHeath@gmail.com
1891	Austin Davenport	M	18350088-8	1997-02-13	25 Leeton Ridge St.Odenton MD 21113	AustinDavenport@gmail.com
1892	Sebastian Higgins	F	9108484-K	1971-10-06	458 Eagle RoadWilloughby OH 44094	SebastianHiggins@gmail.com
1893	Elmo James	F	8220277-7	1976-10-15	479 Bay Meadows LaneBoca Raton FL 33428	ElmoJames@gmail.com
1894	Bernard Frost	F	15003335-9	1992-03-01	604 Foster St.Severna Park MD 21146	BernardFrost@gmail.com
1895	Sylvester Riddle	M	14179110-3	1983-04-28	420 Pendergast DriveGeneva IL 60134	SylvesterRiddle@gmail.com
1896	Kaseem Velez	F	6386947-4	1964-11-03	9370 North Snake Hill Ave.Parkville MD 21234	KaseemVelez@gmail.com
1897	Kerry Hinton	F	18393924-0	1982-10-25	5 Old Illinois Rd.Cedar Falls IA 50613	KerryHinton@gmail.com
1898	Thaddeus Griffin	M	10538337-3	1972-08-04	9623 Howard Rd.Lawrence Township NJ 08648	ThaddeusGriffin@gmail.com
1899	Sarah Rowe	M	14682028-3	1992-01-10	530 North Thompson St.Bethel Park PA 15102	SarahRowe@gmail.com
1900	Elmo Cabrera	F	6630803-1	1964-01-10	59 Lancaster St.Fleming Island FL 32003	ElmoCabrera@gmail.com
1901	Dante Gregory	F	8782598-K	1971-04-30	49 Leeton Ridge DriveHolly Springs NC 27540	DanteGregory@gmail.com
1902	Clayton Grimes	M	11718432-2	1979-06-24	4 St Louis St.Kokomo IN 46901	ClaytonGrimes@gmail.com
1903	Josiah James	M	17086589-6	1991-10-12	45 West Wentworth StreetNorman OK 73072	JosiahJames@gmail.com
1904	Rhea Finley	F	9341875-4	1976-10-22	1 Oklahoma DriveOwatonna MN 55060	RheaFinley@gmail.com
1905	Kimberly Hardin	M	6899402-5	1968-09-12	121 Mayfield StreetSulphur LA 70663	KimberlyHardin@gmail.com
1906	Preston Tyler	F	17018703-8	1989-11-28	375 Church St.Rocklin CA 95677	PrestonTyler@gmail.com
1907	Bruce Cain	F	7402177-K	1963-11-16	479 Bay Meadows LaneBoca Raton FL 33428	BruceCain@gmail.com
1908	Cairo Hinton	F	6390425-2	1970-12-04	9175 Plumb Branch Ave.Logansport IN 46947	CairoHinton@gmail.com
1909	Melinda Baldwin	M	10822981-K	1975-01-23	40 East Bedford St.Seattle WA 98144	MelindaBaldwin@gmail.com
1910	Jerome Daniel	F	7362543-2	1962-04-17	70 Heritage Rd.Monroeville PA 15146	JeromeDaniel@gmail.com
1911	Shaine Estrada	M	7948343-K	1967-06-24	246 Lower River CourtRichmond VA 23223	ShaineEstrada@gmail.com
1912	Graham Sharpe	M	7403666-6	1970-03-10	10 East DriveKearny NJ 07032	GrahamSharpe@gmail.com
1913	Jordan Finch	M	19827151-K	1985-04-17	767 Cobblestone St.Barberton OH 44203	JordanFinch@gmail.com
1914	Jerome Justice	F	17761402-K	1994-03-21	9027 SW. Taylor Rd.Urbandale IA 50322	JeromeJustice@gmail.com
1915	Paki Thomas	M	17387891-0	1984-07-19	62 NE. Dunbar St.Hopkinsville KY 42240	PakiThomas@gmail.com
1916	Elizabeth Patrick	M	16378695-5	1983-06-09	423 Cypress Ave.Macungie PA 18062	ElizabethPatrick@gmail.com
1917	Jesse Gonzalez	M	6211091-6	1961-12-05	97 Tower St.Pittsfield MA 01201	JesseGonzalez@gmail.com
1918	Susan Craft	F	15953985-K	1985-06-26	553 W. Wellington Dr.Reston VA 20191	SusanCraft@gmail.com
1919	Rose Daniel	M	8775151-6	1975-07-18	959 Squaw Creek St.Stafford VA 22554	RoseDaniel@gmail.com
1920	Andrew Buchanan	F	7588463-6	1960-10-24	220 Poor House StreetWebster NY 14580	AndrewBuchanan@gmail.com
1921	Jordan Rivers	M	19412399-8	1996-04-04	9573 Amerige St.Knoxville TN 37918	JordanRivers@gmail.com
1922	Amber Garcia	F	17411930-K	1997-04-23	479 Bay Meadows LaneBoca Raton FL 33428	AmberGarcia@gmail.com
1923	Devin Sweeney	M	14400384-4	1991-08-02	722 Lower River St.Easton PA 18042	DevinSweeney@gmail.com
1924	Clark Decker	M	7283174-1	1964-01-07	989 Jennings St.New Haven CT 06511	ClarkDecker@gmail.com
1925	Jerome Mckay	M	13547791-K	1989-07-28	425 Prince CourtCranberry Twp PA 16066	JeromeMckay@gmail.com
1926	Zephania Booker	F	11863209-K	1980-02-11	7315 Essex St.Poughkeepsie NY 12601	ZephaniaBooker@gmail.com
1927	Jocelyn Velez	M	15837863-K	1995-04-07	7940 Garfield CircleDayton OH 45420	JocelynVelez@gmail.com
1928	Alexander Tillman	F	7312576-K	1966-05-07	288 Pleasant Ave.Sugar Land TX 77478	AlexanderTillman@gmail.com
1929	Jackson Pollard	M	7672464-3	1960-05-20	18 Wood St.Amarillo TX 79106	JacksonPollard@gmail.com
1930	Shaine Finley	M	7624112-K	1966-04-15	942 Westminster Ave.Linden NJ 07036	ShaineFinley@gmail.com
1931	Nadine Booth	M	15687600-6	1998-07-29	715 Henry Smith LaneThibodaux LA 70301	NadineBooth@gmail.com
1932	Rhona Hull	M	6845705-K	1966-11-23	517 Fordham St.Wallingford CT 06492	RhonaHull@gmail.com
1933	Jerome Sharpe	F	7164853-6	1968-05-22	99 3rd Dr.Patchogue NY 11772	JeromeSharpe@gmail.com
1934	Susan Richard	M	7166418-3	1963-10-13	547 SW. Courtland DriveTorrance CA 90505	SusanRichard@gmail.com
1935	Dennis Holt	M	10809046-6	1978-03-29	25 Brandywine StreetHarrison Township MI 48045	DennisHolt@gmail.com
1936	Rhea Wagner	F	18569585-3	1992-10-29	8409 Durham St.Tuckerton NJ 08087	RheaWagner@gmail.com
1937	Mason Wooten	F	19288450-7	1985-03-22	33 Country RoadKalispell MT 59901	MasonWooten@gmail.com
1938	Rose Blake	M	15998949-2	1995-04-15	75 Bedford DriveManitowoc WI 54220	RoseBlake@gmail.com
1939	Caleb Cabrera	F	8407210-K	1975-12-06	634 Sherwood DriveCrystal Lake IL 60014	CalebCabrera@gmail.com
1940	Clark Hull	F	11167128-9	1977-02-04	789 Beechwood CourtNew Hyde Park NY 11040	ClarkHull@gmail.com
1941	Kaseem Holt	M	10905471-K	1972-04-27	94 Linda St.Bolingbrook IL 60440	KaseemHolt@gmail.com
1942	Felicia Estrada	F	17156916-6	1998-07-23	8615 William DriveSylvania OH 43560	FeliciaEstrada@gmail.com
1943	Ina Foreman	F	19065426-8	1985-03-29	8230 Fieldstone Ave.Germantown MD 20874	InaForeman@gmail.com
1944	Mannix Palmer	M	14504269-K	1985-04-17	8793 Harvard St.Blacksburg VA 24060	MannixPalmer@gmail.com
1945	Holly Monroe	M	13874845-K	1992-02-08	68 Rockwell RoadKent OH 44240	HollyMonroe@gmail.com
1946	Stephanie Hardin	M	11064710-K	1978-04-28	9770 Big Rock Cove Rd.Saginaw MI 48601	StephanieHardin@gmail.com
1947	Lysandra Rivera	M	12071940-K	1975-11-27	83 Gates AvenueSun City AZ 85351	LysandraRivera@gmail.com
1948	Josiah Tillman	F	18893024-K	1985-01-30	66 Old York St.Adrian MI 49221	JosiahTillman@gmail.com
1949	Giacomo Higgins	F	14202145-6	1995-07-17	25 Canterbury St.Anaheim CA 92806	GiacomoHiggins@gmail.com
1950	Andrew Finch	M	17731688-9	1993-10-30	354 Shirley LaneCedar Rapids IA 52402	AndrewFinch@gmail.com
1951	Jarrod Mckay	F	7182886-K	1965-05-08	4 NE. Joy Ridge LaneHigh Point NC 27265	JarrodMckay@gmail.com
1952	Sage Holt	M	7109646-K	1960-05-13	40 Gulf RoadBay Shore NY 11706	SageHolt@gmail.com
1953	Uriel Estrada	M	14593020-K	1991-03-12	409 Clinton St.Fairfield CT 06824	UrielEstrada@gmail.com
1954	Caleb Graves	M	7477141-0	1970-09-24	7773 West Trout StreetFlowery Branch GA 30542	CalebGraves@gmail.com
1955	Rhona Bullock	F	16794403-2	1989-12-24	89 Wrangler LaneCamp Hill PA 17011	RhonaBullock@gmail.com
1956	Preston Donaldson	F	17158053-1	1998-05-13	9994 Newbridge Ave.Saint Albans NY 11412	PrestonDonaldson@gmail.com
1957	Kirk Howard	M	11946781-K	1971-01-13	7480 Parker DriveMchenry IL 60050	KirkHoward@gmail.com
1958	Rose Velez	F	6742755-3	1965-02-20	547 SW. Courtland DriveTorrance CA 90505	RoseVelez@gmail.com
1959	Stephanie Wooten	F	16103985-K	1981-08-25	63 Lookout LaneSterling VA 20164	StephanieWooten@gmail.com
1960	Preston Kent	F	13676279-K	1988-11-16	7737 Summit StreetLibertyville IL 60048	PrestonKent@gmail.com
1961	Kibo Cleveland	F	19341323-5	1990-07-06	799 Center StreetChaska MN 55318	KiboCleveland@gmail.com
1962	Bertha Tyler	M	13228241-6	1996-07-15	8407 Heather AvenueDavenport IA 52804	BerthaTyler@gmail.com
1963	Paki Patrick	M	6302168-K	1963-02-04	8850 North Fairground St.Oakland Gardens NY 11364	PakiPatrick@gmail.com
1964	Cairo Vega	F	7198920-9	1966-09-19	275 SE. Tallwood Rd.Mason City IA 50401	CairoVega@gmail.com
1965	Camilla Howard	F	14526143-4	1986-03-20	802 Southampton LaneBedford OH 44146	CamillaHoward@gmail.com
1966	Raja Gregory	F	10922012-8	1977-08-25	25 Cherry Dr.Lake Zurich IL 60047	RajaGregory@gmail.com
1967	Petra Abbott	F	13143760-K	1998-03-21	27 Bayberry RoadBakersfield CA 93306	PetraAbbott@gmail.com
1968	Mannix Buchanan	F	16192785-3	1984-05-29	252B Marshall Dr.Vincentown NJ 08088	MannixBuchanan@gmail.com
1969	Rylee Velez	M	15540857-1	1997-07-18	66 Mayflower StreetPerrysburg OH 43551	RyleeVelez@gmail.com
1970	Susan Vega	M	15317567-K	1981-04-14	9214 Baker LaneLoganville GA 30052	SusanVega@gmail.com
1971	Thaddeus Bullock	M	8212565-9	1977-07-28	2 York St.Bethlehem PA 18015	ThaddeusBullock@gmail.com
1972	Howard Hinton	F	8555966-0	1980-02-08	881 4th Dr.Williamstown NJ 08094	HowardHinton@gmail.com
1973	Brianna Justice	F	19675135-K	1986-12-23	8085 Bald Hill StreetManchester Township NJ 08759	BriannaJustice@gmail.com
1974	Devin Palmer	M	8510919-9	1976-01-02	460 Blackburn RoadNewnan GA 30263	DevinPalmer@gmail.com
1975	Shaine Booth	M	7768440-1	1968-05-15	617 E. Oak Valley StreetGoshen IN 46526	ShaineBooth@gmail.com
1976	Cairo Abbott	M	6802791-5	1966-08-17	9039 Sugar DriveBluffton SC 29910	CairoAbbott@gmail.com
1977	Patience Finley	F	11807622-K	1973-02-05	70 East Oakland StreetWheeling WV 26003	PatienceFinley@gmail.com
1978	Joan Mcgee	F	7484251-4	1968-12-14	5 Lakeview Ave.Georgetown SC 29440	JoanMcgee@gmail.com
1979	Armando Gardner	F	9487804-K	1974-03-19	7254 Bridge Dr.Winona MN 55987	ArmandoGardner@gmail.com
1980	Louis Kennedy	F	17519165-K	1983-09-04	7179 Rockaway St.Lansdale PA 19446	LouisKennedy@gmail.com
1981	Germaine Rivera	F	6425044-6	1962-06-14	8448 Howard St.Cookeville TN 38501	GermaineRivera@gmail.com
1982	Bernard Colon	F	17392195-K	1994-10-11	7037 West Beacon LaneHollywood FL 33020	BernardColon@gmail.com
1983	Susan Hoover	F	12617417-4	1976-11-04	7099 North Grand CourtFrederick MD 21701	SusanHoover@gmail.com
1984	Fulton Gardner	M	19987784-2	1994-06-28	42 Stonybrook StreetMonroe Township NJ 08831	FultonGardner@gmail.com
1985	Clark Cleveland	F	17170842-K	1986-12-03	79 Adams Dr.Collegeville PA 19426	ClarkCleveland@gmail.com
1986	Sebastian Estrada	M	6679545-6	1961-09-21	9183 Green Rd.Palm City FL 34990	SebastianEstrada@gmail.com
1987	Castor Kirkland	M	12315364-K	1978-03-25	781 Creekside StreetGreensboro NC 27405	CastorKirkland@gmail.com
1988	Josephine Hutchinson	F	14361779-K	1981-07-05	8926 Old Carriage Dr.West Palm Beach FL 33404	JosephineHutchinson@gmail.com
1989	Melinda George	M	15706765-7	1981-05-18	9052 Sage St.Tonawanda NY 14150	MelindaGeorge@gmail.com
1990	Sharon Hansen	F	10475586-9	1977-07-02	89 Arnold Rd.Wellington FL 33414	SharonHansen@gmail.com
1991	Sylvester Fuller	F	15645094-6	1996-03-28	7348 Adams Ave.Amsterdam NY 12010	SylvesterFuller@gmail.com
1992	Castor Heath	M	6971016-K	1970-05-10	948 Cambridge StreetMount Vernon NY 10550	CastorHeath@gmail.com
1993	Ulric Davenport	M	7214131-8	1963-03-09	7270 Greystone St.Mechanicsville VA 23111	UlricDavenport@gmail.com
1994	Josiah Knapp	M	16358133-K	1981-03-01	7076 Overlook AvenueLutherville Timonium MD 21093	JosiahKnapp@gmail.com
1995	Baker Richard	M	7840991-K	1969-07-23	9809 Fairway Ave.Lockport NY 14094	BakerRichard@gmail.com
1996	Kirk Gonzalez	F	14268651-0	1986-08-29	14 Linda Dr.Mcallen TX 78501	KirkGonzalez@gmail.com
1997	Abbot Sweeney	F	6989228-K	1967-09-27	7591 Harvard Ave.Madison Heights MI 48071	AbbotSweeney@gmail.com
1998	Sylvester Wooten	M	16394208-K	1985-05-10	9499 Snake Hill St.Park Forest IL 60466	SylvesterWooten@gmail.com
1999	Alexander Hansen	F	19148830-0	1997-06-29	74 Green AvenueAltamonte Springs FL 32714	AlexanderHansen@gmail.com
2000	Josiah Elliott	F	10763017-K	1975-12-18	790 N. Redwood AvenueTiffin OH 44883	JosiahElliott@gmail.com
2001	Wyatt Knapp	M	6308941-K	1968-03-24	9736 Augusta St.Port Jefferson Station NY 11776	WyattKnapp@gmail.com
\.


--
-- Data for Name: afp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.afp (id, nombre, cantidad_afiliados, porcentaje_total, capital_de_inversion, comision_anual) FROM stdin;
0	Modelo	357	17.841079460269864	7267958798	0.077
1	Capital	337	16.8415792103948	7109333181	0.144
2	Cuprum	362	18.09095452273863	6963012293	0.144
3	Habitat	330	16.49175412293853	6985006133	0.127
4	Planvital	313	15.642178910544727	5989086830	0.116
5	Provida	302	15.092453773113442	6288329656	0.145
\.


--
-- Data for Name: afp_afiliados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.afp_afiliados (id, afp, apv, saldo_afp, saldo_apv, inicio_cotizacion, ultima_cotizacion) FROM stdin;
1	Planvital	t	31879416	29906770	1983-06-22	2019-08-23
2	Planvital	f	24581311	0	1982-09-30	2020-05-30
3	Capital	t	16240514	14839518	1992-04-30	2019-03-22
4	Capital	f	7006574	0	1983-06-01	2019-05-21
5	Capital	t	23932887	35110592	1988-05-14	2016-05-05
6	Cuprum	t	1585758	16162881	2006-01-17	2016-08-09
7	Habitat	f	15215351	0	2003-05-17	2019-12-15
8	Habitat	f	16223202	0	2010-04-30	2016-01-18
9	Habitat	t	12245370	7631471	1995-10-17	2018-01-03
10	Provida	f	14198772	0	2005-11-29	2017-07-02
11	Provida	f	31371475	0	1990-07-17	2016-06-29
12	Modelo	f	19635727	0	2010-09-29	2020-02-28
13	Provida	f	13206542	0	2011-06-15	2018-11-26
14	Capital	t	19251293	23078468	1988-09-12	2017-04-28
15	Provida	f	12306471	0	2007-10-14	2017-09-10
16	Capital	t	16996900	8563102	2002-06-20	2020-05-07
17	Capital	f	7005264	0	1998-03-14	2017-08-07
18	Habitat	f	17307462	0	2005-08-20	2016-07-28
19	Cuprum	f	1742884	0	2001-03-09	2017-11-26
20	Habitat	f	1035420	0	1997-05-27	2018-03-10
21	Cuprum	t	1138749	10697844	1995-08-15	2018-04-01
22	Habitat	f	3624686	0	1993-11-18	2017-09-02
23	Planvital	f	4465648	0	1995-03-26	2016-01-22
24	Provida	f	23725789	0	1982-04-29	2020-02-02
25	Modelo	t	18797492	12571760	1994-04-20	2019-12-07
26	Planvital	t	15042234	986574	1995-03-30	2018-03-04
27	Modelo	f	16730218	0	2001-03-29	2019-03-12
28	Provida	f	31317662	0	1982-05-06	2018-04-22
29	Capital	f	14552795	0	1999-04-14	2020-04-23
30	Planvital	f	9734367	0	1990-07-06	2019-11-13
31	Habitat	t	2878036	16970158	1993-09-12	2018-09-29
32	Habitat	f	15572537	0	1989-09-14	2016-03-03
33	Modelo	f	38080323	0	1987-07-22	2019-08-30
34	Habitat	t	14315731	7849767	2009-09-01	2019-02-03
35	Habitat	f	15910552	0	2002-06-24	2016-01-11
36	Habitat	t	7307668	6001041	1982-12-15	2016-12-26
37	Capital	f	13494798	0	1992-01-17	2018-04-22
38	Capital	t	7716677	12221747	2000-04-11	2019-03-06
39	Planvital	f	5675040	0	2006-11-10	2019-11-11
40	Provida	f	19618380	0	1999-01-10	2020-08-26
41	Modelo	f	12064106	0	2004-01-12	2020-02-24
42	Cuprum	t	16087920	9771430	1996-12-22	2019-09-12
43	Planvital	f	18006907	0	1997-01-22	2018-11-21
44	Modelo	t	26670926	39041215	1988-02-01	2016-09-23
45	Modelo	t	7233702	5632736	2013-06-26	2019-03-19
46	Capital	t	30231232	35364091	1987-01-23	2018-10-04
47	Habitat	f	14693481	0	2001-09-11	2018-01-06
48	Planvital	f	14759579	0	2009-03-28	2017-04-22
49	Habitat	f	10675772	0	2003-02-10	2020-01-08
50	Capital	f	397186	0	2012-06-14	2017-09-14
51	Habitat	t	9394115	2754836	2013-01-11	2018-07-09
52	Planvital	t	15490293	19361622	2002-01-03	2017-09-18
53	Planvital	f	24140895	0	1984-02-14	2018-03-11
54	Habitat	f	10371847	0	1996-06-15	2016-04-07
55	Modelo	t	3590878	3119543	2006-03-30	2018-09-19
56	Provida	f	22507143	0	1984-01-10	2018-07-20
57	Provida	t	18867620	1199881	1990-12-26	2019-04-11
58	Modelo	f	47046	0	1992-09-26	2017-12-23
59	Planvital	t	6207588	11380712	2009-01-15	2019-08-17
60	Cuprum	f	9552007	0	2012-11-06	2016-12-23
61	Cuprum	t	13223984	638925	2002-09-29	2018-11-06
62	Cuprum	f	5535212	0	2015-02-17	2016-12-15
63	Cuprum	f	13363293	0	2006-11-14	2017-02-27
64	Habitat	f	9977905	0	1995-08-09	2020-08-16
65	Modelo	t	8532002	16978283	1995-12-05	2019-12-19
66	Provida	f	36654797	0	1988-12-20	2016-12-16
67	Habitat	f	9008583	0	2017-03-24	2018-04-11
68	Cuprum	t	7857873	14411869	2001-08-24	2017-11-12
69	Cuprum	t	7724064	10728657	2012-02-12	2017-07-05
70	Habitat	t	16452609	11757782	2000-09-05	2018-10-11
71	Planvital	t	16920950	17072594	1982-07-29	2018-03-30
72	Habitat	t	21444835	26863412	1979-06-03	2020-01-01
73	Habitat	t	9999687	13979164	2000-06-07	2020-01-17
74	Planvital	f	36652252	0	1989-11-13	2018-06-24
75	Provida	t	2201653	13442286	1990-03-05	2018-09-18
76	Habitat	t	15513222	20852794	1982-10-31	2017-04-05
77	Capital	f	4761214	0	2011-04-26	2018-06-15
78	Cuprum	f	7623885	0	1989-04-27	2018-09-09
79	Habitat	t	25403126	17435519	1989-01-17	2017-06-03
80	Provida	t	15978323	12658663	2007-09-13	2016-02-07
81	Capital	f	6672008	0	1998-09-02	2019-06-19
82	Provida	t	12052340	19789830	2002-11-17	2017-02-24
83	Habitat	t	7063040	1418121	2010-10-08	2017-09-04
84	Cuprum	f	8651131	0	2002-10-19	2018-12-28
85	Capital	t	3313036	8186605	2016-12-17	2019-03-28
86	Habitat	f	4514521	0	1991-11-05	2018-02-12
87	Cuprum	f	7434187	0	1995-06-10	2016-09-17
88	Capital	t	13784686	13220013	1990-08-20	2017-08-23
89	Capital	t	31041948	22471691	1979-01-09	2020-04-06
90	Planvital	f	13083927	0	2012-07-29	2018-07-06
91	Planvital	t	18401318	3899818	2012-06-11	2016-05-18
92	Cuprum	f	1939220	0	1990-10-25	2018-06-09
93	Cuprum	f	7071652	0	2010-10-06	2020-03-01
94	Capital	t	13323836	12984388	1993-04-22	2016-11-30
95	Planvital	f	6826357	0	1987-01-04	2019-10-28
96	Cuprum	t	15522932	30053660	1988-02-27	2016-09-05
97	Provida	t	17970484	1095470	2002-01-10	2017-08-03
98	Cuprum	f	39719047	0	1989-01-14	2020-08-13
99	Capital	t	18490149	484293	2004-01-27	2019-02-04
100	Cuprum	t	33677341	30312999	1983-08-08	2017-10-21
101	Planvital	t	15826694	14035171	1992-04-12	2018-02-14
102	Modelo	t	1190498	796889	1994-05-05	2017-05-28
103	Cuprum	f	6947426	0	1990-09-07	2018-12-14
104	Provida	f	9637988	0	1998-09-08	2019-11-06
105	Modelo	f	5459696	0	2000-04-26	2019-06-06
106	Cuprum	t	4185857	12853306	2004-07-09	2020-01-21
107	Planvital	f	18007816	0	1983-12-13	2020-01-15
108	Modelo	f	430800	0	1995-06-18	2020-03-06
109	Capital	t	635276	9449000	2012-05-02	2019-04-06
110	Planvital	f	15557314	0	2015-06-01	2017-08-31
111	Planvital	f	11569291	0	2001-03-11	2020-04-14
112	Capital	t	10538904	5909399	1995-09-28	2019-11-06
113	Capital	t	37463561	38678791	1988-10-23	2020-06-25
114	Modelo	t	13801102	19528100	2015-05-01	2019-05-02
115	Habitat	t	14887695	3005438	2013-07-02	2016-08-23
116	Planvital	f	16338580	0	2014-08-26	2016-04-11
117	Provida	t	18330437	21143369	1980-06-15	2020-08-20
118	Provida	t	31966693	17278338	1981-09-09	2016-05-23
119	Capital	f	15679783	0	1992-06-23	2017-02-10
120	Planvital	t	8698521	1945741	2015-12-19	2020-04-02
121	Capital	t	24080482	35318721	1982-09-23	2016-10-27
122	Capital	t	10840734	3116811	2013-09-26	2017-03-06
123	Provida	f	13702826	0	2018-12-05	2019-04-09
124	Modelo	f	6549698	0	1992-03-25	2018-07-26
125	Modelo	f	17163736	0	1988-08-20	2016-08-27
126	Planvital	f	17284891	0	2004-11-18	2017-02-24
127	Modelo	f	16261525	0	1998-07-21	2017-02-18
128	Capital	f	357055	0	2009-09-16	2019-07-18
129	Cuprum	t	227743	13703955	2006-03-27	2020-03-25
130	Habitat	f	34749065	0	1983-02-20	2019-01-08
131	Habitat	f	15824330	0	2004-04-28	2020-08-29
132	Habitat	t	34659882	11691413	1988-09-27	2019-06-09
133	Provida	f	4985162	0	2008-03-28	2017-10-14
134	Capital	f	7625925	0	2003-12-17	2017-03-15
135	Capital	t	17766136	8719713	2003-05-09	2017-02-12
136	Cuprum	f	14021488	0	2009-01-15	2019-09-01
137	Habitat	f	16111325	0	1998-12-02	2018-10-23
138	Modelo	t	14195170	18695259	2008-03-11	2017-06-02
139	Planvital	t	12567567	9802933	1982-08-20	2017-03-12
140	Cuprum	f	7194730	0	1998-05-08	2020-06-29
141	Modelo	f	2711712	0	2006-09-12	2017-07-11
142	Provida	t	14149610	14820589	2010-12-05	2019-05-24
143	Modelo	f	3060710	0	2006-02-09	2017-02-01
144	Planvital	f	14701559	0	2014-01-18	2020-04-13
145	Planvital	t	4527084	18100043	2013-12-16	2018-03-11
146	Cuprum	f	13559442	0	2002-02-27	2019-03-31
147	Modelo	f	15314142	0	1978-08-09	2016-11-25
148	Modelo	t	5888313	8031087	2002-05-07	2017-11-03
149	Modelo	f	19970662	0	2017-07-05	2019-08-04
150	Modelo	t	18244840	7845053	2013-02-21	2020-08-30
151	Modelo	f	10217175	0	1990-03-27	2016-05-02
152	Capital	t	9846816	184641	2014-03-10	2019-11-13
153	Habitat	f	19253435	0	2011-07-04	2017-10-21
154	Modelo	t	6557179	1198292	1995-02-28	2020-07-17
155	Provida	f	16848521	0	1987-03-29	2016-01-21
156	Habitat	t	8595775	51680	2008-11-13	2018-03-20
157	Cuprum	f	18291788	0	2012-07-12	2016-11-22
158	Habitat	f	19457202	0	2008-04-03	2017-03-11
159	Cuprum	t	13680844	1871130	2010-01-01	2020-02-29
160	Capital	f	14649444	0	2017-12-03	2017-09-05
161	Planvital	t	18286695	2282832	1996-07-25	2019-08-05
162	Planvital	t	19740704	19103305	1997-02-08	2016-01-28
163	Cuprum	f	4452741	0	1994-09-17	2019-04-28
164	Habitat	t	19679199	6284183	2011-03-19	2018-07-13
165	Habitat	f	8724389	0	2016-07-04	2016-08-29
166	Cuprum	t	31863570	33619815	1980-02-21	2017-11-20
167	Cuprum	t	8446909	14258430	2009-11-12	2018-06-01
168	Provida	t	10189656	14646674	2015-07-11	2019-09-14
169	Cuprum	f	11581812	0	1996-12-02	2016-10-21
170	Cuprum	t	32452590	8079587	1987-05-25	2018-06-17
171	Modelo	t	19722242	19165985	2006-01-05	2016-12-28
172	Cuprum	t	16669201	19598258	2013-05-29	2019-09-23
173	Habitat	t	4752364	19797393	2012-11-10	2018-09-23
174	Cuprum	f	28994728	0	1980-05-22	2018-09-02
175	Capital	f	16972791	0	1995-04-21	2020-07-12
176	Provida	f	12520327	0	1983-11-12	2017-08-14
177	Cuprum	t	16189492	9831971	1994-01-23	2017-08-31
178	Planvital	f	12894828	0	1997-07-21	2020-02-01
179	Planvital	f	26454711	0	1981-08-10	2020-06-20
180	Modelo	t	14358808	8727589	2016-06-20	2016-12-18
181	Planvital	f	6459333	0	1995-04-26	2019-10-17
182	Habitat	f	10732115	0	1988-02-07	2016-06-03
183	Planvital	t	24210755	14431496	1982-07-07	2018-11-06
184	Provida	f	14458349	0	1983-03-19	2020-02-18
185	Planvital	t	20062080	35755205	1988-12-30	2019-12-01
186	Modelo	t	18113408	2972916	2016-10-14	2020-03-31
187	Capital	f	25585209	0	1988-11-19	2016-09-25
188	Planvital	t	23777934	35196197	1988-04-13	2019-03-23
189	Modelo	f	8927201	0	1995-01-05	2020-03-17
190	Modelo	f	25737379	0	1988-02-29	2017-05-11
191	Habitat	t	13449581	15756844	2004-01-30	2018-05-29
192	Modelo	f	1663662	0	1991-01-21	2019-09-08
193	Habitat	f	14196539	0	1995-07-08	2017-07-21
194	Habitat	t	34536265	34967423	1980-12-10	2019-11-07
195	Provida	f	17700164	0	1999-10-13	2020-01-07
196	Cuprum	f	11164068	0	2000-01-01	2016-11-23
197	Cuprum	t	1351946	17450720	2018-09-22	2019-06-02
198	Capital	t	15495590	16363263	1993-01-05	2018-03-07
199	Capital	t	1809235	12058840	2000-08-13	2017-11-11
200	Modelo	f	18199090	0	2012-01-11	2017-08-03
201	Provida	f	16150914	0	1987-06-08	2018-05-12
202	Modelo	f	39915837	0	1988-06-28	2019-11-18
203	Capital	t	8505530	7509659	1996-09-30	2019-05-10
204	Modelo	f	5496643	0	2005-09-19	2016-05-05
205	Planvital	f	20577538	0	1989-05-10	2019-06-11
206	Planvital	f	18136922	0	1986-09-10	2020-05-19
207	Provida	t	8885443	24591909	1982-06-24	2018-12-08
208	Habitat	t	30124122	23143189	1982-03-28	2016-02-02
209	Provida	t	17340294	1050829	2009-04-19	2017-08-15
210	Provida	t	6451673	2665659	1997-11-29	2016-01-27
211	Modelo	f	6319996	0	2002-12-21	2019-02-05
212	Habitat	t	15015822	9714427	1996-07-29	2018-03-16
213	Provida	t	16739631	12981615	2004-04-22	2016-03-04
214	Habitat	f	30916278	0	1984-10-02	2016-11-24
215	Modelo	t	6591865	19438200	2012-11-05	2016-03-13
216	Habitat	t	14901088	18404655	2017-01-05	2018-09-04
217	Provida	f	9327292	0	2002-12-14	2018-05-16
218	Cuprum	t	15271263	19617931	2011-08-04	2017-03-05
219	Habitat	f	16224794	0	2001-07-05	2018-09-23
220	Provida	f	2031418	0	2003-04-04	2017-05-13
221	Habitat	t	2185503	10335365	2009-02-05	2017-08-10
222	Modelo	f	9325324	0	1990-01-20	2017-08-31
223	Provida	f	23841759	0	1982-01-21	2018-11-01
224	Planvital	t	3190508	3234201	2008-01-31	2018-02-15
225	Capital	t	39398463	36824545	1990-09-12	2016-12-07
226	Cuprum	t	14707777	6105965	2003-03-02	2016-12-10
227	Planvital	f	1360596	0	2015-12-22	2019-02-09
228	Habitat	t	14435530	3012151	1991-04-05	2017-11-07
229	Modelo	f	7920912	0	2014-05-21	2018-02-11
230	Capital	f	12721053	0	1999-08-18	2017-08-30
231	Cuprum	t	16373504	15136631	1985-05-20	2019-05-18
232	Planvital	f	8469730	0	1997-06-25	2016-11-12
233	Provida	t	19030458	12835497	2004-10-28	2017-06-07
234	Planvital	f	5182892	0	2016-06-08	2016-12-16
235	Capital	t	14077106	13678413	2014-02-09	2018-05-04
236	Habitat	t	17654150	6778307	2002-03-31	2020-02-18
237	Modelo	f	12298182	0	2015-08-20	2017-01-19
238	Modelo	f	17427092	0	2009-12-03	2020-07-19
239	Capital	t	18845019	35398800	1981-05-10	2018-11-28
240	Planvital	t	5697560	13912666	1991-01-05	2019-10-19
241	Capital	f	11245049	0	2005-02-07	2016-10-21
242	Modelo	t	14139068	18922149	2008-07-28	2016-04-01
243	Modelo	t	28075004	25156549	1989-03-15	2016-03-27
244	Planvital	f	8938314	0	2014-08-08	2016-02-12
245	Modelo	f	4256564	0	2016-09-14	2016-01-05
246	Cuprum	f	32628792	0	1987-09-27	2016-08-15
247	Planvital	t	2563683	19036158	1991-03-22	2018-05-15
248	Modelo	t	8675734	19492345	2017-03-30	2018-11-12
249	Cuprum	t	20479860	12243967	1981-06-28	2019-04-23
250	Habitat	f	9561858	0	2000-09-30	2017-10-26
251	Provida	t	3543813	7425947	2015-04-11	2016-04-14
252	Modelo	t	8865282	7764612	2015-09-10	2016-06-28
253	Planvital	f	20348591	0	1985-02-20	2019-11-16
254	Cuprum	f	36017738	0	1980-10-31	2016-04-19
255	Modelo	f	19042530	0	2016-03-14	2019-12-27
256	Cuprum	f	13740795	0	1991-12-09	2017-02-17
257	Planvital	t	6546701	12713171	2002-08-02	2016-08-22
258	Habitat	f	34625574	0	1980-12-26	2017-05-18
259	Planvital	f	9719492	0	1980-02-07	2016-08-09
260	Habitat	t	13473508	22507889	1988-02-23	2016-06-27
261	Provida	f	2425934	0	2001-05-11	2020-02-09
262	Modelo	t	18445351	6847571	1982-07-09	2016-12-03
263	Habitat	f	6091976	0	1986-02-06	2016-06-18
264	Planvital	f	4374011	0	2002-08-29	2017-12-10
265	Provida	t	17351220	17153711	2002-02-24	2016-08-09
266	Modelo	t	16134765	18828592	2013-08-20	2019-08-08
267	Habitat	t	14120363	8850915	2009-01-06	2016-12-05
268	Modelo	t	13635347	12718843	1990-11-05	2018-09-16
269	Capital	t	37219269	32233449	1988-11-27	2019-03-20
270	Planvital	f	8618026	0	2005-10-01	2017-02-11
271	Planvital	f	12080281	0	2001-05-10	2017-04-09
272	Modelo	f	16037716	0	2014-12-21	2019-02-14
273	Cuprum	f	10394239	0	1991-05-15	2020-06-13
274	Planvital	t	4960966	1563848	2011-09-25	2019-04-20
275	Modelo	f	5447440	0	2013-02-22	2019-02-25
276	Cuprum	f	8594551	0	2008-06-20	2018-04-19
277	Provida	t	3441871	4541232	2001-11-07	2019-12-17
278	Cuprum	f	11850198	0	2014-10-17	2017-09-27
279	Habitat	f	3892832	0	2002-07-29	2018-02-11
280	Habitat	t	9891960	3155137	2010-05-26	2018-03-08
281	Provida	t	6034148	3555925	1992-04-17	2016-09-20
282	Capital	f	11218981	0	1982-11-25	2018-07-29
283	Planvital	t	6746553	14036747	1997-01-23	2017-04-14
284	Planvital	t	12765546	4804982	2010-07-29	2019-06-25
285	Capital	t	14855023	1803096	1993-03-07	2017-04-24
286	Habitat	f	19716535	0	1982-05-16	2020-07-21
287	Planvital	t	4036924	13055075	2002-02-14	2018-07-26
288	Cuprum	t	670137	11127769	2010-05-24	2016-04-17
289	Cuprum	f	11173298	0	1998-03-17	2019-06-28
290	Cuprum	f	16350258	0	1996-12-01	2019-12-16
291	Provida	f	10280215	0	2003-10-02	2019-04-21
292	Provida	t	13944840	20744883	1985-10-01	2019-12-21
293	Capital	f	9323772	0	2006-10-20	2018-08-13
294	Planvital	f	17522349	0	1992-03-16	2017-11-19
295	Capital	t	38180550	16956139	1989-10-24	2018-04-18
296	Capital	t	19103532	13771221	2011-06-25	2016-10-29
297	Cuprum	t	4806459	5141573	2009-09-29	2020-06-05
298	Cuprum	f	1953672	0	2008-10-24	2019-12-11
299	Cuprum	f	7325396	0	2000-11-03	2018-02-02
300	Capital	t	17904507	10277792	2004-09-30	2018-07-20
301	Capital	f	26933693	0	1982-02-08	2019-10-06
302	Planvital	f	12108211	0	2001-09-18	2016-10-06
303	Capital	t	7662715	4499282	2005-07-31	2017-10-09
304	Provida	f	3823441	0	2000-05-03	2020-02-14
305	Planvital	t	1838656	4556653	1995-04-29	2020-07-04
306	Habitat	t	12687828	34350421	1981-06-16	2017-02-26
307	Capital	f	25527882	0	1988-04-23	2018-04-28
308	Cuprum	t	4847349	1964260	2013-08-06	2020-06-13
309	Capital	f	8226726	0	1980-03-30	2018-03-29
310	Modelo	t	2435187	5718479	2017-03-24	2018-02-15
311	Modelo	f	18448440	0	1982-11-23	2020-04-05
312	Modelo	f	39449080	0	1986-11-15	2018-07-03
313	Planvital	f	138771	0	1999-03-13	2019-09-26
314	Provida	f	13905023	0	1996-09-14	2016-10-28
315	Cuprum	t	13372203	7910834	2006-09-25	2020-06-13
316	Capital	t	19383009	11368326	2008-09-16	2019-02-19
317	Planvital	t	14346388	14830705	2003-08-17	2020-07-22
318	Habitat	f	30248759	0	1980-08-31	2019-11-12
319	Modelo	t	9518856	6365838	2000-06-22	2018-04-08
320	Provida	t	9763367	1366710	1992-03-26	2018-07-02
321	Capital	f	18553146	0	1997-05-17	2017-09-24
322	Capital	f	12499178	0	1985-09-29	2017-04-09
323	Capital	f	20870162	0	1989-08-19	2017-08-26
324	Provida	f	9254152	0	2001-01-20	2017-07-19
325	Provida	t	16955456	9207788	2012-01-30	2019-01-28
326	Planvital	t	19787516	8049219	2004-06-19	2017-05-19
327	Habitat	f	9596287	0	1995-04-20	2019-12-15
328	Planvital	f	23393238	0	1985-01-16	2018-07-18
329	Cuprum	t	9286651	4559737	2000-07-05	2019-11-07
330	Modelo	f	13768137	0	1995-09-13	2017-11-21
331	Habitat	t	14357161	27600641	1988-10-21	2018-08-03
332	Habitat	t	18595256	9987745	2003-06-12	2019-01-12
333	Provida	f	19764245	0	1999-11-25	2016-03-06
334	Provida	t	15730100	16333165	1998-02-17	2017-03-21
335	Provida	t	6145262	12540398	2010-06-07	2019-08-19
336	Modelo	f	10274669	0	2010-07-02	2017-12-10
337	Modelo	t	15160558	23092803	1987-06-03	2016-02-02
338	Modelo	t	3590252	16229056	2012-03-10	2019-05-09
339	Modelo	f	12111006	0	2016-04-03	2017-09-22
340	Planvital	t	28416592	29505589	1982-08-06	2016-03-26
341	Planvital	t	28983217	8577357	1985-01-05	2020-06-22
342	Cuprum	f	22722605	0	1989-12-12	2016-07-17
343	Provida	f	34899210	0	1980-11-29	2017-05-26
344	Cuprum	f	38485597	0	1978-02-27	2016-09-25
345	Planvital	f	4702011	0	2009-07-23	2018-11-27
346	Habitat	t	7444653	18389029	1990-03-10	2017-02-21
347	Capital	t	15295035	13602694	2003-01-22	2019-06-29
348	Capital	f	38198355	0	1980-08-21	2020-05-13
349	Cuprum	t	4763879	17474541	2007-07-09	2016-06-01
350	Planvital	t	5558414	17742572	2010-12-09	2017-12-01
351	Habitat	f	1070997	0	2013-10-22	2018-03-05
352	Capital	f	16006455	0	2003-10-29	2016-02-24
353	Modelo	f	16350863	0	1979-05-20	2016-10-18
354	Capital	t	11974354	15162893	2000-06-10	2017-02-22
355	Cuprum	t	4477420	260553	2004-12-02	2016-01-30
356	Cuprum	f	8105756	0	2004-12-26	2016-11-26
357	Cuprum	f	271793	0	1996-06-04	2017-05-08
358	Provida	f	11065640	0	1987-01-14	2019-11-09
359	Capital	t	4570777	12593223	2017-01-02	2018-08-11
360	Capital	t	6005177	36980539	1980-01-05	2017-07-07
361	Provida	f	26680383	0	1986-09-07	2018-07-02
362	Modelo	t	8269348	15068901	2011-06-06	2017-09-17
363	Planvital	t	10832468	30414847	1979-01-07	2016-10-19
364	Capital	t	13772719	17782838	1996-06-16	2017-09-13
365	Planvital	f	7488432	0	1981-06-01	2019-02-10
366	Habitat	f	20046864	0	1979-12-03	2016-03-11
367	Provida	f	34632527	0	1981-04-02	2016-11-29
368	Habitat	f	11590301	0	2016-05-30	2018-07-05
369	Modelo	f	10497930	0	2013-09-08	2016-03-07
370	Capital	f	4211792	0	2007-04-28	2020-03-02
371	Modelo	f	9151601	0	2010-03-10	2016-06-18
372	Capital	f	8545959	0	2015-02-09	2018-03-25
373	Capital	f	8014157	0	1983-12-11	2019-04-13
374	Modelo	t	23750474	13818530	1982-07-22	2017-11-06
375	Cuprum	f	7052794	0	1998-07-31	2017-02-04
376	Habitat	t	19005550	24423312	1980-05-28	2018-10-16
377	Provida	t	2642126	8700700	2006-11-23	2019-01-23
378	Provida	f	1000941	0	2012-08-09	2018-08-10
379	Cuprum	f	9323779	0	2009-01-25	2016-06-28
380	Capital	t	22314484	21043728	1984-01-09	2016-01-02
381	Modelo	f	3825029	0	2007-01-23	2016-11-23
382	Modelo	f	10730684	0	1994-07-28	2020-01-21
383	Habitat	t	11450875	7762655	2012-11-14	2019-09-09
384	Habitat	f	19735094	0	2009-02-08	2019-07-25
385	Provida	f	15238697	0	2007-08-16	2018-05-31
386	Habitat	f	15277761	0	1988-07-10	2019-06-30
387	Capital	f	76123	0	2008-05-10	2016-05-27
388	Habitat	f	5556846	0	2001-02-09	2016-08-21
389	Provida	f	12254044	0	1994-12-17	2016-09-20
390	Capital	t	4347317	5545760	2001-01-13	2018-12-01
391	Modelo	t	22091292	16466344	1979-06-22	2016-09-27
392	Modelo	f	16466055	0	2008-08-24	2020-02-24
393	Capital	t	16779426	16139281	2002-05-16	2020-01-22
394	Cuprum	f	9324329	0	2008-08-19	2020-01-19
395	Provida	t	24438962	28541129	1986-10-28	2016-09-08
396	Provida	t	7488815	33534586	1980-11-10	2018-04-22
397	Modelo	t	33499087	39397808	1985-08-05	2020-06-19
398	Habitat	f	3374188	0	1991-09-02	2018-03-22
399	Habitat	t	14313895	37616759	1982-12-01	2018-07-15
400	Provida	t	13994535	17730345	2012-07-21	2017-09-28
401	Provida	f	14214290	0	1986-07-30	2019-11-08
402	Habitat	t	17239060	9299256	1996-11-06	2016-12-24
403	Cuprum	f	10877272	0	2001-01-02	2020-06-24
404	Habitat	t	7531078	4059176	2016-09-23	2018-06-26
405	Planvital	f	10382474	0	2013-06-30	2019-03-06
406	Provida	t	11789697	13010111	1992-11-30	2019-01-09
407	Provida	f	5126501	0	2011-01-16	2016-02-02
408	Cuprum	t	4708434	17214010	1993-01-25	2020-08-24
409	Modelo	f	14012089	0	2012-11-23	2018-01-07
410	Cuprum	t	2678223	14535510	2009-01-20	2020-04-27
411	Planvital	t	28083575	9260551	1986-08-26	2019-06-21
412	Modelo	f	5192022	0	2006-06-06	2019-09-28
413	Provida	t	12100400	19658861	1997-08-23	2018-03-16
414	Provida	t	13262815	4214006	2011-08-17	2019-11-09
415	Capital	t	16933902	17878427	2015-10-04	2017-02-12
416	Modelo	f	9964207	0	1987-05-31	2017-06-18
417	Cuprum	f	17274007	0	2012-01-15	2019-05-09
418	Provida	t	4956153	971906	2018-10-05	2020-01-20
419	Modelo	f	17633185	0	1983-04-19	2016-10-06
420	Planvital	t	262740	11460619	2013-10-28	2016-05-16
421	Cuprum	f	37012589	0	1985-02-17	2019-09-17
422	Planvital	f	11969340	0	2002-02-28	2016-01-23
423	Cuprum	f	4558585	0	2009-06-03	2016-12-30
424	Cuprum	t	20679075	16042084	1984-09-08	2020-08-14
425	Cuprum	f	6923434	0	1987-02-25	2019-10-18
426	Modelo	f	10796860	0	1979-03-02	2016-05-31
427	Cuprum	f	20561647	0	1984-01-27	2017-03-08
428	Planvital	f	16909492	0	1985-08-31	2018-02-28
429	Modelo	t	35600018	11358525	1984-10-07	2016-09-01
430	Habitat	t	801255	17459503	2000-11-19	2020-01-13
431	Planvital	f	18423112	0	2009-02-19	2017-09-14
432	Cuprum	f	8523724	0	1998-08-29	2018-11-20
433	Provida	t	11906813	17493235	1999-03-27	2019-03-11
434	Capital	t	14394076	12186937	1999-07-29	2020-03-21
435	Modelo	t	19365964	11474558	2002-11-16	2018-10-18
436	Cuprum	f	10378936	0	2012-07-13	2020-04-27
437	Planvital	t	11581580	10550463	2009-11-10	2020-08-13
438	Provida	t	13973256	27383816	1987-08-02	2016-04-22
439	Provida	t	17109495	14990179	2004-11-13	2019-05-25
440	Provida	f	10891006	0	2013-01-26	2016-06-28
441	Capital	f	3094420	0	2015-06-10	2018-09-12
442	Provida	t	9683494	12763841	2008-05-15	2016-08-11
443	Provida	t	18229639	8212559	1998-02-15	2016-10-16
444	Provida	f	20184738	0	1988-01-14	2019-02-21
445	Planvital	t	638851	7552183	1993-01-12	2016-06-05
446	Cuprum	t	25466183	21640894	1986-03-21	2017-01-28
447	Planvital	f	13167351	0	2013-08-09	2017-12-25
448	Habitat	t	19556047	24808809	1979-09-16	2019-07-21
449	Habitat	t	11226004	11693108	1990-08-01	2016-01-12
450	Cuprum	t	8673857	3731596	2008-02-10	2020-02-29
451	Modelo	t	18952833	16930614	1991-09-29	2019-06-26
452	Modelo	t	12991906	8348725	1983-05-13	2018-12-07
453	Provida	t	1504526	13935333	2014-01-19	2019-02-25
454	Habitat	t	13968218	11086685	2015-04-30	2019-03-08
455	Cuprum	f	10892620	0	1992-09-11	2018-10-30
456	Planvital	t	21665320	9264245	1989-06-24	2018-07-06
457	Capital	t	18148037	8008526	1991-09-04	2017-09-12
458	Cuprum	t	10061593	5632043	2012-07-24	2016-07-22
459	Provida	t	17525792	1674044	1991-11-08	2018-04-18
460	Provida	t	19472468	4693512	1991-06-03	2020-07-12
461	Modelo	f	17085065	0	1998-09-03	2018-01-07
462	Capital	f	5913741	0	2015-08-05	2020-08-31
463	Cuprum	t	10296362	16045087	1991-10-07	2016-04-22
464	Planvital	f	1601384	0	1991-11-23	2019-01-24
465	Capital	f	7783865	0	1994-07-24	2020-04-04
466	Cuprum	t	1365269	2863394	2016-08-20	2020-01-07
467	Capital	f	16984644	0	2011-08-20	2020-05-07
468	Cuprum	f	648527	0	2014-12-01	2016-04-15
469	Planvital	f	369285	0	2008-04-12	2017-09-26
470	Capital	t	4979746	14001187	2006-09-12	2019-01-15
471	Provida	f	9901211	0	1984-12-21	2019-02-11
472	Capital	f	7906403	0	2014-05-19	2018-03-07
473	Cuprum	t	5790661	18044317	2010-08-24	2020-02-13
474	Planvital	t	6749671	13356029	1994-10-24	2020-07-02
475	Modelo	f	3335864	0	2015-03-25	2019-09-18
476	Modelo	f	10600903	0	2002-12-23	2018-07-06
477	Cuprum	f	10332073	0	1992-01-07	2018-12-04
478	Habitat	t	18340170	2812661	2003-05-21	2019-11-01
479	Cuprum	t	12616696	14557109	1990-05-16	2017-02-23
480	Cuprum	t	16606345	9819285	2002-12-22	2016-10-28
481	Habitat	f	1465713	0	2014-02-07	2016-10-12
482	Capital	t	12597537	7809943	2008-06-25	2018-12-21
483	Modelo	t	28493815	32005625	1988-03-13	2018-10-17
484	Cuprum	f	4656632	0	2006-12-05	2016-07-08
485	Cuprum	t	34810384	31749086	1979-01-15	2017-09-14
486	Capital	f	17494237	0	2015-01-23	2017-05-17
487	Planvital	t	11043186	4577884	1996-04-27	2018-03-13
488	Modelo	t	18182764	9600724	1997-09-09	2016-08-07
489	Planvital	f	4485714	0	2016-07-21	2016-08-27
490	Habitat	f	34461510	0	1986-10-05	2018-06-09
491	Planvital	f	4514136	0	2012-08-01	2016-08-17
492	Cuprum	f	19092859	0	2015-09-03	2019-10-18
493	Habitat	f	3531594	0	2003-01-12	2019-12-21
494	Planvital	f	16920053	0	2018-11-16	2018-12-01
495	Modelo	f	7944100	0	2004-04-01	2017-07-14
496	Planvital	f	14528344	0	2005-05-18	2017-07-24
497	Modelo	f	35113031	0	1984-07-28	2019-05-23
498	Provida	t	17342328	9359147	1995-09-07	2018-11-13
499	Habitat	t	2656791	15933556	2007-11-06	2017-08-26
500	Modelo	t	7940258	14497915	2007-10-10	2018-08-31
501	Provida	t	15299301	8503845	1992-10-19	2017-01-10
502	Provida	t	11734949	11059660	2002-06-02	2018-03-09
503	Modelo	f	7077546	0	2014-10-22	2018-06-11
504	Cuprum	t	990807	10639189	2005-03-25	2016-12-26
505	Planvital	f	9010703	0	2018-09-11	2018-11-03
506	Provida	f	16845662	0	2002-06-21	2016-11-27
507	Modelo	t	18514019	1529432	1995-07-10	2019-12-01
508	Habitat	f	21401624	0	1986-04-04	2016-02-17
509	Planvital	t	9875019	6615738	2009-04-27	2019-10-19
510	Capital	f	8613569	0	1985-06-06	2019-02-13
511	Habitat	t	22728121	13515020	1988-02-05	2019-04-29
512	Capital	f	15225464	0	1983-01-24	2017-05-07
513	Modelo	f	9628541	0	2017-08-07	2020-04-06
514	Habitat	f	10753051	0	2005-11-09	2018-09-17
515	Capital	t	3858940	17238888	2005-10-01	2016-03-26
516	Modelo	f	6065190	0	1996-06-04	2016-06-29
517	Provida	t	16539967	4023330	1991-06-24	2019-12-06
518	Cuprum	t	8889094	30552797	1986-12-18	2016-01-13
519	Habitat	t	15867859	17741712	1990-12-09	2017-05-06
520	Capital	f	2057763	0	2005-02-28	2017-07-08
521	Cuprum	f	19026424	0	1984-12-07	2016-08-17
522	Modelo	f	34468034	0	1984-07-04	2020-01-24
523	Modelo	f	18815088	0	1980-09-04	2019-08-01
524	Habitat	t	19424169	17078509	2011-02-08	2016-10-01
525	Habitat	f	22930483	0	1986-07-02	2016-02-26
526	Capital	t	5413640	2113977	2002-11-08	2017-10-01
527	Capital	t	25284826	10219122	1985-07-20	2017-09-18
528	Habitat	t	15525050	3725396	1990-12-02	2019-05-11
529	Habitat	t	6770800	464527	1994-03-23	2016-04-30
530	Provida	t	5005272	16186667	1993-11-06	2019-02-17
531	Planvital	f	25028267	0	1987-04-28	2020-04-11
532	Modelo	t	33518672	9247928	1985-03-23	2017-03-07
533	Modelo	f	12650533	0	1980-01-18	2019-09-08
534	Provida	f	16656424	0	1994-04-23	2019-01-16
535	Modelo	f	10885657	0	2006-03-23	2017-01-09
536	Provida	t	19867948	1673830	2009-07-08	2020-08-12
537	Cuprum	t	9704263	14310367	2009-06-01	2017-02-24
538	Cuprum	t	8421607	10876849	2012-02-11	2017-09-17
539	Planvital	f	4296976	0	1999-02-13	2017-11-24
540	Modelo	f	7563014	0	1999-07-04	2018-12-09
541	Planvital	t	36522641	28468901	1988-09-05	2020-05-29
542	Modelo	t	9470835	8577985	1991-10-18	2017-06-21
543	Capital	t	12780578	27147669	1990-09-16	2019-12-13
544	Modelo	t	5646722	17827839	2013-04-16	2019-06-27
545	Cuprum	t	17516924	6061711	2014-03-10	2016-06-14
546	Modelo	t	13955188	19431263	2017-12-27	2017-01-07
547	Cuprum	t	17944958	8774506	1985-06-21	2017-01-09
548	Modelo	t	9277585	14527898	2009-09-18	2017-01-24
549	Provida	t	10312351	1037830	2002-03-07	2018-11-23
550	Planvital	t	18972404	19199690	1994-01-13	2016-08-05
551	Capital	t	18698723	7804131	2003-09-28	2019-09-20
552	Capital	f	978732	0	2011-11-02	2016-05-04
553	Cuprum	f	11362262	0	2000-01-19	2017-06-25
554	Capital	f	26710304	0	1979-02-24	2016-04-08
555	Capital	f	7646768	0	1983-07-21	2016-04-23
556	Planvital	f	14867165	0	1997-08-14	2019-02-10
557	Cuprum	f	6997027	0	1991-09-21	2019-09-09
558	Capital	f	11080644	0	2011-02-12	2019-11-13
559	Provida	f	6225982	0	1994-08-23	2018-09-18
560	Cuprum	f	16814757	0	1999-05-28	2017-11-04
561	Planvital	t	19710987	17891701	1991-03-17	2016-05-22
562	Cuprum	t	5165580	10016736	1997-12-31	2018-03-05
563	Provida	t	12060715	18126127	1996-12-13	2016-01-04
564	Cuprum	f	35279237	0	1980-09-23	2019-05-01
565	Modelo	f	8539991	0	2010-08-13	2018-02-27
566	Planvital	f	17126120	0	1982-05-20	2017-07-09
567	Capital	f	18731065	0	2000-03-20	2017-04-10
568	Cuprum	f	11193646	0	1988-11-14	2020-01-31
569	Provida	t	1702053	10303192	2006-06-07	2020-03-06
570	Cuprum	t	39237896	12254017	1986-03-17	2017-07-30
571	Provida	t	19243966	5765455	2016-08-29	2018-06-10
572	Provida	f	13401982	0	2016-09-01	2019-10-30
573	Planvital	t	37208602	13942830	1989-12-06	2019-08-20
574	Provida	f	15903352	0	2004-07-01	2020-05-29
575	Capital	t	19915298	19701594	1999-06-28	2018-08-01
576	Modelo	f	3492609	0	2017-03-14	2019-01-02
577	Capital	t	31960205	11850422	1987-07-02	2019-10-24
578	Cuprum	f	16000111	0	2013-11-11	2018-05-28
579	Provida	f	19449262	0	2010-04-11	2018-02-19
580	Habitat	t	25594	11581990	2012-07-21	2019-01-08
581	Modelo	t	10840414	14056767	2007-04-21	2019-04-13
582	Cuprum	f	38657633	0	1980-07-17	2016-01-03
583	Cuprum	f	4808838	0	2010-02-26	2020-05-11
584	Cuprum	t	7656350	3593790	2011-08-10	2017-11-25
585	Habitat	f	12579915	0	2015-11-15	2020-02-04
586	Capital	f	3932640	0	2008-04-29	2019-06-16
587	Modelo	t	13057436	10599944	2017-07-15	2018-09-14
588	Habitat	t	9712877	14150508	1982-07-25	2017-05-01
589	Planvital	f	2588944	0	2003-09-05	2016-09-02
590	Modelo	f	36854150	0	1982-04-12	2017-02-03
591	Cuprum	t	12589286	15874349	1995-06-16	2020-03-08
592	Cuprum	t	15329742	2666609	2017-07-05	2018-10-26
593	Habitat	f	12979026	0	2002-10-24	2018-08-08
594	Capital	t	13303340	8481393	2017-09-09	2017-01-03
595	Planvital	t	7684776	8848136	2014-12-15	2016-02-26
596	Provida	f	18307651	0	2015-05-14	2019-10-28
597	Capital	f	9418441	0	2018-03-27	2020-04-08
598	Cuprum	t	9406669	19139469	1995-12-14	2019-12-31
599	Capital	f	9957522	0	1997-02-22	2017-12-26
600	Planvital	f	38615838	0	1982-06-26	2020-08-02
601	Modelo	f	14011333	0	2009-02-09	2016-06-08
602	Modelo	t	10481368	17113533	2003-09-07	2017-03-08
603	Capital	f	11206189	0	2012-02-05	2016-05-12
604	Provida	t	157912	8831153	2001-03-24	2018-03-31
605	Planvital	f	28046005	0	1987-06-09	2016-01-27
606	Modelo	t	6726169	13743086	2006-06-19	2019-12-30
607	Capital	t	5985273	12662555	2010-02-13	2018-01-15
608	Habitat	f	12382481	0	2002-02-01	2017-04-23
609	Cuprum	t	11411065	6208907	2012-02-18	2018-01-03
610	Habitat	f	7262887	0	2004-08-26	2017-01-19
611	Planvital	t	12380455	4483036	2006-02-05	2017-02-18
612	Habitat	f	11389740	0	1987-11-15	2019-09-15
613	Modelo	t	8634349	17998381	1986-09-05	2018-07-16
614	Capital	t	4978603	721815	1996-07-23	2017-09-15
615	Habitat	t	16391529	5772891	1991-08-12	2019-06-14
616	Cuprum	f	16309772	0	2004-03-08	2020-02-08
617	Capital	f	33091004	0	1988-12-25	2018-09-21
618	Capital	t	6901158	2127255	2011-05-27	2016-08-05
619	Provida	t	33547855	21496241	1983-08-02	2020-02-01
620	Capital	f	194946	0	1992-09-13	2016-05-05
621	Capital	f	18989040	0	2012-05-07	2017-10-20
622	Planvital	f	20820687	0	1986-08-29	2018-03-25
623	Modelo	f	28031770	0	1989-01-29	2019-01-22
624	Modelo	t	21955880	11862431	1984-01-12	2019-04-28
625	Modelo	t	36183473	31022573	1979-07-22	2016-08-26
626	Cuprum	t	19335416	16069354	1996-08-25	2017-07-17
627	Habitat	f	7771426	0	2005-09-20	2020-05-09
628	Planvital	t	18618719	18349349	2012-11-05	2020-08-29
629	Capital	f	18433480	0	2013-04-28	2020-07-02
630	Planvital	t	11119420	36072071	1987-09-13	2020-04-15
631	Capital	t	13003642	14151994	1998-06-30	2016-04-08
632	Habitat	t	8160604	13248194	2013-08-26	2016-07-22
633	Cuprum	t	8688062	10463749	2014-11-24	2019-02-27
634	Habitat	t	3070100	11950303	2015-05-30	2017-12-03
635	Planvital	f	19275578	0	1996-10-29	2019-01-03
636	Planvital	f	17172244	0	2014-11-02	2019-08-16
637	Modelo	t	4230023	10499991	2007-11-17	2016-04-10
638	Modelo	t	9568806	8506014	2009-04-26	2019-05-31
639	Cuprum	f	10066050	0	1981-04-28	2017-08-03
640	Cuprum	f	12166871	0	1981-07-22	2018-09-03
641	Planvital	f	2458884	0	1993-05-16	2018-11-12
642	Capital	t	14540458	6073641	1998-05-27	2018-05-24
643	Capital	t	31944536	7546588	1989-09-18	2017-10-13
644	Capital	t	6277330	10755878	2000-06-30	2020-07-02
645	Cuprum	f	7697720	0	2014-04-15	2019-12-21
646	Cuprum	t	34142834	33454690	1984-08-27	2019-10-31
647	Habitat	f	11634209	0	1999-05-28	2016-10-23
648	Cuprum	f	15477518	0	1991-06-18	2017-07-11
649	Capital	f	19339630	0	1983-07-16	2019-02-11
650	Planvital	f	13117126	0	2005-02-03	2016-03-18
651	Habitat	t	39792239	11523210	1980-10-08	2020-05-10
652	Capital	f	13767590	0	1996-06-08	2018-05-13
653	Capital	f	9332404	0	2010-10-28	2018-01-01
654	Planvital	t	16680433	4915674	2007-07-14	2017-05-27
655	Cuprum	f	14240679	0	1997-07-09	2019-10-14
656	Capital	f	19099197	0	2017-11-07	2017-02-04
657	Modelo	f	12846976	0	1988-03-03	2020-05-18
658	Capital	f	24915621	0	1989-10-19	2018-12-27
659	Cuprum	f	6234009	0	2012-03-20	2016-06-11
660	Cuprum	t	10997379	4097098	2003-02-09	2019-11-23
661	Capital	t	9162947	18214059	2005-03-24	2016-07-02
662	Modelo	t	13625099	28553696	1988-05-15	2018-05-29
663	Modelo	f	639631	0	2017-11-01	2019-10-26
664	Capital	t	4708203	13860271	2017-10-09	2019-08-29
665	Cuprum	f	8416412	0	1997-04-01	2018-03-13
666	Modelo	t	8039886	2629370	1999-03-28	2019-10-31
667	Modelo	f	7102529	0	2015-09-11	2016-09-20
668	Capital	t	38747564	22424940	1981-10-24	2017-01-07
669	Provida	t	6538740	30732811	1980-12-03	2019-02-12
670	Provida	f	24568381	0	1981-04-26	2017-04-04
671	Capital	f	21983389	0	1989-01-23	2019-03-11
672	Modelo	t	7410171	18733760	2012-03-29	2017-02-22
673	Planvital	t	17286404	3311443	2011-03-04	2020-04-06
674	Modelo	t	16391227	30238800	1979-11-06	2017-10-26
675	Cuprum	t	18000756	8451804	1995-10-12	2019-04-08
676	Habitat	f	10024955	0	2000-06-08	2020-06-19
677	Habitat	f	14862188	0	2016-05-30	2017-06-03
678	Provida	f	1050213	0	2003-06-12	2017-04-21
679	Habitat	t	17726978	23373157	1984-11-21	2019-06-07
680	Habitat	f	12982556	0	2012-09-26	2017-06-10
681	Modelo	f	17817440	0	2010-01-23	2019-02-10
682	Planvital	f	12626494	0	2006-06-15	2020-04-11
683	Habitat	f	19330660	0	1999-10-02	2019-09-05
684	Planvital	t	161711	9915182	1996-07-05	2018-06-08
685	Planvital	t	15391066	15905920	1995-12-30	2016-05-19
686	Habitat	t	11704145	6713948	1985-09-17	2018-10-15
687	Cuprum	f	12977806	0	1990-04-25	2020-07-12
688	Planvital	f	13490578	0	1993-05-18	2020-05-06
689	Habitat	f	9595616	0	1995-10-05	2018-06-28
690	Habitat	f	18186979	0	2014-07-11	2017-11-02
691	Capital	f	12903658	0	1980-10-22	2020-03-11
692	Habitat	t	6831565	32684587	1983-05-01	2017-03-26
693	Modelo	t	15300454	368201	2006-11-10	2020-05-17
694	Cuprum	f	22143638	0	1982-09-16	2018-10-10
695	Planvital	t	8685644	14242415	1997-07-15	2017-08-27
696	Planvital	f	15076172	0	1993-10-26	2020-08-29
697	Planvital	t	6591549	13278985	2005-01-03	2016-11-08
698	Provida	t	14348685	16418876	2009-05-26	2018-06-24
699	Provida	t	6126473	5749549	2011-07-12	2017-10-26
700	Capital	t	25836661	9034062	1979-02-03	2017-06-09
701	Modelo	f	14603903	0	1981-10-27	2016-03-13
702	Cuprum	f	11504913	0	1999-10-29	2020-05-28
703	Modelo	t	13929210	9735587	1999-05-02	2018-07-05
704	Habitat	f	9797065	0	2008-08-31	2020-04-29
705	Planvital	t	7239375	10873063	1980-04-22	2018-04-28
706	Habitat	f	5998773	0	2012-03-23	2019-11-09
707	Capital	f	7135820	0	1984-06-16	2019-07-06
708	Capital	f	36473005	0	1987-07-19	2019-10-16
709	Provida	f	7096573	0	1979-02-15	2018-02-28
710	Cuprum	t	19887927	11794666	1993-03-15	2018-08-26
711	Habitat	f	19448995	0	1990-07-19	2018-09-15
712	Planvital	t	14475909	13024234	1986-11-09	2017-03-21
713	Habitat	t	2139779	13330100	2013-07-11	2017-02-10
714	Cuprum	t	10777684	9940460	2018-07-24	2018-10-01
715	Capital	f	7473028	0	2006-07-09	2020-07-11
716	Cuprum	t	6697288	5706321	2003-09-15	2018-07-09
717	Modelo	t	160063	18943000	2003-08-22	2016-12-12
718	Cuprum	f	12361534	0	1992-10-30	2020-04-26
719	Cuprum	f	6360810	0	2009-05-06	2017-05-21
720	Capital	f	9130031	0	1980-11-08	2020-08-20
721	Capital	t	36558325	28808249	1980-05-28	2018-11-27
722	Provida	t	5046313	9268891	1992-11-19	2018-01-03
723	Modelo	t	13309361	7109611	2000-07-21	2016-08-31
724	Planvital	f	19657169	0	1995-12-05	2016-05-14
725	Provida	t	13264430	12742287	1998-06-21	2020-07-31
726	Habitat	f	18988972	0	1991-06-29	2018-02-21
727	Planvital	t	13296707	6510449	1995-12-14	2019-01-04
728	Cuprum	t	15360827	14693678	1988-05-20	2020-05-11
729	Capital	t	2547903	11712050	2013-09-18	2018-10-30
730	Habitat	t	9073387	15167134	1987-12-07	2017-10-31
731	Planvital	f	14865520	0	2007-01-23	2019-12-27
732	Cuprum	f	10713230	0	1993-01-15	2020-08-14
733	Capital	f	5097306	0	2004-02-18	2016-02-23
734	Cuprum	f	33384507	0	1982-01-20	2016-07-13
735	Cuprum	f	6417064	0	2009-03-27	2018-05-06
736	Habitat	f	18440404	0	1990-06-13	2016-10-11
737	Modelo	t	39918034	7629521	1990-07-17	2016-03-01
738	Modelo	t	14835551	10740067	2011-11-28	2019-01-09
739	Provida	t	14352749	10447303	1997-07-08	2020-07-24
740	Habitat	t	25943755	11746746	1984-03-30	2016-12-17
741	Planvital	f	4232381	0	1995-12-05	2019-03-29
742	Provida	f	17449592	0	2008-06-23	2018-08-31
743	Habitat	t	1241064	8917272	2005-03-22	2018-05-30
744	Habitat	t	6056511	11848815	2005-07-10	2018-09-18
745	Capital	t	11247950	2880786	2016-05-28	2019-01-20
746	Planvital	f	15307305	0	1988-10-04	2018-08-21
747	Capital	t	19929054	4535870	2000-09-26	2016-02-06
748	Provida	f	9259658	0	1998-03-13	2018-03-17
749	Provida	t	20170887	6397945	1986-09-29	2018-08-18
750	Modelo	t	9931067	5288794	2015-04-07	2019-08-28
751	Planvital	f	18241462	0	2002-05-05	2018-11-11
752	Capital	t	28040343	26346546	1984-01-31	2019-06-23
753	Planvital	f	5684022	0	1998-11-13	2019-08-04
754	Planvital	t	10927339	5530768	1992-08-09	2016-12-18
755	Modelo	f	18168422	0	1995-01-13	2019-07-27
756	Capital	t	11006672	9453799	2014-05-27	2018-12-07
757	Planvital	t	31263279	25290169	1985-02-25	2016-01-15
758	Habitat	f	18467880	0	2004-01-01	2020-02-05
759	Planvital	t	3969325	7824412	1992-07-14	2016-10-09
760	Cuprum	f	18288421	0	1984-02-27	2016-11-16
761	Cuprum	t	15818048	2649778	2011-12-26	2018-06-19
762	Modelo	t	20369134	39307872	1988-07-23	2016-07-06
763	Habitat	f	19185888	0	2003-03-31	2020-08-06
764	Provida	f	9538459	0	1993-04-11	2017-07-30
765	Capital	t	17020884	38398875	1987-03-17	2020-08-08
766	Modelo	f	9233090	0	1986-09-14	2018-12-04
767	Modelo	t	8188450	18767095	2015-06-10	2017-07-02
768	Capital	f	27907891	0	1979-04-30	2017-07-31
769	Habitat	f	15194934	0	2007-11-19	2017-08-29
770	Cuprum	t	29552159	33188723	1980-11-30	2018-01-09
771	Provida	f	15049408	0	2001-02-10	2018-08-18
772	Habitat	t	8838446	3021877	1992-03-12	2016-05-01
773	Habitat	f	10107610	0	1983-04-22	2020-02-21
774	Planvital	t	16542752	4775034	1992-02-23	2020-02-24
775	Cuprum	t	14445372	17131116	1991-06-04	2016-05-15
776	Cuprum	t	14721337	13072955	1998-11-18	2017-05-26
777	Modelo	f	7733491	0	1990-07-17	2016-01-24
778	Modelo	t	22295378	19196393	1984-01-26	2017-05-21
779	Cuprum	f	1342381	0	2016-10-05	2019-04-11
780	Habitat	f	12288749	0	2007-06-24	2017-06-05
781	Planvital	t	18066270	12397734	2007-08-22	2019-05-19
782	Capital	f	16645297	0	2013-03-24	2017-03-19
783	Capital	f	6216583	0	1981-08-18	2020-07-25
784	Habitat	f	12321863	0	2007-12-15	2017-10-25
785	Planvital	f	13856474	0	2016-09-07	2020-08-19
786	Provida	t	14888130	1032224	1992-04-08	2018-05-06
787	Cuprum	f	7379270	0	1993-06-12	2020-03-23
788	Planvital	f	14724445	0	2006-02-23	2017-11-21
789	Habitat	t	6904830	9645999	2010-09-24	2016-04-30
790	Provida	t	3265541	13645709	2014-03-15	2016-10-08
791	Cuprum	f	26107882	0	1987-02-25	2020-02-10
792	Cuprum	t	1561751	285864	2004-06-15	2019-01-07
793	Capital	f	12972700	0	2002-09-14	2019-12-27
794	Modelo	f	9683961	0	2012-08-03	2020-05-19
795	Cuprum	f	7008014	0	1998-04-13	2020-01-10
796	Provida	f	38011297	0	1989-07-24	2018-06-27
797	Provida	t	15067416	11472515	1986-07-04	2020-02-02
798	Habitat	t	2543384	18611325	2017-03-01	2020-02-03
799	Cuprum	t	16907324	13213606	1991-12-05	2018-09-11
800	Cuprum	t	11580781	3410693	2002-09-16	2017-05-28
801	Modelo	f	3805516	0	1996-04-26	2016-03-01
802	Modelo	f	18405206	0	2002-09-23	2019-02-12
803	Habitat	f	15501840	0	2009-06-16	2020-05-25
804	Planvital	t	32084601	9155685	1985-02-01	2019-08-09
805	Provida	t	19648804	1832370	2010-07-24	2017-11-26
806	Capital	t	9182769	17926049	2015-04-17	2016-09-07
807	Modelo	t	2867055	4735637	1991-02-13	2020-02-22
808	Habitat	t	4111122	7140391	2008-11-09	2019-02-12
809	Provida	f	28866593	0	1984-05-10	2017-12-02
810	Habitat	t	2870414	16180178	2016-02-14	2017-02-08
811	Provida	t	12481844	2286282	1998-04-18	2019-03-25
812	Habitat	f	3628260	0	2000-07-29	2019-03-11
813	Modelo	f	10024949	0	1995-10-15	2017-12-26
814	Capital	t	7890742	15314588	1995-06-11	2016-07-19
815	Modelo	t	37388365	23174021	1983-02-14	2018-01-09
816	Habitat	t	16139377	6869853	2013-03-16	2020-03-28
817	Habitat	t	4867678	12920846	2015-09-23	2017-04-01
818	Cuprum	t	37277166	32651811	1986-11-16	2016-05-18
819	Capital	f	34064701	0	1979-03-11	2017-01-28
820	Cuprum	f	19444645	0	2009-09-19	2016-10-30
821	Provida	t	34881243	19113809	1985-02-08	2017-05-03
822	Habitat	t	14030770	10080296	2014-09-29	2019-01-06
823	Modelo	t	15165452	3877017	2012-06-21	2019-05-06
824	Habitat	t	2834135	8959871	2011-01-10	2019-08-21
825	Planvital	f	8965834	0	2000-05-18	2016-06-08
826	Capital	f	8607940	0	2002-04-27	2019-04-25
827	Modelo	t	8642202	982139	1998-02-13	2017-11-22
828	Planvital	t	1842493	8240337	2003-07-13	2016-11-24
829	Planvital	f	5044960	0	2017-07-16	2018-01-31
830	Capital	t	4112349	2554495	1991-09-26	2016-05-20
831	Cuprum	t	16474658	8981495	2007-11-09	2017-08-01
832	Capital	t	5340511	13012124	2009-02-07	2016-09-05
833	Cuprum	f	15537922	0	1987-05-31	2018-09-19
834	Capital	f	11538581	0	2001-07-10	2019-06-08
835	Capital	t	12150683	18289119	2000-07-19	2016-08-12
836	Modelo	t	391129	9702232	1999-04-25	2019-09-29
837	Planvital	t	18946348	16392004	1981-04-06	2018-02-02
838	Capital	t	19689460	8709557	2002-07-11	2018-07-13
839	Habitat	t	10101915	17761439	2013-05-24	2018-10-27
840	Provida	t	782778	19030712	2017-11-17	2018-11-30
841	Planvital	f	1375607	0	2012-09-13	2016-10-21
842	Cuprum	t	9884253	7745990	2008-03-19	2018-04-20
843	Planvital	f	7008233	0	1995-07-06	2019-03-09
844	Provida	f	2958699	0	2009-06-16	2016-04-04
845	Cuprum	t	4275200	1515927	2010-12-10	2017-01-07
846	Cuprum	f	19739921	0	2017-02-28	2019-10-09
847	Capital	f	18572718	0	2001-07-13	2016-10-04
848	Cuprum	f	36967563	0	1983-08-12	2016-07-31
849	Provida	t	15523344	6038305	1991-04-28	2019-04-25
850	Planvital	t	16854293	33435819	1979-04-11	2019-10-29
851	Modelo	t	1230557	15787524	2002-12-11	2019-01-25
852	Capital	f	13868816	0	2005-12-31	2016-02-20
853	Modelo	t	13017271	7688743	2015-01-04	2018-12-30
854	Modelo	t	16723935	15534902	2005-10-27	2020-04-08
855	Cuprum	t	396493	19279301	1989-11-03	2018-02-28
856	Planvital	t	37071313	19299727	1985-04-10	2018-10-05
857	Cuprum	f	10026941	0	1994-10-27	2017-12-29
858	Capital	t	7725119	16380621	1985-11-28	2019-08-23
859	Capital	f	16850090	0	1996-01-16	2017-12-04
860	Modelo	f	5070566	0	2012-04-13	2017-10-23
861	Capital	f	14240319	0	2001-10-02	2016-12-04
862	Planvital	f	8158618	0	2000-11-10	2019-08-04
863	Habitat	t	37091319	37022722	1984-06-11	2019-11-18
864	Cuprum	f	33893974	0	1981-11-01	2020-05-10
865	Modelo	f	12351269	0	1991-05-09	2016-09-19
866	Planvital	f	7966393	0	2013-01-19	2018-02-02
867	Modelo	f	29606199	0	1986-08-19	2016-07-08
868	Cuprum	f	7038647	0	2006-11-24	2020-01-08
869	Capital	t	15558831	36531527	1980-05-11	2018-11-01
870	Capital	t	12256757	28471191	1985-04-15	2020-04-21
871	Habitat	f	4062473	0	2013-04-15	2018-03-15
872	Provida	f	4234446	0	1994-06-22	2016-07-08
873	Cuprum	t	4150390	1491371	2000-10-03	2017-08-08
874	Capital	f	13636634	0	2008-07-12	2020-03-09
875	Planvital	t	2730762	18714137	2011-05-07	2016-08-04
876	Capital	t	9710390	5321035	2011-08-16	2018-11-02
877	Cuprum	t	10941373	10358408	2005-10-10	2016-08-02
878	Capital	t	22211279	19192675	1983-12-06	2019-05-21
879	Cuprum	f	18146168	0	1999-10-31	2020-02-29
880	Modelo	t	3711989	15175751	2004-10-29	2017-12-03
881	Capital	t	252406	6349726	2015-05-28	2017-12-15
882	Habitat	f	35911484	0	1980-12-10	2018-05-16
883	Cuprum	f	13656129	0	2014-12-06	2017-05-22
884	Habitat	t	2810806	12906583	2005-10-04	2016-08-05
885	Provida	t	18134632	9594242	1991-07-29	2016-05-16
886	Planvital	f	12982254	0	2011-05-01	2016-12-26
887	Habitat	f	23164544	0	1988-05-30	2020-01-16
888	Cuprum	t	4319360	3374397	1999-02-12	2019-04-16
889	Planvital	t	31637307	9537893	1988-07-18	2019-03-02
890	Capital	f	6671389	0	1986-12-18	2018-08-31
891	Modelo	f	16128606	0	2007-10-05	2019-07-22
892	Habitat	t	27576296	38620230	1983-04-22	2018-08-03
893	Provida	t	18590956	11778574	2014-10-11	2017-08-07
894	Provida	t	11060516	16800100	1997-07-23	2016-08-01
895	Cuprum	f	38385787	0	1987-05-02	2018-03-08
896	Habitat	t	18351377	10515776	2002-11-16	2018-02-05
897	Planvital	t	9719937	12004316	2004-01-17	2019-02-25
898	Capital	t	3016722	16519044	2002-09-08	2017-05-17
899	Habitat	f	15911132	0	1996-07-21	2019-11-23
900	Modelo	f	6676771	0	1998-09-14	2017-11-07
901	Cuprum	t	31485410	15823723	1983-06-22	2020-06-22
902	Cuprum	f	14017774	0	1993-05-30	2018-07-31
903	Habitat	t	17311901	13760587	2012-09-01	2019-02-15
904	Modelo	f	2506403	0	1998-04-15	2017-06-22
905	Cuprum	t	39865255	9738352	1985-08-04	2019-01-26
906	Provida	f	16543502	0	2011-08-31	2018-06-11
907	Cuprum	f	29529278	0	1982-09-14	2018-07-16
908	Cuprum	f	9546005	0	1981-02-26	2019-03-26
909	Planvital	f	1029619	0	1992-05-06	2018-04-17
910	Capital	f	34049445	0	1987-07-09	2016-03-21
911	Capital	t	24294220	6872025	1980-09-16	2019-04-10
912	Modelo	f	11575997	0	1986-06-28	2018-01-16
913	Provida	t	13139518	8492561	1996-02-24	2017-04-02
914	Cuprum	t	2532495	12081127	2003-10-08	2020-08-21
915	Cuprum	f	1158469	0	2014-12-01	2016-12-25
916	Capital	t	7341693	17523087	1994-01-27	2016-02-01
917	Cuprum	t	22742044	33199393	1983-01-24	2019-09-28
918	Cuprum	f	8209770	0	1989-08-22	2018-09-23
919	Habitat	t	36552361	24945170	1984-11-14	2018-05-01
920	Habitat	f	17431616	0	1999-08-29	2020-04-28
921	Capital	f	17278780	0	2016-07-04	2017-01-06
922	Planvital	f	9393273	0	1995-10-14	2018-05-28
923	Capital	t	2912830	15655976	2018-07-30	2018-05-29
924	Capital	f	17163214	0	1992-01-09	2016-09-20
925	Provida	f	6839613	0	2007-04-10	2020-06-02
926	Capital	f	4911096	0	1998-07-20	2016-03-16
927	Capital	f	46118	0	2016-09-08	2020-02-05
928	Provida	f	8364032	0	1999-07-05	2016-01-24
929	Provida	t	10979079	17479319	1996-04-07	2019-02-07
930	Habitat	t	18298236	38173084	1981-02-18	2019-03-11
931	Habitat	f	19190523	0	1996-01-30	2019-01-31
932	Modelo	f	16300313	0	2013-02-12	2019-05-17
933	Capital	f	7123154	0	1994-08-10	2018-04-20
934	Habitat	t	9623164	13071398	1997-04-06	2016-06-08
935	Planvital	f	8101516	0	1991-08-04	2020-06-27
936	Planvital	f	8770872	0	2005-02-24	2018-05-30
937	Habitat	t	14505716	18263092	2017-08-11	2018-08-31
938	Modelo	t	30431665	30320229	1986-09-18	2017-08-15
939	Cuprum	f	3203172	0	2006-04-07	2019-05-25
940	Habitat	t	10558419	15302010	1991-09-25	2018-05-29
941	Cuprum	f	1507512	0	2013-07-11	2016-06-05
942	Modelo	t	7702840	10183544	1996-04-18	2017-07-13
943	Provida	f	7312902	0	2012-08-30	2017-10-28
944	Cuprum	t	16765955	12354239	1994-03-12	2016-05-04
945	Cuprum	t	14912247	5380169	2008-01-30	2018-09-08
946	Provida	t	488624	9167390	1995-06-03	2016-12-09
947	Capital	t	4367678	4324310	1994-12-26	2017-11-20
948	Habitat	t	36529769	13590296	1981-03-23	2018-01-20
949	Modelo	t	14611245	8865524	1988-09-25	2016-01-05
950	Capital	t	39048201	9726379	1980-03-17	2016-05-15
951	Capital	f	662741	0	2002-05-06	2017-07-16
952	Habitat	f	16731597	0	1980-08-10	2019-01-10
953	Capital	f	36607902	0	1984-04-14	2020-02-25
954	Capital	t	8915434	11909156	1996-11-11	2017-03-08
955	Cuprum	f	2130291	0	1994-01-29	2020-03-03
956	Cuprum	t	6093971	13941625	2006-07-08	2017-04-14
957	Cuprum	f	1115084	0	2015-12-15	2017-07-08
958	Habitat	t	13511547	14184019	1993-04-29	2018-01-10
959	Planvital	f	23585083	0	1982-05-04	2018-06-25
960	Planvital	t	19149648	13616780	2010-09-24	2019-06-02
961	Habitat	t	1788481	15377949	2004-06-26	2017-04-29
962	Provida	f	4697884	0	1997-02-14	2016-08-27
963	Planvital	f	39629281	0	1986-07-09	2016-04-10
964	Cuprum	f	30651827	0	1984-11-18	2016-03-27
965	Planvital	t	10314746	14244827	2015-10-05	2018-09-07
966	Planvital	f	5799562	0	2004-07-25	2017-05-08
967	Provida	t	31819073	26510336	1979-07-28	2018-12-21
968	Cuprum	t	724984	476481	2002-11-21	2017-04-08
969	Modelo	f	11566198	0	2013-10-02	2017-11-29
970	Habitat	f	401763	0	2012-10-02	2016-07-09
971	Habitat	t	18149068	4000662	1992-05-10	2019-11-06
972	Provida	f	8079379	0	1994-11-19	2019-07-04
973	Cuprum	t	143702	1633705	2006-02-02	2017-06-03
974	Provida	t	13312428	16307981	1990-01-20	2017-09-11
975	Habitat	f	8360813	0	1983-06-27	2017-06-13
976	Modelo	f	26210968	0	1987-02-25	2018-06-25
977	Cuprum	f	14071585	0	2004-08-06	2019-02-06
978	Modelo	t	16985349	29839458	1980-04-04	2019-09-21
979	Capital	f	2068024	0	2017-09-07	2017-01-18
980	Provida	t	20620296	36764793	1986-05-11	2016-05-02
981	Capital	f	28883539	0	1980-12-19	2017-06-11
982	Planvital	t	7720581	725448	1990-10-11	2016-01-09
983	Habitat	t	12531219	9658511	1997-03-08	2018-07-23
984	Provida	t	11001284	3108025	2010-07-29	2017-07-04
985	Provida	t	4817950	1395960	2010-04-09	2016-07-22
986	Cuprum	t	4384047	1541207	2012-09-26	2016-06-01
987	Modelo	t	35693106	8322309	1980-04-15	2019-10-23
988	Capital	t	28107044	31676451	1983-10-05	2016-01-21
989	Cuprum	t	17688147	6031109	2011-08-18	2020-04-18
990	Planvital	f	15732891	0	2004-02-12	2017-03-07
991	Planvital	f	9869876	0	2005-06-23	2016-04-20
992	Capital	t	9838819	10872926	1992-03-29	2016-06-19
993	Habitat	t	7559996	19735119	2016-07-29	2020-08-21
994	Habitat	t	1231437	5682341	2009-01-30	2020-02-17
995	Capital	f	27678487	0	1988-04-19	2017-03-30
996	Modelo	t	27663461	32626618	1983-05-19	2019-12-15
997	Capital	t	8548430	12711059	1983-09-07	2018-11-05
998	Modelo	f	9263777	0	1998-10-11	2016-07-22
999	Provida	t	19938028	5795645	2005-07-07	2016-04-02
1000	Cuprum	f	17174223	0	2012-08-17	2017-06-29
1001	Cuprum	f	11677220	0	1985-09-25	2016-07-08
1002	Capital	t	13502771	17191075	2016-11-13	2018-05-22
1003	Habitat	t	11734503	15237106	2005-03-23	2018-11-17
1004	Habitat	t	19553160	3609743	2009-08-15	2018-04-05
1005	Modelo	f	1103165	0	2013-03-06	2018-06-25
1006	Capital	t	6765133	13120542	1978-11-28	2018-02-13
1007	Modelo	f	37208577	0	1984-07-27	2019-03-11
1008	Habitat	t	17896881	3047464	2018-01-06	2020-05-31
1009	Cuprum	f	14569553	0	2008-01-24	2020-01-26
1010	Modelo	f	2558403	0	2002-03-22	2016-02-17
1011	Cuprum	f	4340751	0	2014-04-12	2016-09-19
1012	Cuprum	f	15587761	0	2008-10-13	2016-10-13
1013	Modelo	f	384386	0	2003-04-01	2016-09-30
1014	Modelo	f	2051190	0	1996-08-29	2016-09-06
1015	Provida	t	18638934	9578054	2015-01-10	2016-03-06
1016	Provida	f	10367684	0	2008-01-25	2018-02-04
1017	Cuprum	f	5121929	0	2008-05-09	2019-01-09
1018	Provida	t	1609045	5268492	2000-04-27	2019-01-30
1019	Cuprum	t	10920177	11951964	2010-12-29	2018-07-31
1020	Habitat	t	9944276	6115916	2004-11-19	2017-07-07
1021	Modelo	t	17077108	9515539	2000-05-23	2017-10-20
1022	Modelo	f	5538214	0	2001-02-13	2020-05-01
1023	Capital	f	1371886	0	2000-01-23	2020-04-27
1024	Habitat	f	13961689	0	2007-12-08	2017-08-04
1025	Cuprum	t	11485172	5267476	1994-09-24	2018-12-18
1026	Provida	t	1595729	8247288	2010-12-02	2018-06-28
1027	Capital	t	2418949	18580850	1997-11-28	2019-01-23
1028	Provida	f	7218081	0	2010-11-29	2019-10-23
1029	Modelo	t	15217676	18502094	2009-07-18	2020-02-19
1030	Provida	t	16671142	16277129	1994-08-09	2020-04-20
1031	Planvital	f	5845557	0	2000-09-30	2017-10-12
1032	Capital	t	6851941	1443932	1998-10-31	2016-10-19
1033	Capital	t	13218715	3919733	1991-09-16	2020-06-11
1034	Planvital	t	7243680	10023884	1981-12-14	2020-03-30
1035	Cuprum	t	35412709	16380980	1981-05-09	2016-02-16
1036	Planvital	t	6814142	2485866	2009-10-26	2017-07-07
1037	Provida	f	4895944	0	2006-07-27	2016-12-06
1038	Planvital	f	9606854	0	2003-11-14	2016-02-06
1039	Capital	f	8689940	0	2002-06-13	2020-08-18
1040	Planvital	t	4352798	7648406	1996-02-17	2019-06-18
1041	Modelo	f	31758128	0	1983-06-16	2018-04-26
1042	Modelo	t	10462902	11646271	1999-01-10	2019-10-23
1043	Capital	t	38528850	11165097	1981-03-03	2016-02-10
1044	Capital	f	13562754	0	1988-04-03	2019-02-28
1045	Cuprum	t	8109563	13096790	2008-02-24	2020-01-10
1046	Cuprum	t	7581930	1192497	2014-03-30	2016-06-26
1047	Provida	t	18013610	8245554	1993-11-15	2016-11-05
1048	Modelo	t	13636233	7366866	2010-09-08	2019-01-16
1049	Capital	f	22655184	0	1982-05-10	2018-11-29
1050	Cuprum	f	5439491	0	2008-10-28	2017-03-27
1051	Modelo	t	15684176	14066660	2000-03-30	2016-03-02
1052	Cuprum	t	13154720	6680193	1995-09-04	2020-05-24
1053	Cuprum	f	4927444	0	1995-03-07	2018-05-17
1054	Cuprum	t	9174825	3523957	1999-10-28	2018-06-04
1055	Capital	t	2402163	5190427	1993-07-04	2018-03-06
1056	Modelo	f	19392128	0	1991-04-29	2019-02-11
1057	Modelo	t	5337646	3866747	2009-12-08	2018-01-13
1058	Provida	t	5071927	12835125	2010-04-21	2016-08-06
1059	Cuprum	t	10753412	15717214	1997-03-17	2018-09-26
1060	Provida	f	8344502	0	1982-10-06	2017-02-17
1061	Planvital	f	13799497	0	1999-03-04	2016-12-29
1062	Cuprum	f	10582144	0	1992-10-15	2018-07-03
1063	Planvital	t	6290227	18294216	2009-12-02	2016-08-28
1064	Modelo	f	34968770	0	1981-04-24	2020-08-16
1065	Planvital	t	17704341	7909643	2000-09-10	2017-05-07
1066	Habitat	t	37166773	15052307	1983-09-22	2020-03-06
1067	Cuprum	f	10725080	0	1995-01-05	2019-09-29
1068	Capital	f	4031453	0	2006-05-29	2018-07-04
1069	Habitat	t	14885918	15985522	1992-09-14	2017-12-06
1070	Habitat	t	2016673	5127645	2018-11-08	2020-06-02
1071	Cuprum	t	26969207	22923406	1986-10-24	2018-04-15
1072	Planvital	t	14876054	16512550	2008-09-28	2018-10-25
1073	Planvital	f	16004460	0	2016-11-05	2020-08-21
1074	Habitat	f	30283234	0	1982-10-15	2016-12-10
1075	Provida	f	2723834	0	2002-05-27	2020-05-04
1076	Provida	t	27084784	33748365	1987-06-28	2016-04-23
1077	Modelo	f	23528865	0	1983-09-13	2016-12-17
1078	Modelo	t	8502890	9711097	1987-08-03	2020-06-03
1079	Modelo	t	12203709	12321315	2012-05-08	2019-03-22
1080	Provida	f	7241644	0	1984-08-28	2017-08-03
1081	Capital	t	10872577	8162430	2010-06-25	2018-02-27
1082	Cuprum	t	7454818	9385369	2012-08-16	2016-03-24
1083	Modelo	t	14942219	12763711	2011-05-12	2020-09-06
1084	Habitat	t	19602116	12903613	2003-05-10	2018-06-23
1085	Cuprum	f	8410369	0	2013-10-25	2016-04-22
1086	Capital	t	16984501	8031988	2013-01-17	2020-04-24
1087	Modelo	t	17364788	4272900	2013-01-11	2018-08-01
1088	Planvital	t	19199521	16188894	1998-05-12	2017-12-19
1089	Habitat	t	18352021	6216834	1996-12-15	2019-09-21
1090	Capital	f	2290475	0	2010-06-18	2019-01-18
1091	Habitat	f	25390668	0	1981-03-24	2017-08-25
1092	Modelo	f	3923096	0	1995-12-29	2019-04-02
1093	Habitat	f	17475582	0	2001-10-17	2017-06-23
1094	Provida	f	20742348	0	1989-10-21	2018-09-14
1095	Capital	f	2872772	0	2016-12-18	2017-08-19
1096	Capital	f	5018023	0	1993-03-12	2020-06-07
1097	Modelo	t	39936912	11050855	1985-11-18	2017-04-15
1098	Cuprum	f	12428873	0	1997-02-12	2017-09-29
1099	Habitat	t	12404456	5303203	1991-06-08	2020-02-09
1100	Provida	t	12393188	32274981	1988-02-01	2016-12-23
1101	Habitat	f	13980884	0	2000-02-23	2016-10-09
1102	Habitat	t	8084106	33705935	1985-02-21	2017-12-26
1103	Modelo	t	701084	11317741	2007-01-11	2019-10-12
1104	Provida	t	13458857	15586853	2007-03-28	2020-02-14
1105	Modelo	t	28298543	31376591	1987-11-10	2017-11-03
1106	Capital	t	1339510	19633303	2003-04-23	2017-11-03
1107	Modelo	t	21239164	38737730	1979-05-21	2020-03-07
1108	Provida	f	9279999	0	1995-09-03	2017-11-23
1109	Cuprum	t	16573618	20218893	1980-09-16	2017-08-11
1110	Habitat	f	3649470	0	1992-09-30	2017-09-28
1111	Planvital	t	3741151	3593481	1997-11-25	2019-04-01
1112	Habitat	f	12424759	0	2001-03-01	2017-08-08
1113	Habitat	f	15567093	0	2008-11-11	2016-11-26
1114	Provida	t	24307480	7426838	1981-04-16	2017-01-21
1115	Capital	t	8231530	12536646	1998-10-10	2018-09-05
1116	Capital	f	17581874	0	1990-10-31	2017-10-02
1117	Capital	f	30854461	0	1980-01-20	2018-02-08
1118	Modelo	t	17638958	12371570	2015-08-27	2017-08-30
1119	Capital	f	6686718	0	1995-03-25	2019-09-12
1120	Planvital	f	13168508	0	2002-08-02	2018-12-31
1121	Capital	t	4239319	15197690	2016-05-26	2018-06-16
1122	Habitat	t	18924976	1879970	2007-12-28	2020-07-14
1123	Capital	t	6883009	16863340	1991-11-08	2016-03-13
1124	Planvital	t	19196731	5747714	2000-01-10	2019-09-07
1125	Modelo	t	27769734	12952512	1985-03-12	2019-06-15
1126	Modelo	t	33612659	32537337	1980-05-06	2016-07-30
1127	Provida	f	6607177	0	1986-02-05	2017-05-11
1128	Habitat	f	66696	0	2006-11-21	2016-06-09
1129	Provida	f	2670230	0	2002-03-09	2018-01-23
1130	Provida	f	2685066	0	1992-06-28	2016-07-11
1131	Modelo	t	9692708	12307329	2000-01-31	2020-05-29
1132	Planvital	f	19962629	0	1999-12-31	2017-04-13
1133	Planvital	f	28729097	0	1980-03-23	2018-02-09
1134	Capital	f	7629252	0	2004-07-09	2018-04-23
1135	Planvital	f	39725689	0	1987-12-14	2016-02-03
1136	Modelo	f	14387764	0	1997-09-21	2018-07-25
1137	Capital	f	1772235	0	1994-06-13	2019-03-22
1138	Modelo	f	15986657	0	1996-09-12	2018-12-07
1139	Capital	t	17081978	14933677	2007-03-02	2019-09-11
1140	Planvital	t	6246329	7679409	2004-03-30	2020-01-12
1141	Cuprum	f	12502180	0	1992-12-22	2017-04-24
1142	Cuprum	f	9535435	0	2002-01-01	2016-06-07
1143	Capital	f	10963437	0	1995-12-11	2017-05-22
1144	Capital	f	21104912	0	1987-05-13	2019-05-22
1145	Cuprum	t	4374607	18540631	2012-02-01	2017-01-25
1146	Habitat	f	11443616	0	1990-01-30	2020-08-29
1147	Planvital	f	3746817	0	1999-03-18	2018-10-16
1148	Provida	f	12352102	0	2007-12-03	2018-12-05
1149	Provida	t	8480219	38827635	1989-10-17	2017-07-17
1150	Cuprum	t	9070674	16128947	2002-02-09	2020-08-23
1151	Modelo	t	11498196	9049283	2017-08-06	2019-05-27
1152	Planvital	f	5058944	0	2003-12-17	2019-08-22
1153	Planvital	f	5048283	0	2003-01-21	2019-05-12
1154	Cuprum	f	11404714	0	1999-09-04	2019-10-15
1155	Planvital	f	16024320	0	2011-12-02	2018-06-26
1156	Capital	t	27984984	8397601	1981-08-26	2019-02-18
1157	Modelo	f	10021824	0	2015-05-22	2019-12-24
1158	Capital	f	7801363	0	2010-04-16	2017-12-04
1159	Planvital	t	11853464	4356256	1997-03-14	2019-06-12
1160	Provida	f	29349437	0	1983-02-21	2016-06-04
1161	Cuprum	f	5438881	0	2007-11-14	2017-12-15
1162	Modelo	t	4679731	72656	1990-12-09	2018-05-02
1163	Habitat	f	6010911	0	1998-04-01	2019-03-30
1164	Habitat	f	9880879	0	1995-08-30	2018-07-20
1165	Planvital	f	9214635	0	1993-07-13	2017-02-10
1166	Modelo	f	10391374	0	1982-12-30	2017-07-06
1167	Cuprum	f	5290189	0	1990-08-05	2019-02-08
1168	Modelo	f	83768	0	1995-09-13	2020-03-05
1169	Provida	f	20787111	0	1980-06-12	2018-06-04
1170	Planvital	f	38336475	0	1987-03-31	2017-06-14
1171	Cuprum	t	19873121	14689618	1991-10-09	2018-06-08
1172	Habitat	f	31806383	0	1987-10-28	2020-03-05
1173	Modelo	t	18059078	3517594	2013-04-09	2017-04-08
1174	Habitat	t	593269	2195536	2017-08-21	2017-07-20
1175	Cuprum	f	15230563	0	1984-05-25	2016-02-26
1176	Cuprum	t	3008033	5885583	1993-05-28	2018-01-14
1177	Cuprum	t	9645361	3688504	1990-08-04	2016-03-15
1178	Habitat	f	12689125	0	2007-07-21	2018-10-09
1179	Provida	f	21684090	0	1986-08-18	2018-01-24
1180	Planvital	t	9943192	7427977	2017-06-25	2017-12-17
1181	Modelo	f	18454732	0	1988-07-06	2018-05-13
1182	Capital	f	7022433	0	2012-08-13	2018-07-21
1183	Habitat	t	29539765	35090528	1987-10-15	2017-02-13
1184	Provida	f	13263254	0	1995-08-22	2019-04-08
1185	Capital	t	6272753	4356617	1994-10-15	2016-02-13
1186	Capital	t	2952572	10539915	1994-06-23	2017-05-02
1187	Provida	t	33044247	8349184	1984-05-23	2016-02-01
1188	Planvital	f	30753147	0	1990-03-17	2016-12-08
1189	Habitat	f	13698734	0	1979-09-29	2020-06-26
1190	Habitat	f	761367	0	2008-04-04	2020-03-14
1191	Habitat	f	12622388	0	2009-12-25	2018-08-05
1192	Planvital	f	18358753	0	2010-05-12	2018-09-06
1193	Cuprum	t	11237619	11120789	2007-02-04	2018-07-08
1194	Habitat	f	11606317	0	2010-09-09	2019-11-24
1195	Habitat	t	5432546	11918934	2018-01-28	2019-08-11
1196	Provida	t	13621793	7206993	1994-09-12	2017-10-03
1197	Modelo	t	12950245	34356836	1990-01-06	2020-08-09
1198	Provida	f	11240824	0	1995-12-24	2019-08-31
1199	Habitat	t	14358809	19944612	2016-01-11	2019-12-05
1200	Habitat	t	1143013	8710616	2017-04-23	2017-02-18
1201	Modelo	f	10977962	0	2015-09-13	2016-01-27
1202	Modelo	t	4877603	10025788	2002-05-09	2020-06-05
1203	Habitat	f	5777441	0	2004-04-27	2017-05-15
1204	Habitat	t	28007158	23753650	1988-11-03	2018-07-02
1205	Planvital	t	16116990	1261924	1990-05-18	2019-09-05
1206	Planvital	t	7434668	5767136	2000-03-13	2016-07-25
1207	Capital	t	14776056	3853496	2001-10-19	2017-06-18
1208	Provida	f	17838937	0	2012-04-09	2020-05-07
1209	Habitat	f	8540613	0	2016-10-27	2018-02-28
1210	Cuprum	f	6862768	0	1981-09-24	2016-03-13
1211	Modelo	f	9832944	0	2006-03-04	2017-11-24
1212	Habitat	f	36541553	0	1981-04-28	2018-02-18
1213	Modelo	f	19586595	0	2006-12-02	2019-09-18
1214	Modelo	f	15625654	0	1983-10-18	2019-01-16
1215	Habitat	f	13416532	0	2004-01-03	2019-02-18
1216	Provida	f	16165809	0	2005-03-03	2017-01-08
1217	Habitat	t	4712543	18252951	2001-05-01	2019-10-17
1218	Modelo	f	17774954	0	2018-05-24	2020-03-22
1219	Cuprum	f	31612479	0	1980-11-18	2016-05-19
1220	Provida	t	12312121	10296114	1994-06-09	2017-09-09
1221	Habitat	t	17313307	9556197	2002-08-27	2018-05-22
1222	Cuprum	t	8154937	11924188	2016-02-28	2020-06-25
1223	Provida	t	38721701	14307297	1983-11-26	2019-09-30
1224	Planvital	f	16746933	0	1997-07-03	2016-03-28
1225	Cuprum	f	15375138	0	1992-08-27	2019-08-04
1226	Capital	f	2605864	0	1995-05-10	2018-11-03
1227	Capital	f	4913766	0	1997-01-23	2017-04-10
1228	Cuprum	f	17826256	0	2014-04-29	2020-08-08
1229	Planvital	f	1145959	0	2009-01-17	2018-07-13
1230	Planvital	t	5872319	7912748	1999-06-21	2017-02-17
1231	Provida	t	11645133	6172911	1998-08-05	2019-03-23
1232	Planvital	t	6790993	30857873	1984-09-18	2017-01-22
1233	Provida	t	525592	7578834	2008-02-19	2020-06-17
1234	Capital	t	131874	5761486	2016-08-22	2018-03-03
1235	Provida	t	7498067	8464218	2015-12-26	2017-05-19
1236	Cuprum	f	15091025	0	1985-10-24	2017-02-14
1237	Modelo	t	19320812	19308614	2017-04-17	2017-02-02
1238	Capital	t	19476156	1030750	1992-09-29	2018-08-30
1239	Provida	t	16439358	13630148	2015-07-03	2017-10-20
1240	Capital	f	17375482	0	1980-05-09	2016-12-25
1241	Provida	t	7963506	8892490	1996-07-20	2016-05-16
1242	Cuprum	f	13511205	0	1986-09-05	2016-02-09
1243	Cuprum	t	19887908	967934	1990-09-16	2018-11-20
1244	Habitat	t	7349854	17723317	1980-10-09	2019-02-25
1245	Provida	t	13905848	10711663	2016-10-21	2020-07-21
1246	Modelo	t	17394112	17406987	1980-08-10	2017-08-02
1247	Capital	t	14478945	8835823	2018-04-28	2019-02-20
1248	Provida	f	15777594	0	1984-02-20	2019-10-03
1249	Cuprum	t	11722086	13007083	2011-08-26	2020-02-29
1250	Cuprum	t	15665699	5128805	1991-07-12	2017-01-16
1251	Planvital	t	9853315	12958326	2012-10-05	2019-09-13
1252	Habitat	t	27439193	11329182	1987-09-11	2018-08-16
1253	Capital	f	28121602	0	1988-09-14	2020-01-12
1254	Modelo	f	11555799	0	1990-11-16	2020-08-22
1255	Cuprum	t	13122838	22582120	1979-05-04	2018-12-22
1256	Provida	t	7346979	7012324	2013-05-31	2016-05-24
1257	Modelo	f	3184586	0	1995-10-31	2019-05-27
1258	Cuprum	f	12764844	0	1979-06-07	2016-02-09
1259	Modelo	f	18431004	0	2004-10-16	2017-12-08
1260	Planvital	t	10606547	5655904	2009-08-30	2016-01-17
1261	Modelo	f	6300159	0	2018-03-19	2019-01-29
1262	Planvital	f	10668212	0	2004-01-15	2018-06-23
1263	Modelo	f	9276317	0	1991-02-06	2020-01-15
1264	Modelo	t	10519093	18769848	2018-11-26	2020-07-25
1265	Habitat	t	27765616	30188007	1987-02-12	2020-05-22
1266	Provida	t	8370718	37150328	1983-12-22	2019-08-08
1267	Provida	f	16353848	0	2009-02-03	2018-09-12
1268	Modelo	f	6754926	0	1991-05-11	2019-12-03
1269	Provida	f	17812250	0	2013-10-25	2019-04-04
1270	Cuprum	f	22457664	0	1989-11-18	2018-10-07
1271	Modelo	f	5299568	0	2010-06-26	2016-05-13
1272	Cuprum	f	16755613	0	2015-10-03	2017-11-18
1273	Cuprum	f	30564416	0	1982-02-06	2017-09-18
1274	Provida	t	1207687	9417557	2014-06-30	2018-01-23
1275	Habitat	t	10159877	1118307	1999-12-01	2017-03-04
1276	Capital	t	18108926	14446078	2005-09-05	2017-05-25
1277	Planvital	t	11131967	5318552	2008-02-19	2019-09-14
1278	Planvital	t	9119748	18381717	1996-02-05	2018-03-19
1279	Cuprum	f	1169932	0	1994-11-26	2017-12-24
1280	Habitat	f	1702718	0	2010-11-30	2016-03-30
1281	Modelo	f	17738624	0	1993-03-14	2018-07-21
1282	Cuprum	t	12293254	1364839	2012-07-04	2019-02-20
1283	Modelo	f	23264292	0	1990-07-18	2018-07-14
1284	Modelo	t	17938948	18636611	1992-02-01	2018-01-09
1285	Cuprum	f	9998337	0	1989-09-18	2018-07-17
1286	Planvital	t	39741115	14843654	1986-06-18	2016-02-20
1287	Provida	t	19335770	8592693	1998-08-12	2019-10-10
1288	Habitat	t	10098321	31406573	1979-08-19	2017-12-29
1289	Modelo	f	4077522	0	2008-08-04	2016-02-11
1290	Planvital	f	7470219	0	2006-10-09	2019-07-26
1291	Cuprum	t	38353225	8370955	1984-04-16	2017-07-12
1292	Cuprum	t	5203758	17146229	1999-08-31	2019-02-16
1293	Capital	t	38506866	8123297	1980-08-29	2018-08-24
1294	Modelo	f	3733869	0	2011-12-10	2018-06-09
1295	Modelo	t	1855213	5697179	1995-04-15	2018-06-13
1296	Habitat	f	12947381	0	2007-07-29	2018-07-21
1297	Cuprum	f	17311080	0	1987-11-27	2017-10-15
1298	Modelo	t	15376134	4406275	2009-12-02	2016-05-16
1299	Provida	t	16537223	15918878	2015-06-19	2018-03-05
1300	Modelo	t	23280725	12373367	1990-12-12	2016-12-27
1301	Capital	t	4786466	3573955	2006-01-23	2016-10-02
1302	Planvital	f	24973904	0	1980-04-03	2017-04-24
1303	Provida	t	3965771	16945306	2016-12-07	2019-10-19
1304	Modelo	f	17835958	0	1996-08-08	2017-03-27
1305	Habitat	f	9184630	0	2003-05-07	2016-08-16
1306	Provida	t	11898541	11471445	2017-03-31	2018-08-11
1307	Habitat	t	10618345	9523843	2017-02-01	2019-07-28
1308	Habitat	t	2371369	6623482	2013-09-19	2017-10-13
1309	Habitat	f	35662477	0	1981-09-26	2017-03-04
1310	Planvital	f	4524634	0	1997-05-05	2018-04-24
1311	Provida	f	2048469	0	2003-02-06	2016-08-22
1312	Modelo	f	3404863	0	2002-10-25	2019-06-07
1313	Modelo	f	36322165	0	1990-02-20	2016-12-08
1314	Cuprum	t	13685876	13937625	2008-05-12	2019-07-08
1315	Cuprum	t	8235176	26309009	1984-08-03	2019-11-02
1316	Habitat	f	38995327	0	1986-10-10	2020-02-12
1317	Provida	f	2325794	0	1993-04-11	2016-05-06
1318	Capital	f	1545558	0	1992-04-13	2016-04-16
1319	Capital	t	17702404	19680075	2018-02-16	2020-02-04
1320	Cuprum	f	22614059	0	1978-07-29	2016-12-27
1321	Planvital	t	6060906	11208254	2006-03-19	2016-05-03
1322	Planvital	t	9109957	22775004	1987-10-13	2018-06-13
1323	Planvital	f	3835001	0	2017-06-11	2019-05-12
1324	Cuprum	f	13864786	0	1983-02-16	2017-03-09
1325	Habitat	t	11449102	12974665	2003-12-01	2017-12-31
1326	Habitat	t	34771241	16082570	1987-07-19	2020-06-01
1327	Cuprum	t	126398	11006082	1990-08-19	2017-06-22
1328	Planvital	t	13200845	16076863	2008-04-16	2019-08-24
1329	Provida	t	18138267	14367101	2016-12-28	2020-04-14
1330	Cuprum	t	11333385	6187961	1994-08-27	2019-02-19
1331	Cuprum	t	455908	3131450	1999-11-21	2018-12-01
1332	Habitat	t	34784466	21775977	1982-08-06	2019-08-01
1333	Modelo	t	5908916	7657515	2007-04-26	2016-12-02
1334	Provida	f	4943882	0	1991-06-14	2018-12-02
1335	Habitat	f	7898260	0	1995-02-17	2020-07-14
1336	Habitat	t	30303770	35945577	1988-06-25	2020-01-05
1337	Cuprum	f	11667612	0	1994-08-05	2018-05-09
1338	Capital	t	17287860	12929691	1990-04-09	2018-07-26
1339	Capital	f	12554658	0	2005-11-22	2018-05-04
1340	Planvital	t	11660702	12276038	1998-10-04	2018-05-13
1341	Provida	t	19144841	19045537	1980-04-28	2016-10-26
1342	Capital	f	10708975	0	1988-06-03	2020-02-26
1343	Planvital	f	1594648	0	1991-01-23	2016-09-05
1344	Provida	f	15651455	0	1999-04-14	2018-01-19
1345	Provida	f	34494306	0	1986-07-26	2019-03-08
1346	Modelo	f	3750051	0	2003-03-13	2018-04-26
1347	Habitat	f	14040926	0	2001-05-18	2017-09-26
1348	Habitat	f	11604261	0	2003-09-20	2016-08-03
1349	Provida	f	16679875	0	2011-05-12	2020-03-24
1350	Provida	t	616091	10219078	2004-10-13	2017-03-16
1351	Capital	t	17188237	1381228	1990-01-06	2020-07-23
1352	Habitat	f	15325102	0	1991-10-18	2019-10-11
1353	Provida	t	14964874	9619414	1991-09-01	2018-05-26
1354	Cuprum	f	10840059	0	2004-07-05	2019-02-18
1355	Cuprum	f	849581	0	2002-09-28	2019-01-11
1356	Provida	f	14436757	0	2003-11-22	2018-08-13
1357	Cuprum	t	10790453	4923376	1997-11-27	2018-01-26
1358	Planvital	t	6818161	3485710	2004-08-27	2017-02-10
1359	Capital	f	32579455	0	1985-04-25	2019-01-02
1360	Modelo	f	23882313	0	1985-12-11	2016-01-30
1361	Provida	t	14404408	34109094	1987-05-06	2018-12-28
1362	Planvital	f	7628677	0	2004-06-08	2017-05-25
1363	Cuprum	f	7979865	0	2015-12-18	2019-10-17
1364	Provida	f	6775384	0	1997-05-20	2017-07-28
1365	Planvital	f	31270158	0	1986-06-03	2019-05-04
1366	Capital	t	8043566	18892035	2011-06-12	2020-07-06
1367	Capital	f	2124878	0	2015-06-05	2020-08-29
1368	Capital	t	10313897	11758023	2018-05-03	2018-06-06
1369	Planvital	t	6957422	10392233	1996-09-30	2019-02-13
1370	Capital	t	17975241	17583042	2011-03-07	2019-12-12
1371	Habitat	t	8898669	19452553	1984-07-19	2020-06-11
1372	Cuprum	f	15207275	0	2015-10-10	2018-08-28
1373	Provida	t	10071840	7376345	2015-06-19	2020-05-01
1374	Capital	f	4789797	0	1996-12-07	2018-07-23
1375	Provida	f	2413200	0	2007-08-22	2018-06-26
1376	Habitat	f	22701174	0	1978-10-04	2017-08-21
1377	Habitat	f	2392012	0	2001-01-27	2016-11-25
1378	Provida	f	10680611	0	2006-12-17	2018-10-29
1379	Planvital	f	12501805	0	1994-07-17	2018-11-28
1380	Planvital	f	2911557	0	2004-05-04	2017-03-07
1381	Provida	t	21223362	10391363	1981-04-21	2017-04-28
1382	Cuprum	t	8755895	19546459	2003-06-04	2019-03-27
1383	Modelo	f	2063037	0	2012-09-08	2020-03-19
1384	Cuprum	t	12001822	35748774	1988-03-29	2019-08-09
1385	Cuprum	f	36877533	0	1984-12-15	2016-06-19
1386	Provida	t	5654714	669871	1991-08-15	2018-07-26
1387	Provida	f	12579090	0	1993-07-12	2017-06-19
1388	Capital	t	10216988	34489153	1982-09-15	2018-11-30
1389	Planvital	f	14418665	0	2008-03-31	2019-05-18
1390	Cuprum	f	90875	0	2000-09-03	2017-01-31
1391	Capital	f	15543031	0	1992-06-18	2017-03-10
1392	Capital	t	28599871	12831779	1983-04-08	2020-04-11
1393	Modelo	f	9133712	0	2015-07-23	2018-11-10
1394	Planvital	f	5121895	0	2010-12-01	2017-03-03
1395	Provida	t	3154487	2032716	1991-06-11	2017-10-26
1396	Habitat	t	5781243	19572364	2011-06-26	2017-09-08
1397	Capital	t	9824656	14863370	1994-09-08	2019-06-30
1398	Planvital	f	10084929	0	2015-04-28	2020-07-08
1399	Modelo	t	2272244	7754206	2002-03-01	2017-12-09
1400	Planvital	t	6772276	10647267	2011-04-02	2018-04-17
1401	Capital	t	17836625	10736563	2011-02-06	2019-05-03
1402	Capital	t	13851348	21174269	1985-05-19	2018-11-29
1403	Planvital	f	14156563	0	1996-07-13	2017-05-17
1404	Habitat	t	4165666	14776047	1998-02-19	2017-12-11
1405	Planvital	t	10531039	4346357	1990-09-20	2019-08-31
1406	Capital	f	9696513	0	2008-03-01	2017-12-19
1407	Provida	f	7041808	0	2015-08-05	2018-11-17
1408	Provida	f	7204469	0	2015-01-19	2016-09-06
1409	Cuprum	t	5937545	891889	2005-01-31	2020-03-04
1410	Capital	f	19100251	0	2006-06-19	2018-10-27
1411	Capital	t	14204858	23982946	1987-07-15	2018-02-24
1412	Cuprum	t	13174943	34562445	1979-10-20	2016-05-14
1413	Planvital	f	4025435	0	1995-06-05	2017-11-30
1414	Capital	f	9430377	0	2014-05-08	2019-04-24
1415	Provida	t	3987156	11630353	2016-05-03	2016-12-31
1416	Cuprum	t	8694310	11008290	1993-05-12	2017-03-18
1417	Planvital	f	14619143	0	2008-02-13	2019-03-31
1418	Provida	f	470896	0	1994-07-30	2020-06-05
1419	Capital	f	35576819	0	1987-03-13	2016-06-25
1420	Provida	t	6173938	8593381	1984-11-27	2016-10-20
1421	Planvital	f	18777911	0	1987-05-14	2019-10-24
1422	Modelo	f	13894604	0	1996-04-14	2016-07-10
1423	Capital	f	14317727	0	2013-08-13	2017-01-27
1424	Provida	t	5345658	9246635	1994-10-30	2018-07-14
1425	Modelo	f	10553627	0	1985-11-04	2019-11-06
1426	Modelo	f	6263309	0	1994-05-26	2018-01-30
1427	Provida	f	18060830	0	2015-05-24	2020-08-17
1428	Planvital	t	19133983	1464749	2015-12-28	2019-08-23
1429	Modelo	f	18553123	0	1999-08-23	2017-08-10
1430	Cuprum	t	5751896	14688795	1996-02-25	2017-10-26
1431	Provida	f	16020438	0	1980-04-30	2016-08-12
1432	Planvital	t	10999489	4606162	2001-09-10	2018-05-19
1433	Planvital	f	10895910	0	2016-09-04	2020-08-16
1434	Cuprum	t	15488692	8406958	1996-10-10	2019-06-19
1435	Provida	t	15685595	152405	1992-11-11	2016-11-11
1436	Habitat	f	12050828	0	2011-12-17	2016-04-08
1437	Cuprum	t	9742522	16444240	2005-05-02	2016-08-25
1438	Capital	f	18077559	0	2010-06-06	2018-05-06
1439	Cuprum	f	14284656	0	2009-03-22	2019-03-20
1440	Habitat	f	6350131	0	2014-11-16	2019-07-12
1441	Modelo	t	1898420	11690197	2014-02-27	2018-07-31
1442	Capital	t	16786195	14654923	2012-11-25	2017-10-05
1443	Capital	t	10017430	11609958	1997-05-12	2019-07-06
1444	Provida	t	11538475	13447298	2012-09-17	2018-12-04
1445	Planvital	f	16180474	0	2004-05-08	2020-08-02
1446	Capital	f	12817448	0	2015-05-05	2017-06-04
1447	Planvital	t	10371394	14670986	2008-03-10	2018-06-28
1448	Modelo	f	13514670	0	1990-05-29	2016-04-22
1449	Habitat	t	34046960	14464687	1983-02-19	2016-08-29
1450	Capital	t	19787840	17196702	2010-08-18	2017-07-01
1451	Provida	t	12077837	12753693	2018-02-24	2018-11-29
1452	Planvital	f	1667585	0	2009-05-21	2017-02-19
1453	Habitat	f	7121669	0	1985-01-22	2018-10-01
1454	Provida	f	35213342	0	1984-07-19	2017-08-18
1455	Planvital	t	8739325	903860	2005-10-21	2018-06-28
1456	Modelo	t	16586347	31926152	1980-06-22	2016-08-23
1457	Modelo	t	39762492	23788782	1986-10-03	2018-04-27
1458	Provida	f	9489892	0	2002-04-01	2018-06-15
1459	Capital	t	16632196	6392007	1988-09-26	2019-06-25
1460	Provida	f	19336489	0	2004-02-08	2016-03-17
1461	Modelo	t	15795317	6698962	2006-06-15	2018-05-16
1462	Capital	t	19637346	8466452	2008-02-08	2018-03-08
1463	Modelo	t	18547967	9119922	2007-09-10	2018-09-10
1464	Capital	t	604121	6750750	2000-03-20	2019-02-17
1465	Capital	t	13666607	5699666	1998-10-14	2020-04-07
1466	Cuprum	t	14037988	2213769	2015-04-01	2019-06-02
1467	Capital	t	19456465	18790651	2008-01-21	2019-08-28
1468	Capital	f	18656975	0	2005-05-05	2018-12-07
1469	Modelo	f	6546249	0	1986-01-24	2016-01-19
1470	Capital	t	4194374	4182713	1998-07-27	2020-05-27
1471	Cuprum	f	17285828	0	1990-07-11	2017-10-20
1472	Planvital	f	17946894	0	2003-12-16	2016-08-23
1473	Cuprum	f	18452361	0	2016-02-25	2017-03-25
1474	Capital	f	14919787	0	1984-11-09	2017-09-22
1475	Capital	t	9709097	10816009	2016-09-26	2020-07-08
1476	Provida	t	8068281	3104410	2017-08-14	2020-01-01
1477	Capital	f	11771566	0	2000-04-03	2019-08-09
1478	Provida	t	5294803	762592	2012-05-15	2016-02-27
1479	Provida	f	17890092	0	1987-07-29	2019-10-04
1480	Planvital	t	20160390	39649300	1982-09-22	2017-04-23
1481	Capital	t	12983685	19366138	1994-01-26	2016-03-14
1482	Planvital	f	4545479	0	2007-09-16	2018-01-09
1483	Cuprum	f	5890941	0	2011-03-23	2016-08-22
1484	Habitat	t	15781909	3377043	1997-03-12	2016-04-28
1485	Modelo	t	15437838	14708017	2016-12-30	2017-01-03
1486	Modelo	f	16681014	0	2016-09-25	2017-06-19
1487	Provida	f	11487141	0	1991-06-12	2020-01-26
1488	Planvital	f	4816710	0	2014-03-07	2017-10-20
1489	Capital	f	11960080	0	1982-03-17	2016-10-28
1490	Modelo	f	13519327	0	2006-02-04	2020-07-27
1491	Habitat	t	39586903	21466766	1989-05-12	2017-09-29
1492	Habitat	f	6555858	0	1994-10-01	2020-07-17
1493	Capital	f	3764645	0	1997-12-18	2020-04-11
1494	Habitat	t	23946358	30922258	1980-08-19	2019-01-22
1495	Habitat	f	18017502	0	1999-06-28	2018-12-26
1496	Cuprum	t	17661356	16971822	1992-02-01	2017-06-23
1497	Capital	t	12875484	16735813	1996-05-18	2020-07-08
1498	Habitat	t	2814436	10902984	2009-10-13	2020-02-13
1499	Planvital	t	25496640	36327638	1982-12-12	2018-03-08
1500	Cuprum	t	1083239	17691778	2010-02-05	2019-10-08
1501	Cuprum	t	8783161	2984549	1992-11-28	2018-05-17
1502	Habitat	f	7179847	0	2007-11-01	2017-08-24
1503	Planvital	f	16873774	0	2001-06-24	2020-02-25
1504	Capital	t	14874517	16868987	1986-10-17	2017-05-18
1505	Habitat	t	6263761	6284907	2002-04-30	2017-04-23
1506	Cuprum	t	7307049	19302715	2002-05-03	2018-12-09
1507	Cuprum	f	10109799	0	1980-01-03	2019-12-28
1508	Cuprum	f	8692039	0	1992-07-26	2019-01-16
1509	Capital	f	7617809	0	2005-09-27	2018-06-15
1510	Modelo	f	31529603	0	1981-06-07	2018-03-29
1511	Habitat	f	35346703	0	1985-01-18	2020-01-31
1512	Modelo	t	26490512	23921104	1984-07-25	2018-10-10
1513	Modelo	f	19054133	0	2017-03-01	2019-05-29
1514	Planvital	f	39247395	0	1984-06-04	2019-02-28
1515	Capital	f	18213681	0	2009-10-31	2017-03-17
1516	Capital	f	3411552	0	1999-03-17	2018-11-05
1517	Cuprum	f	1954501	0	2012-01-18	2019-06-23
1518	Provida	t	13938691	16959555	1987-04-27	2016-05-23
1519	Modelo	f	8448525	0	1992-07-13	2017-12-24
1520	Cuprum	f	10701226	0	1982-08-19	2019-06-18
1521	Planvital	f	10297650	0	1994-08-09	2016-01-29
1522	Provida	f	33806255	0	1988-07-10	2020-08-17
1523	Habitat	t	8169427	26781930	1984-07-26	2016-06-10
1524	Cuprum	t	18511970	36394109	1979-08-04	2017-08-18
1525	Cuprum	f	16164860	0	1998-08-31	2018-01-12
1526	Provida	f	12191062	0	2015-08-01	2020-04-22
1527	Cuprum	f	5568003	0	2015-04-06	2018-07-15
1528	Provida	f	13578667	0	1991-06-15	2018-04-23
1529	Provida	t	14576738	7845777	1999-05-30	2019-02-27
1530	Cuprum	f	5992290	0	2014-01-06	2017-10-08
1531	Habitat	f	22235416	0	1980-07-15	2020-02-28
1532	Modelo	t	18640023	6529589	2013-06-30	2020-08-06
1533	Modelo	t	15903122	16222144	2000-02-20	2019-05-12
1534	Planvital	f	5324286	0	2007-11-09	2018-12-11
1535	Provida	f	11396039	0	2007-08-16	2019-02-18
1536	Modelo	f	23901052	0	1979-02-24	2020-05-13
1537	Modelo	f	9440742	0	1986-12-16	2017-01-15
1538	Modelo	t	7074399	11351715	2012-01-30	2017-10-09
1539	Planvital	f	4875338	0	1992-12-26	2019-08-31
1540	Cuprum	f	19314385	0	1991-10-11	2017-08-22
1541	Habitat	f	19407477	0	2001-06-30	2019-07-26
1542	Planvital	f	18307295	0	2000-06-04	2018-12-12
1543	Habitat	f	13724421	0	1987-08-11	2020-03-13
1544	Provida	f	7288149	0	2012-04-28	2016-08-05
1545	Planvital	f	459881	0	2004-12-14	2018-01-03
1546	Planvital	f	1816688	0	2002-05-06	2016-10-31
1547	Provida	t	13763349	19235355	2016-06-29	2017-08-12
1548	Cuprum	t	12924470	14182706	1996-04-04	2017-03-07
1549	Modelo	f	10677482	0	1995-11-13	2018-06-18
1550	Modelo	f	39878128	0	1984-12-31	2019-08-20
1551	Cuprum	t	9272721	8154703	2011-07-27	2017-04-25
1552	Capital	t	13627227	6573080	1995-08-21	2016-11-20
1553	Cuprum	f	15118059	0	1995-10-12	2019-08-30
1554	Capital	t	16615472	17806913	1993-08-26	2020-08-02
1555	Provida	f	19125797	0	2008-06-28	2016-08-30
1556	Modelo	t	18931288	18892091	2012-08-29	2016-10-05
1557	Cuprum	t	10064224	12031205	1995-08-30	2017-03-18
1558	Habitat	t	1815373	10223764	2010-05-01	2019-07-19
1559	Modelo	t	8858029	4175657	2000-12-31	2020-04-01
1560	Habitat	f	19859190	0	1987-10-06	2018-09-05
1561	Modelo	t	15148828	1224885	2012-06-10	2018-02-21
1562	Habitat	f	3898371	0	2013-06-27	2017-01-22
1563	Provida	t	24779172	13399782	1986-12-15	2016-07-25
1564	Planvital	f	13623876	0	2010-09-12	2017-04-20
1565	Cuprum	f	18230144	0	1999-12-19	2018-08-28
1566	Provida	f	12927725	0	2006-02-13	2018-02-11
1567	Planvital	f	3416832	0	2010-08-17	2020-05-22
1568	Planvital	f	17910909	0	1979-06-26	2018-09-23
1569	Planvital	t	19661763	2426154	2003-12-04	2017-01-05
1570	Provida	t	33136731	7650663	1985-07-16	2017-11-18
1571	Cuprum	t	20509902	17730327	1982-04-16	2020-04-12
1572	Cuprum	f	13723736	0	1986-05-08	2016-07-18
1573	Capital	t	5912076	12429834	1999-11-05	2019-11-27
1574	Modelo	f	3829988	0	2003-12-03	2016-03-21
1575	Habitat	f	19567974	0	1997-11-03	2019-05-04
1576	Planvital	f	32488899	0	1987-12-12	2017-03-23
1577	Modelo	t	18399732	10873399	1994-04-28	2019-02-21
1578	Habitat	f	10540638	0	1994-05-24	2017-12-03
1579	Modelo	f	17425844	0	2016-05-25	2019-10-03
1580	Capital	f	17335517	0	2011-06-12	2020-05-13
1581	Habitat	t	13588404	14450616	1991-02-25	2017-05-20
1582	Provida	t	7336145	16694788	2009-04-09	2016-03-19
1583	Modelo	f	11321172	0	2008-09-20	2016-08-14
1584	Habitat	f	34700086	0	1989-12-29	2017-04-26
1585	Cuprum	t	9062485	4754386	1998-07-29	2018-05-18
1586	Habitat	f	30847861	0	1980-04-22	2019-05-08
1587	Cuprum	t	23429221	8478904	1988-03-30	2019-06-26
1588	Habitat	f	6069366	0	1992-03-10	2018-07-11
1589	Cuprum	f	23976482	0	1988-04-08	2017-10-22
1590	Cuprum	t	599183	3404334	2000-02-16	2016-09-12
1591	Capital	f	9502439	0	1999-01-11	2018-12-06
1592	Cuprum	f	601263	0	2010-07-21	2018-06-20
1593	Modelo	t	13276914	11265465	2000-04-27	2020-01-21
1594	Modelo	f	8814954	0	2004-06-14	2017-11-26
1595	Modelo	t	1365496	13826917	2012-10-12	2016-08-05
1596	Provida	t	6413870	4043055	2017-11-04	2019-05-19
1597	Provida	f	9209963	0	1990-06-12	2019-10-14
1598	Planvital	t	28878193	15293040	1987-04-17	2020-06-17
1599	Cuprum	f	32522537	0	1989-08-26	2020-07-19
1600	Cuprum	t	7801628	19593412	2010-09-28	2020-01-06
1601	Capital	f	13097817	0	2010-02-02	2016-03-23
1602	Modelo	t	12438144	8628300	1989-01-13	2019-04-09
1603	Modelo	t	32910261	13043742	1982-08-02	2018-01-24
1604	Modelo	t	6207447	18088895	1983-01-13	2017-03-21
1605	Provida	f	17483328	0	2016-01-25	2018-02-18
1606	Modelo	t	10544163	27117105	1988-10-04	2018-10-03
1607	Habitat	f	5510540	0	2013-07-12	2018-07-31
1608	Habitat	t	22638386	22765189	1988-04-06	2019-07-13
1609	Cuprum	f	5132474	0	1999-12-20	2017-03-07
1610	Capital	f	19723345	0	1989-02-02	2017-02-15
1611	Planvital	f	17154740	0	1991-06-29	2018-07-19
1612	Habitat	t	51640	6651633	2009-06-08	2018-01-24
1613	Planvital	f	34293790	0	1988-03-07	2017-06-07
1614	Capital	t	16486833	7970186	1997-01-15	2016-07-10
1615	Modelo	t	4006434	14391376	1990-03-03	2016-05-28
1616	Cuprum	f	16077912	0	1985-11-07	2020-08-29
1617	Cuprum	f	17760325	0	1984-02-25	2016-12-23
1618	Modelo	f	10302387	0	2015-04-11	2018-09-07
1619	Cuprum	t	1637549	7480029	1998-05-17	2019-08-17
1620	Capital	t	13517382	13731429	2002-04-10	2017-01-07
1621	Planvital	f	28155487	0	1979-12-07	2018-04-22
1622	Modelo	t	12376194	6003755	1982-03-24	2019-01-20
1623	Capital	t	3319521	13201078	2009-12-29	2017-08-13
1624	Cuprum	f	5724407	0	2009-07-07	2019-05-06
1625	Capital	f	33197181	0	1984-09-27	2017-02-04
1626	Modelo	t	13246874	204110	2014-01-10	2018-09-02
1627	Modelo	t	39061698	26365370	1978-10-14	2018-09-19
1628	Capital	t	14510309	1069130	2009-03-24	2018-01-30
1629	Habitat	f	21076883	0	1989-06-12	2018-01-01
1630	Planvital	f	15735646	0	2000-04-30	2017-09-12
1631	Capital	t	1697472	4047370	2001-03-07	2018-07-03
1632	Modelo	t	26276666	12557516	1982-09-10	2017-01-13
1633	Planvital	t	4584987	6661172	2002-06-07	2017-11-13
1634	Modelo	f	9745401	0	2004-04-19	2020-03-11
1635	Planvital	f	18403564	0	1983-05-10	2017-09-21
1636	Modelo	t	14833460	12502052	1993-03-05	2018-01-12
1637	Modelo	t	3672253	18326373	1991-02-08	2018-10-02
1638	Planvital	t	1172502	16807996	2002-10-12	2017-07-27
1639	Capital	f	15589495	0	1995-04-10	2016-01-26
1640	Modelo	t	7926619	14906135	2003-10-02	2019-12-24
1641	Planvital	f	2653922	0	1997-02-08	2018-03-05
1642	Capital	f	10006860	0	2016-08-23	2018-09-29
1643	Habitat	t	6083259	18078036	1988-02-22	2019-04-17
1644	Cuprum	f	20664816	0	1981-01-14	2017-05-09
1645	Cuprum	f	15435756	0	2014-02-02	2018-10-04
1646	Habitat	t	9208071	23096104	1988-05-29	2019-06-19
1647	Capital	t	1031303	13598820	2011-05-12	2016-05-02
1648	Provida	t	13741840	17059240	2016-11-24	2016-07-15
1649	Provida	f	31622896	0	1985-10-13	2018-11-21
1650	Provida	t	32718173	39977060	1988-04-05	2020-07-19
1651	Cuprum	t	11018304	21819815	1986-09-01	2020-08-23
1652	Cuprum	f	8561562	0	1981-05-27	2020-05-20
1653	Planvital	t	2730384	5041211	1995-08-09	2019-11-17
1654	Habitat	t	26759987	16430448	1985-02-23	2019-04-20
1655	Provida	f	39945340	0	1985-09-29	2020-02-29
1656	Planvital	f	18349590	0	1995-12-26	2018-11-13
1657	Capital	t	19098093	1287401	2002-11-28	2019-05-07
1658	Provida	t	7201399	26145613	1984-01-10	2018-04-05
1659	Planvital	f	6125055	0	1993-05-15	2016-04-30
1660	Habitat	t	1401919	446803	1992-11-05	2017-05-16
1661	Cuprum	t	816744	17944804	2016-10-06	2020-06-24
1662	Planvital	f	10989298	0	2011-10-12	2020-05-18
1663	Capital	t	15985058	19546786	2011-09-30	2016-12-25
1664	Planvital	t	33049201	20336421	1985-07-08	2017-06-22
1665	Habitat	t	12522257	10705986	2016-06-27	2017-04-25
1666	Habitat	f	4032879	0	2012-03-27	2017-04-03
1667	Capital	f	13222517	0	2008-09-15	2018-05-27
1668	Modelo	f	16521829	0	1989-04-30	2020-01-09
1669	Modelo	f	6165457	0	1996-11-03	2018-04-23
1670	Cuprum	t	1496529	5339383	2006-06-02	2017-10-25
1671	Capital	t	13299422	5515541	1996-10-15	2017-10-20
1672	Capital	f	22437882	0	1987-08-09	2017-02-04
1673	Modelo	f	8098508	0	2016-05-07	2019-09-16
1674	Capital	t	19217458	12130571	2000-08-29	2017-04-15
1675	Capital	t	27092107	18978495	1988-01-30	2020-09-03
1676	Modelo	f	404012	0	2004-01-06	2019-12-15
1677	Modelo	f	20077736	0	1985-06-11	2017-11-23
1678	Modelo	t	8271684	17625809	2004-09-01	2019-03-28
1679	Cuprum	t	19011653	13601286	2012-02-08	2017-02-28
1680	Cuprum	f	17845909	0	1984-07-10	2020-03-29
1681	Planvital	t	7222648	2168420	2012-07-04	2020-04-27
1682	Provida	f	16073390	0	2001-04-25	2018-10-27
1683	Habitat	t	9233759	20225253	1982-11-08	2019-04-18
1684	Modelo	t	12061240	10874945	1982-05-06	2019-03-01
1685	Modelo	t	31837335	39664875	1984-07-23	2016-05-03
1686	Habitat	f	16900367	0	2017-03-22	2020-03-05
1687	Provida	t	8436230	3001370	2001-04-30	2018-06-27
1688	Provida	f	14693695	0	1999-05-13	2016-01-11
1689	Cuprum	f	9035421	0	1986-03-31	2018-10-01
1690	Provida	t	18472280	24414071	1983-05-26	2018-02-28
1691	Planvital	f	11270180	0	2006-08-20	2018-07-27
1692	Modelo	t	18109071	15544279	2004-03-22	2020-06-30
1693	Planvital	t	5843059	19323579	2012-06-19	2016-12-07
1694	Habitat	f	32896499	0	1985-11-22	2017-10-08
1695	Provida	t	4191066	19402668	1993-02-25	2019-09-01
1696	Capital	f	5064200	0	2009-10-29	2019-12-20
1697	Cuprum	f	6363672	0	2006-12-16	2016-02-15
1698	Planvital	t	11675695	19900603	2004-09-01	2018-11-13
1699	Capital	f	2495825	0	2005-09-16	2018-02-17
1700	Provida	f	4136516	0	1990-06-19	2019-11-17
1701	Provida	t	8584485	13018697	2005-01-16	2019-11-25
1702	Modelo	t	14906141	1558940	2014-09-16	2020-07-09
1703	Capital	t	22779932	39188504	1981-12-08	2019-03-03
1704	Habitat	f	29383500	0	1989-03-13	2020-07-30
1705	Capital	f	17323875	0	2012-11-05	2020-06-03
1706	Habitat	t	14949951	15469394	2006-09-05	2018-10-18
1707	Cuprum	t	13157346	3378695	2008-07-04	2017-07-02
1708	Modelo	f	4584267	0	1991-03-23	2016-09-12
1709	Capital	t	10047485	12317272	2010-08-01	2019-10-18
1710	Provida	f	10553810	0	2014-10-06	2018-08-29
1711	Provida	f	7677462	0	1993-03-17	2017-04-22
1712	Planvital	t	5188552	6036330	2013-09-26	2019-12-02
1713	Habitat	f	7264777	0	2006-04-07	2019-06-22
1714	Provida	f	16761044	0	1994-04-14	2018-11-07
1715	Planvital	f	19783572	0	2007-09-18	2019-05-03
1716	Habitat	t	7649832	19551598	1993-04-22	2020-06-26
1717	Modelo	t	16489038	2061729	2005-09-24	2017-04-27
1718	Planvital	f	1251276	0	2006-04-08	2018-02-06
1719	Habitat	t	2309951	128617	1990-05-21	2019-10-14
1720	Cuprum	f	17446785	0	2011-02-11	2016-06-11
1721	Cuprum	f	5158474	0	1999-12-23	2016-07-03
1722	Modelo	t	16956568	17291460	1990-02-22	2018-09-11
1723	Planvital	f	12038903	0	2003-06-28	2017-07-16
1724	Modelo	t	5753208	9326705	2009-06-25	2020-06-11
1725	Provida	t	16729738	3798388	2003-06-02	2016-09-20
1726	Cuprum	t	19721435	18553926	1981-11-29	2018-07-22
1727	Provida	t	4686786	7786796	2010-10-27	2017-04-21
1728	Modelo	f	9143264	0	1982-11-20	2019-07-08
1729	Capital	t	13435722	10580834	1984-04-11	2018-11-28
1730	Planvital	t	6195538	27164911	1988-07-14	2016-04-26
1731	Planvital	t	9502725	3778140	1990-09-10	2018-12-02
1732	Provida	t	18484155	8703328	2010-04-04	2017-10-25
1733	Habitat	f	15971753	0	2006-11-21	2018-12-31
1734	Capital	f	12899590	0	2005-07-11	2017-12-29
1735	Cuprum	f	634241	0	2005-01-28	2019-08-28
1736	Capital	t	16372243	18399422	2006-04-17	2016-12-23
1737	Planvital	f	4725695	0	1995-09-29	2020-07-11
1738	Habitat	f	35237400	0	1990-07-06	2018-12-09
1739	Capital	t	9542642	14798259	2006-06-11	2020-07-22
1740	Planvital	t	19079516	12820572	1980-10-10	2018-07-03
1741	Cuprum	t	19709270	5482417	1993-06-29	2017-01-17
1742	Habitat	t	6989808	17557418	2013-01-07	2020-04-04
1743	Provida	t	26064279	19551800	1980-10-01	2018-04-26
1744	Capital	t	34780639	39524625	1984-01-20	2017-05-06
1745	Planvital	f	17375331	0	2012-02-13	2018-10-11
1746	Modelo	t	10484380	17081966	2007-04-07	2019-02-02
1747	Cuprum	t	6617275	8189744	2010-02-18	2016-12-10
1748	Planvital	f	2533789	0	2016-08-09	2018-07-13
1749	Provida	t	31955467	9863104	1987-10-05	2019-09-29
1750	Modelo	t	3028260	6139126	1996-09-22	2019-03-03
1751	Planvital	f	408394	0	2005-03-05	2020-07-02
1752	Planvital	t	6498418	7642254	2001-01-27	2018-09-29
1753	Habitat	f	2450562	0	2016-07-28	2017-02-20
1754	Modelo	f	14412206	0	1998-10-07	2018-01-10
1755	Provida	t	8528555	17407303	1980-05-06	2016-01-31
1756	Planvital	t	11039525	7611744	2012-04-21	2016-09-13
1757	Cuprum	t	2493640	11109648	2008-11-21	2016-10-05
1758	Modelo	f	24159168	0	1987-09-24	2018-01-29
1759	Provida	f	3687513	0	1998-03-08	2019-07-10
1760	Modelo	t	17000614	7981010	2017-05-23	2018-03-03
1761	Provida	t	16733120	16312335	2003-04-22	2019-11-10
1762	Capital	t	11103563	18198703	1984-07-28	2018-12-28
1763	Cuprum	t	16885952	238238	2014-11-16	2019-10-24
1764	Modelo	t	1510622	9672875	2010-07-17	2019-07-24
1765	Cuprum	t	14144474	8275379	2001-03-07	2017-02-26
1766	Provida	t	16718645	2819974	2015-04-01	2016-03-14
1767	Provida	f	19771623	0	2016-08-24	2019-09-23
1768	Planvital	t	15673386	2851662	2007-04-02	2017-03-19
1769	Habitat	f	17517438	0	2008-01-27	2017-05-11
1770	Modelo	t	5215919	5763721	2000-03-03	2016-04-04
1771	Modelo	f	20016789	0	1986-02-16	2020-05-20
1772	Capital	t	1816107	1906334	2013-06-23	2020-08-05
1773	Provida	t	33848167	35533181	1978-11-15	2020-03-14
1774	Modelo	t	16498191	1675609	2006-01-09	2017-12-05
1775	Cuprum	f	10950944	0	1997-03-24	2018-01-14
1776	Habitat	t	2839517	18111494	2012-05-09	2017-04-11
1777	Capital	f	1609634	0	1997-05-27	2016-03-22
1778	Provida	f	9620145	0	1996-05-22	2019-02-16
1779	Cuprum	f	7911856	0	1997-10-12	2018-03-23
1780	Habitat	t	4464502	899950	2003-11-20	2016-01-12
1781	Provida	f	14905132	0	2000-08-12	2018-04-04
1782	Planvital	f	13022202	0	2010-05-02	2018-01-14
1783	Capital	t	11261153	9180070	1998-02-21	2017-08-01
1784	Habitat	t	17021526	12617171	2014-01-01	2019-04-23
1785	Habitat	f	7088255	0	2002-10-07	2016-09-06
1786	Modelo	f	9665090	0	2018-06-03	2020-06-03
1787	Habitat	t	7162153	7709154	2006-09-29	2018-08-06
1788	Provida	f	14349831	0	1997-06-30	2020-02-20
1789	Modelo	t	1211226	18372641	1997-06-25	2020-01-05
1790	Provida	f	38547552	0	1986-04-20	2017-02-01
1791	Capital	t	304675	4273586	2014-10-01	2019-06-14
1792	Modelo	t	15735637	19088148	2014-11-27	2020-01-31
1793	Provida	t	8313440	1233485	2000-10-02	2020-06-28
1794	Capital	f	2056348	0	2011-09-20	2017-04-29
1795	Habitat	f	23320736	0	1978-03-10	2019-10-20
1796	Habitat	f	6527375	0	1994-01-28	2017-07-21
1797	Habitat	f	11362207	0	1987-02-03	2019-01-07
1798	Modelo	t	7231862	5145907	2016-11-29	2020-01-22
1799	Modelo	f	13547372	0	1999-07-31	2016-08-16
1800	Capital	t	18901039	11739050	2000-12-12	2019-04-03
1801	Habitat	f	13724077	0	1982-02-23	2017-12-01
1802	Habitat	f	7480327	0	2008-10-24	2016-02-16
1803	Modelo	f	11178718	0	2003-09-12	2016-11-10
1804	Planvital	f	17009734	0	2006-06-04	2018-06-01
1805	Modelo	f	1240328	0	2002-03-30	2018-03-10
1806	Planvital	t	30139297	11698260	1982-12-31	2016-08-02
1807	Modelo	t	11569146	4133986	2010-12-12	2018-05-16
1808	Provida	t	11754674	13372088	1996-07-02	2019-02-16
1809	Provida	t	13697365	1027129	2017-07-22	2019-11-06
1810	Provida	t	8654269	15790506	2015-07-27	2019-03-27
1811	Habitat	t	33376541	32405610	1979-04-01	2016-06-21
1812	Cuprum	f	9907845	0	1999-03-04	2018-07-10
1813	Cuprum	t	21626131	32689809	1983-01-30	2018-03-05
1814	Planvital	t	19636767	14648064	1993-05-27	2016-08-13
1815	Modelo	f	4723934	0	2008-08-25	2017-11-12
1816	Cuprum	t	30309465	23496865	1980-06-06	2020-06-29
1817	Provida	t	19459514	17152218	1999-10-28	2019-07-22
1818	Capital	f	8312724	0	2005-08-06	2017-12-13
1819	Planvital	t	1809457	2381595	2001-01-20	2018-07-06
1820	Habitat	t	30888077	7544955	1982-09-12	2020-06-23
1821	Habitat	t	17185353	7770532	2002-05-22	2020-08-17
1822	Cuprum	t	35413612	20107228	1979-12-21	2016-10-02
1823	Planvital	t	11217670	28821167	1984-07-02	2018-12-30
1824	Modelo	f	816491	0	2001-12-12	2020-07-20
1825	Provida	t	13817135	19419398	2000-02-23	2017-10-02
1826	Capital	f	8701021	0	1986-09-08	2020-03-05
1827	Habitat	f	15238745	0	1990-01-02	2016-11-10
1828	Habitat	f	1565564	0	2014-05-24	2018-08-24
1829	Planvital	t	30128021	30861625	1989-04-29	2019-09-06
1830	Capital	t	9239554	1354710	1997-09-05	2017-03-13
1831	Provida	f	24779188	0	1987-10-15	2019-12-08
1832	Modelo	t	13069387	1096300	2007-09-21	2019-06-18
1833	Cuprum	t	26548602	24779843	1982-09-02	2016-01-25
1834	Planvital	f	18253397	0	2005-10-29	2019-12-25
1835	Planvital	t	13849153	9012822	2010-08-07	2017-04-03
1836	Provida	t	11764486	11701268	2010-03-06	2016-12-31
1837	Modelo	f	226952	0	1995-05-10	2018-09-27
1838	Modelo	f	12447668	0	1999-07-17	2016-03-22
1839	Cuprum	t	21177247	9971822	1982-03-11	2016-06-06
1840	Cuprum	f	5510624	0	2003-08-04	2020-04-26
1841	Habitat	t	10776441	7868599	1990-03-09	2016-01-03
1842	Capital	t	22797827	10593730	1983-02-13	2019-09-14
1843	Habitat	f	28506363	0	1985-12-23	2018-07-31
1844	Habitat	f	9392560	0	1994-10-03	2019-09-19
1845	Modelo	f	17961746	0	2000-10-03	2020-03-30
1846	Planvital	f	2466800	0	2004-12-11	2019-11-22
1847	Habitat	t	1747159	2141331	2016-12-05	2018-03-20
1848	Capital	t	19888524	17458338	2011-09-30	2017-05-02
1849	Provida	f	26289126	0	1981-03-03	2018-01-19
1850	Planvital	f	15150056	0	1984-02-11	2018-01-24
1851	Planvital	t	26761486	14534958	1989-04-07	2017-06-02
1852	Habitat	t	12569907	4458100	2005-01-08	2017-11-10
1853	Cuprum	f	23728934	0	1981-05-05	2019-11-05
1854	Modelo	f	17985673	0	2001-11-06	2019-03-21
1855	Capital	f	16178094	0	2013-02-14	2016-11-09
1856	Capital	f	22309618	0	1984-06-04	2020-04-07
1857	Habitat	f	6385975	0	2013-06-12	2016-09-04
1858	Cuprum	t	8946989	27960540	1978-03-23	2019-09-29
1859	Provida	t	10017169	170744	2008-10-26	2017-06-25
1860	Capital	f	12549073	0	1984-07-13	2016-05-11
1861	Modelo	f	14707337	0	2006-03-07	2017-01-04
1862	Modelo	f	9877373	0	1997-12-24	2018-04-08
1863	Cuprum	f	15760429	0	2015-11-27	2018-03-24
1864	Cuprum	f	11853613	0	2008-11-16	2020-04-09
1865	Habitat	t	37833600	39946074	1984-08-27	2017-03-27
1866	Modelo	f	3369092	0	2015-06-21	2016-01-11
1867	Modelo	t	8765866	8329292	2006-12-30	2018-04-13
1868	Provida	t	12744725	12437778	2005-05-06	2018-01-19
1869	Provida	f	12741003	0	1983-08-11	2018-05-22
1870	Planvital	f	3228552	0	2005-11-07	2019-05-17
1871	Habitat	f	1286306	0	1998-03-05	2016-08-19
1872	Provida	f	10324770	0	2008-02-07	2016-11-19
1873	Provida	t	17150036	7765651	2011-11-25	2019-07-13
1874	Planvital	f	12591479	0	1990-08-09	2019-01-31
1875	Provida	t	26719629	37103926	1984-03-25	2019-03-16
1876	Provida	f	3341634	0	2011-11-27	2019-02-04
1877	Capital	t	373485	18537034	2005-07-18	2017-05-08
1878	Cuprum	f	21336369	0	1983-12-27	2017-06-29
1879	Cuprum	t	2065357	3850272	1991-03-26	2019-07-03
1880	Modelo	t	6488998	19730337	2014-11-25	2019-03-30
1881	Cuprum	t	20451184	16293424	1981-04-13	2016-04-28
1882	Planvital	t	2689962	13719718	2012-11-13	2020-06-12
1883	Modelo	f	15621430	0	2013-05-12	2017-01-23
1884	Planvital	f	16999643	0	2013-06-26	2020-03-29
1885	Modelo	f	7170509	0	1982-03-09	2019-11-05
1886	Provida	f	11112000	0	1998-10-06	2016-01-20
1887	Habitat	t	16511571	17130311	1997-08-29	2020-02-09
1888	Planvital	f	2197086	0	1989-09-01	2020-08-24
1889	Provida	t	8499321	14665066	2003-06-22	2017-02-16
1890	Cuprum	f	12134622	0	2007-05-20	2016-03-03
1891	Modelo	f	11272260	0	2016-03-06	2019-07-02
1892	Habitat	f	13284079	0	1991-06-08	2019-07-20
1893	Modelo	t	11948684	16835198	1995-09-08	2017-07-03
1894	Modelo	t	3019455	18617973	2010-09-26	2017-12-29
1895	Modelo	t	16159513	5279673	2003-10-21	2019-07-23
1896	Capital	t	25073235	22683203	1982-04-06	2016-05-21
1897	Cuprum	t	18436871	1012264	2001-11-17	2020-02-22
1898	Cuprum	t	12321002	11521361	1990-01-04	2018-03-10
1899	Habitat	f	3326399	0	2012-07-24	2016-09-29
1900	Capital	f	7071223	0	1982-10-10	2016-03-12
1901	Planvital	t	12842596	10481023	1989-11-12	2019-05-11
1902	Habitat	t	19131633	12058864	1997-07-23	2019-06-15
1903	Planvital	f	10410868	0	2011-05-29	2018-06-14
1904	Cuprum	t	16545079	18183792	1994-01-29	2018-12-31
1905	Cuprum	t	17792628	31746528	1987-08-27	2018-04-09
1906	Modelo	t	1169113	7607776	2008-12-23	2016-07-01
1907	Cuprum	t	17254206	25264090	1983-12-14	2018-01-04
1908	Capital	t	35638595	31463470	1990-08-31	2016-04-09
1909	Habitat	t	5450569	3812056	1993-01-13	2017-08-21
1910	Planvital	t	27130424	17757311	1980-04-20	2018-12-11
1911	Habitat	f	35461966	0	1985-09-09	2018-02-09
1912	Cuprum	f	13500533	0	1989-07-11	2017-11-03
1913	Cuprum	f	2775590	0	2003-04-20	2019-09-26
1914	Habitat	t	8201710	16960820	2012-05-18	2020-01-09
1915	Habitat	t	9527038	3735903	2003-02-08	2019-12-18
1916	Planvital	t	17621188	8548912	2003-03-05	2017-09-30
1917	Provida	f	32383707	0	1981-05-18	2017-06-08
1918	Capital	f	5727749	0	2005-03-03	2016-06-14
1919	Modelo	f	9192912	0	1994-04-14	2019-10-07
1920	Provida	t	30600852	9567047	1978-11-09	2019-04-05
1921	Cuprum	f	9309666	0	2015-11-07	2016-09-07
1922	Habitat	t	17412509	1399063	2015-12-09	2018-09-07
1923	Cuprum	f	18474492	0	2010-04-30	2017-08-24
1924	Cuprum	f	36144432	0	1984-06-26	2019-08-28
1925	Modelo	t	5217646	17554201	2007-07-01	2016-01-31
1926	Modelo	t	14400416	5604223	1999-07-22	2019-07-01
1927	Planvital	f	7816195	0	2014-04-05	2017-01-17
1928	Planvital	t	27364202	11604755	1986-10-25	2016-10-23
1929	Modelo	t	25444288	36923417	1978-12-24	2019-07-15
1930	Cuprum	t	14877470	8146102	1984-11-13	2019-07-08
1931	Provida	t	4791701	16835762	2016-08-28	2019-11-16
1932	Modelo	f	18947465	0	1985-06-30	2017-04-25
1933	Planvital	t	16111436	32883339	1986-12-11	2016-09-12
1934	Modelo	f	38937845	0	1983-10-07	2017-06-01
1935	Planvital	f	16728274	0	1997-09-12	2018-03-25
1936	Cuprum	f	9685459	0	2011-05-28	2019-08-27
1937	Capital	t	19909704	10124396	2004-04-01	2018-04-11
1938	Modelo	f	13717237	0	2015-02-22	2017-07-25
1939	Planvital	t	3854706	4823559	1993-06-12	2017-04-25
1940	Provida	f	6732879	0	1996-07-07	2019-10-22
1941	Modelo	t	10713077	3494428	1991-04-10	2016-09-23
1942	Habitat	t	8525249	9229919	2018-04-08	2019-07-06
1943	Capital	f	8723204	0	2005-09-17	2019-11-27
1944	Capital	f	9975021	0	2005-09-13	2020-02-24
1945	Modelo	t	8402933	316709	2012-02-23	2020-08-16
1946	Habitat	t	14298323	15765510	1998-02-22	2019-04-08
1947	Cuprum	t	19035376	12051527	1993-08-28	2020-06-14
1948	Planvital	t	2976389	15001224	2005-04-24	2017-05-11
1949	Planvital	t	3995769	15056847	2013-12-07	2020-01-31
1950	Planvital	t	15755205	18847284	2011-07-10	2019-07-17
1951	Habitat	t	15665850	31118176	1984-07-18	2018-03-08
1952	Planvital	f	23306674	0	1978-05-07	2018-02-08
1953	Planvital	f	5336914	0	2009-02-07	2019-07-27
1954	Cuprum	t	12724022	35246245	1988-12-24	2018-07-02
1955	Cuprum	t	17068832	13888199	2008-12-05	2018-04-29
1956	Habitat	t	19273210	6625859	2016-09-11	2016-06-30
1957	Planvital	t	6176331	7081361	1991-11-11	2019-05-25
1958	Modelo	f	36338940	0	1984-02-27	2016-07-06
1959	Modelo	f	9216424	0	1999-04-27	2016-07-02
1960	Provida	t	14781113	3175815	2006-03-15	2018-07-08
1961	Planvital	f	7983531	0	2010-12-05	2019-02-04
1962	Capital	f	8436578	0	2016-12-05	2019-01-25
1963	Habitat	f	20247487	0	1982-05-04	2017-12-25
1964	Modelo	t	22415573	24848148	1984-02-19	2016-08-29
1965	Cuprum	f	8331156	0	2005-05-17	2016-07-27
1966	Provida	f	6264757	0	1997-02-04	2019-01-01
1967	Capital	f	9727220	0	2016-08-15	2016-08-06
1968	Habitat	f	7070796	0	2003-07-31	2018-07-10
1969	Capital	f	13848861	0	2015-12-01	2017-06-26
1970	Habitat	t	19763199	18849729	1999-12-11	2018-08-09
1971	Capital	t	9780092	17261197	1997-03-30	2017-01-22
1972	Habitat	f	1453274	0	1998-05-20	2016-06-22
1973	Habitat	f	448165	0	2005-02-14	2019-12-06
1974	Modelo	f	12330461	0	1996-04-29	2016-01-10
1975	Cuprum	f	7691502	0	1986-05-23	2019-07-16
1976	Cuprum	f	34024808	0	1985-07-24	2018-03-20
1977	Modelo	f	3163550	0	1993-01-09	2019-06-02
1978	Habitat	f	7913068	0	1988-02-26	2020-06-02
1979	Habitat	t	17442539	19466587	1993-12-08	2018-10-10
1980	Cuprum	f	4210073	0	2003-01-31	2018-10-12
1981	Capital	f	7652498	0	1981-06-17	2017-06-07
1982	Capital	f	19299198	0	2013-10-21	2017-10-19
1983	Capital	t	10241119	402339	1994-02-03	2016-02-21
1984	Cuprum	t	13943455	303359	2012-04-20	2018-01-09
1985	Modelo	f	6301360	0	2004-02-05	2018-12-02
1986	Modelo	f	20627533	0	1979-01-03	2018-05-08
1987	Habitat	f	3291764	0	1997-10-23	2017-07-16
1988	Capital	t	12449999	1869283	2000-10-27	2018-06-20
1989	Cuprum	t	6258231	17482868	2001-07-27	2019-08-31
1990	Habitat	t	1182803	4319547	1997-12-07	2017-01-06
1991	Provida	t	16264089	9602293	2016-06-15	2019-05-18
1992	Capital	t	7663786	37518910	1990-03-28	2018-12-09
1993	Capital	t	13955381	22380460	1982-09-05	2017-02-24
1994	Habitat	f	18341227	0	2001-04-23	2020-08-24
1995	Planvital	t	35183636	39860139	1988-01-07	2019-03-31
1996	Modelo	f	13474642	0	2004-11-05	2019-03-20
1997	Provida	t	13814130	33784908	1987-12-26	2017-02-17
1998	Habitat	t	7195118	2206662	2004-07-13	2020-05-09
1999	Provida	t	13402393	18029323	2015-04-03	2016-08-25
2000	Provida	f	7490490	0	1995-08-24	2017-08-15
2001	Habitat	f	10884392	0	1988-06-21	2020-03-07
\.


--
-- Data for Name: fondos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fondos (rut, fondo_a, fondo_b, fondo_c, fondo_d, fondo_e) FROM stdin;
6751759-1	320207	25128702	6430507	0	0
6610321-K	3086800	8170878	13075362	50505	197766
10231340-K	9054523	0	3916478	0	3269513
7954161-4	548950	4237715	2219909	0	0
7049091-1	5308151	9468770	3655624	1070537	4429805
13407637-K	1505669	34592	0	0	45497
17451494-K	0	76615	2015712	11853726	1269298
15490775-K	2271826	13951376	0	0	0
8081126-K	760338	6008250	42276	5434506	0
19683574-4	6443634	553018	6823234	0	378886
7145749-6	0	0	21846772	9391690	133013
13870566-8	0	17752130	1257380	0	626217
19510967-9	2224942	1619051	4662204	4605250	95095
6991463-K	1572487	0	17501907	176899	0
13137853-K	0	10574829	944137	33050	754455
14967023-0	7912772	7511592	1114701	457835	0
11569756-5	623342	0	0	74078	6307844
14338355-2	4371421	1682344	9612901	0	1640796
16614615-K	144058	196486	0	1319948	82392
9504579-7	0	0	24183	1011237	0
8640434-4	0	909401	0	79338	150010
8401857-2	1177921	2192505	0	0	254260
10136477-5	0	0	1548392	0	2917256
7383589-6	4271036	1538442	1176429	16076167	663715
9262635-7	5668055	126093	4434917	6081637	2486790
8226550-K	24176	153839	1046778	12799144	1018297
16032178-3	1040790	169946	2243370	2227288	11048824
7037034-1	0	0	27410761	0	3906901
12974270-K	199736	0	71703	165122	14116234
9853267-3	1671404	0	291983	7556182	214798
8881974-5	39101	0	87732	249707	2501496
6040557-K	20504	0	0	0	15552033
6027695-7	8089505	855835	9784741	18759378	590864
15386530-K	10780147	0	2343019	0	1192565
16671795-5	0	4277073	3679161	607069	7347249
7698887-0	0	26933	72901	1420989	5786845
11725032-K	5643328	0	7684614	166856	0
19645239-K	0	56140	0	7269210	391327
13974290-K	0	3268344	2127396	279300	0
9851153-4	8314777	33702	0	11269901	0
14152936-5	69528	11952507	0	42071	0
9768629-0	1160834	1535691	4604605	0	8786790
8847729-4	2569199	7775724	102069	0	7559915
6226777-K	0	0	9072819	14799446	2798661
15084774-K	0	4619254	2614448	0	0
7020501-8	12747351	0	3362743	33651	14087487
17321385-K	10802019	0	2348950	54632	1487880
19363302-1	5004433	44032	8482861	1228253	0
15022554-K	2267323	1258788	7122639	0	27022
14497077-K	253976	143210	0	0	0
16374031-8	3126796	528339	0	155813	5583167
14513242-K	0	2092461	0	5683543	7714289
7735864-9	9761604	12231465	0	2147826	0
10884957-7	2016817	656531	0	0	7698499
13335902-K	0	0	3298012	292866	0
6016474-0	1778958	10054260	637444	9439113	597368
8354396-9	164608	18438347	22061	0	242604
9378424-7	47046	0	0	0	0
17672673-K	0	188397	1291326	0	4727865
19581991-1	650889	1930547	4730961	0	2239610
17459547-K	3420723	904956	22884	8745966	129455
18194579-K	22739	0	0	4181273	1331200
19806020-7	8358186	4312268	628129	0	64710
8384849-7	2218540	61182	5102637	2065609	529937
9780298-K	69261	2849229	5487562	0	125950
7926824-6	29166568	5718684	0	1769545	0
17282708-K	25618	8858934	0	124031	0
18332545-5	0	0	3803150	4054723	0
14541228-4	25665	0	0	152202	7546197
12589985-6	5991506	1583866	5632423	3073289	171525
6515164-K	2421604	13695515	57159	65272	681400
7925485-K	0	0	0	21184238	260597
17709690-4	0	7394392	2407312	82976	115007
7004061-8	1313843	3150576	6145165	12781168	13261500
8522610-K	38619	1003078	482177	390637	287142
6659467-6	112419	491823	0	245553	14663427
14733839-K	3458380	0	615644	687190	0
7410070-K	0	6774837	251648	390298	207102
7755496-K	0	29890	0	25353052	20184
16366006-0	4063342	216471	10980248	0	718262
12517343-5	1106359	539538	0	5026111	0
13520038-0	0	2344446	0	9522156	185738
13243422-K	0	421304	1818119	4778616	45001
16306464-5	0	2535610	0	0	6115521
14391080-K	33923	453257	2825856	0	0
10947213-4	0	1791303	0	2723218	0
12191814-K	447317	2270145	4227139	0	489586
6443005-K	4973838	0	1107049	7410353	293446
7539299-1	716860	136876	29298501	88690	801021
19709957-K	0	1666235	7258588	795730	3363374
19133282-K	9644346	6345252	1209191	0	1202529
9674613-K	937832	0	433106	0	568282
15006835-4	1202861	2881235	35213	107974	2844369
9316569-1	5258237	395874	7669725	0	0
6522263-4	471264	5255324	332809	252892	514068
7566633-8	6919109	8603823	0	0	0
13336497-K	1913930	383249	15673305	0	0
7324700-5	4029858	0	8885910	26687121	116158
15263707-8	0	0	377047	0	18113102
6259343-7	31479837	806003	821578	569923	0
9722966-4	0	669268	6581194	946095	7630137
11277453-K	0	0	0	698887	491611
8501761-K	5474608	762756	710062	0	0
12698642-4	369502	45950	2397877	1035101	5789558
12418825-K	589264	0	4458771	50407	361254
18917373-K	362160	1168153	2374383	0	281161
7559454-7	6909176	297164	3768801	5817331	1215344
9689771-K	0	0	51298	29616	349886
13538527-5	70392	564884	0	0	0
13914789-2	0	13825988	0	0	1731326
16010758-5	0	3195422	3121250	5252619	0
10410765-K	1486230	0	8108921	535470	408283
7002215-0	9811770	691412	0	322685	26637694
16201718-K	1115020	27088	3027120	7205289	2426585
14030063-K	37707	12843876	2006112	0	0
18944430-K	4836450	10319158	198461	921605	62906
7067272-6	0	9292500	3620127	0	5417810
7071494-5	3321401	0	11714881	2339523	14590888
10007546-K	0	8873377	6680523	0	125883
16532334-K	116446	263226	0	1376811	6942038
7223193-K	0	552397	4979965	6262983	12285137
18629881-K	1819005	4190715	2241692	2445794	143528
15785728-4	0	1747101	9170331	2181971	603423
11459351-K	0	2796812	1129828	1510931	1112127
7785814-K	12421992	4182046	196263	0	363435
18419696-K	2206676	453537	0	10527179	4097499
10213931-K	7007691	152671	0	6005117	3096046
19303847-K	0	69081	0	39639	248335
15214236-3	0	0	0	45891	181852
6282353-6	50394	0	163731	30628226	3906714
14274049-5	14708575	194740	921015	0	0
7653414-3	25409117	1464885	38956	152085	7594839
16292451-4	0	3264505	549869	1170788	0
18401563-6	0	363888	148014	0	7114023
16539217-8	0	13844190	477996	3443950	0
17431650-9	2400216	0	347187	491544	10782541
9518787-4	4142360	242128	0	5781758	5945079
19651376-K	13857410	308725	29035	0	0
6458943-4	9816106	21773	34144	0	2695544
9953266-K	5107217	0	1269246	188606	629661
13444285-4	23212	32487	0	2656013	0
14445317-8	38683	4375369	2636986	7098572	0
18905659-K	2447297	0	0	613413	0
17519052-K	3808314	0	2682008	2218959	5992278
16557732-K	4040947	305264	180873	0	0
14933954-K	11021977	316652	1885370	58136	277307
7055822-9	1040961	0	8709265	0	5563916
14050765-8	64919	0	1756988	4066406	0
15258443-K	745480	18268502	799697	130464	26519
17825801-K	3500679	8384537	0	124726	6234898
8372469-K	580168	1048984	0	2763979	5824044
18377931-K	185999	2012470	222794	23737	7401816
13789509-K	754686	6994735	9347913	779041	1377060
9380128-4	4345301	1979734	140942	0	91202
6401066-K	16464156	166689	0	30382	187294
17588017-1	0	1629069	0	0	6966706
14284136-K	0	1623223	10411586	6157903	99076
13577314-4	10704859	0	0	8016925	735418
13118317-K	2338518	0	1473269	112368	9756689
17665146-5	51645	6859305	0	7738494	0
12008912-4	11156214	0	0	4675529	2454952
12748153-9	0	624450	9104752	2481794	7529708
12783885-K	623836	37879	0	1187195	2603831
17630650-K	3343188	11189203	416770	0	4730038
14847392-8	1463416	0	460064	1663747	5137162
6669889-4	10998687	15893617	115928	52363	4802975
15034654-9	3099629	3933591	0	1413689	0
19234858-5	203118	1943078	695693	866836	6480931
9697556-K	2390757	7215598	0	914197	1061260
7273218-9	11318129	7949273	2254968	0	10930220
16196080-K	327162	3007901	2217375	13691785	478019
14876555-K	10003245	0	23459	6187211	455286
14355254-4	51955	1456574	0	2620228	623607
6902270-K	12692573	15159319	770624	372212	0
11121774-5	9525888	883174	2087156	4476573	0
6136052-K	0	0	0	400436	12119891
8472936-K	5826651	43769	177347	9089120	1052605
10960136-1	283385	9973986	687619	378250	1571588
7091286-3	766593	15892267	5335106	364751	4095994
16465873-K	515380	2150964	92260	0	11600204
10628467-9	0	1985681	4434185	39467	0
7318316-K	0	9998492	40513	0	693110
6540151-K	2438443	13741977	7328658	258616	443061
6295343-K	0	1552283	1639274	11196443	70349
7377585-7	20027910	0	0	34170	0
13719764-K	6638737	111024	9785498	0	1578149
6346078-K	27382	831751	1827501	0	22898575
6816713-1	0	17943817	2869528	0	2964589
10274958-3	1235980	5022656	148768	798222	1721575
7873584-9	3976053	4000081	0	5769216	11992029
17229355-K	1073078	150035	12075667	150801	0
12762596-7	1663662	0	0	0	0
12359755-7	50388	7191950	6871215	0	82986
7371508-K	4994681	0	4376227	11274627	13890730
13606784-K	11787287	962817	68372	1504427	3377261
16656121-9	0	0	1194745	8908156	1061167
15760912-K	833008	247848	0	0	271090
9926067-3	43021	0	13212935	2035172	204462
14777808-K	0	0	300348	1388413	120474
16875341-K	77122	3934817	0	6852182	7334969
6034298-3	5974793	1656921	0	877176	7642024
7643762-K	9389145	22227935	0	35483	8263274
8700912-K	2152318	0	6065814	287398	0
15617218-4	1034726	1402514	0	3059403	0
7409507-4	0	1230768	4453327	14115802	777641
7815342-6	587269	6666170	10630626	0	252857
6994223-1	3423619	2249531	0	3212293	0
7302906-3	29650663	0	473459	0	0
19888017-8	1531750	133618	8655125	215159	6804642
8346213-K	46005	117844	4301911	1601224	384689
17526510-8	0	4567038	1721590	31368	0
10216682-K	1007490	6054885	0	6670754	1282693
16124748-0	3277087	11403996	0	43426	2015122
7300103-K	19067855	0	409174	2128571	9310678
13732797-6	0	0	873274	3960404	1758187
15456204-1	0	0	13676797	1037643	186648
14838564-1	232338	0	7402297	1144712	547945
18491660-8	5588052	55741	529572	6859544	2238354
15512656-K	253990	37110	62917	15849058	21719
18164891-9	158421	145943	1648431	78623	0
13717283-K	1748037	218686	54955	163825	0
9995417-K	92246	3545502	738616	750099	4198861
7860905-5	16877680	36811	2181816	92104	4653348
19375654-K	2474102	0	410009	306397	0
7337280-0	185029	63798	25167128	3057432	10925076
15861982-4	21489	79896	6668723	7937669	0
14732676-4	0	0	1197875	0	162721
9505723-9	474219	13879242	0	52607	29462
16600239-K	0	4598420	3102902	99592	119998
19986681-K	2125088	8951374	0	1491659	152932
6585906-K	0	4796028	10323313	238227	1015936
11385704-5	421079	2626115	0	5263211	159325
14637120-K	0	3139716	9007787	1426584	5456371
17932524-K	31568	3719604	0	96100	1335620
17146572-1	2645872	207151	0	7452249	3771834
18925717-K	0	267444	14262030	2518618	606058
17234378-1	0	77252	11672154	68932	479844
13701366-5	0	24863	9050350	3540025	4811854
7639427-K	0	2394150	2700536	31299	13719034
10886688-K	0	0	25159	2011234	3661167
14700352-1	0	7475668	2412825	694160	662396
17221038-K	7900536	2789027	35555	3413950	0
7997929-5	26426129	366618	1213870	0	68387
17350450-2	20082	280225	7133875	1504132	0
16238751-K	99306	1695007	279075	2066535	116641
6444837-3	0	6936459	25692333	0	0
12429050-K	1367813	0	1195870	0	0
14959834-7	140515	3399380	30523	0	5105316
6042928-K	0	1587193	0	4568605	14324062
18810158-6	233184	1189282	2332236	4871686	935470
15488289-K	0	2366399	626243	0	551171
14205162-2	582435	20337	3488074	4601167	173269
6851361-6	756149	9244555	9772992	266636	308259
7095503-7	1471940	1573508	3346047	29626243	0
18498293-K	9178049	1928076	7910920	25485	0
11037015-K	6482576	0	2963927	0	4294292
17943721-K	58010	0	6219780	268911	0
7004354-K	93829	0	15973810	0	18557935
7023735-K	128043	39120	8054848	764906	732575
6877166-5	159723	3186868	132231	4293920	5700766
17002781-6	2114365	120489	0	65187	125893
6070626-6	108181	750516	296673	15234586	2055395
6439636-K	161147	891526	0	4320348	718955
18060987-K	1742764	0	0	115083	2516164
15741620-K	9497507	7636122	0	217591	0
18159183-6	14827831	21356	0	0	1285578
16752191-K	28602	1021263	12911198	69499	89801
10642669-K	0	9270935	1765017	2411412	187983
6885710-0	22973779	5272860	66370	8707175	199085
13412995-7	0	194025	179039	0	8244962
18150213-K	9087712	0	1964453	1028116	0
17182379-5	12040842	0	3459355	54905	482614
8472534-4	857177	2485032	2814302	4181780	55948
18850074-1	2328928	900297	1362754	0	368987
17420172-K	3969822	928260	0	549358	0
13537366-7	5642587	0	2061137	340595	550232
16425693-7	0	0	0	809500	2632371
18755342-2	0	0	0	6580464	5269734
19937335-2	3132158	150703	609971	0	0
17943724-8	799334	0	588625	8504001	0
9894518-8	924081	509862	0	4276796	323409
7028505-K	0	6423342	2755979	1987017	52643
10319321-K	0	256058	5284023	1206472	0
14469394-K	11784104	0	981442	0	0
12979197-7	8089943	424900	0	4880965	1459215
7243080-K	11898505	796927	4700913	0	2320190
15255974-6	0	3605014	196405	153288	82217
16443388-K	0	670137	0	0	0
9161085-K	456518	1522276	0	8803059	391445
11141969-3	0	14238165	1546912	58011	507170
17779191-7	9892600	0	149250	238365	0
7195890-K	0	66121	13846014	32705	0
13268460-9	5027157	678440	0	1783918	1834257
11197926-K	0	34719	323000	15757552	1407078
7439812-3	3722635	10424524	24033391	0	0
15411544-K	0	60719	12985060	2040486	4017267
19488499-K	219817	0	4040459	0	546183
17142072-K	419891	0	0	0	1533781
16661167-K	491780	0	0	0	6833616
15827880-K	665197	341128	16655970	242212	0
6097694-K	0	10855643	356171	37000	15684879
17473265-K	4834795	4160530	0	428016	2684870
15590526-K	30327	4250864	484194	2897330	0
19135750-3	634615	247623	303021	35964	2602218
8500546-K	0	40917	1020884	653312	123543
6788560-2	333412	6986895	4618741	421373	327407
6380760-K	12734987	0	327773	12230679	234443
18544192-K	4402299	445050	0	0	0
6654156-0	3701870	433981	0	0	4090875
15378507-K	2392841	0	0	0	42346
6522685-K	0	0	0	18448440	0
6819843-K	8952026	3503772	2287697	18053057	6652528
12753041-7	24381	0	20101	94289	0
11839848-K	175394	3761137	0	6377799	3590693
13782993-5	0	221275	5738489	0	7412439
16861143-K	0	6932002	2589581	9861426	0
18828323-K	10488861	1124955	0	60316	2672256
7354538-1	2793032	1781011	1130641	518419	24025656
9974893-3	5810428	0	0	3656119	52309
10469247-1	4508486	1045108	3164232	941376	104165
10648569-K	3226302	387012	280419	3554296	11105117
7757580-K	0	20928	5507008	27487	6943755
6680914-2	0	1866416	23654	18980092	0
18827638-K	625767	1831215	0	2023600	4773570
18921450-K	16371648	0	0	55455	528353
17622181-K	9145669	115121	0	10307694	219032
8110880-K	0	2563849	0	388277	6644161
6844748-K	2105940	153180	0	0	21134118
10220868-K	0	0	0	4587270	4699381
9535123-8	1755409	7138091	1085151	658483	3131003
7939274-7	2267979	276948	11607366	204868	0
15714912-8	5508974	174668	20847	12849230	41537
19847956-K	0	1066250	15937985	132813	2627197
8171058-2	0	0	7403184	3722712	4604204
15023936-K	641489	0	776597	2400539	2326637
13975393-K	1562919	0	0	0	8711750
7524996-2	643332	45546	8219309	5807899	444472
19382831-0	0	691950	2898302	0	0
15665027-0	165224	0	6315902	5451586	178294
7489921-K	2087823	25376533	700667	0	251569
7420518-4	13300392	0	1638360	13890998	153467
6776042-K	0	110118	7656213	12826702	2129572
7262484-K	12599468	0	18748752	2333771	1217219
6428668-8	9399290	49877	0	26032140	3004290
15720269-K	4379554	40911	0	281546	0
10514347-4	26571	3978831	0	1906950	1532301
14413935-6	14983870	0	153407	157758	0
7920284-K	346525	115347	14368027	19314677	4053779
16254483-K	4370527	24411	0	271183	97758
13881199-K	1775074	277002	1286572	2219766	0
19152735-K	79324	991673	0	0	0
16739854-5	0	14244029	0	0	1762426
6239564-K	4487207	1193822	0	0	10669834
18118973-5	4188952	80028	7324598	142393	238383
17821989-K	23298	94018	72272	2093654	2194178
16121301-4	0	5051460	2535666	32265	486365
12773049-1	123845	147948	0	0	0
6677061-0	545417	0	6086944	0	4433279
16058292-K	3847458	0	522010	201309	0
7899091-7	179703	189807	0	1145888	4489779
7509517-3	0	3393867	0	1955358	21331158
13138196-K	0	5820477	0	37571	2411300
7444526-K	0	0	37355	8969782	1825331
10397961-0	0	6189379	567566	0	7015774
6494143-K	0	7140164	81899	0	266369
7805032-K	0	0	0	19941495	105369
6888409-9	15361147	9490951	0	9356992	423437
19129686-9	0	4889928	0	0	6700373
16805684-8	6399432	293820	339768	166573	3298337
19915775-4	386764	194846	3346214	210108	73860
16796316-1	243001	0	0	248309	8660291
14611732-8	3733679	1244262	649061	2831961	86996
6686999-K	0	1453227	1116698	5444232	0
7708784-K	251267	2712876	0	538205	20248126
9127373-K	0	321088	0	6731706	0
7407041-6	6005369	0	8273981	4647636	78564
13553577-2	2296492	0	0	345634	0
17987685-5	149032	0	851909	0	0
17458002-7	0	158197	593508	8195518	376556
7535449-9	1798569	0	1444218	1680524	17391173
19379171-K	1367189	0	1905630	79475	472735
8007677-7	267899	0	24026	8311718	2127041
17945247-K	2454677	49452	3736457	5189325	20964
15876654-K	16685096	3049998	0	0	0
16520532-K	5169339	0	317129	9752229	0
7553121-1	0	1480453	210809	559834	13026665
18495248-K	0	0	26976	26834	22313
15515508-K	0	0	684306	23824	4848716
9473667-K	12254044	0	0	0	0
16873145-7	131223	2650484	0	1565610	0
7496438-3	0	438282	13806472	254891	7591647
18678874-2	2303399	7176225	754076	777815	5454540
19913252-7	0	0	13553363	52034	3174029
13519030-3	331050	1830861	0	4423939	2738479
6454355-6	18798813	5493174	0	0	146975
6646897-9	71268	344475	140269	0	6932803
7365670-K	10998233	19756567	220400	32386	2491501
9060638-K	1332102	630086	0	66934	1345066
6405092-2	0	1384070	210425	745300	11974100
16607562-7	7663072	3828997	1489736	147228	865502
6549920-0	0	0	4674550	0	9539740
11231945-0	0	1908009	48741	15282310	0
18264047-K	403564	0	39495	10434213	0
15369992-K	1293187	889277	0	137879	5210735
15519863-0	7814708	0	1706835	828341	32590
9787168-4	264765	2650633	1001942	2731355	5141002
13250908-3	1257851	3444193	172075	46252	206130
12491288-K	3778827	929607	0	0	0
15321072-1	0	11768951	2158139	0	84999
13880062-0	0	700747	116524	0	1860952
7236114-K	0	0	27840192	0	243383
13080264-1	1046972	2624302	1436940	0	83808
11886411-K	4882151	7197631	0	0	20618
16635153-K	824369	11819017	40905	0	578524
13029080-K	1110994	15367512	49872	135773	269751
7215977-1	9915326	0	0	25083	23798
19844724-7	1070668	752498	0	10309980	5140861
14185886-K	2300896	447941	0	189738	2017578
6108874-4	0	15794653	27696	37955	1772881
19014750-0	0	0	262740	0	0
7101743-8	61454	389767	30160499	4147761	2253108
19942411-6	226790	3646550	8096000	0	0
15688924-K	0	0	4558585	0	0
7814728-7	17744247	2914050	0	0	20778
6348438-K	0	5143094	22096	1023264	734980
6510953-2	0	4274640	0	6522220	0
7570976-9	0	14693466	187965	2483326	3196890
6937357-K	1332222	369122	15208148	0	0
6648138-K	21593390	4141991	2137423	7727214	0
16672543-3	0	0	64074	737181	0
17593439-6	0	4625835	13797277	0	0
10489237-K	3281726	1253195	43598	2217865	1727340
9188883-6	1421708	1650325	113364	1409671	7311745
18172080-K	14209003	0	151936	0	33137
15385450-7	6441708	109196	1217550	6959918	4637592
15238795-9	366945	0	10011991	0	0
19311385-K	4092655	1059293	0	6429632	0
7108787-K	6944770	112500	25251	6890735	0
16867284-K	0	1601906	103439	1085449	14318701
13904734-K	6720488	0	4170518	0	0
18820277-1	0	0	0	3094420	0
14250821-4	0	118935	0	309155	9255404
12685183-9	145285	0	12364433	5687609	32312
7116829-K	0	6207109	4948507	7553201	1475921
10068090-3	0	25303	0	0	613548
7605154-1	0	23088882	257743	1952374	167184
13147714-K	0	617679	6599565	5490719	459388
6956413-8	19405841	0	0	0	150206
7612738-2	11226004	0	0	0	0
17632240-4	2327140	815984	5506664	0	24069
10887413-K	1827746	17125087	0	0	0
7009048-K	0	5789161	2863835	0	4338910
18334799-K	748732	0	755794	0	0
16277643-K	523345	0	12054025	1390848	0
9296400-K	20108	0	644852	0	10227660
7455803-9	324521	41755	10438117	10827809	33118
11880698-K	0	2391255	14022351	1705694	28737
17420321-0	5308681	0	1044624	3708288	0
11388290-5	6657251	0	4907106	994798	4966637
8046798-9	16537970	2067101	697607	0	169790
12100891-K	300880	0	1379403	0	15404782
15173174-K	220352	89234	0	1645593	3958562
9843445-2	2030576	0	2470035	5662132	133619
10079897-K	41538	1089059	24066	446721	0
12779041-K	2010946	413077	4564812	108133	686897
18183982-3	328679	116834	115438	804318	0
14382745-3	0	15398952	1585692	0	0
18640619-K	405259	53102	53419	136747	0
15101510-K	91500	0	277785	0	0
13544377-K	0	1198845	0	831755	2949146
6150930-1	0	7317700	49506	65047	2468958
13748265-K	1953393	0	38611	2130749	3783650
13879240-2	4110922	447541	1118259	113939	0
11501043-K	1717387	2106324	65291	2195292	665377
14593076-K	371609	2065665	453876	444714	0
13347257-K	5135983	0	3628961	35236	1800723
11933632-K	0	0	0	24199	10307874
19402323-7	11044980	0	42421	734743	6518026
12761264-K	4139183	2009995	648129	5735691	83698
15288632-K	15855981	99554	216601	434209	0
14631130-K	0	0	838312	627401	0
13040199-K	11847963	95372	534520	0	119682
7961523-K	0	1337143	4745340	21760388	650944
13988455-2	2052756	289165	99787	2214924	0
6142373-K	0	81820	0	10615301	24113263
19671506-K	31027	130780	174750	1038526	16119154
8061651-4	731760	1802746	8223360	285320	0
10003055-6	8106976	724971	362017	1174411	7814389
15338731-K	4040479	0	0	0	445235
7913776-6	75887	203747	1319212	26725185	6137479
19616684-K	0	43660	1166483	0	3303993
17172617-K	13093507	1715596	4283756	0	0
14056371-9	0	0	271070	0	3260524
17555390-7	300501	5939841	921758	9757953	0
17016247-2	0	0	7577484	0	366616
16108415-4	270095	108138	192437	13624333	333341
7480671-9	0	0	32071693	0	3041338
9905665-K	0	460884	0	14466584	2414860
14822147-4	0	22561	713448	1920782	0
16202886-0	366456	1346157	6148459	79186	0
10567848-K	3888256	0	0	11411045	0
14039141-K	3157474	2770037	5662348	145090	0
14152284-K	0	6453778	426165	0	197603
14495235-K	0	233112	0	757695	0
15005703-K	8663352	68648	121854	0	156849
19087198-5	4521943	75028	0	11146563	1102128
10754561-2	1013540	1799218	11666384	941233	3093644
6447731-K	19757730	0	0	0	1643894
16859041-K	0	33324	393517	3008205	6439973
6321989-8	538541	0	0	203002	7872026
6647903-K	0	0	18624375	3879953	223793
6341602-K	0	11271098	2209580	0	1744786
16068390-K	0	152616	2774684	6701241	0
16195981-K	105596	223836	33741	6160545	4229333
16306625-K	0	0	32783	0	3826157
9079599-9	94390	4471058	214695	0	1285047
10409505-K	0	10644655	2748861	3146451	0
7428963-7	1891142	1010861	5275551	676581	34959
12969044-K	7306754	0	0	8561105	0
13124305-K	0	1834239	60428	53165	109931
7268196-3	2684678	20142	9367609	307066	6646929
6279987-K	8736177	25450	13132069	12574338	0
7160764-K	2651631	15735598	260530	0	167329
17375720-9	0	668852	18561782	193535	0
6395042-0	0	27780	22902703	0	0
16128190-K	531686	1045540	2444593	66427	1325394
6687085-8	10492684	408810	0	13609603	773729
9468441-K	0	15525050	0	0	0
10407669-K	0	4005842	0	328292	2436666
11801429-K	4236711	768561	0	0	0
6775360-8	33617	1203419	18180279	5610952	0
6908114-4	16638685	613050	911244	107977	15247716
6650606-K	10072980	0	1729787	810167	37599
8351580-K	87526	561477	0	24273	15983148
19793928-6	0	0	10885657	0	0
14641527-1	16242082	603375	389812	2632679	0
19295538-K	8871008	0	80975	612239	140041
17192711-5	2101774	0	6027910	0	291923
12230560-K	0	524917	2528944	730938	512177
11040813-3	1626603	1771074	83822	1933665	2147850
7381493-3	2834756	236410	186466	33159187	105822
8041055-5	49557	6843366	1294295	524944	758673
6908583-K	1382502	2117366	194628	9086082	0
15266549-K	705285	0	0	3159279	1782158
17315699-9	3740291	4278417	24716	134094	9339406
17970960-K	12924546	45307	985335	0	0
6663884-K	8353989	249168	0	0	9341801
18114341-7	117348	0	9160237	0	0
13501832-K	107770	9292302	665226	0	247053
12031127-3	838557	4500395	13633452	0	0
14807482-K	194617	0	0	18465893	38213
18941549-7	33826	406742	538164	0	0
10634351-7	3289968	7551044	100525	0	420725
7490674-K	342671	5154203	0	18652445	2560985
7945661-K	6729730	896939	0	20099	0
11627669-4	12149733	21041	2520637	0	175754
12991377-3	0	5745103	258654	993270	0
18637182-K	0	66828	11013816	0	0
12323982-K	980234	3919285	1218237	23097	85129
10646405-4	1401544	1302458	635042	25215	13450498
11214377-K	0	157327	0	138894	19414766
10466374-K	3740510	1353821	0	0	71249
9760437-3	0	949222	2782170	70288	8259035
6286338-K	1277847	0	1536109	475719	31989562
15563825-K	64868	2920572	1364570	2092535	2097446
6799015-5	0	7382250	0	7797030	1946840
18297925-2	0	16865093	1775128	90844	0
7483946-7	11007064	0	23186	130710	32686
15853519-5	579183	331758	0	0	791112
6131515-2	30333	5780926	1285056	32056756	84825
18726122-3	5010055	876381	4761400	1886102	6710028
13903081-0	0	4189081	0	0	9212901
6073520-K	779457	13996540	2061389	14678982	5692234
18369735-4	0	15687191	0	133040	83121
18165292-K	2843152	0	3986458	107887	12977801
16035814-9	1681274	1646459	0	0	164876
7716868-K	0	16860107	0	3404525	11695573
14653661-3	48917	15248298	0	85570	617326
19255758-K	0	6864294	0	0	12584968
18402362-8	25594	0	0	0	0
17150200-0	0	135517	141134	5977450	4586313
6588332-K	0	0	11613911	21386546	5657176
17096280-4	0	139287	4636299	33252	0
16508548-9	571760	5680580	0	1404010	0
18643789-K	0	9768354	2317941	493620	0
19309470-7	0	0	3792215	0	140425
17513277-5	3710105	4816564	0	155819	4374948
7183038-2	391539	8249956	898566	0	172816
13620126-K	0	0	1024184	1496847	67913
7594524-K	0	3437844	13748631	18096114	1571561
8239417-K	0	143191	9965691	0	2480404
16292261-4	0	0	0	28148	15301594
17369066-7	4122866	4980227	3484023	364809	27101
14475171-K	2840488	5605802	4714267	85444	57339
18034770-K	2458572	249930	0	1453926	3522348
14761762-K	0	43111	0	17167027	1097513
16862861-K	482214	715916	2067083	0	6153228
9139743-1	0	103078	0	89095	9214496
12016628-K	3485651	0	0	2461183	4010688
6307839-K	58282	17874003	0	20683553	0
14932083-3	9733497	2816383	289289	1172164	0
17122622-1	1109218	0	1040934	7320754	1010462
13854917-4	2154429	0	75244	0	8976516
16194262-4	0	125188	0	32724	0
7073003-3	109294	1612362	2887225	0	23437124
14555418-2	26517	4057242	2384847	0	257563
16930526-K	843484	171350	1612357	70619	3287463
13565969-4	33514	579063	9257692	2252715	259497
13493998-K	0	1738874	597670	4109553	4964968
13668990-3	0	2453166	0	2739453	2070268
19418713-8	965965	11414490	0	0	0
6427034-4	2800071	367429	0	8222240	0
6308903-K	0	61518	7584986	987845	0
10600216-5	0	68804	2655211	37082	2217506
11986345-K	15947045	59384	339836	0	45264
19055541-6	2104979	4725016	42563	7502351	1934863
7750670-9	18317242	340563	12757724	89409	1586066
17877642-K	0	0	6661255	0	239903
6420223-2	1426856	13444305	1908029	0	16768665
10817910-K	166951	0	27995	0	0
17730971-K	0	2794566	15546425	648049	0
6277400-2	1149281	0	19440564	0	230842
7805352-1	524118	127539	17093900	3286415	6999798
7564164-1	0	0	0	21955880	0
6726060-K	132904	12798400	6964198	3943511	12344460
10832836-K	60272	3964458	6787624	8353663	169399
19355694-K	897298	6127405	63374	0	683349
14328367-K	6304807	1979105	10290911	43896	0
14742420-K	3319654	1992477	407145	1890601	10823603
6378362-0	692038	8262911	0	1509436	655035
10585557-K	6443699	0	0	67551	6492392
18429149-9	191269	53616	0	7915719	0
16586175-2	7488995	0	0	238916	960151
16828789-0	2947536	0	0	0	122564
9297922-9	0	0	10844324	5155408	3275846
17068993-4	5692507	289463	9353086	1837188	0
18705160-K	0	116672	76107	3234516	802728
13107117-6	821406	0	94522	31201	8621677
6670353-8	596889	0	6073034	3293632	102495
6587412-0	9185827	328860	122802	0	2529382
12548443-K	1296434	0	0	394016	768434
11246609-K	5552855	3963105	3830032	1044830	149636
6970246-5	0	7562809	1761866	2376975	20242886
13948033-1	2171031	3088657	0	0	1017642
17170884-K	3317541	3809394	570785	0	0
7872197-4	134516	1705839	319019	31983460	0
10830972-K	22495	848809	10762905	0	0
12966131-0	1228295	0	10544427	1479842	2224954
6203893-K	0	11244388	89060	1909626	6096556
17025897-8	1627838	77104	11412184	0	0
6978418-K	3347066	0	3153498	32217625	1074050
10664630-4	0	2621698	0	10877276	268616
15009933-K	0	0	2003971	5183655	2144778
13123793-8	99495	0	3187316	0	13393622
11869206-K	13164235	0	716783	32681	326980
17842832-K	56192	3927056	13442444	0	1673505
6058209-6	0	0	6500953	5965631	380392
7383973-4	13138378	3352439	0	8326945	97859
15253525-3	501598	0	490905	803024	4438482
18156823-K	5172162	0	0	5825217	0
19647936-K	2304298	460818	3401596	2996235	0
6324969-K	91983	5249841	3723471	2126488	2433316
15314776-K	424075	0	215556	0	0
14172515-K	27403	165936	0	0	4514864
11254033-5	0	235304	282019	7899089	0
9914702-K	0	0	7971523	68363	0
13109476-K	731610	497821	4136863	1736235	0
6810241-K	32746115	0	691204	0	5310245
7351682-1	6203387	0	31166	233822	70365
6727856-2	412519	1702356	7369895	14351435	732176
6608615-8	13807135	1671632	21480	6483142	0
15129463-7	344905	2876642	0	885098	3303526
19611240-K	9246580	3450254	187041	4402529	0
7268617-7	0	9868293	898724	0	5624210
8355244-8	0	8003547	8229869	25337	1742003
19103782-3	8572883	0	0	635911	816161
17271759-K	0	2264014	232535	361619	12004020
13615291-K	0	1010268	0	39945	0
7883782-K	0	0	0	17726978	0
17591766-6	634281	2395302	7366826	43575	2542572
17990126-K	67057	0	15043010	2647891	59482
16297016-7	1313045	7645865	3618078	0	49506
11995511-K	8138901	7065926	2758342	46705	1320786
12580241-K	0	0	23935	0	137776
10491526-5	12441100	0	0	82717	2867249
7566797-K	0	0	0	9514627	2189518
10170145-0	2481459	31809	0	207885	10256653
10493007-2	0	408893	97952	12983733	0
12043258-6	351250	517922	3914692	474731	4337021
19334179-K	15420630	0	0	2766349	0
7407767-K	71948	1162594	2016532	0	9652584
7139290-K	5538623	0	806076	486866	0
17575257-K	0	5217695	1382666	241034	8459059
6182816-2	51530	22856	0	6446790	15622462
8251111-4	73787	1992228	0	6587018	32611
12492471-K	4189640	1105438	5673547	4107547	0
15990516-K	1017525	1467430	1071784	2971883	62927
15228401-3	92452	0	4017026	3645693	6593514
19234940-8	116783	5149350	443085	388151	29104
6882957-8	0	16236356	7188789	2375209	36307
7441268-0	13519530	211949	92070	93327	687027
11617857-K	0	0	8289838	3215075	0
14407403-7	13190485	0	0	64352	674373
19547748-5	46358	7067217	0	2683490	0
6118893-K	0	124071	0	5944488	1170816
17492264-K	0	5268393	0	0	730380
7191232-K	2521029	0	59235	2148779	2406777
6049121-K	2689832	604162	26000438	5854863	1323710
7509816-K	1632769	469113	203503	801295	3989893
10997309-K	0	20947	2805558	16858946	202476
9025051-K	0	0	3797032	15651963	0
6822400-3	1960044	11750006	0	741562	24297
19915851-K	0	0	2139779	0	0
18010267-K	0	0	307006	10470678	0
19277581-K	3441578	2517059	679983	834408	0
16678116-K	1439521	50127	2120872	0	3086768
15135580-4	121184	0	0	0	38879
11460778-9	6260080	350284	0	0	5751170
16108582-9	3828486	0	1079284	1406938	46102
6139611-K	1044478	4396112	2025653	0	1663788
6417234-5	669597	4248973	0	2080036	29559719
12472285-3	4375095	367655	76023	227540	0
15222506-K	4149455	0	3130557	5628066	401283
9846553-8	7534292	1076532	8964410	2081935	0
8703112-K	62383	3259348	1456691	4389018	4096990
8212604-7	79324	37290	40150	18370828	461380
12836309-2	115370	492426	10304897	0	2384014
6952103-6	8222457	0	432030	5158993	1547347
17658089-K	0	1248975	0	0	1298928
7415630-5	3419116	4654322	527971	301766	170212
13404576-9	91628	0	2334273	12439619	0
12375418-3	4333343	0	0	3664367	2715520
17810390-9	0	603525	1279293	3191386	23102
6956174-K	17081336	9247460	34388	4013570	3007753
15844941-8	0	0	0	80167	6336897
9219769-4	4801832	9128155	1336428	208941	2965048
6041124-K	0	35402544	3934303	0	581187
13312085-K	0	42111	0	14734811	58629
8861148-2	9374127	0	185497	4793125	0
6657902-K	4352344	0	21355558	0	235853
10293539-K	0	1065010	1451890	599707	1115774
18224557-9	15336112	2113480	0	0	0
15320303-K	1087801	25977	0	127286	0
19208274-1	2738065	1588977	52557	1676912	0
14769808-2	792270	0	0	7921681	2533999
7887837-6	0	12534823	853291	1042531	876660
15997665-1	0	207758	808747	18912549	0
11872306-2	2702567	965155	791318	4271238	529380
6043028-1	0	2231474	0	17939413	0
18008375-7	1102893	0	7718107	1083240	26827
16955240-7	11640025	1392668	238179	2101369	2869221
7568325-K	2953979	76287	334916	529767	24145394
9035970-K	4310856	990853	0	0	382313
12421690-K	56036	0	288118	10583185	0
8032195-3	257045	7702916	28783	57835	10121843
16290087-K	0	366193	1441391	8937519	261569
7985527-0	9140301	1547984	6156088	12104058	2314848
16538413-5	9759038	7642450	0	212947	853445
8602813-3	2839119	20469	585857	523880	0
7358671-K	418830	342671	9320407	0	8206513
16601260-K	0	424090	56160	4345446	10992352
6060465-8	0	710143	1316846	3095278	15246867
15070874-K	0	10967915	7908329	173110	136534
10178400-1	0	7674985	191411	1672063	0
7856894-K	126771	880916	1158423	10478278	4376496
7520929-K	8595625	58971	0	578494	0
19228094-K	0	8041362	147088	0	0
7467990-K	53925	185686	0	23230	27645050
15609650-7	0	0	0	15194934	0
7226997-6	0	1752614	3194714	24060003	544828
14460514-K	3196611	1683590	4367425	93767	5708015
10990490-K	54591	3087880	1277764	4418211	0
6557055-K	1974218	96259	2818917	3048396	2169820
9554570-5	0	38041	1417837	15086874	0
10020461-K	5827207	1280637	2614974	146364	4576190
12674738-K	448178	0	8232181	216104	5824874
12513293-K	0	204056	7410121	0	119314
6601777-K	0	11075414	11219964	0	0
19699999-K	250927	251353	72276	767825	0
13738642-K	1450468	0	10781679	56602	0
19074326-K	860539	4000609	5132076	8073046	0
17227133-6	22183	0	15209691	0	1413423
6189084-5	2849086	1304947	0	2062550	0
17954602-K	0	0	12017079	304784	0
19185221-8	60871	0	11136066	374528	2285009
12410822-K	10816451	43726	123449	3768504	136000
8930584-9	754514	0	53713	0	6571043
19765844-2	12614403	278351	1831691	0	0
15637968-K	0	69629	0	6808800	26401
14436268-8	2324806	832844	107891	0	0
6447123-K	8641204	0	12159239	0	5307439
14353231-3	985532	0	0	358641	217578
14305289-K	1319433	321356	5886613	5014501	430797
13816859-8	477421	0	0	9206540	0
8409793-4	338489	0	0	6669525	0
6325992-0	12991876	904144	0	24115277	0
6929462-K	12900883	49780	0	1056128	1060625
17590886-2	164502	975395	0	965449	438038
12743629-8	411618	2256796	2252876	11986034	0
14566440-K	231829	0	1458833	6477879	3412240
8402337-K	37791	26907	0	2139820	1600998
19740681-K	6195854	546364	10830143	0	832845
15920995-7	274730	4047178	823590	7825694	2530648
7990371-3	12304468	11815136	3852790	4112207	0
13683102-K	19288693	216770	0	143341	0
13814233-K	39702	465719	8657059	0	20289
10771164-K	1364432	0	170280	1332343	0
19145302-K	3105840	0	0	78968	926314
7106975-K	391168	35557	31473	26350463	2057932
18875828-9	2733638	60949	0	75827	0
11070606-K	12062403	0	263612	0	155829
13478618-0	27329	367316	0	3233615	0
9536399-4	9397825	92899	39507	426179	68539
8075903-4	117897	6185628	1498013	89204	0
7194666-8	0	3022873	5184234	31076	29150182
15453438-K	391962	86211	1175336	0	14485868
16331963-1	0	0	122708	4744970	0
6695701-K	4464267	0	16833952	15737412	241535
7633037-K	3225594	1490269	0	43195	29305643
16609292-K	0	16184726	2949776	285642	24501
6633025-1	1721517	23500790	106324	33083	9519529
17569770-K	459519	5131439	56323	3518717	4864772
18685655-K	964418	0	0	1304876	12896158
17421734-0	1410676	31036	0	1392423	0
17971003-K	5880625	605329	0	2479880	0
14587968-2	128622	0	7971427	456525	51366
12751860-K	0	175674	3122437	5108693	235398
16569933-K	368011	1235642	47077	0	191763
17915067-6	0	443144	386645	1436304	2778867
8286255-K	2347434	0	0	319681	1445234
16135267-K	34256	0	0	13663194	2777208
17168919-K	92566	319488	0	4752905	175552
6362692-9	0	296772	0	0	15241150
15365045-K	1272505	4819179	5446897	0	0
19857246-K	11502259	21562	0	46678	580184
19023305-3	356798	0	0	0	34331
7921194-3	57348	1696356	96051	0	17096593
19885171-2	0	729586	4047743	13350801	1561330
16602872-4	0	9638659	0	429860	33396
15057983-K	0	23970	0	255823	502985
18720525-K	0	156687	590968	557389	70563
14421062-9	2949799	6934454	0	0	0
12742355-1	668744	0	0	53465	6286024
18191723-K	134888	1884715	137246	801850	0
15762644-K	0	3056319	194315	0	1024566
16953800-2	19490130	84905	0	43376	121510
14676638-9	181812	13278264	229218	2326638	2556786
6637021-9	1577770	29344447	0	0	6045346
8480914-0	3940894	539860	8310644	2731946	0
6354020-1	92543	0	16739839	0	21911
16638545-K	0	0	116513	0	1114044
19446470-K	5983987	0	43700	7841129	0
17713151-2	0	0	804766	2720920	9491585
13973776-K	5852248	4884725	1131689	4855273	0
8665961-K	0	0	138837	0	257656
6023630-K	0	1352229	240851	2144484	33333749
11252053-6	3047491	6396057	28508	459258	95627
7843536-6	307691	635042	2364063	1199749	3218574
11417073-4	561149	13350899	1673089	1007973	256980
15352739-7	0	0	0	38939	5031627
17933222-K	0	3650445	4518583	5297277	774014
11786811-K	0	8061232	0	43371	54015
7158974-8	5915982	4228740	11794787	15151810	0
7137974-K	625496	195997	0	32998121	74360
10870717-2	11983835	0	0	0	367434
15576087-K	489584	0	5543181	1856330	77298
6346044-K	14417282	13550040	1323237	0	315640
13102609-5	0	296048	2225445	4422787	94367
6996832-8	0	1208060	12333999	1815688	201084
7484383-K	0	4126927	1136612	6993218	0
19284033-K	50071	90605	3219590	702207	0
8996295-1	624842	176287	3165646	267671	0
16471074-8	38656	3604507	205182	0	302045
14956254-5	4661067	0	750094	3794950	4430523
19936262-K	125715	2239561	293313	72173	0
15951780-K	6293854	0	1529884	1835419	51233
17335690-K	54685	10267131	619557	0	0
6164100-K	27843	18922427	0	166604	3094405
18804378-6	140283	102692	11369889	64553	6468751
13134357-K	839096	1172689	410039	66958	1223207
18750395-K	127322	125084	0	0	0
6861840-9	1771489	7669162	5443624	2751291	18275918
14847907-6	3112949	41149	6250242	4251789	0
19237635-K	0	1795359	689557	325890	0
10493455-4	0	10888774	0	7245858	0
19929612-8	11897167	491023	0	594064	0
6908422-K	22103215	617490	0	443839	0
9833438-K	402187	3467431	417156	32586	0
6811123-K	1951453	1785506	7750323	11327213	8822812
7972704-0	1353805	0	1128046	61152	4128386
16922022-K	91951	5078264	1745052	9213339	0
7972177-4	1423980	13310200	0	0	12842116
15943918-K	8820389	186466	3397996	6004717	181388
10721212-4	0	505665	10333181	221670	0
6609949-2	285139	2763572	1373700	33963376	0
15073231-K	1926046	2834153	10983564	31587	2576027
14930862-K	0	1060357	8587243	0	72337
17387635-K	22082	911214	2053591	29835	0
8200336-K	1733002	0	1381526	0	12796604
12638472-3	0	3461387	3151210	0	64174
7521179-K	0	0	4266047	24878522	2340841
9778323-2	0	12308616	1238019	432846	38293
16368600-7	3880285	10058051	2247166	1126399	0
11637278-9	839676	59549	1220637	314832	71709
6536826-8	0	30662	237686	37024950	2571957
13425769-8	344161	38371	16112093	27787	21090
6092669-K	58082	558641	21647165	4956423	2308967
6094508-9	1935640	0	7586327	24038	0
11921208-K	0	0	989988	0	39631
7440756-K	26764	12411008	17716807	3894866	0
7331627-K	25494	416922	23851804	0	0
7209401-1	1558503	6596265	30725	3311631	78873
12872535-K	168846	175208	0	11671965	1123499
16508450-0	84452	1426203	0	0	1021840
16823058-0	0	909299	0	0	249170
9832822-K	230491	6581668	351872	64297	113365
6587142-K	60083	390757	3488770	1667212	17135222
8009356-7	4941576	0	3247484	0	20710
7578230-0	23728155	7595430	24857	35577	5168342
15241899-7	945160	573308	14647887	1210659	54602
19012115-K	26114	963823	12792119	24542	3472182
8553723-1	173433	81553	9101693	36594	0
19647729-0	480311	46951	1523271	536334	325963
9125053-K	16494289	92488	288644	0	287793
17669421-K	39280	4569959	1452340	778034	0
9325143-K	0	1793294	542997	2373985	200820
14627147-7	0	46118	0	0	0
19651825-4	0	4533128	1988776	0	1842128
11997864-K	0	3886777	1070507	0	6021795
6097923-9	1485138	299020	16258022	24061	231995
10226266-K	0	12088420	7102103	0	0
17897124-5	5782302	5189089	658088	4597792	73042
9697447-9	383439	4021956	2438342	22145	257272
9280022-K	114246	487492	0	0	9021426
11381804-4	0	242011	1438823	0	6420682
19408073-1	342135	7864153	275920	225887	62777
17910651-4	5426178	866416	5725744	0	2487378
7002055-K	24125836	0	679950	4685440	940439
15512535-K	0	0	39869	3115359	47944
12438598-8	1997165	0	7785430	775824	0
15053523-K	0	1344804	84837	77871	0
10184519-7	0	0	0	7702840	0
18928952-3	376414	1203694	1015416	2704839	2012539
10064359-K	15784050	804352	0	177553	0
15500149-K	1360529	30026	0	3486118	10035574
12305451-K	166632	281512	0	40480	0
11504333-K	3375162	992516	0	0	0
7585165-0	54151	33836687	383106	0	2255825
7144922-K	0	340335	36269	712221	13522420
6792610-9	2272959	22262114	10297132	2349213	1866783
16005357-K	0	0	0	0	662741
6030819-4	9422577	295622	0	2492391	4521007
6108716-K	11269537	16327147	5564680	2371406	1075132
10492323-0	1257642	0	0	2326476	5331316
12513467-K	0	0	60180	2070111	0
14756903-1	734331	61132	2797849	151850	2348809
18522670-K	486243	0	102711	38726	487404
10457377-2	5614694	6934907	39610	922336	0
6604427-K	1242363	2104463	63607	2133010	18041640
15779828-K	43369	2156707	817910	12674279	3457383
14877591-K	1788481	0	0	0	0
9401086-1	75962	1939263	94251	0	2588408
7655057-8	0	26856439	104887	12404299	263656
7996208-6	47884	12770379	46574	1822233	15964757
18298992-9	8745518	522246	0	938556	108426
16995109-3	85525	5127244	0	0	586793
6637931-9	16017606	2452292	1609671	8688496	3051008
19323047-K	663240	24842	0	36902	0
14469602-K	0	0	44234	10175837	1346127
16529896-K	0	214234	68244	0	119285
8773502-K	7026657	8902908	1345345	838737	35421
11924231-K	4663025	146910	856155	0	2413289
18745639-0	38762	0	29982	22332	52626
9623556-K	13209022	82206	21200	0	0
6649944-K	0	1111235	568823	29329	6651426
6416638-K	0	620595	18495031	0	7095342
18954106-2	74554	6540388	0	6532643	924000
7729904-K	0	365193	0	6968745	9651411
17467663-K	0	517043	1550981	0	0
6969014-3	0	6127547	118377	2424348	11950024
7614619-K	2825845	3962709	20517	22074468	0
9584234-K	0	6259173	258919	0	1202489
10744622-K	0	24774	10783139	0	1723306
16339046-K	0	86273	0	45015	10869996
16556222-2	2598628	169160	0	0	2050162
13744717-K	0	3185826	0	986866	211355
7763030-5	0	0	35452983	240123	0
7899462-5	0	1546356	850334	8629709	17080645
13964985-K	1778788	0	535090	15347495	26774
18689141-K	3145298	55901	112015	12364135	55542
16496158-K	0	3129593	0	253498	6486785
12379362-K	9653380	185439	0	0	0
15662002-9	216407	1479686	191263	5159144	513496
16288135-2	0	0	0	1231437	0
7906488-4	53748	24501	4387066	21659399	1553773
7328315-0	0	7287565	0	251048	20124848
6440586-1	0	0	0	6960507	1587923
11281573-K	0	73562	5492273	3697942	0
14482100-K	0	14593757	669879	4674392	0
14263832-5	144722	0	11384470	32388	5612643
7119853-K	130344	101241	9646293	1799342	0
17351855-0	11310630	0	1459182	632809	100150
14727032-2	889533	3610987	2045190	406852	4781941
13663069-4	8910840	7892912	2726145	0	23263
16665040-K	0	0	0	1076589	26576
6872295-2	0	0	2807182	532525	3425426
7695316-7	305751	33955965	1442561	1504300	0
19510100-K	17339366	0	0	557515	0
15381884-9	4527054	3485232	0	6499647	57620
13502529-2	169761	1505937	353317	61351	468037
15882135-0	3259338	45832	607106	83805	344670
13008942-5	21974	1230679	489084	2619253	11226771
19868088-K	0	132996	0	251390	0
8142305-K	0	0	52580	1998610	0
13851456-1	1923498	16501652	88562	125222	0
19160243-K	3980986	1054564	0	0	5332134
14445130-K	0	0	34789	3664409	1422731
19935159-1	898696	48910	438272	223167	0
15865218-K	0	7215373	0	3450974	253830
19695036-2	0	7331739	224272	0	2388265
11181088-7	10860034	519380	0	5662461	35233
19036251-K	2298511	0	1300905	1233886	704912
17394452-K	332867	0	1039019	0	0
16949902-K	6267002	0	0	0	7694687
8980710-K	479367	10909011	45457	51337	0
15780553-K	46665	818411	38916	691737	0
10130106-3	508508	1348987	22554	0	538900
17910637-1	2748810	0	4210830	258441	0
16697333-K	0	47799	33464	13068272	2068141
10472937-8	676824	475255	3520685	8742577	3255801
8424020-8	4401023	1444534	0	0	0
10947243-K	43369	0	3263714	0	3544858
12137081-K	6654552	0	1417132	4902823	244208
7717590-K	0	0	590367	2026898	4626415
6079237-K	11518182	18251622	0	277726	5365179
16432447-0	0	4611478	1071678	0	1130986
15269766-K	2645913	2011623	33139	205269	0
18248315-K	855516	3799101	407390	4544847	0
15085965-5	5920946	0	2768994	0	0
11049985-K	1562498	0	39893	2683585	66822
6702519-7	19202744	1112012	4142173	7157879	143320
10661663-K	10144706	296663	0	0	21533
7430071-7	15298590	0	6062547	15406278	1761435
7237875-K	0	0	0	0	13562754
16187226-5	0	4747091	454846	376263	2531363
14790243-6	0	0	1195750	0	6386180
12721706-K	28189	269101	0	16468108	1248212
18820289-K	3495907	0	0	10101613	38713
6775352-K	1408238	2424407	7256703	978830	10587006
19309237-K	0	0	4674303	707554	57634
12232695-K	778146	113944	0	7331533	7460553
12073384-K	0	9453239	0	227104	3474377
8193126-3	105303	0	4248087	0	574054
10046610-6	1271375	7181848	0	681188	40414
9949892-7	1079857	20457	0	120304	1181545
8354148-2	0	13501599	358676	447839	5084014
19415386-K	176996	4717119	0	443531	0
18939749-2	4491493	410002	85072	25471	59889
10371625-5	0	40079	0	3168822	7544511
7849696-K	1194464	0	1537070	0	5612968
13487921-K	1744106	4077549	0	2015120	5962722
10047084-K	532368	6003069	1116843	22357	2907507
14134692-K	0	3404348	2885879	0	0
6662267-3	505015	10177056	96637	24190062	0
9376951-2	620811	1306819	14678886	1047354	50471
6346570-2	799796	465375	12909306	0	22992296
12310593-7	896762	406334	9421984	0	0
19033362-K	2396017	0	184841	400249	1050346
9527076-K	178019	73616	9163806	5470477	0
19417231-1	0	0	1717510	243036	56127
6723690-K	26598462	183372	0	74525	112848
19254731-K	24672	906080	5059039	8886263	0
17925546-1	1595375	0	0	0	14409085
6165883-5	2708694	0	0	13923229	13651311
14807444-K	0	1819768	751872	152194	0
7986370-K	8230697	10601634	2767472	1711196	3773785
6211303-K	12171074	5985348	5224138	148305	0
6240170-1	33322	409518	3060893	4630625	368532
13573006-K	7259891	715996	0	63710	4164112
7937491-2	1240412	4069064	1898822	0	33346
14391289-K	7263335	42486	2177445	846386	542925
17012764-3	99012	112585	3231048	2276870	1735303
15362941-K	0	38276	14903943	0	0
15809871-1	37459	955153	121029	0	18488475
17915824-6	6529391	892941	0	0	988037
13089883-9	5261344	10584582	0	1099462	39113
17203780-1	29459	0	249223	3401312	13684794
8851746-3	0	31523	17044518	2123480	0
10274038-0	94689	10164685	0	908212	7184435
14213027-0	0	123378	0	2167097	0
6358102-4	1561663	0	4024948	11475735	8328322
9852024-5	1913769	0	1839767	131215	38345
17306504-0	0	0	62065	20943	17392574
6072314-8	0	2660741	219970	0	17861637
19637436-K	0	1540112	1031507	157707	143446
8987772-K	465141	34220	4115115	0	403547
7756092-4	33111	0	12743321	23430407	3730073
12561982-K	9539999	1122189	776122	0	990563
10283505-9	4312900	1453990	6637566	0	0
7412248-2	8442209	0	3728375	222604	0
13109796-3	3580360	2792370	0	181093	7427061
7523743-8	53208	0	281343	2380221	5369334
19097217-K	356594	74407	0	27228	242855
13194690-K	9362143	0	0	0	4096714
6185952-5	29860	215563	17685559	8237229	2130332
14712291-K	0	0	853451	25453	460606
7525821-8	0	436804	464759	20289425	48176
10677055-K	655929	0	7805492	818578	0
7209899-K	0	220597	13300723	3052298	0
11956868-9	0	146700	3428199	0	74571
11347822-K	0	68995	68614	20353	3583189
17844551-K	864616	0	0	11423815	136328
16825737-K	1602956	3470632	10253072	197410	43023
7546387-2	16260781	0	7939412	107287	0
8627296-1	523389	1769104	0	954328	4984709
9931286-1	3276357	4169239	0	0	10136278
6099537-6	26160355	4672749	0	0	21357
13561373-K	0	0	2674709	13296156	1668093
12989427-8	644464	0	380933	5661321	0
13031746-0	172151	2152014	3674127	0	7170216
16125213-K	3236208	957675	45436	0	0
18470457-K	0	18812177	87187	25612	0
10217252-5	167563	1290162	0	3345840	2079444
9505725-K	287085	2057166	2049182	14803298	0
6502869-3	17528469	10092190	0	44707	104368
7528549-7	1200628	0	32412031	0	0
6739106-2	3261952	38467	626006	222705	2458047
14495504-K	0	35901	30795	0	0
14298785-7	0	2049730	30818	536578	53104
10305797-0	46783	0	2100135	39382	498766
13407261-K	3421319	989871	3358498	1923020	0
12746498-K	19801500	137060	0	24069	0
7354789-5	410702	0	16361885	132274	11824236
17479601-K	241402	0	0	131333	7256517
6265036-5	0	896393	1419138	33931805	3478353
9194563-7	0	12081897	0	1809484	496383
10860669-K	389624	0	1321058	61553	0
9710799-K	0	33140	886529	2776622	12290366
16184436-0	0	2945275	0	14136703	0
19254826-K	2368414	59359	135408	2394920	1288228
12878044-K	9729765	756335	675555	193826	1146699
14966529-K	9453539	0	81896	0	0
9762360-5	3201240	170650	0	0	7591547
7898648-K	569085	2706932	0	353366	17475529
15782874-K	284630	3378424	52959	658594	0
10568968-K	0	726986	6282121	4403859	30650
10665199-K	534574	0	822094	2390149	0
15783630-K	3180386	9171716	0	0	0
6419507-5	395373	0	7978067	106779	0
16297580-7	7659880	315911	0	33306	1061577
13692135-4	0	2360396	9074495	0	63305
13772178-4	0	3693298	522238	760198	83210
14989078-K	0	2868190	0	107028	2073065
8307600-0	8524540	1181887	1205462	75736	417089
15027262-3	7057446	342157	0	8624717	0
6751169-K	11498744	0	12390951	2182325	1912964
17429434-1	857303	8911447	253074	0	0
16563150-K	170215	0	53001	5692564	1885583
11000865-2	10813372	400163	100030	0	539899
6149750-K	640184	0	16279415	7942003	4487835
14350401-7	0	2339134	2123877	975870	0
10041805-3	25925	20334	0	3969164	664308
9354654-1	166062	0	5844849	0	0
8051884-K	0	9735544	34234	111101	0
12511055-K	7576127	422537	0	1068219	147752
6100994-9	596317	3273611	0	37104	6484342
9256400-K	4744340	144405	0	215205	186239
8838169-5	0	23720	0	26504	33544
6089472-7	1981029	0	0	26108	18779974
7218766-1	1908319	0	601342	35698388	128426
8429393-0	5105289	0	1442918	3730969	9593945
7275971-0	2892258	26784998	0	1404746	724381
17127718-5	39341	17747601	241676	0	30460
18181331-3	288882	0	88469	30972	184946
6877606-1	1988321	12139548	0	1102694	0
8901711-K	27423	1466483	0	190366	1323761
10780083-K	902354	0	6620333	289468	1833206
14334628-K	4284968	4776131	991331	0	2636695
6492335-K	9221454	0	1599627	10643564	219445
16888318-K	2098460	0	784635	0	7060097
7896482-K	708682	9859131	3477421	4297978	111520
19261668-2	694143	95481	5868848	343604	20357
7445805-1	10858718	15309410	1894520	0	1477117
9696501-K	3648345	851069	0	509900	8253940
12915722-6	5753839	0	485133	33781	0
9261405-1	0	1042391	23088	1887093	0
7284456-K	26322151	5140463	1581633	0	0
6996077-K	24985	25712731	346143	0	4669288
6043871-K	13034012	0	532703	39487	92532
17402067-6	663996	0	0	97371	0
16686964-0	7870036	3039041	1713311	0	0
16694580-2	17049969	438544	803492	0	66748
14106100-4	249262	6914573	0	3816716	257068
19199515-3	1880790	6323168	0	0	3402359
18034681-K	1246396	248691	2473641	1463818	0
12973473-9	1040848	197376	1803119	2091664	8488786
6363478-K	0	12378678	42773	421609	107185
8137700-K	0	6258229	2128949	2853646	0
18761914-1	0	173208	14185601	0	0
18934771-0	226615	273688	0	0	642710
18701545-6	1668191	1006493	2240524	618878	5443876
13521635-9	0	1433899	0	3397055	46649
17629401-7	276856	2643247	0	0	2857338
6892320-0	126057	1144616	0	26736485	0
8939639-K	4661984	10878198	387505	139078	50225
18210900-K	0	0	4017422	3417246	0
18072512-9	144362	0	114938	14516756	0
13248667-K	11465261	3093537	28696	3196843	54600
15675212-K	0	195236	106003	831466	7407908
7115932-3	3212785	2036817	386641	978842	247683
14269698-K	0	167638	210474	9154875	299957
6280747-8	5699908	816114	5611474	24414057	0
19611080-3	0	97429	17356144	29161	2103861
6730654-K	26512	14175554	0	1423588	0
15455963-K	55183	1222052	11066898	1072399	0
15952004-5	0	0	104958	15895841	165010
13176980-1	1858367	2503604	291297	25244	34031
17730440-6	9949490	7612531	192141	0	20792
7272469-K	302353	371869	15886170	14739771	312316
9577936-K	172582	282421	5803956	1415173	4637989
16227445-K	1166762	0	9591819	1514168	5040558
15894813-0	5782338	851268	753258	768073	0
6557039-7	280558	0	28191604	10030074	219465
10668422-K	3511621	3675315	0	0	9559997
8786944-5	971126	0	44844	14268646	90522
12597335-K	0	0	0	2358657	247207
9571187-9	0	27323	941046	0	3945397
15561964-6	13775639	631071	916124	1699783	803639
16342216-6	498486	579363	68110	0	0
11250486-K	3504646	1887707	61285	396574	22107
9501788-7	3084590	926736	255044	4697823	2680940
6007354-0	0	295752	38891	6271561	184789
17533693-K	0	191383	78592	232832	22785
15017572-K	0	0	94410	0	37464
13753851-4	374721	2601285	3591915	148932	781214
7340281-K	854902	103224	0	5146106	8986793
16903249-6	7381981	234662	3939457	147817	7616895
10038524-8	18379618	0	31742	0	1064796
15815177-8	0	2544982	13555865	144071	194440
6626191-9	6366947	3061492	6732938	162328	1051777
11097921-8	4312037	0	736388	2915081	0
6617743-K	43753	0	0	13467452	0
9182187-8	42967	0	490323	19354618	0
7984415-K	0	0	6588077	761777	0
15870056-3	0	2774265	8533549	234789	2363245
7904779-7	0	28204	3287813	4441053	9637042
18439884-K	0	10174473	3525161	692072	87239
7774939-K	4202971	0	0	11280245	294378
14859922-K	842987	4187803	82906	478694	6129696
10349341-K	249376	6623812	743614	7291143	757754
18268531-K	42275	3315931	2641281	407700	3446128
6285592-6	30566	12480101	238612	13047761	1642153
6163693-2	10070776	682545	16884746	380587	102948
12171379-7	37847	11340388	0	0	177564
6619392-8	12885751	0	0	204572	32515
18869721-K	27228	2908684	4411067	0	0
8248613-K	72187	922333	204161	1985905	0
7809195-2	3776301	2172721	879549	94496	5841777
15368046-5	328046	129210	17045230	766321	162197
15769129-K	241243	9644433	25663	160198	535010
17346680-K	484667	45629	834103	4935760	0
14357359-K	147100	4081880	6238024	52808	148400
12454906-K	794114	1318884	3643336	0	3519983
16123985-K	0	0	0	47798	10471295
7410094-K	265939	0	20743863	334103	6421711
6115446-K	0	2358734	5491625	68456	451903
18374441-K	2087777	0	0	8637919	5628152
8188884-9	4102304	220239	2252768	179615	0
15963409-K	1950933	15565561	174985	120771	0
6717399-6	0	26152	43933	19067805	3319774
17707270-K	0	4511111	145525	642932	0
13502450-4	3693571	72718	2015971	10973353	0
7534237-K	0	0	3478949	5118734	21966733
19577792-K	176674	0	0	842426	188587
11649013-K	5380415	1917360	60121	2801981	0
17061597-K	9670272	5557475	2518850	0	362329
14811271-1	404022	0	8454134	0	2273811
11065894-6	21069	5056351	3497832	0	544496
12393682-0	449715	0	0	374727	345490
18393092-K	40306	36116	282717	388009	955570
12474532-K	0	17558306	27599	0	152719
18763361-K	0	0	284138	10567232	1441884
6943882-K	5887472	196148	17180672	0	0
12243216-K	5921737	294522	0	11722689	0
12888672-5	0	1471184	8527153	0	0
6789272-7	20027	0	18860385	20860703	0
10393095-8	0	19072963	0	40880	221927
6038623-5	0	2197833	7450948	449540	0
17296041-K	0	2891504	1186018	0	0
15174180-8	61657	0	7375899	32663	0
6179404-8	34487697	42745	0	3822783	0
8180435-K	2057083	1636977	0	1509698	0
6077833-6	14091387	126622	23065831	765398	457628
14305822-6	1490199	0	0	1507233	736437
12285441-2	965956	493248	0	45449	350560
13700930-7	34330	12746597	166454	0	0
6589860-8	2297117	9791787	156894	4327956	737326
16144066-K	0	8149845	3369687	0	3856602
14215373-8	0	7102357	0	80034	9354832
7537307-6	16243849	0	5222985	642648	1171243
15913996-7	0	1323939	3462527	0	0
6487153-9	0	17259559	173079	586600	6954666
19439589-K	1577941	1805872	530363	51595	0
10463568-9	0	8016682	1509840	8120742	188694
19720169-K	0	71043	914643	7020234	1178710
19340296-0	0	4500393	3906674	3419752	71722
16647508-6	0	0	891766	9726579	0
15909784-K	180350	47346	0	2005038	138635
7501004-K	1186049	31545	31700525	975359	1768999
12314326-K	455021	0	457546	0	3612067
14689867-5	234344	0	1342837	0	471288
18698983-5	768948	528361	0	0	2107554
6822451-K	36278597	0	0	21222	22346
16042205-K	54544	9983080	0	3262553	385699
6051822-K	249019	1559809	4737550	986681	702117
7023067-2	18436257	3348566	14923998	2081089	205417
8002743-K	246952	674543	621589	307347	475363
11331535-1	221090	0	51654	224659	1048155
13267870-2	17621448	80956	0	0	0
7004448-K	0	6881504	1532504	6064853	8135198
13845726-8	5619524	0	441382	0	0
7758542-K	0	7374659	0	1735298	0
19550815-7	833613	2842668	68353	0	90367
7888441-K	663803	260054	4209923	8011113	719893
14005475-K	63785	1767804	70227	8853006	694280
7692097-8	0	992432	3864175	29914634	0
10746277-K	0	126398	0	0	0
16585230-0	2542503	7343887	79293	0	3235162
19363277-K	509588	17361531	0	150442	116706
9309267-8	57877	10472450	637919	0	165139
11987312-1	220065	35857	83040	116946	0
7012869-K	21879033	2534451	6434571	3936411	0
19374294-K	0	43186	0	5302787	562943
10608721-K	322897	970492	2328759	68908	1252826
9164908-8	2681379	0	0	0	5216881
7219999-K	0	0	181548	28467287	1654935
11008839-7	22849	2488512	0	3417949	5738302
6523192-6	3485902	0	0	1256982	12544976
16951013-4	5204299	1924436	5396561	0	29362
12610879-K	145681	227584	0	95293	11192144
6122810-2	17979211	978471	0	187159	0
6730548-6	0	497050	655241	0	9556684
8153698-K	0	0	265499	0	1329149
17324314-0	1922111	152939	1751488	11584770	240147
7475939-1	9451301	2740306	36112	2961948	19304639
19010930-7	783745	31682	26834	2174500	733290
18848530-K	39190	412552	12732606	856578	0
18157885-K	3641759	557544	6118352	1286606	0
17291645-8	0	4650167	11751536	61435	216737
15273584-K	117681	317142	75000	106268	0
9022393-3	0	1565358	80708	0	15542171
11084562-7	40037	86819	537554	482048	14178644
8001114-K	34727	1176602	332107	0	13421438
19434352-2	0	4088188	582838	6169033	0
13480307-K	157917	128363	0	563301	0
13092792-6	0	9097816	0	82863	5256078
12290604-4	10441360	0	349093	0	0
19172082-K	26408	740440	5644297	20906	386110
7136128-9	64660	10085272	0	3132790	19296733
6376816-K	10898065	11725630	0	0	1258618
7730896-K	8945169	43163	1036553	4379523	0
15622040-8	3384762	880911	217878	3018099	127027
18271508-2	2635769	0	859230	3215144	1269722
10607246-1	1569514	5078929	0	0	126941
6961837-K	1530899	5120507	15458322	7708905	1451525
15862705-1	0	1007184	5434201	1602181	0
17879947-0	1025440	0	0	934917	164521
17843417-0	59815	2270893	0	311708	7671481
12551285-8	1108188	26936	0	5822298	0
14739562-K	8976695	7676169	38483	1207874	76020
6052320-0	413970	78731	8405968	0	0
13258163-0	0	160739	375506	1888469	12782561
17450577-K	8837844	0	167590	1066406	0
9092379-7	0	3955436	509302	325059	0
16666678-1	69761	41273	0	0	2302166
7864181-0	83703	1178799	3574898	17863774	0
14413788-1	1705346	524703	0	111430	50533
19410025-K	3837954	1608905	70048	4290471	873233
10382708-K	11653999	0	757184	0	90622
13257200-K	33121	1145873	0	1732563	0
6589847-6	17203926	3698526	320910	0	0
17076100-9	0	5111379	2948827	0	695689
13526193-K	0	163619	103516	1732833	63069
6252850-K	409689	3298429	0	6061170	2232534
7081937-K	8972032	45529	24705510	3119810	34652
9071130-5	0	0	1320892	4333822	0
8031938-K	0	8481373	0	4077647	20070
7477951-3	1225992	6654210	0	1781432	555354
15392329-K	9829221	189785	2527485	0	1872174
15792354-K	0	66076	0	24799	0
11810200-K	0	0	360352	13601232	1581447
7243629-9	0	73499	70130	28456242	0
15938169-K	49987	317116	4003514	4763095	0
19226384-K	215577	0	38928	0	4867390
9704103-8	2476404	507330	0	0	170753
13584378-K	275085	78525	1592108	1698796	2136729
11343979-3	463083	24495	0	8832835	504243
17488033-0	2181407	4892973	940469	0	2070080
13234289-0	0	404686	0	210394	1657164
15651316-8	3796442	49956	1918521	155246	852111
13050254-4	1135172	642728	15992069	0	66656
7892645-0	6848093	50525	5846822	1105908	0
10672315-K	3941111	1043165	9072316	21723	78248
8467001-3	168781	1919857	1263806	416037	397185
8546735-K	86307	0	1927481	0	8517251
15219005-1	2097032	211420	4887621	29954	2470486
18463447-2	24485	266653	616588	4686887	1447195
19597482-K	2648444	3570776	43762	941487	0
13703144-6	0	0	1344312	4033593	559640
19230260-9	1085517	1065778	11361375	1798326	3789255
6486008-K	11458640	2585162	102239	0	58817
7372448-K	636074	1193063	7502186	0	3843620
9654126-3	310807	1726141	78294	1091954	818239
17125230-1	1359694	2519290	4717791	399525	434077
14854303-K	980080	3007076	0	0	0
12090780-K	0	70932	0	0	8623378
13580760-K	193743	0	295526	13427823	702051
9718184-6	372476	22705	0	75715	0
7941822-5	0	34328	0	0	35542491
6436807-2	683480	20479	155420	5314559	0
6138549-3	0	1543774	11409674	4476970	1347493
10641276-4	352203	760119	0	10688752	2093530
19941735-0	10313082	321795	3660052	22798	0
12718833-6	454504	206942	0	229486	4454726
6049043-2	0	0	10553627	0	0
10939391-K	3344270	0	634006	82434	2202599
15463105-6	0	16211805	162121	1686904	0
19669574-2	0	45419	12740787	5991680	356097
13029605-K	53397	0	87387	6251061	12161278
8650559-K	0	3960484	22180	0	1769232
6761757-3	1572157	0	0	13356343	1091938
16764954-K	1070165	1755427	0	0	8173897
18017455-K	495902	6367136	0	0	4032872
11680956-7	0	3409684	10180982	0	1898026
11681858-K	0	12532727	543477	2221759	387632
16493664-K	0	6007407	1018695	593778	4430948
14321554-K	4989020	2432893	81673	2238936	0
13263996-K	910799	506088	0	16660672	0
14103771-7	641158	9970327	69698	3379980	223493
16501185-K	47532	42415	4125991	1730611	403582
15300803-3	380850	40996	1420425	56149	0
16273014-3	568816	15596026	0	0	621353
8870537-K	3313220	3084464	2898291	0	721455
18708701-4	5599566	3655161	2283748	0	0
15619995-K	2338601	0	0	13841873	0
17444012-K	0	6475695	4706491	0	1635262
13293979-4	9562543	708899	33709	0	66243
6736658-K	0	0	13460375	0	54295
7030924-K	414788	1133553	1716182	5252450	25529987
16730920-0	1192485	8654261	3838647	6102447	0
13666483-K	152499	0	11557376	367962	0
16685163-K	1609322	0	58263	0	0
6485421-K	0	5957213	639810	0	524646
7206850-2	22364553	129849	915838	0	11803102
14196901-K	0	4458897	0	2523847	1756581
6735010-K	1833384	89818	12445073	64323	2153749
7435925-9	25999568	9062653	58423	1448441	3193407
18121091-4	126441	0	9341628	0	21823
7589936-K	0	15860949	771247	0	0
18374023-K	675240	2109419	1419261	0	15132569
18963742-K	0	221958	93796	15479563	0
15339036-K	404632	36230	15972229	0	3224255
16266009-K	0	40138	62426	0	18445403
9928859-5	0	321272	0	33348	249501
10691148-7	207257	42937	0	6815671	6600742
15491479-0	0	1369970	0	12668018	0
17434302-K	0	7064850	0	8799518	3592097
17044428-5	7487165	650868	7512275	3006667	0
7594531-K	117221	0	21156	3721076	2686796
9303026-K	0	434699	0	0	3759675
11691466-K	7359892	163041	0	8424518	1338377
15174116-2	0	141912	284652	231716	17288614
19682314-K	0	11475589	317838	6275163	383771
7340372-6	9347468	0	26729	2444697	3100893
16103231-K	0	2456030	5834132	175999	1242936
16390729-9	3865575	52314	617624	3532768	0
17463425-8	0	235097	11420906	0	115563
16774607-2	284822	0	259901	0	4750080
6427735-K	82951	3155926	80344	14464487	106384
6277706-K	570460	0	12785590	2555191	4249149
8072998-K	7444815	0	156029	216694	5166147
17140777-8	720888	0	0	2097625	1726966
15417875-K	995344	24184	0	0	4871413
11916071-1	1938616	34408	0	0	13808885
17596211-K	951423	6929633	0	2015727	5541055
16720938-K	0	3500326	4963258	266800	7950630
11868972-9	485918	318423	6201576	3902768	578456
16599803-3	27056	4384159	0	0	405495
6897083-K	4879348	6859782	79690	0	141260
16634695-K	179029	0	10576428	2272960	490910
6730015-8	0	0	0	37926462	1660441
10030327-K	0	3321128	2041274	0	1193456
10262815-2	330811	0	0	0	3433834
7898482-4	0	1173861	0	5092344	17680153
19282590-K	2770801	0	13236642	685827	1324232
9961177-6	3533150	645723	13482483	0	0
10504902-4	8278107	112935	4448510	35932	0
18494457-K	0	0	245740	769324	1799372
6832743-K	3405219	3715104	0	16480001	1896316
15682305-K	0	322554	78864	681821	0
10906528-K	369182	334738	2932984	3462198	1684059
18670577-7	0	1991356	40665	2875607	2272219
14334007-2	23677	0	0	15406356	1443741
7273857-3	57387	4503082	0	0	10314048
13752515-K	0	160064	0	359928	5743769
14852977-K	23718	0	0	6621187	662144
7590222-K	9892867	120105	32334	64493	0
12475602-K	721973	873083	0	5797149	1299834
14835455-3	5540052	725633	292941	1059183	0
7949908-K	2476598	0	24483306	4460822	108877
6122795-K	5363678	0	10427363	9720550	9835112
7856153-6	2988182	94096	15106287	8224315	77632
17411333-9	0	0	8075626	6678351	4300156
6824792-4	24647240	0	943386	0	13656769
18489744-1	957961	0	3260571	13955756	39393
11545280-K	0	0	0	3411552	0
15853282-2	1295278	0	0	471170	188053
7186751-4	65577	13018140	159819	48126	647029
9640349-K	42682	982039	1667217	5698429	58158
7335099-2	139182	0	9560702	953522	47820
12415247-K	5405639	1790048	98355	1699519	1304089
6377028-6	89329	8328350	2350803	22466467	571306
7620256-0	241521	5218387	0	0	2709519
7060474-6	3403953	338484	0	5260738	9508795
12476967-K	0	992441	15172419	0	0
15539351-5	2943778	1464420	1160387	1881032	4741445
17234793-K	0	2910138	0	79181	2578684
11166292-K	8996105	4582562	0	0	0
16740578-6	0	0	14493024	28879	54835
17087327-K	0	2677022	1831685	1182661	300922
7162103-4	2072020	0	13142713	2878776	4141907
19139180-K	0	234299	805690	480260	17119774
17143180-K	7499128	0	1692639	927241	5784114
14534338-K	0	3589129	1088761	272066	374330
14563424-K	1250700	193783	1639334	4232729	4079493
6330000-4	0	9280275	180770	14440007	0
6657454-8	8361037	0	1079705	0	0
16954747-K	0	2246092	865552	2810139	1152616
9618094-0	0	0	883975	3685599	305764
9223838-8	1239766	85793	17988826	0	0
13576584-7	6973600	11869537	25371	506661	32308
13655411-9	44313	490730	122647	17649605	0
6330815-K	3787617	4545320	685601	115822	4590061
13659299-K	0	4911789	2376360	0	0
15197502-K	0	0	36091	320087	103703
15663411-K	1456446	124258	0	235984	0
18858059-0	31016	951560	54773	8264140	4461860
9766859-9	0	220564	0	1069439	11634467
12513483-K	7444240	32600	210103	198074	2792465
7969588-9	0	925056	5023889	23684864	10244319
14873092-K	837851	62808	0	0	8372062
9473113-8	4509342	6046074	2711928	197422	162461
10131693-9	12521432	0	441178	2155449	0
9745638-6	6206511	5729278	2802917	112653	1764113
14138931-K	0	13618858	814088	4692851	0
14342227-K	49572	94235	877715	17909766	0
11016379-9	0	884774	3875675	5303775	0
13627125-K	53747	244429	1243610	0	273587
14540397-K	0	326405	0	0	8531624
6149074-K	196567	0	18399751	0	1262872
15290391-K	3730695	7223628	3550380	616002	28123
15548142-9	0	71983	52509	200076	3573803
6939146-7	0	1197404	4704521	13316158	5561089
19341814-9	7830076	2657826	1618385	0	1517589
8703278-K	120861	17532080	0	577203	0
14969810-K	0	408686	610710	831217	11077112
18762112-8	2892021	0	468305	56506	0
7695935-K	10483563	1627330	5498425	0	301591
17463433-8	0	2018895	0	8453822	9189046
7839212-K	3871764	20688863	8102692	290193	183219
6000874-1	348256	18524321	1470117	0	167208
7947246-1	0	5617459	7996166	0	110111
9985093-K	5108926	22608	0	0	780542
14521525-K	97078	1535205	2197705	0	0
12786280-6	1420644	1300368	4309956	12328856	208150
7015345-1	16385032	3423776	7598543	5081548	0
10967163-3	16214256	486929	519025	1179522	0
9907233-K	0	2719653	0	98474	7722511
17296991-1	188944	0	15024440	0	2212460
17720871-K	510232	123639	16662901	0	38745
12712209-0	937763	0	136021	12257845	256775
14803467-K	132116	70470	0	7133559	0
13405417-K	8391140	696564	2212206	0	21262
6387756-K	104691	53487	34541908	0	0
9498559-K	0	3088765	199858	4429106	1344756
7035721-7	0	297094	10210130	9097066	11243571
6507947-K	31671	16097760	1511239	308718	5479833
12774215-7	4755105	701574	395440	82895	134352
6378511-1	10157070	8788579	4571660	0	459173
15849002-K	508494	0	0	90689	0
11932907-K	1909390	0	0	606263	6986786
15592237-K	56541	0	189849	0	354873
17110574-2	36078	1596082	0	4655997	6988757
18848637-3	2966919	0	23154	505759	5319122
14505335-2	221669	648756	29413	69218	396440
17331462-1	0	174035	5252199	329689	657947
8246095-K	237802	0	3929038	3894586	1148537
6219277-K	0	0	12291378	16241584	345231
7181176-K	6961217	20179311	4434230	659713	288066
15652771-6	0	45049	0	0	7756579
18746430-K	760685	0	12337132	0	0
7341981-K	7961079	1664642	24451	0	2787972
6650000-5	162005	212765	1843538	27109833	3582120
6409350-K	1878165	4163183	140104	25995	0
16910791-2	80132	222378	4330364	34876	12815578
6539709-K	9021216	35317	1448636	0	38994
16580675-9	470761	125364	829502	4084913	0
7988289-0	602752	1907355	18103838	1830545	193896
12412078-0	57154	202818	0	4156130	716372
7268625-K	0	14437419	3324290	1417552	544084
9050150-2	0	17104907	0	0	49833
13481326-1	0	0	0	51640	0
7577497-1	149441	31682296	2321745	0	140308
11138557-5	1184958	6966842	449490	2260024	5625519
9547500-K	25887	335726	2320559	0	1324262
6128026-2	16048944	0	0	28968	0
6013183-K	3326133	14434192	0	0	0
16864622-3	7694453	0	0	0	2607934
12416273-K	0	0	0	1637549	0
15272528-K	98580	6873345	182959	0	6362498
6324956-8	13524763	13704393	259629	666702	0
7593862-K	0	2645429	0	5972138	3758627
14315002-K	884120	0	0	0	2435401
13058303-K	4458095	0	0	1266312	0
6333940-6	13610817	2345258	9318943	0	7922163
14572224-K	60480	11604460	639732	0	942202
7065993-K	427216	10679015	2868936	75074	25011457
14528320-K	13123722	525843	793091	0	67653
6081431-K	112734	19929355	247407	683888	103499
12679073-K	503530	8372524	1399998	47149	5412445
18003104-K	91854	0	0	35648	1569970
6866725-6	999232	20377649	101852	0	4797933
17220882-0	49801	0	129234	3756498	649454
16294865-K	2831727	771668	4695777	725524	720705
7357718-K	1301894	0	770622	16331048	0
8845111-3	6262044	4662472	576599	2016260	1316085
12088805-6	2674502	940129	0	0	57622
18946513-K	447602	554871	0	170029	0
9171621-K	1257002	13965389	0	0	367104
16158892-7	0	1797823	5660874	0	467922
11645892-2	96650	286441	437704	1330445	502682
16671423-K	951127	0	8695883	329122	30728
6477240-K	117788	3664652	0	0	2300819
7389068-7	912962	8982800	0	9608354	1160700
13784984-K	9298486	640131	0	0	5497139
7346669-K	168677	1441276	7598118	0	0
18854660-3	790579	0	162827	47998	29899
19877574-K	0	8625885	68198	342099	4705658
6735988-2	119261	23109003	6322275	44603	2027754
6556783-K	244396	15595421	2427220	103213	14347923
7984637-K	72906	247109	111142	1031707	9555440
7361868-K	2751677	0	0	1207969	4601916
9586782-K	262645	0	2467739	0	0
6958017-K	163790	0	6631186	0	19965011
6157035-K	13344276	493400	26006781	0	100883
8843363-0	10857728	6619469	837799	34594	0
19383561-K	635982	7859066	199773	10403272	0
6076148-1	0	0	1263947	404466	5532986
8530036-K	2313555	3277909	212645	0	320946
9953029-K	0	89844	284870	0	1027205
17337688-K	0	0	688935	103219	24590
17618651-7	4440666	0	5774121	774511	0
19213735-7	998525	14532022	249503	205008	0
6747698-1	4678368	0	86634	1143325	27140874
17684226-K	0	3031322	7106189	722474	1662272
19530919-6	0	2440516	1216035	0	376328
15172695-K	0	13011949	25454	59929	125185
8181369-6	287923	69598	0	6054671	10109637
12632694-K	1868624	0	3075626	123622	1097585
18634644-K	0	0	0	1358768	137761
9648503-5	24671	578831	385898	12054121	255901
6094479-K	18134247	20991	0	0	4282644
19309094-0	683818	303765	5098996	364271	1647658
15424949-2	38963	18833654	0	88392	256449
7062792-K	322674	21854037	2455800	226550	2233046
19340801-6	0	220424	0	103241	80347
6838923-5	1933604	29801	16215578	77105	1821648
18886620-7	257445	7184492	829747	0	0
13575100-K	132500	1302737	1213858	3563297	12799261
6541494-5	15991933	0	606906	1247070	0
14907408-K	489573	1076653	5656422	0	0
19546410-7	0	0	101473	15971917	0
7436015-6	1396822	0	3963362	3003367	870208
6839459-8	0	98104	1532340	10430796	0
6666759-8	27515704	0	4321631	0	0
17123885-K	0	16488503	0	137108	274756
15692185-1	362857	7787143	48722	237508	0
8803134-K	13926675	0	239847	527173	0
7053214-K	6338528	29582	0	2390920	276391
7239351-K	48929	875673	6256952	11207103	83623
18239106-K	2996368	0	1828107	3460230	2985475
16159897-6	1378921	5077238	11289281	363631	0
18480156-3	0	4910040	94003	839016	0
7977760-9	483125	22340499	524970	386431	9161474
10176796-9	0	0	123067	4067999	0
16915395-5	666406	0	474057	2156564	1767173
15896737-K	4943716	0	0	1251790	168166
17925813-K	6316690	320612	531889	22700	4483804
13174446-K	0	0	2495825	0	0
9517057-8	0	1234646	24203	0	2877667
13033567-K	55213	0	139082	371440	8018750
15122435-K	0	4866740	170248	9869153	0
7524184-9	154887	470540	585541	1306011	20262953
7438502-3	27015564	234019	0	2133917	0
17198648-K	309389	1679366	0	22845	15312275
15968333-1	0	28579	747074	13378500	795798
18485775-K	9396918	1666940	49618	69491	1974379
12875011-K	3706585	0	23666	235899	618117
13222846-K	3923684	0	1821894	334278	3967629
18547948-K	8232584	0	0	2321226	0
10633658-K	45360	356235	7275867	0	0
15803600-2	981727	1807533	492378	1906914	0
18988397-K	0	0	1067675	6108703	88399
8986240-K	378438	9949942	5097303	1081685	253676
16585604-K	562755	8650178	3107847	54644	7408148
8265777-7	2971207	66888	196121	0	4415616
13936350-K	194398	12677443	0	3462713	154484
18669657-9	0	89840	0	0	1161436
9196468-K	1524043	0	200466	0	585442
14138892-K	9280674	305870	4542362	3059731	258148
18716125-3	89180	3048386	0	0	2020908
12531851-1	7407337	9292757	0	20758	235716
13900228-7	428607	262135	7139276	4208885	0
13038033-K	0	63332	5603081	0	86795
17092082-5	6634291	0	0	3591423	6504024
7268011-3	11346866	0	406483	4467796	3500290
17665214-K	3051049	0	1452909	131610	51218
6185241-1	0	8829478	187345	0	126441
6870853-4	0	13245624	0	0	190098
7817408-8	638117	226533	190821	462673	4677394
9306363-K	0	5217556	0	4285169	0
18694350-6	4017461	4488928	0	819193	9158573
13899798-4	1664561	0	0	9078650	5228542
15100733-K	2491572	9915455	492563	0	0
17096185-K	244859	0	112476	0	276906
14407331-4	0	0	0	740589	15631654
11766241-6	951534	1013010	2354817	406334	0
6260816-3	75155	0	75154	15057825	20029266
18504280-K	555574	7410917	119978	1456173	0
7625334-8	14597027	0	411263	3854546	216680
9506014-K	0	0	2702122	16973461	33687
18937450-K	559066	0	1169912	3409599	1851231
6077581-1	179697	34462	19921444	746217	5182459
7888600-5	13189886	5040877	31887	9420644	7097345
14214169-K	591237	172686	318896	6310626	9981886
17981920-K	4282488	66080	3614626	2521186	0
17856118-4	1410510	4345913	750150	110702	0
15961244-K	1509303	0	1001207	23279	0
6782438-K	21871866	580180	111687	9391734	0
9900049-K	45678	1766928	449417	766237	0
17261035-K	53115	0	355279	0	0
13073712-K	962826	1197489	2674409	0	1663694
14450516-1	1876760	341416	49189	25405	157792
12863922-K	4856364	6002736	0	0	3553106
6217205-4	576546	1100894	6519562	54680	276873
14413289-K	4050326	5308624	149951	131760	1398864
15287411-3	0	2233009	0	0	260631
6804458-K	143176	5908912	1884165	11502911	4720004
11241137-8	62295	0	0	0	3625218
13305452-K	241726	70303	16688585	0	0
15217556-5	177365	1943758	297131	12630400	1684466
7461197-K	708997	6732434	35082	1961790	1665260
14727028-K	3437561	7640574	0	3525571	2282246
19170353-0	0	937266	500780	0	72576
17491458-5	0	13191340	0	0	953134
17044060-K	8915648	77258	102567	307620	7315552
15270039-K	886869	2051347	2218984	4032093	10582330
16110255-2	3515380	11227405	112690	817911	0
16152472-K	1588453	13183611	1371076	1374298	0
16877106-1	1861907	68687	1455639	0	1829686
6289562-K	1086495	1259462	1281912	5021040	11367880
13941522-5	87396	0	123863	1604848	0
6548329-K	0	21583	0	32736961	1089623
17968703-4	1560063	0	3324100	4334448	7279580
10940831-9	783941	0	0	10146926	20077
16719986-K	341318	0	1482533	878849	136817
8624095-8	1021639	478846	109149	0	0
12262741-4	441916	7869926	0	1308303	0
9953434-9	81436	75773	90311	7664336	0
16916864-K	1979785	1879948	541556	0	63213
10932549-K	1029319	0	13875813	0	0
18958187-9	0	30085	0	3017831	9974286
10509024-2	65927	0	2743704	1662712	6788810
16244082-2	0	16653134	0	70518	297874
13048287-6	131574	1005058	4586275	758512	606836
14249169-K	237059	1752027	526948	20892	7128164
16006767-8	0	3688947	2086560	1386646	0
11713067-1	0	1559961	0	12747939	41931
12460985-5	757270	238272	0	215684	0
7146487-0	48127	37519664	644549	116437	218775
16297054-9	0	0	0	304675	0
15095841-0	9024151	1150486	3665620	0	1895380
14665567-K	1501249	0	0	6812191	0
18115124-8	0	1980164	0	0	76184
6570396-K	257472	0	5028490	600716	17434058
12410847-K	0	785735	2577015	20776	3143849
6544281-K	11284213	0	0	0	77994
19309362-1	1493435	5738427	0	0	0
9287101-6	11573945	165500	327701	328848	1151378
16093488-K	9558366	216533	1030368	8057693	38079
6116236-K	6432014	0	4302334	68405	2921324
17347029-K	0	60652	213067	5075069	2131539
19762043-K	0	4252731	1949307	4976680	0
15023608-5	25302	10800523	2006908	3844024	332977
16466739-K	0	0	0	1074515	165813
6372528-K	25778884	51234	0	46867	4262312
16191797-2	9058279	82278	1250111	1178478	0
9115916-4	2227577	38272	0	895226	8593599
15829032-K	0	9259145	0	4438220	0
13968145-K	0	3562466	3293635	1704268	93900
7042294-8	0	19311853	12778715	0	1285973
13113315-K	274883	0	188516	0	9444446
6062172-K	275693	660820	20660706	28912	0
11759565-K	0	17630305	614401	0	1392061
19030221-K	0	59840	106843	2320099	2237152
6906173-0	1229277	24725717	4242469	0	112002
11711850-K	21308	19307647	0	130559	0
19963357-K	3163576	138374	3740347	180939	1089488
16782233-4	0	0	1498383	311074	0
7213732-K	130064	1606294	11035201	15889046	2227472
17288302-K	24996	10018081	0	7142276	0
6400151-K	8386623	0	3636856	0	23390133
6042406-K	0	2406622	0	3001598	5809450
18901901-K	217960	507559	0	90972	0
16779487-7	2648134	0	10594906	0	574095
6579754-9	22630	7110024	1568367	0	0
6985505-K	2345629	0	3804172	8954616	134328
16203380-K	1104225	0	51230	410109	0
7141334-K	2803748	0	65948	21520852	5737473
12639236-K	1185423	0	0	6151753	1902378
6102748-5	5377772	0	385941	2990526	16024949
16321650-5	173990	0	837858	12057539	0
6564437-K	112768	1024246	20281826	3662422	1467340
17530526-K	870308	0	626252	14598555	2158282
14870440-3	9655209	61916	3931443	0	200585
14346189-K	0	0	11346614	139523	278349
9030225-K	0	0	137113	63082	26757
13342777-9	0	12447668	0	0	0
7427750-5	2514543	0	1321851	2017741	15323112
16120814-K	0	200584	3722812	1587228	0
10105360-1	0	151291	8301733	2323417	0
6926893-9	0	20090825	676750	2030252	0
6037276-K	1636433	13215294	334548	332710	12987378
10828920-K	82236	0	9271554	0	38770
18663119-1	1273950	172827	12709159	3782908	22902
13153012-K	85337	343706	2037757	0	0
15807720-7	0	1554184	20449	0	172526
15844656-K	865491	621802	2715006	15686225	0
6139304-9	373023	0	6371086	17774014	1771003
6761002-K	185398	0	5165735	9798923	0
6711530-K	26668848	0	0	72567	20071
19916004-3	1289175	0	0	0	11280732
6601068-K	0	0	0	372806	23356128
14647886-4	0	0	0	1067138	16918535
13181477-K	194358	1037217	82518	201517	14662484
7628013-9	3467111	48890	0	18535283	258334
14497968-6	281571	6065503	0	0	38901
6786401-4	4371502	742644	249623	81569	3501651
13677886-6	0	0	3128703	1633468	5254998
6603851-7	48013	12501060	0	0	0
13669050-K	5569031	0	3320231	39127	5778948
9093844-5	8017705	0	0	1367385	492283
17425702-7	0	4873380	0	10887049	0
15991276-8	9188614	1948380	274661	36095	405863
7208408-1	31156790	42158	4859178	1734090	41384
18415788-K	0	0	20057	2839872	509163
17440011-K	383174	567073	0	7692134	123485
19643766-2	1085085	201665	137977	0	11319998
7890571-K	20488	12429250	61111	230154	0
18249773-2	0	0	263283	1288473	1676796
9975341-K	0	0	1252152	0	34154
15751059-K	8201533	258378	0	1712757	152102
19036908-K	1509657	7071447	1135075	85694	7348163
7877757-K	0	0	0	12591479	0
6444520-4	4308235	172409	22142948	0	96037
19793227-K	0	3341634	0	0	0
19342597-9	21099	0	0	191940	160446
7370847-K	21261358	0	75011	0	0
8834330-6	21451	1845281	130253	0	68372
14166567-K	373309	0	3507569	2570240	37880
7369616-8	20243	1281553	0	12937926	6211462
15552535-K	365209	0	1422618	66769	835366
17030985-5	9972478	0	0	101924	5547028
16012110-K	0	0	6805138	6890254	3304251
7765704-9	0	5146032	0	2024477	0
12264304-8	231661	5471361	5301948	24709	82321
12187267-K	31540	0	0	15962578	517453
9085274-K	0	0	54025	2121390	21671
18958524-0	6257186	413431	29322	613625	1185757
18406878-4	134280	1573688	70596	0	10356058
18350088-8	102216	0	693022	10477022	0
9108484-K	1382036	10057710	1714908	0	129425
8220277-7	1823228	0	9478427	647029	0
15003335-9	1473840	231523	379589	934503	0
14179110-3	0	15696807	462706	0	0
6386947-4	787261	3097653	4010910	0	17177411
18393924-0	3676207	14328118	46615	141851	244080
10538337-3	0	0	2555291	9664969	100742
14682028-3	26270	0	105339	3046771	148019
6630803-1	0	4030995	2410232	141736	488260
8782598-K	10779478	0	1363053	82849	617216
11718432-2	17672220	0	0	286862	1172551
17086589-6	0	3661599	0	971173	5778096
9341875-4	152956	13859304	44204	0	2488615
6899402-5	4328392	817547	3244078	9402611	0
17018703-8	428414	386800	294867	59032	0
7402177-K	23412	2309873	8686687	0	6234234
6390425-2	34925521	337061	0	25112	350901
10822981-K	28164	113498	555373	88415	4665119
7362543-2	2324283	21521956	75460	612273	2596452
7948343-K	0	2659804	7273142	0	25529020
7403666-6	0	0	13500533	0	0
19827151-K	437728	0	0	2283266	54596
17761402-K	0	8137616	36996	0	27098
17387891-0	1010248	8343162	0	113118	60510
16378695-5	9626058	7846508	108032	0	40590
6211091-6	14219453	100594	7379988	9981272	702400
15953985-K	0	5447022	0	142396	138331
8775151-6	789154	0	4801465	3602293	0
7588463-6	5738150	0	0	0	24862702
19412399-8	2003718	5152606	219902	1696703	236737
17411930-K	0	0	0	6510469	10902040
14400384-4	2062924	16389960	0	21608	0
7283174-1	738333	0	951991	34271109	182999
13547791-K	1037338	218950	84795	0	3876563
11863209-K	78841	1401660	0	3193225	9726690
15837863-K	497632	0	0	7318563	0
7312576-K	2832891	2505209	25671	52620	21947811
7672464-3	2429172	20792671	102042	2120403	0
7624112-K	397069	0	165771	5513588	8801042
15687600-6	38051	1056750	2582720	0	1114180
6845705-K	11885548	1642395	0	2151963	3267559
7164853-6	520000	3659703	0	1766115	10165618
7166418-3	278122	0	22010014	6408627	10241082
10809046-6	84696	2589000	13896874	117686	40018
18569585-3	0	4293391	2031569	2884795	475704
19288450-7	0	323027	0	0	19586677
15998949-2	873443	6660414	6154048	0	29332
8407210-K	3327276	527430	0	0	0
11167128-9	193294	0	6371915	119145	48525
10905471-K	0	2105543	0	8607534	0
17156916-6	382560	39503	46213	621775	7435198
19065426-8	5835155	0	0	0	2888049
14504269-K	2528778	0	2187211	5259032	0
13874845-K	0	615453	184935	7602545	0
11064710-K	0	2121689	0	12176634	0
12071940-K	10593765	2882319	4562931	933209	63152
18893024-K	1413704	1332844	229841	0	0
14202145-6	0	2050928	0	1944841	0
17731688-9	2701655	728910	0	2159960	10164680
7182886-K	11386243	860653	279008	3139946	0
7109646-K	0	22089038	0	1169006	48630
14593020-K	224200	0	0	0	5112714
7477141-0	2546393	2194939	0	1982138	6000552
16794403-2	4576114	0	0	12367755	124963
17158053-1	0	0	2383194	13307910	3582106
11946781-K	811578	0	0	2482915	2881838
6742755-3	16873204	0	0	19465736	0
16103985-K	68118	5585944	3038607	215822	307933
13676279-K	0	0	14378102	403011	0
19341323-5	0	0	108579	421292	7453660
13228241-6	0	394449	541735	7429448	70946
6302168-K	3199200	941593	930922	168208	15007564
7198920-9	0	0	2452007	0	19963566
14526143-4	4029732	4059563	0	241861	0
10922012-8	0	3221865	785074	0	2257818
13143760-K	6018312	0	417279	2490624	801005
16192785-3	507243	829630	0	5733923	0
15540857-1	0	7443188	6384007	0	21666
15317567-K	13053416	151483	2169284	311054	4077962
8212565-9	2954974	0	1221866	5603252	0
8555966-0	0	803426	311534	51246	287068
19675135-K	49459	197043	0	26335	175328
8510919-9	12244877	0	0	85584	0
7768440-1	1808540	927452	1773481	2742659	439370
6802791-5	0	6385432	323762	27270781	44833
11807622-K	559926	26528	0	2577096	0
7484251-4	7832828	0	80240	0	0
9487804-K	45089	9378336	6662811	0	1356303
17519165-K	2531658	148392	908072	621951	0
6425044-6	0	2104202	4872031	676265	0
17392195-K	1804458	1512669	32180	15949891	0
12617417-4	7898217	2230963	0	0	111939
19987784-2	3391015	0	128561	9216763	1207116
17170842-K	1072363	2968438	433417	1827142	0
6679545-6	0	0	0	10257023	10370510
12315364-K	1299267	897688	842335	252474	0
14361779-K	3941895	4929151	845180	2636492	97281
15706765-7	99185	4195211	0	1963835	0
10475586-9	939092	0	0	82061	161650
15645094-6	13293213	176083	2765762	29031	0
6971016-K	2070604	3068738	352635	74436	2097373
7214131-8	339209	278798	283393	13020714	33267
16358133-K	4642457	6830039	4875755	1992976	0
7840991-K	26596988	8338746	0	55351	192551
14268651-0	52141	10806596	2100244	0	515661
6989228-K	0	0	45599	9067307	4701224
16394208-K	131558	83309	0	6918213	62038
19148830-0	31190	11378227	361668	1631308	0
10763017-K	1280556	48946	3922346	2157627	81015
6308941-K	0	910041	0	6315562	3658789
\.


--
-- Data for Name: rentabilidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rentabilidad (id, fondo_a, fondo_b, fondo_c, fondo_d, fondo_e) FROM stdin;
0	0.382	0.317	0.321	0.29	0.266
1	0.399	0.379	0.381	0.324	0.316
2	0.418	0.391	0.393	0.344	0.298
3	0.43	0.418	0.425	0.37	0.336
4	0.343	0.317	0.321	0.29	0.266
5	0.383	0.357	0.35	0.299	0.272
\.


--
-- Name: afiliados afiliados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afiliados
    ADD CONSTRAINT afiliados_pkey PRIMARY KEY (id);


--
-- Name: afp afp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afp
    ADD CONSTRAINT afp_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

