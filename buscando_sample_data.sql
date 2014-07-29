--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_location; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_location (
    id integer NOT NULL,
    "POC_firstname" character varying(45) NOT NULL,
    "POC_firstname2" character varying(45),
    "POC_lastname" character varying(45) NOT NULL,
    "POC_lastname2" character varying(45),
    provider_id integer NOT NULL,
    address character varying(140) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    phone character varying(20) NOT NULL,
    is_headquarters boolean NOT NULL,
    hours_open character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.app_location OWNER TO aliya;

--
-- Name: app_location_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_location_id_seq OWNER TO aliya;

--
-- Name: app_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_location_id_seq OWNED BY app_location.id;


--
-- Name: app_location_resources_available; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_location_resources_available (
    id integer NOT NULL,
    location_id integer NOT NULL,
    resource_id integer NOT NULL
);


ALTER TABLE public.app_location_resources_available OWNER TO aliya;

--
-- Name: app_location_resources_available_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_location_resources_available_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_location_resources_available_id_seq OWNER TO aliya;

--
-- Name: app_location_resources_available_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_location_resources_available_id_seq OWNED BY app_location_resources_available.id;


--
-- Name: app_location_resources_needed; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_location_resources_needed (
    id integer NOT NULL,
    location_id integer NOT NULL,
    resource_id integer NOT NULL
);


ALTER TABLE public.app_location_resources_needed OWNER TO aliya;

--
-- Name: app_location_resources_needed_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_location_resources_needed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_location_resources_needed_id_seq OWNER TO aliya;

--
-- Name: app_location_resources_needed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_location_resources_needed_id_seq OWNED BY app_location_resources_needed.id;


--
-- Name: app_provider; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_provider (
    id integer NOT NULL,
    admin_id integer NOT NULL,
    admin_firstname2 character varying(45),
    admin_lastname2 character varying(45),
    name character varying(140) NOT NULL,
    logo character varying(140) NOT NULL,
    "URL" character varying(140) NOT NULL,
    approved boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.app_provider OWNER TO aliya;

--
-- Name: app_provider_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_provider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_provider_id_seq OWNER TO aliya;

--
-- Name: app_provider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_provider_id_seq OWNED BY app_provider.id;


--
-- Name: app_resource; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_resource (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.app_resource OWNER TO aliya;

--
-- Name: app_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_resource_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_resource_id_seq OWNER TO aliya;

--
-- Name: app_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_resource_id_seq OWNED BY app_resource.id;


--
-- Name: app_search; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_search (
    id integer NOT NULL,
    zipcode character varying(10) NOT NULL,
    resource character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.app_search OWNER TO aliya;

--
-- Name: app_search_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_search_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_search_id_seq OWNER TO aliya;

--
-- Name: app_search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_search_id_seq OWNED BY app_search.id;


--
-- Name: app_zipcodecoordinates; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE app_zipcodecoordinates (
    id integer NOT NULL,
    zipcode character varying(10) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);


ALTER TABLE public.app_zipcodecoordinates OWNER TO aliya;

--
-- Name: app_zipcodecoordinates_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE app_zipcodecoordinates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_zipcodecoordinates_id_seq OWNER TO aliya;

--
-- Name: app_zipcodecoordinates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE app_zipcodecoordinates_id_seq OWNED BY app_zipcodecoordinates.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO aliya;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO aliya;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO aliya;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO aliya;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO aliya;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO aliya;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO aliya;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO aliya;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO aliya;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO aliya;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO aliya;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO aliya;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO aliya;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO aliya;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO aliya;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: aliya
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO aliya;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aliya
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: aliya; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO aliya;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location ALTER COLUMN id SET DEFAULT nextval('app_location_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location_resources_available ALTER COLUMN id SET DEFAULT nextval('app_location_resources_available_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location_resources_needed ALTER COLUMN id SET DEFAULT nextval('app_location_resources_needed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_provider ALTER COLUMN id SET DEFAULT nextval('app_provider_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_resource ALTER COLUMN id SET DEFAULT nextval('app_resource_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_search ALTER COLUMN id SET DEFAULT nextval('app_search_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_zipcodecoordinates ALTER COLUMN id SET DEFAULT nextval('app_zipcodecoordinates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Data for Name: app_location; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_location (id, "POC_firstname", "POC_firstname2", "POC_lastname", "POC_lastname2", provider_id, address, latitude, longitude, phone, is_headquarters, hours_open, created_at, updated_at) FROM stdin;
1	Aliya				1	Washington, DC 20012, USA	38.9836326	-77.0391753999999906	202-387-4848	t		2014-07-29 00:11:36.180688-04	2014-07-29 00:11:36.180781-04
2	Aliya				2	Multi-cultural CenterHyattsvilleMD20783	0	0	(301) 431-4185	t	9am – 5pm, M-F	2014-07-29 00:11:36.378161-04	2014-07-29 00:11:36.378235-04
3	Aliya				2	Welcome and Worker CenterSilver SpringMD20903	0	0	(301) 431-4177	t	6am-2pm Lunes / Mondays 8am-4pm Martes a Viernes / Tuesday through Friday 9am-1pm Sabados / Saturdays	2014-07-29 00:11:36.589227-04	2014-07-29 00:11:36.589304-04
4	Aliya				2	Pine Ridge's Community CenterSilver SpringMD20901	0	0	(301) 445-3139	t	8am-4pm Martes a Viernes / Tuesday through Friday 8:30am-4:30pm Sabados / Saturdays	2014-07-29 00:11:36.829825-04	2014-07-29 00:11:36.829899-04
5	Aliya				2	Wheaton's Welcome and Worker CenterWheatonMD20902	0	0	(240) 491-5772	t	Schedule 6am-2pm Lunes / Mondays 8am-4pm Martes a Viernes / Tuesday through Friday	2014-07-29 00:11:37.0389-04	2014-07-29 00:11:37.038977-04
6	Aliya				3	George Washington University -Law Department, 1919 Pennsylvania Avenue Northwest #2, Washington, DC 20006, USA	38.9006990999999971	-77.0443162000000115	202-331-3320	t		2014-07-29 00:11:37.363339-04	2014-07-29 00:11:37.363415-04
7	Aliya				4	Columbia Heights Pharmacy, 3316 14th Street Northwest, Washington, DC 20010, USA	38.9307330999999976	-77.0329521999999969	(202) 939-2420	t		2014-07-29 00:11:37.633523-04	2014-07-29 00:11:37.633598-04
8	Aliya				4	Washington, DC 20001, USA	38.8978873999999877	-77.0228017000000023	(202) 772-4352	t		2014-07-29 00:11:37.978823-04	2014-07-29 00:11:37.9789-04
9	Aliya				5	1 C Street Southeast, Washington, DC 20003, USA	38.8860101	-77.0090062000000017	(202) 328-9799	t		2014-07-29 00:11:38.384135-04	2014-07-29 00:11:38.38416-04
10	Aliya				6	Arlington, VA 22202, USA	38.8501078000000035	-77.0391753999999906		t		2014-07-29 00:11:38.566673-04	2014-07-29 00:11:38.566698-04
11	Aliya				7	Washington, DC 20011, USA	38.9502497000000005	-77.0161435999999924	(202) 722-7077	t		2014-07-29 00:11:38.758685-04	2014-07-29 00:11:38.75876-04
12	Aliya				8	Washington, DC 20009, USA	38.9191484999999986	-77.0362966999999941	(202) 939-7627	t		2014-07-29 00:11:38.94855-04	2014-07-29 00:11:38.948625-04
13	Aliya				9	Washington, DC 20005, USA	38.9082289999999986	-77.0305389999999903		t		2014-07-29 00:11:39.140361-04	2014-07-29 00:11:39.14044-04
14	Aliya				10	Washington, DC 20052, USA	38.8993372999999991	-77.0485307999999947	(202) 994-7463	t		2014-07-29 00:11:39.458023-04	2014-07-29 00:11:39.458047-04
15	Aliya				11	United Ca Bank Data Processing Ops, Los Angeles, CA 90014, USA	34.0697329999999994	-118.292298000000002	213.614.1165	t		2014-07-29 00:11:39.719282-04	2014-07-29 00:11:39.719357-04
16	Aliya				12	International Student House of Washington DC, 1825 R Street Northwest, Washington, DC 20009, USA	38.9127896999999976	-77.0423371999999915	202-560-5237	t		2014-07-29 00:11:40.047675-04	2014-07-29 00:11:40.047752-04
17	Aliya				13	San Francisco, CA 94102, USA	37.7786870999999991	-122.421242399999997	(415) 989-2151	t		2014-07-29 00:11:40.247169-04	2014-07-29 00:11:40.247249-04
18	Aliya				2	Prince George's Welcome & Worker CenterHyattsvilleMD20783	0	0	2404915784	t	6am-2pm Mondays; 8am-4pm Tuesday through Friday; 8am-2pm Saturdays	2014-07-29 00:11:40.75615-04	2014-07-29 00:11:40.756228-04
19	Aliya				15	Washington, DC 20036, USA	38.9080786000000032	-77.0406146999999919	202 986-2200	t		2014-07-29 00:11:40.9281-04	2014-07-29 00:11:40.928177-04
20	Aliya				2	Shady Grove's Welcome & Worker CenterRockvilleMD20855	0	0	2404915780	t	6am-2pm Mondays; 8am-4pm Tuesday through Friday	2014-07-29 00:11:41.118538-04	2014-07-29 00:11:41.118615-04
21	Aliya				2	Baltimore's Welcome & Worker CenterBaltimoreMD21231	0	0	4107322694	t	6am-2pm Mondays; 8am-4pm Tuesday through Friday	2014-07-29 00:11:41.366071-04	2014-07-29 00:11:41.366144-04
22	Aliya				17	Villa Maria at Saint Vincents Center, Lutherville-Timonium, MD 21093, USA	39.4584331000000006	-76.6015306999999979	4102524000	t		2014-07-29 00:11:41.543561-04	2014-07-29 00:11:41.543637-04
23	Aliya				18	Chicago, IL 60625, USA	41.9711068000000012	-87.7024816999999928	773.583.9191	t		2014-07-29 00:11:41.700694-04	2014-07-29 00:11:41.700767-04
24	Aliya				19	401 East Ontario, Chicago, IL 60611, USA	41.8933000000000035	-87.6169000000000011	(773) 989-5647	t	8:30 a.m. - 4:30 p.m. Monday - Friday	2014-07-29 00:11:42.004392-04	2014-07-29 00:11:42.004466-04
25	Aliya				20	Chicago, IL 60604, USA	41.8784851000000131	-87.6278930000000003	312- 660-1300	t		2014-07-29 00:11:42.182777-04	2014-07-29 00:11:42.182853-04
26	Aliya				21	Buena Park, CA 90621, USA	33.8794821999999982	-117.989330100000004	714.523.4454	t		2014-07-29 00:11:42.344033-04	2014-07-29 00:11:42.344111-04
27	Aliya				22	Events And Adventures Phoenix, 1121 East Missouri Avenue #125, Phoenix, AZ 85014, USA	33.5162758999999966	-112.057555600000001	602.271.9904	t	9:00 am - 5:00 pm	2014-07-29 00:11:42.642924-04	2014-07-29 00:11:42.642997-04
28	Aliya				23	Washington, DC 20009, USA	38.9191484999999986	-77.0362966999999941	202-238-9355	t		2014-07-29 00:11:42.80554-04	2014-07-29 00:11:42.805614-04
29	Aliya				24	Austin Graduate School of Theology, 7640 Guadalupe Street, Austin, TX 78752, USA	30.3439043999999996	-97.7116991999999982	(512) 472-9472	t		2014-07-29 00:11:43.190059-04	2014-07-29 00:11:43.190138-04
30	Aliya				25	Washington, DC 20001, USA	38.9120679999999979	-77.0190228000000019		t		2014-07-29 00:11:43.378492-04	2014-07-29 00:11:43.378571-04
\.


--
-- Name: app_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_location_id_seq', 30, true);


--
-- Data for Name: app_location_resources_available; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_location_resources_available (id, location_id, resource_id) FROM stdin;
\.


--
-- Name: app_location_resources_available_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_location_resources_available_id_seq', 1, false);


--
-- Data for Name: app_location_resources_needed; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_location_resources_needed (id, location_id, resource_id) FROM stdin;
\.


--
-- Name: app_location_resources_needed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_location_resources_needed_id_seq', 1, false);


--
-- Data for Name: app_provider; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_provider (id, admin_id, admin_firstname2, admin_lastname2, name, logo, "URL", approved, created_at, updated_at) FROM stdin;
1	1	\N	\N	Ayuda	http://ayuda.com/images/logo.gif	http://www.ayuda.org	t	2014-07-29 00:08:28.612617-04	2014-07-29 00:08:28.612641-04
2	1	\N	\N	Casa de Maryland	http://www.quintonreport.com/wp-content/uploads/2014/07/casa-de-md.jpg	http://casademaryland.org/	t	2014-07-29 00:08:28.614404-04	2014-07-29 00:08:28.61442-04
3	1	\N	\N	CAIR Coalition	https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/t1.0-1/c225.40.450.450/s160x160/8338_176788269158940_37074665_n.jpg	https://www.caircoalition.org/	t	2014-07-29 00:08:28.615894-04	2014-07-29 00:08:28.615952-04
4	1	\N	\N	Catholic Charities of Washington, D.C.	http://www.catholiccharitiesdc.org/image/brand-update-3-21-2014/englishlogo.png	http://www.catholiccharitiesdc.org/	t	2014-07-29 00:08:28.617332-04	2014-07-29 00:08:28.617351-04
5	1	\N	\N	Central American Resource Center	http://www.carecendc.org/wp-content/uploads/2012/08/header-exact1.gif	http://www.carecendc.org/wp-content/uploads/2012/08/header-exact1.gif	t	2014-07-29 00:08:28.61873-04	2014-07-29 00:08:28.618748-04
6	1	\N	\N	USCRI: U.S. Committee for Refugees and Immigrants	http://www.refugees.org/new-logo.gif	http://www.refugees.org/	t	2014-07-29 00:08:28.620061-04	2014-07-29 00:08:28.620079-04
7	1	\N	\N	Emory United Methodist Church - Justice For Our Neighbors	http://njfon.org/vahq/wp-content/uploads/2013/04/copy-copy-cropped-njfonlogo-e1366040700952.png	http://www.njfon.org/	t	2014-07-29 00:08:28.621413-04	2014-07-29 00:08:28.621432-04
8	1	\N	\N	Whitman-Walker Health	http://www.whitman-walker.org/view.image?Id=811	http://www.whitman-walker.org/	t	2014-07-29 00:08:28.62278-04	2014-07-29 00:08:28.622799-04
9	1	\N	\N	KIND: Kids In Need of Defense		http://www.supportkind.org/en/	t	2014-07-29 00:08:28.624185-04	2014-07-29 00:08:28.624204-04
10	1	\N	\N	George Washington University Law School Immigration Clinic	http://www.law.gwu.edu/SiteCollectionImages/LocalBrand/logo_law_small.jpg	http://www.law.gwu.edu/Academics/EL/clinics/immigration/Pages/Overview.aspx	t	2014-07-29 00:08:28.625546-04	2014-07-29 00:08:28.625565-04
11	1	\N	\N	Immigrant Center for Women and Children	http://icwclaw.org/wp-content/uploads/2012/02/icwc-logo-300.png	http://icwclaw.org/	t	2014-07-29 00:08:28.626885-04	2014-07-29 00:08:28.626904-04
12	1	\N	\N	Mil Mujeres Legal Services	http://www.milmujeres.org/images/banner_logogrande-06.gif	http://www.milmujeres.org/	t	2014-07-29 00:08:28.628179-04	2014-07-29 00:08:28.628197-04
13	1	\N	\N	Refugee Transitions	http://static.squarespace.com/static/5032cfc0e4b00d577d18b5e8/t/52f92db7e4b0b9a63c4ffda7/1406239504583/?format=1500w	http://www.reftrans.org/	t	2014-07-29 00:08:28.629489-04	2014-07-29 00:08:28.629508-04
14	1	\N	\N	Casa de Maryland	http://www.quintonreport.com/wp-content/uploads/2014/07/casa-de-md.jpg	http://casademaryland.org/	t	2014-07-29 00:08:28.630778-04	2014-07-29 00:08:28.630796-04
15	1	\N	\N	Food Research and Action Center	http://frac.org/wp-content/themes/frac/images/sitewide/logo.gif	http://frac.org/federal-foodnutrition-programs/	t	2014-07-29 00:08:28.632428-04	2014-07-29 00:08:28.632475-04
16	1	\N	\N	Casa de Maryland	http://www.quintonreport.com/wp-content/uploads/2014/07/casa-de-md.jpg	http://casademaryland.org/	t	2014-07-29 00:08:28.634644-04	2014-07-29 00:08:28.634691-04
17	1	\N	\N	Catholic Charities of Baltimore	http://www.catholiccharities-md.org/assets/images/ccmd_logo_2013.png	http://www.catholiccharities-md.org/st-vincents-villa/	t	2014-07-29 00:08:28.636948-04	2014-07-29 00:08:28.636994-04
18	1	\N	\N	World Relief Chicago	http://worldreliefchicago.org/wp-content/uploads/2012/10/WR_CHICAGO_RGB_POS_HOR.png	http://worldreliefchicago.org/	t	2014-07-29 00:08:28.639219-04	2014-07-29 00:08:28.639266-04
19	1	\N	\N	RefugeeOne	http://www.refugeeone.org/uploads/1/2/8/1/12814267/6069722.png	http://www.refugeeone.org/	t	2014-07-29 00:08:28.641712-04	2014-07-29 00:08:28.64177-04
20	1	\N	\N	Heartland Alliance for Human Needs and Human Rights	http://www.heartlandalliance.org/assets/wrapper_clean/heartland_alliance_logo.png	http://www.heartlandalliance.org/	t	2014-07-29 00:08:28.644308-04	2014-07-29 00:08:28.644366-04
21	1	\N	\N	Giving Children Hope		http://gchope.org/	t	2014-07-29 00:08:28.646839-04	2014-07-29 00:08:28.646898-04
22	1	\N	\N	Tumbleweed(Casa de Suenos)		http://www.tumbleweed.org/casa_desuenos.php	t	2014-07-29 00:08:28.648828-04	2014-07-29 00:08:28.648842-04
23	1	\N	\N	Multicultural Community Service	http://www.mcsdc.org/images/logo/0b7e323da979b2c2f989f0d38a5f7674.png?template=eug-12&colorScheme=purple&header=&button=buttons1&.png	http://www.mcsdc.org/page2.html	t	2014-07-29 00:08:28.650097-04	2014-07-29 00:08:28.650111-04
24	1	\N	\N	Refugee Services of Texas	http://www.rstx.org/uploads/2/3/8/1/23811632/1380070106.png	http://www.rstx.org/austin.html	t	2014-07-29 00:08:28.651379-04	2014-07-29 00:08:28.651393-04
25	1	\N	\N	Bread for the City	http://www.breadforthecity.org/wp-content/themes/armadillov2/images/bftcLogo.png	http://www.breadforthecity.org/	t	2014-07-29 00:08:28.652614-04	2014-07-29 00:08:28.652628-04
\.


--
-- Name: app_provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_provider_id_seq', 25, true);


--
-- Data for Name: app_resource; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_resource (id, name) FROM stdin;
1	food
2	clothing
3	legal services
4	transportation
5	medical care
6	education and enrollment
7	religious services
8	counseling
9	housing
\.


--
-- Name: app_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_resource_id_seq', 9, true);


--
-- Data for Name: app_search; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_search (id, zipcode, resource, created_at, updated_at) FROM stdin;
1	20010	Food	2014-07-29 00:09:13.691555-04	2014-07-29 00:09:13.69158-04
2	20010	Clothing	2014-07-29 00:09:21.857036-04	2014-07-29 00:09:21.857062-04
\.


--
-- Name: app_search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_search_id_seq', 2, true);


--
-- Data for Name: app_zipcodecoordinates; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY app_zipcodecoordinates (id, zipcode, latitude, longitude) FROM stdin;
1	20010	38.9339045999999982	-77.0305389999999903
\.


--
-- Name: app_zipcodecoordinates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('app_zipcodecoordinates_id_seq', 1, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add provider	7	add_provider
20	Can change provider	7	change_provider
21	Can delete provider	7	delete_provider
22	Can add resource	8	add_resource
23	Can change resource	8	change_resource
24	Can delete resource	8	delete_resource
25	Can add location	9	add_location
26	Can change location	9	change_location
27	Can delete location	9	delete_location
28	Can add zipcode coordinates	10	add_zipcodecoordinates
29	Can change zipcode coordinates	10	change_zipcodecoordinates
30	Can delete zipcode coordinates	10	delete_zipcodecoordinates
31	Can add search	11	add_search
32	Can change search	11	change_search
33	Can delete search	11	delete_search
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$RMk83zqE1uH8$MsYpADcPoqD5pyrJPXkQ4Xa+KKHju/xppPRe/myfYRY=	2014-07-29 00:09:31.434025-04	t	aliya			aliya@codeforprogress.org	t	t	2014-07-29 00:07:50.247422-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	provider	app	provider
8	resource	app	resource
9	location	app	location
10	zipcode coordinates	app	zipcodecoordinates
11	search	app	search
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aliya
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: aliya
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
nmcuueh61ybznmosoxsq6txmz3t7ptk4	OTEwM2Y5ZTM1ZjdkNWNiYWQwMTkwZjU0YjVmMWVhYzJiOWE0ZTZiYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-08-12 00:09:31.435817-04
\.


--
-- Name: app_location_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_location
    ADD CONSTRAINT app_location_pkey PRIMARY KEY (id);


--
-- Name: app_location_resources_available_location_id_resource_id_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_location_resources_available
    ADD CONSTRAINT app_location_resources_available_location_id_resource_id_key UNIQUE (location_id, resource_id);


--
-- Name: app_location_resources_available_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_location_resources_available
    ADD CONSTRAINT app_location_resources_available_pkey PRIMARY KEY (id);


--
-- Name: app_location_resources_needed_location_id_resource_id_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_location_resources_needed
    ADD CONSTRAINT app_location_resources_needed_location_id_resource_id_key UNIQUE (location_id, resource_id);


--
-- Name: app_location_resources_needed_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_location_resources_needed
    ADD CONSTRAINT app_location_resources_needed_pkey PRIMARY KEY (id);


--
-- Name: app_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_provider
    ADD CONSTRAINT app_provider_pkey PRIMARY KEY (id);


--
-- Name: app_resource_name_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_resource
    ADD CONSTRAINT app_resource_name_key UNIQUE (name);


--
-- Name: app_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_resource
    ADD CONSTRAINT app_resource_pkey PRIMARY KEY (id);


--
-- Name: app_search_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_search
    ADD CONSTRAINT app_search_pkey PRIMARY KEY (id);


--
-- Name: app_zipcodecoordinates_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY app_zipcodecoordinates
    ADD CONSTRAINT app_zipcodecoordinates_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: aliya; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: app_location_provider_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_location_provider_id ON app_location USING btree (provider_id);


--
-- Name: app_location_resources_available_location_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_location_resources_available_location_id ON app_location_resources_available USING btree (location_id);


--
-- Name: app_location_resources_available_resource_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_location_resources_available_resource_id ON app_location_resources_available USING btree (resource_id);


--
-- Name: app_location_resources_needed_location_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_location_resources_needed_location_id ON app_location_resources_needed USING btree (location_id);


--
-- Name: app_location_resources_needed_resource_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_location_resources_needed_resource_id ON app_location_resources_needed USING btree (resource_id);


--
-- Name: app_provider_admin_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_provider_admin_id ON app_provider USING btree (admin_id);


--
-- Name: app_resource_name_like; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX app_resource_name_like ON app_resource USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: aliya; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: app_location_provider_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location
    ADD CONSTRAINT app_location_provider_id_fkey FOREIGN KEY (provider_id) REFERENCES app_provider(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_location_resources_available_resource_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location_resources_available
    ADD CONSTRAINT app_location_resources_available_resource_id_fkey FOREIGN KEY (resource_id) REFERENCES app_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_location_resources_needed_resource_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location_resources_needed
    ADD CONSTRAINT app_location_resources_needed_resource_id_fkey FOREIGN KEY (resource_id) REFERENCES app_resource(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_provider_admin_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_provider
    ADD CONSTRAINT app_provider_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: location_id_refs_id_d764a89c; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location_resources_needed
    ADD CONSTRAINT location_id_refs_id_d764a89c FOREIGN KEY (location_id) REFERENCES app_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: location_id_refs_id_ddea12ea; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY app_location_resources_available
    ADD CONSTRAINT location_id_refs_id_ddea12ea FOREIGN KEY (location_id) REFERENCES app_location(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: aliya
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

