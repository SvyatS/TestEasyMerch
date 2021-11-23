--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO mearchuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO mearchuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO mearchuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO mearchuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO mearchuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO mearchuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO mearchuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO mearchuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO mearchuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO mearchuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO mearchuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO mearchuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: core_category; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.core_category (
    id bigint NOT NULL,
    name character varying(64) NOT NULL,
    parent_id bigint
);


ALTER TABLE public.core_category OWNER TO mearchuser;

--
-- Name: core_category_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.core_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_category_id_seq OWNER TO mearchuser;

--
-- Name: core_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.core_category_id_seq OWNED BY public.core_category.id;


--
-- Name: core_commercialnetwork; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.core_commercialnetwork (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    network_format character varying(128)[] NOT NULL
);


ALTER TABLE public.core_commercialnetwork OWNER TO mearchuser;

--
-- Name: core_commercialnetwork_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.core_commercialnetwork_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_commercialnetwork_id_seq OWNER TO mearchuser;

--
-- Name: core_commercialnetwork_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.core_commercialnetwork_id_seq OWNED BY public.core_commercialnetwork.id;


--
-- Name: core_product; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.core_product (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.core_product OWNER TO mearchuser;

--
-- Name: core_product_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.core_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_product_id_seq OWNER TO mearchuser;

--
-- Name: core_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.core_product_id_seq OWNED BY public.core_product.id;


--
-- Name: core_productavailability; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.core_productavailability (
    id bigint NOT NULL,
    number_in_shop integer NOT NULL,
    product_id bigint NOT NULL,
    shop_id bigint NOT NULL
);


ALTER TABLE public.core_productavailability OWNER TO mearchuser;

--
-- Name: core_productavailability_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.core_productavailability_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_productavailability_id_seq OWNER TO mearchuser;

--
-- Name: core_productavailability_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.core_productavailability_id_seq OWNED BY public.core_productavailability.id;


--
-- Name: core_shop; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.core_shop (
    id bigint NOT NULL,
    format character varying(128) NOT NULL,
    address character varying(256) NOT NULL,
    commercial_network_id bigint NOT NULL
);


ALTER TABLE public.core_shop OWNER TO mearchuser;

--
-- Name: core_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.core_shop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_shop_id_seq OWNER TO mearchuser;

--
-- Name: core_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.core_shop_id_seq OWNED BY public.core_shop.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO mearchuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO mearchuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO mearchuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO mearchuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO mearchuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: mearchuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO mearchuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mearchuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: mearchuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO mearchuser;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: core_category id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_category ALTER COLUMN id SET DEFAULT nextval('public.core_category_id_seq'::regclass);


--
-- Name: core_commercialnetwork id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_commercialnetwork ALTER COLUMN id SET DEFAULT nextval('public.core_commercialnetwork_id_seq'::regclass);


--
-- Name: core_product id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_product ALTER COLUMN id SET DEFAULT nextval('public.core_product_id_seq'::regclass);


--
-- Name: core_productavailability id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_productavailability ALTER COLUMN id SET DEFAULT nextval('public.core_productavailability_id_seq'::regclass);


--
-- Name: core_shop id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_shop ALTER COLUMN id SET DEFAULT nextval('public.core_shop_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add category	7	add_category
26	Can change category	7	change_category
27	Can delete category	7	delete_category
28	Can view category	7	view_category
29	Can add commercial network	8	add_commercialnetwork
30	Can change commercial network	8	change_commercialnetwork
31	Can delete commercial network	8	delete_commercialnetwork
32	Can view commercial network	8	view_commercialnetwork
33	Can add product	9	add_product
34	Can change product	9	change_product
35	Can delete product	9	delete_product
36	Can view product	9	view_product
37	Can add shop	10	add_shop
38	Can change shop	10	change_shop
39	Can delete shop	10	delete_shop
40	Can view shop	10	view_shop
41	Can add product availability	11	add_productavailability
42	Can change product availability	11	change_productavailability
43	Can delete product availability	11	delete_productavailability
44	Can view product availability	11	view_productavailability
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$BBDYeL5VdvAaR1tCHsIJlJ$WFlRswGRnG35RXyIP66EE0x/spoZgENNaLbUKIiCeBU=	2021-11-22 03:41:31.049718+07	t	gg			gg@mail.ru	t	t	2021-11-22 03:41:18.888162+07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: core_category; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.core_category (id, name, parent_id) FROM stdin;
1	Товары	\N
2	Напитки	1
3	Газировки	2
4	Алкоголь	2
5	Вина	4
\.


--
-- Data for Name: core_commercialnetwork; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.core_commercialnetwork (id, name, network_format) FROM stdin;
1	Ашан	{800м,1200м}
2	Перекресток	{Гипер,Супер}
\.


--
-- Data for Name: core_product; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.core_product (id, name, category_id) FROM stdin;
1	Coca cola 0.9л	3
2	Santo Stefano	5
\.


--
-- Data for Name: core_productavailability; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.core_productavailability (id, number_in_shop, product_id, shop_id) FROM stdin;
1	0	1	1
2	100	1	2
3	112	1	3
4	22	1	4
5	50	2	1
6	1000	2	2
7	0	2	3
8	20	2	4
\.


--
-- Data for Name: core_shop; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.core_shop (id, format, address, commercial_network_id) FROM stdin;
1	800м	Никитина 32а	1
3	Гипер	Советская 12	2
4	Супер	Говорова 11	2
2	1200м	Бирюкова 41	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-11-22 03:42:04.248945+07	1	Товары	1	[{"added": {}}]	7	1
2	2021-11-22 03:42:14.808363+07	2	Напитки	1	[{"added": {}}]	7	1
3	2021-11-22 03:42:36.009366+07	3	Газировки	1	[{"added": {}}]	7	1
4	2021-11-22 03:42:49.29233+07	4	Алкоголь	1	[{"added": {}}]	7	1
5	2021-11-22 03:43:01.09398+07	5	Вина	1	[{"added": {}}]	7	1
6	2021-11-22 03:43:20.398878+07	1	Ашан	1	[{"added": {}}]	8	1
7	2021-11-22 03:43:30.000725+07	1	Ашан	2	[{"changed": {"fields": ["Format"]}}]	8	1
8	2021-11-22 03:43:44.42388+07	2	Перекресток	1	[{"added": {}}]	8	1
9	2021-11-22 03:43:58.867671+07	1	Ашан-800м Никитина 32а	1	[{"added": {}}]	10	1
10	2021-11-22 03:44:09.103952+07	2	Ашан-1200м Бирюкова 41	1	[{"added": {}}]	10	1
11	2021-11-22 03:44:19.196005+07	3	Перекресток-Гипер Советская 12	1	[{"added": {}}]	10	1
12	2021-11-22 03:44:29.581363+07	4	Перекресток-Супер Говорова 11	1	[{"added": {}}]	10	1
13	2021-11-22 03:44:54.562261+07	1	Coca cola 0.9л	1	[{"added": {}}]	9	1
14	2021-11-22 03:45:27.895057+07	2	Santo Stefano	1	[{"added": {}}]	9	1
15	2021-11-22 03:45:56.912294+07	1	Coca cola 0.9л 0ш в Ашан на Никитина 32а	1	[{"added": {}}]	11	1
16	2021-11-22 03:46:07.226935+07	2	Coca cola 0.9л 100ш в Ашан на Бирюкова 41	1	[{"added": {}}]	11	1
17	2021-11-22 03:46:17.238585+07	3	Coca cola 0.9л 112ш в Перекресток на Советская 12	1	[{"added": {}}]	11	1
18	2021-11-22 03:46:26.620746+07	4	Coca cola 0.9л 22ш в Перекресток на Говорова 11	1	[{"added": {}}]	11	1
19	2021-11-22 03:46:37.976411+07	5	Santo Stefano 50ш в Ашан на Никитина 32а	1	[{"added": {}}]	11	1
20	2021-11-22 03:46:55.510898+07	6	Santo Stefano 1000ш в Ашан на Бирюкова 41	1	[{"added": {}}]	11	1
21	2021-11-22 03:47:05.12148+07	7	Santo Stefano 0ш в Перекресток на Советская 12	1	[{"added": {}}]	11	1
22	2021-11-22 03:47:16.566271+07	8	Santo Stefano 20ш в Перекресток на Говорова 11	1	[{"added": {}}]	11	1
23	2021-11-22 05:35:24.345098+07	4	Перекресток-Супер Говорова 11	2	[]	10	1
24	2021-11-22 05:35:37.197+07	2	Ашан-1200222 Бирюкова 41	2	[{"changed": {"fields": ["Format"]}}]	10	1
25	2021-11-22 05:35:43.558833+07	2	Ашан-1200м Бирюкова 41	2	[{"changed": {"fields": ["Format"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	category
8	core	commercialnetwork
9	core	product
10	core	shop
11	core	productavailability
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-11-22 03:40:55.708938+07
2	auth	0001_initial	2021-11-22 03:40:55.776472+07
3	admin	0001_initial	2021-11-22 03:40:55.796834+07
4	admin	0002_logentry_remove_auto_add	2021-11-22 03:40:55.808967+07
5	admin	0003_logentry_add_action_flag_choices	2021-11-22 03:40:55.817254+07
6	contenttypes	0002_remove_content_type_name	2021-11-22 03:40:55.836302+07
7	auth	0002_alter_permission_name_max_length	2021-11-22 03:40:55.845782+07
8	auth	0003_alter_user_email_max_length	2021-11-22 03:40:55.855048+07
9	auth	0004_alter_user_username_opts	2021-11-22 03:40:55.862975+07
10	auth	0005_alter_user_last_login_null	2021-11-22 03:40:55.872173+07
11	auth	0006_require_contenttypes_0002	2021-11-22 03:40:55.874399+07
12	auth	0007_alter_validators_add_error_messages	2021-11-22 03:40:55.882354+07
13	auth	0008_alter_user_username_max_length	2021-11-22 03:40:55.894986+07
14	auth	0009_alter_user_last_name_max_length	2021-11-22 03:40:55.904088+07
15	auth	0010_alter_group_name_max_length	2021-11-22 03:40:55.91677+07
16	auth	0011_update_proxy_permissions	2021-11-22 03:40:55.925081+07
17	auth	0012_alter_user_first_name_max_length	2021-11-22 03:40:55.933777+07
18	core	0001_initial	2021-11-22 03:40:55.979035+07
19	sessions	0001_initial	2021-11-22 03:40:55.988834+07
20	core	0002_auto_20211121_2226	2021-11-22 05:26:39.815481+07
21	core	0003_alter_shop_format	2021-11-22 05:32:25.818431+07
22	core	0004_rename_format_commercialnetwork_network_format	2021-11-22 05:34:02.118267+07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: mearchuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
gb2u3vjr8bw4bpgrt0q5bmrfd6xyzzqp	.eJxVjMEOwiAQBf-FsyFQoIBH7_0GsguLVA0kpT0Z_9026UGvM_PemwXY1hK2TkuYE7syyS6_DCE-qR4iPaDeG4-trsuM_Ej4aTufWqLX7Wz_Dgr0sq_JOUNKk0NtwSs0Oee0QykiImZt_SDADpClBzmSgtF6Ey3F6DUZodnnC__TOHk:1moteV:1j26habmfyXyYAAlfuzJsSaqcCRfHMXrsLJRxEhj_CY	2021-12-06 03:41:31.051593+07
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.core_category_id_seq', 5, true);


--
-- Name: core_commercialnetwork_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.core_commercialnetwork_id_seq', 2, true);


--
-- Name: core_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.core_product_id_seq', 2, true);


--
-- Name: core_productavailability_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.core_productavailability_id_seq', 8, true);


--
-- Name: core_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.core_shop_id_seq', 4, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 25, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mearchuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: core_category core_category_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_category
    ADD CONSTRAINT core_category_pkey PRIMARY KEY (id);


--
-- Name: core_commercialnetwork core_commercialnetwork_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_commercialnetwork
    ADD CONSTRAINT core_commercialnetwork_pkey PRIMARY KEY (id);


--
-- Name: core_product core_product_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_product
    ADD CONSTRAINT core_product_pkey PRIMARY KEY (id);


--
-- Name: core_productavailability core_productavailability_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_productavailability
    ADD CONSTRAINT core_productavailability_pkey PRIMARY KEY (id);


--
-- Name: core_shop core_shop_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_shop
    ADD CONSTRAINT core_shop_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: core_category_parent_id_f82a0951; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX core_category_parent_id_f82a0951 ON public.core_category USING btree (parent_id);


--
-- Name: core_product_category_id_b9d8ff9f; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX core_product_category_id_b9d8ff9f ON public.core_product USING btree (category_id);


--
-- Name: core_productavailability_product_id_781d78d4; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX core_productavailability_product_id_781d78d4 ON public.core_productavailability USING btree (product_id);


--
-- Name: core_productavailability_shop_id_ec1a4412; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX core_productavailability_shop_id_ec1a4412 ON public.core_productavailability USING btree (shop_id);


--
-- Name: core_shop_commercial_network_id_6c7d44b1; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX core_shop_commercial_network_id_6c7d44b1 ON public.core_shop USING btree (commercial_network_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: mearchuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_category core_category_parent_id_f82a0951_fk_core_category_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_category
    ADD CONSTRAINT core_category_parent_id_f82a0951_fk_core_category_id FOREIGN KEY (parent_id) REFERENCES public.core_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_product core_product_category_id_b9d8ff9f_fk_core_category_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_product
    ADD CONSTRAINT core_product_category_id_b9d8ff9f_fk_core_category_id FOREIGN KEY (category_id) REFERENCES public.core_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_productavailability core_productavailability_product_id_781d78d4_fk_core_product_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_productavailability
    ADD CONSTRAINT core_productavailability_product_id_781d78d4_fk_core_product_id FOREIGN KEY (product_id) REFERENCES public.core_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_productavailability core_productavailability_shop_id_ec1a4412_fk_core_shop_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_productavailability
    ADD CONSTRAINT core_productavailability_shop_id_ec1a4412_fk_core_shop_id FOREIGN KEY (shop_id) REFERENCES public.core_shop(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_shop core_shop_commercial_network_i_6c7d44b1_fk_core_comm; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.core_shop
    ADD CONSTRAINT core_shop_commercial_network_i_6c7d44b1_fk_core_comm FOREIGN KEY (commercial_network_id) REFERENCES public.core_commercialnetwork(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mearchuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

