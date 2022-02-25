--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2022-02-25 16:21:41

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
-- TOC entry 2 (class 3079 OID 24819)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 24680)
-- Name: xi_sa_fungsi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_fungsi (
    id_fungsi smallint NOT NULL,
    nama_fungsi character varying(255) NOT NULL,
    label_fungsi character varying(255) NOT NULL,
    url_fungsi character varying(255) NOT NULL,
    deskripsi_fungsi character varying(255) NOT NULL,
    id_jenis_fungsi smallint NOT NULL,
    id_level_akses smallint,
    create_by character varying(255) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_ip character varying(20) NOT NULL,
    mod_by character varying(255) NOT NULL,
    mod_date timestamp without time zone NOT NULL,
    mod_ip character varying(20) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_fungsi OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 33128)
-- Name: ac_xi_sa_fungsi; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_fungsi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_fungsi OWNER TO postgres;

--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 237
-- Name: ac_xi_sa_fungsi; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_fungsi OWNED BY public.xi_sa_fungsi.id_fungsi;


--
-- TOC entry 236 (class 1259 OID 33125)
-- Name: ac_xi_sa_group; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_group
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_group OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24690)
-- Name: xi_sa_group_privileges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_group_privileges (
    id_group_privileges smallint NOT NULL,
    id_group smallint NOT NULL,
    id_rules smallint NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_group_privileges OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 33171)
-- Name: ac_xi_sa_group_privileges; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_group_privileges
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_group_privileges OWNER TO postgres;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 241
-- Name: ac_xi_sa_group_privileges; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_group_privileges OWNED BY public.xi_sa_group_privileges.id_group_privileges;


--
-- TOC entry 214 (class 1259 OID 24693)
-- Name: xi_sa_jenis_fungsi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_jenis_fungsi (
    id_jenis_fungsi smallint NOT NULL,
    jenis_fungsi character varying(100) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_jenis_fungsi OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 33248)
-- Name: ac_xi_sa_jenis_fungsi; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_jenis_fungsi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_jenis_fungsi OWNER TO postgres;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 246
-- Name: ac_xi_sa_jenis_fungsi; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_jenis_fungsi OWNED BY public.xi_sa_jenis_fungsi.id_jenis_fungsi;


--
-- TOC entry 215 (class 1259 OID 24696)
-- Name: xi_sa_kontrol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_kontrol (
    id_kontrol smallint NOT NULL,
    nama_kontrol character varying(255) NOT NULL,
    label_kontrol character varying(255) NOT NULL,
    url_kontrol character varying(255) NOT NULL,
    deskripsi_kontrol character varying(255) NOT NULL,
    create_by character varying(255) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_ip character varying(20) NOT NULL,
    mod_by character varying(255) NOT NULL,
    mod_date timestamp without time zone NOT NULL,
    mod_ip character varying(20) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_kontrol OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 33140)
-- Name: ac_xi_sa_kontrol; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_kontrol
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_kontrol OWNER TO postgres;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 238
-- Name: ac_xi_sa_kontrol; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_kontrol OWNED BY public.xi_sa_kontrol.id_kontrol;


--
-- TOC entry 216 (class 1259 OID 24701)
-- Name: xi_sa_level_akses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_level_akses (
    id_level_akses smallint NOT NULL,
    level_akses character varying(100) NOT NULL,
    nick_level character(3) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_level_akses OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 33256)
-- Name: ac_xi_sa_level_akses; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_level_akses
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_level_akses OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 247
-- Name: ac_xi_sa_level_akses; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_level_akses OWNED BY public.xi_sa_level_akses.id_level_akses;


--
-- TOC entry 217 (class 1259 OID 24709)
-- Name: xi_sa_log_login; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_log_login (
    id_log smallint NOT NULL,
    username character varying(50) NOT NULL,
    login_time integer NOT NULL,
    ip_address character varying(20) NOT NULL,
    user_agent character varying(200) NOT NULL
);


ALTER TABLE public.xi_sa_log_login OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 33233)
-- Name: ac_xi_sa_log_login; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_log_login
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_log_login OWNER TO postgres;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 245
-- Name: ac_xi_sa_log_login; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_log_login OWNED BY public.xi_sa_log_login.id_log;


--
-- TOC entry 218 (class 1259 OID 24715)
-- Name: xi_sa_log_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_log_session (
    id_log_session smallint NOT NULL,
    id_users smallint NOT NULL,
    username character varying(50) NOT NULL,
    login_time integer NOT NULL,
    ip_address character varying(20) NOT NULL,
    user_agent character varying(255) NOT NULL,
    id_status smallint NOT NULL,
    session_id character varying(255) NOT NULL
);


ALTER TABLE public.xi_sa_log_session OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24799)
-- Name: ac_xi_sa_log_session; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_log_session
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_log_session OWNER TO postgres;

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 228
-- Name: ac_xi_sa_log_session; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_log_session OWNED BY public.xi_sa_log_session.id_log_session;


--
-- TOC entry 219 (class 1259 OID 24720)
-- Name: xi_sa_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_menu (
    id_menu smallint NOT NULL,
    title_menu character varying(55) NOT NULL,
    url_menu character varying(55) NOT NULL,
    icon_menu character varying(55) NOT NULL,
    order_menu smallint NOT NULL,
    id_rules smallint NOT NULL,
    parent_id smallint NOT NULL,
    is_parent character varying(55) NOT NULL,
    create_by character varying(55) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_ip character varying(20) NOT NULL,
    mod_by character varying(55) NOT NULL,
    mod_date timestamp without time zone NOT NULL,
    mod_ip character varying(20) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_menu OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 33180)
-- Name: ac_xi_sa_menu; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_menu
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_menu OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 242
-- Name: ac_xi_sa_menu; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_menu OWNED BY public.xi_sa_menu.id_menu;


--
-- TOC entry 220 (class 1259 OID 24725)
-- Name: xi_sa_module; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_module (
    id_module smallint NOT NULL,
    nama_module character varying(255) NOT NULL,
    label_module character varying(255) NOT NULL,
    url_module character varying(255) NOT NULL,
    deskripsi_module character varying(255) NOT NULL,
    create_by character varying(255) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_ip character varying(20) NOT NULL,
    mod_by character varying(255) NOT NULL,
    mod_date timestamp without time zone NOT NULL,
    mod_ip character varying(20) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_module OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 33152)
-- Name: ac_xi_sa_module; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_module
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_module OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 239
-- Name: ac_xi_sa_module; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_module OWNED BY public.xi_sa_module.id_module;


--
-- TOC entry 221 (class 1259 OID 24730)
-- Name: xi_sa_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_rules (
    id_rules smallint NOT NULL,
    id_module smallint NOT NULL,
    id_kontrol smallint NOT NULL,
    id_fungsi smallint NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_rules OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 33162)
-- Name: ac_xi_sa_rules; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_rules
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_rules OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 240
-- Name: ac_xi_sa_rules; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_rules OWNED BY public.xi_sa_rules.id_rules;


--
-- TOC entry 224 (class 1259 OID 24741)
-- Name: xi_sa_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_users (
    id_users smallint NOT NULL,
    token character varying(32) NOT NULL,
    unit_id smallint NOT NULL,
    unit_id_name character varying(255),
    username character varying(50) NOT NULL,
    password character varying(250) NOT NULL,
    email character varying(100) NOT NULL,
    fullname character varying(255) NOT NULL,
    foto_profile character varying(50) NOT NULL,
    blokir smallint NOT NULL,
    id_status smallint NOT NULL,
    validate_email_code character varying(100) NOT NULL,
    validate_email_status smallint NOT NULL,
    reset_password_code character varying(100) NOT NULL,
    reset_password_status smallint NOT NULL,
    reset_password_expired smallint NOT NULL,
    create_by character varying(255) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_ip character varying(20) NOT NULL,
    mod_by character varying(255) NOT NULL,
    mod_date timestamp without time zone NOT NULL,
    mod_ip character varying(20) NOT NULL
);


ALTER TABLE public.xi_sa_users OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN xi_sa_users.foto_profile; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.xi_sa_users.foto_profile IS 'Foto Profile';


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN xi_sa_users.blokir; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.xi_sa_users.blokir IS '0=diblokir, 1=tidak diblokir';


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 224
-- Name: COLUMN xi_sa_users.id_status; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.xi_sa_users.id_status IS '0=Tidak Aktif, 1=Aktif';


--
-- TOC entry 243 (class 1259 OID 33199)
-- Name: ac_xi_sa_users; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_users
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_users OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 243
-- Name: ac_xi_sa_users; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_users OWNED BY public.xi_sa_users.id_users;


--
-- TOC entry 225 (class 1259 OID 24746)
-- Name: xi_sa_users_default_pass; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_users_default_pass (
    id_default_pass smallint NOT NULL,
    id_users smallint NOT NULL,
    pass_plain character(100) NOT NULL,
    updated character varying(100) NOT NULL
);


ALTER TABLE public.xi_sa_users_default_pass OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 33215)
-- Name: ac_xi_sa_users_default_pass; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_users_default_pass
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_users_default_pass OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 244
-- Name: ac_xi_sa_users_default_pass; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_users_default_pass OWNED BY public.xi_sa_users_default_pass.id_default_pass;


--
-- TOC entry 226 (class 1259 OID 24749)
-- Name: xi_sa_users_privileges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_users_privileges (
    id_users_privileges smallint NOT NULL,
    id_users smallint NOT NULL,
    id_group smallint NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_users_privileges OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 33106)
-- Name: ac_xi_sa_users_privileges; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_users_privileges
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_users_privileges OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 234
-- Name: ac_xi_sa_users_privileges; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_users_privileges OWNED BY public.xi_sa_users_privileges.id_users_privileges;


--
-- TOC entry 227 (class 1259 OID 24752)
-- Name: xi_sa_white_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_white_list (
    id_white_list smallint NOT NULL,
    module_name character varying(100) NOT NULL,
    class_name character varying(100) NOT NULL,
    method_name character varying(100) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_white_list OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 33108)
-- Name: ac_xi_sa_white_list; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ac_xi_sa_white_list
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ac_xi_sa_white_list OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 235
-- Name: ac_xi_sa_white_list; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ac_xi_sa_white_list OWNED BY public.xi_sa_white_list.id_white_list;


--
-- TOC entry 210 (class 1259 OID 24675)
-- Name: xi_sa_ci_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_ci_session (
    id character varying(128) NOT NULL,
    ip_address character varying(45) NOT NULL,
    "timestamp" integer NOT NULL,
    data text NOT NULL
);


ALTER TABLE public.xi_sa_ci_session OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24685)
-- Name: xi_sa_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_group (
    id_group smallint DEFAULT nextval('public.ac_xi_sa_group'::regclass) NOT NULL,
    nama_group character varying(255) NOT NULL,
    id_level_akses smallint NOT NULL,
    id_upk smallint,
    create_by character varying(255) NOT NULL,
    create_date timestamp without time zone NOT NULL,
    create_ip character varying(20) NOT NULL,
    mod_by character varying(255) NOT NULL,
    mod_date timestamp without time zone NOT NULL,
    mod_ip character varying(20) NOT NULL,
    id_status smallint NOT NULL
);


ALTER TABLE public.xi_sa_group OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24733)
-- Name: xi_sa_setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_setting (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    app_author character varying(255) NOT NULL,
    app_description text NOT NULL,
    app_year character(4) NOT NULL,
    app_icon character varying(200) NOT NULL,
    app_favicon character varying(200) NOT NULL,
    app_keywords text NOT NULL,
    app_versi character(5) NOT NULL
);


ALTER TABLE public.xi_sa_setting OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24738)
-- Name: xi_sa_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.xi_sa_status (
    id_status character(2) NOT NULL,
    nm_status character varying(100) NOT NULL
);


ALTER TABLE public.xi_sa_status OWNER TO postgres;

--
-- TOC entry 3288 (class 2604 OID 33138)
-- Name: xi_sa_fungsi id_fungsi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_fungsi ALTER COLUMN id_fungsi SET DEFAULT nextval('public.ac_xi_sa_fungsi'::regclass);


--
-- TOC entry 3290 (class 2604 OID 33174)
-- Name: xi_sa_group_privileges id_group_privileges; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_group_privileges ALTER COLUMN id_group_privileges SET DEFAULT nextval('public.ac_xi_sa_group_privileges'::regclass);


--
-- TOC entry 3291 (class 2604 OID 33249)
-- Name: xi_sa_jenis_fungsi id_jenis_fungsi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_jenis_fungsi ALTER COLUMN id_jenis_fungsi SET DEFAULT nextval('public.ac_xi_sa_jenis_fungsi'::regclass);


--
-- TOC entry 3292 (class 2604 OID 33143)
-- Name: xi_sa_kontrol id_kontrol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_kontrol ALTER COLUMN id_kontrol SET DEFAULT nextval('public.ac_xi_sa_kontrol'::regclass);


--
-- TOC entry 3293 (class 2604 OID 33257)
-- Name: xi_sa_level_akses id_level_akses; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_level_akses ALTER COLUMN id_level_akses SET DEFAULT nextval('public.ac_xi_sa_level_akses'::regclass);


--
-- TOC entry 3294 (class 2604 OID 33241)
-- Name: xi_sa_log_login id_log; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_log_login ALTER COLUMN id_log SET DEFAULT nextval('public.ac_xi_sa_log_login'::regclass);


--
-- TOC entry 3295 (class 2604 OID 33540)
-- Name: xi_sa_log_session id_log_session; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_log_session ALTER COLUMN id_log_session SET DEFAULT nextval('public.ac_xi_sa_log_session'::regclass);


--
-- TOC entry 3296 (class 2604 OID 33183)
-- Name: xi_sa_menu id_menu; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_menu ALTER COLUMN id_menu SET DEFAULT nextval('public.ac_xi_sa_menu'::regclass);


--
-- TOC entry 3297 (class 2604 OID 33155)
-- Name: xi_sa_module id_module; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_module ALTER COLUMN id_module SET DEFAULT nextval('public.ac_xi_sa_module'::regclass);


--
-- TOC entry 3298 (class 2604 OID 33165)
-- Name: xi_sa_rules id_rules; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_rules ALTER COLUMN id_rules SET DEFAULT nextval('public.ac_xi_sa_rules'::regclass);


--
-- TOC entry 3299 (class 2604 OID 33207)
-- Name: xi_sa_users id_users; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users ALTER COLUMN id_users SET DEFAULT nextval('public.ac_xi_sa_users'::regclass);


--
-- TOC entry 3300 (class 2604 OID 33216)
-- Name: xi_sa_users_default_pass id_default_pass; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_default_pass ALTER COLUMN id_default_pass SET DEFAULT nextval('public.ac_xi_sa_users_default_pass'::regclass);


--
-- TOC entry 3301 (class 2604 OID 33107)
-- Name: xi_sa_users_privileges id_users_privileges; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_privileges ALTER COLUMN id_users_privileges SET DEFAULT nextval('public.ac_xi_sa_users_privileges'::regclass);


--
-- TOC entry 3302 (class 2604 OID 33115)
-- Name: xi_sa_white_list id_white_list; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_white_list ALTER COLUMN id_white_list SET DEFAULT nextval('public.ac_xi_sa_white_list'::regclass);


--
-- TOC entry 3489 (class 0 OID 24675)
-- Dependencies: 210
-- Data for Name: xi_sa_ci_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_ci_session (id, ip_address, "timestamp", data) FROM stdin;
bvah872arr0trhin8mbrokcapdvlotup	::1	1645774883	X19jaV9sYXN0X3JlZ2VuZXJhdGV8aToxNjQ1Nzc0ODgzOw==
jid5f3ssr1k6svn7o405kv6hudi6jm84	::1	1645774885	X19jaV9sYXN0X3JlZ2VuZXJhdGV8aToxNjQ1Nzc0ODg1Ow==
0odhah74oapkpdgrur3bbeeh1l6e522j	::1	1645775402	X19jaV9sYXN0X3JlZ2VuZXJhdGV8aToxNjQ1Nzc1NDAyO2FjY291bnRfbmFtZXxzOjEwOiJwcmltYWF1bGlhIjtjbGVhcjNuZ2luZTIwMjJ8czoxOTI6ImZlMGMwMDNmYjQ5MTRhMGZkN2I0NWZjZjgxMTYxZDQxMDhiM2IwYzZlNjdmMjFkYjkyNWEyODY1MjRiZWYyMWMyYmY1MTU4NmVjNjFiZDg2MWVjNDYzMGRiYjQ0MDZhODMzZDU4NWFmOWYzYzFiZWMyMmU0ODE1MjEyMzA2ZmY4TEo4eEt0aE0wUHFzcHdHMEpTSWhiVElSZXR4S0lRVjFzRTF3LzdSY2JObVlFUjlheVF3RWw4S1pBcEg0OHpOWSI7ZXhwaXJlc19ieXxpOjE2NDU3Nzg1MTM7ZnVsbG5hbWV8czoxMToiUHJpbWEgQXVsaWEiO2dyb3VwX2FjdGl2ZXxzOjE6IjEiO2dyb3VwX25hbWV8czoxMToiU3VwZXIgQWRtaW4iO2xldmVsX2Frc2VzfHM6MTE6IlNVUEVSIEFETUlOIjtuaWNrX2xldmVsfHM6MzoiU0FEIjt1c2VyX2lkfHM6MzI6IjRBMzcyOUNBNUExNTkzRDcyRTY3RkYwRkUzMTE4NUQxIjt1bml0X2lkfHM6NDoiMjQ5NiI7dW5pdF9pZF9uYW1lfHM6NDM6IkRpbmFzIEtvbXVuaWthc2ksIEluZm9ybWF0aWthIERhbiBTdGF0aXN0aWsiO2dyb3VwX3N3aXRjaHxhOjI6e2k6MDthOjI6e3M6ODoiaWRfZ3JvdXAiO3M6MToiMSI7czoxMDoibmFtYV9ncm91cCI7czoxMToiU3VwZXIgQWRtaW4iO31pOjE7YToyOntzOjg6ImlkX2dyb3VwIjtzOjE6IjMiO3M6MTA6Im5hbWFfZ3JvdXAiO3M6OToiQWRtaW4gT1BEIjt9fQ==
efjf2leradbjdk32ucmi0hmi746ffaog	::1	1645775756	X19jaV9sYXN0X3JlZ2VuZXJhdGV8aToxNjQ1Nzc1NzU2O2Z1bGxuYW1lfHM6MTE6IlByaW1hIEF1bGlhIjt1bml0X2lkX25hbWV8czo0MzoiRGluYXMgS29tdW5pa2FzaSwgSW5mb3JtYXRpa2EgRGFuIFN0YXRpc3RpayI7YWNjb3VudF9uYW1lfHM6MTA6InByaW1hYXVsaWEiO2NsZWFyM25naW5lMjAyMnxzOjE5MjoiNzI0Y2U2YjJmYTY0ZGI0MjJkMzBmMjU3OGY5OWFmM2FiYzNkMzBkMDcwM2EwYjJlNWM1OTA3Y2NkODRkZDgyOTc4NmViZWUwYzIxYzU2NGNmYmRhNjVmMDVmNjJmYzE0OGNjZDQzYWQ4OTllNGU0OTMxY2I2MTdjNTZlNDExNzIyaHp5Y2o2UmVYeDNDcXBuaSs3K05WUURDQThjRjhVUjV1TWxSbXhwdk41N2ZJVG1EMkZpalEySElmSjJxNXNWIjtleHBpcmVzX2J5fGk6MTY0NTc3OTI1ODtncm91cF9hY3RpdmV8czoxOiIxIjtncm91cF9uYW1lfHM6MTE6IlN1cGVyIEFkbWluIjtsZXZlbF9ha3Nlc3xzOjExOiJTVVBFUiBBRE1JTiI7bmlja19sZXZlbHxzOjM6IlNBRCI7dXNlcl9pZHxzOjMyOiI0QTM3MjlDQTVBMTU5M0Q3MkU2N0ZGMEZFMzExODVEMSI7dW5pdF9pZHxzOjQ6IjI0OTYiO2dyb3VwX3N3aXRjaHxhOjI6e2k6MDthOjI6e3M6ODoiaWRfZ3JvdXAiO3M6MToiMSI7czoxMDoibmFtYV9ncm91cCI7czoxMToiU3VwZXIgQWRtaW4iO31pOjE7YToyOntzOjg6ImlkX2dyb3VwIjtzOjE6IjMiO3M6MTA6Im5hbWFfZ3JvdXAiO3M6OToiQWRtaW4gT1BEIjt9fQ==
67d73s4426a2krep97297r00fs04aj5n	::1	1645777960	X19jaV9sYXN0X3JlZ2VuZXJhdGV8aToxNjQ1Nzc3OTYwO2Z1bGxuYW1lfHM6MTE6IlByaW1hIEF1bGlhIjt1bml0X2lkX25hbWV8czo0MzoiRGluYXMgS29tdW5pa2FzaSwgSW5mb3JtYXRpa2EgRGFuIFN0YXRpc3RpayI7YWNjb3VudF9uYW1lfHM6MTA6InByaW1hYXVsaWEiO2NsZWFyM25naW5lMjAyMnxzOjE5MjoiNzI0Y2U2YjJmYTY0ZGI0MjJkMzBmMjU3OGY5OWFmM2FiYzNkMzBkMDcwM2EwYjJlNWM1OTA3Y2NkODRkZDgyOTc4NmViZWUwYzIxYzU2NGNmYmRhNjVmMDVmNjJmYzE0OGNjZDQzYWQ4OTllNGU0OTMxY2I2MTdjNTZlNDExNzIyaHp5Y2o2UmVYeDNDcXBuaSs3K05WUURDQThjRjhVUjV1TWxSbXhwdk41N2ZJVG1EMkZpalEySElmSjJxNXNWIjtleHBpcmVzX2J5fGk6MTY0NTc3OTI1ODtncm91cF9hY3RpdmV8czoxOiIxIjtncm91cF9uYW1lfHM6MTE6IlN1cGVyIEFkbWluIjtsZXZlbF9ha3Nlc3xzOjExOiJTVVBFUiBBRE1JTiI7bmlja19sZXZlbHxzOjM6IlNBRCI7dXNlcl9pZHxzOjMyOiI0QTM3MjlDQTVBMTU5M0Q3MkU2N0ZGMEZFMzExODVEMSI7dW5pdF9pZHxzOjQ6IjI0OTYiO2dyb3VwX3N3aXRjaHxhOjI6e2k6MDthOjI6e3M6ODoiaWRfZ3JvdXAiO3M6MToiMSI7czoxMDoibmFtYV9ncm91cCI7czoxMToiU3VwZXIgQWRtaW4iO31pOjE7YToyOntzOjg6ImlkX2dyb3VwIjtzOjE6IjMiO3M6MTA6Im5hbWFfZ3JvdXAiO3M6OToiQWRtaW4gT1BEIjt9fQ==
ni084pd1n3ctvmau6hngji1i1lo7pm3s	::1	1645777964	X19jaV9sYXN0X3JlZ2VuZXJhdGV8aToxNjQ1Nzc3OTYwO2Z1bGxuYW1lfHM6MTE6IlByaW1hIEF1bGlhIjt1bml0X2lkX25hbWV8czo0MzoiRGluYXMgS29tdW5pa2FzaSwgSW5mb3JtYXRpa2EgRGFuIFN0YXRpc3RpayI7YWNjb3VudF9uYW1lfHM6MTA6InByaW1hYXVsaWEiO2NsZWFyM25naW5lMjAyMnxzOjE5MjoiNzI0Y2U2YjJmYTY0ZGI0MjJkMzBmMjU3OGY5OWFmM2FiYzNkMzBkMDcwM2EwYjJlNWM1OTA3Y2NkODRkZDgyOTc4NmViZWUwYzIxYzU2NGNmYmRhNjVmMDVmNjJmYzE0OGNjZDQzYWQ4OTllNGU0OTMxY2I2MTdjNTZlNDExNzIyaHp5Y2o2UmVYeDNDcXBuaSs3K05WUURDQThjRjhVUjV1TWxSbXhwdk41N2ZJVG1EMkZpalEySElmSjJxNXNWIjtleHBpcmVzX2J5fGk6MTY0NTc3OTI1ODtncm91cF9hY3RpdmV8czoxOiIxIjtncm91cF9uYW1lfHM6MTE6IlN1cGVyIEFkbWluIjtsZXZlbF9ha3Nlc3xzOjExOiJTVVBFUiBBRE1JTiI7bmlja19sZXZlbHxzOjM6IlNBRCI7dXNlcl9pZHxzOjMyOiI0QTM3MjlDQTVBMTU5M0Q3MkU2N0ZGMEZFMzExODVEMSI7dW5pdF9pZHxzOjQ6IjI0OTYiO2dyb3VwX3N3aXRjaHxhOjI6e2k6MDthOjI6e3M6ODoiaWRfZ3JvdXAiO3M6MToiMSI7czoxMDoibmFtYV9ncm91cCI7czoxMToiU3VwZXIgQWRtaW4iO31pOjE7YToyOntzOjg6ImlkX2dyb3VwIjtzOjE6IjMiO3M6MTA6Im5hbWFfZ3JvdXAiO3M6OToiQWRtaW4gT1BEIjt9fQ==
\.


--
-- TOC entry 3490 (class 0 OID 24680)
-- Dependencies: 211
-- Data for Name: xi_sa_fungsi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_fungsi (id_fungsi, nama_fungsi, label_fungsi, url_fungsi, deskripsi_fungsi, id_jenis_fungsi, id_level_akses, create_by, create_date, create_ip, mod_by, mod_date, mod_ip, id_status) FROM stdin;
8	searching	Searching	searching	Fungsi untuk mencari data	2	\N	primaaulia	2017-11-07 13:21:59	::1	primaaulia	2017-11-07 13:21:59	::1	1
9	rules	Rules Module	rules	Fungsi untuk setting rules module	2	\N	primaaulia	2017-06-05 10:51:09	::1	primaaulia	2020-04-07 22:38:12	::1	1
10	privileges	Group Privilege	privileges	Fungsi untuk setting group privilege	2	\N	primaaulia	2017-06-10 22:23:24	::1	primaaulia	2017-08-03 12:20:22	::1	1
11	regency	Data Regency	regency	Fungsi untuk mengambil data regency	2	\N	primaaulia	2020-04-11 22:38:38	::1	primaaulia	2020-04-11 22:38:38	::1	1
12	district	Data District	district	Fungsi untuk mengambil data district	2	\N	primaaulia	2020-04-11 22:39:48	::1	primaaulia	2020-04-11 22:39:48	::1	1
13	village	Data Village	village	Fungsi untuk mengambil data village	2	\N	primaaulia	2020-04-11 22:40:11	::1	primaaulia	2020-04-11 22:40:11	::1	1
14	approve	Data Approve	approve	Fungsi untuk menyetujui data	2	\N	primaaulia	2018-04-03 09:22:12	36.67.167.61	primaaulia	2018-04-03 09:22:12	36.67.167.61	1
15	reject	Data Reject	reject	Fungsi untuk menolak data	2	\N	primaaulia	2018-04-03 09:22:12	36.67.167.61	primaaulia	2018-04-03 09:22:12	36.67.167.61	1
16	upload	Upload Data	upload	Fungsi untuk mengupload file	2	\N	primaaulia	2018-07-24 22:20:18	::1	primaaulia	2018-08-03 15:09:33	::1	1
17	download	Download Data	download	Fungsi untuk mendownload file	2	\N	primaaulia	2018-07-24 22:21:04	::1	primaaulia	2018-08-03 15:09:42	::1	1
18	export_to_word	Download Word	export-to-word	Fungsi download laporan format word	2	\N	primaaulia	2020-05-02 07:16:39	::1	primaaulia	2020-05-22 08:03:33	::1	1
19	export_to_excel	Download Excel	export-to-excel	Fungsi download laporan format excel	2	\N	primaaulia	2020-05-11 08:27:30	::1	primaaulia	2020-05-11 08:27:30	::1	1
20	export_to_pdf	Download PDF	export-to-pdf	Fungsi download laporan format pdf	2	\N	primaaulia	2020-05-11 08:30:42	::1	primaaulia	2020-05-11 08:30:42	::1	1
25	getOptionOpd	Get Option OPD	getOptionOpd	untuk memanggil option data opd dari API Simpeg	2	\N	primaaulia	2021-03-25 09:22:37	127.0.0.1	primaaulia	2021-03-25 09:22:37	127.0.0.1	1
1	index	Index	index	Fungsi untuk menampilkan data	1	\N	primaaulia	2017-06-04 19:30:40	::1	primaaulia	2020-08-28 11:45:59	::1	1
2	create	Create Data	create	Fungsi untuk menambahkan data	2	\N	primaaulia	2017-06-04 19:32:33	::1	primaaulia	2017-09-05 17:52:35	::1	1
3	update	Update Data	update	Fungsi untuk merubah data	2	\N	primaaulia	2017-06-04 19:33:01	::1	primaaulia	2017-09-05 17:52:44	::1	1
4	delete	Delete Data	delete	Fungsi untuk menghapus data	2	\N	primaaulia	2017-06-04 19:33:33	::1	primaaulia	2017-09-05 17:52:52	::1	1
5	listview	List View Data	listview	Fungsi untuk menampilkan list data	2	\N	primaaulia	2017-11-06 13:59:43	::1	primaaulia	2017-11-06 13:59:43	::1	1
6	review	Review Data	review	Fungsi untuk mereview data kembali	2	\N	primaaulia	2017-12-17 23:45:14	::1	primaaulia	2017-12-17 23:45:29	::1	1
7	details	Data Details	details	Fungsi untuk melihat rincian data	2	\N	primaaulia	2017-12-27 08:28:13	::1	primaaulia	2017-12-27 08:28:13	::1	1
\.


--
-- TOC entry 3491 (class 0 OID 24685)
-- Dependencies: 212
-- Data for Name: xi_sa_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_group (id_group, nama_group, id_level_akses, id_upk, create_by, create_date, create_ip, mod_by, mod_date, mod_ip, id_status) FROM stdin;
1	Super Admin	1	\N	primaaulia	2020-04-07 00:00:00	::1	primaaulia	2020-04-07 00:00:00	::1	1
3	Admin OPD	3	\N	primaaulia	2020-09-20 12:39:02	::1	primaaulia	2021-03-24 11:43:00	127.0.0.1	1
4	Admin	2	\N	primaaulia	2022-02-24 10:57:43	::1	primaaulia	2022-02-24 10:58:00	::1	1
\.


--
-- TOC entry 3492 (class 0 OID 24690)
-- Dependencies: 213
-- Data for Name: xi_sa_group_privileges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_group_privileges (id_group_privileges, id_group, id_rules, id_status) FROM stdin;
19	1	19	1
20	1	20	1
21	1	21	1
22	1	22	1
23	1	23	1
24	1	24	1
25	1	25	1
26	1	26	1
27	1	27	1
28	1	28	1
29	1	29	1
30	1	30	1
31	1	31	1
32	1	32	1
33	1	33	1
34	1	34	1
35	1	35	1
36	1	36	1
37	1	37	1
38	1	38	1
39	1	39	1
40	1	40	1
241	4	1	1
199	3	1	1
1	1	1	1
2	1	2	1
3	1	3	1
4	1	4	1
5	1	5	1
6	1	6	1
7	1	7	1
8	1	8	1
9	1	9	1
10	1	10	1
11	1	11	1
12	1	12	1
13	1	13	1
14	1	14	1
15	1	15	1
16	1	16	1
17	1	17	1
18	1	18	1
131	1	94	1
242	3	2	0
243	3	3	0
244	3	4	0
245	3	5	0
246	3	6	0
247	3	7	0
248	3	8	0
249	3	9	0
250	3	10	0
251	3	11	0
252	3	12	0
253	3	13	0
254	3	14	0
255	3	15	0
256	3	16	0
257	3	17	0
258	3	18	0
259	3	19	0
260	3	20	0
261	3	21	0
262	3	22	0
263	3	23	0
264	3	24	0
265	3	25	0
266	3	26	0
267	3	27	0
268	3	28	0
269	3	29	0
270	3	30	0
271	3	31	0
272	3	32	0
273	3	33	0
274	3	34	0
275	3	35	0
276	3	36	0
277	3	37	0
278	3	38	0
279	3	39	0
280	3	40	0
281	3	94	0
\.


--
-- TOC entry 3493 (class 0 OID 24693)
-- Dependencies: 214
-- Data for Name: xi_sa_jenis_fungsi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_jenis_fungsi (id_jenis_fungsi, jenis_fungsi, id_status) FROM stdin;
1	Fungsi Public	1
2	Fungsi Pendukung	1
3	Fungsi Private	1
4	Fungsi Belum Ada	1
\.


--
-- TOC entry 3494 (class 0 OID 24696)
-- Dependencies: 215
-- Data for Name: xi_sa_kontrol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_kontrol (id_kontrol, nama_kontrol, label_kontrol, url_kontrol, deskripsi_kontrol, create_by, create_date, create_ip, mod_by, mod_date, mod_ip, id_status) FROM stdin;
1	home	Home	home	Halaman dashboard	primaaulia	2017-06-04 19:36:44	::1	primaaulia	2020-05-19 11:01:39	::1	1
2	fungsi	Fungsi	fungsi	Halaman manajamen fungsi	primaaulia	2017-06-04 19:37:18	::1	primaaulia	2017-06-07 11:42:03	::1	1
3	kontrol	Kontrol	kontrol	Halaman manajemen kontrol	primaaulia	2017-06-04 19:37:38	::1	primaaulia	2017-06-07 11:41:55	::1	1
4	module	Module	module	Halaman manajemen module	primaaulia	2017-06-04 19:37:58	::1	primaaulia	2017-06-07 11:41:47	::1	1
5	menu	Menu	menu	Halaman majamen menu	primaaulia	2017-06-07 11:41:18	::1	primaaulia	2017-06-07 11:41:18	::1	1
6	group	Group	group	Halaman manajemen group	primaaulia	2017-06-10 22:23:53	::1	primaaulia	2017-06-10 22:24:15	::1	1
7	users	Users	users	Halaman manajemen users	primaaulia	2017-06-14 19:18:54	::1	primaaulia	2017-06-14 19:19:06	::1	1
\.


--
-- TOC entry 3495 (class 0 OID 24701)
-- Dependencies: 216
-- Data for Name: xi_sa_level_akses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_level_akses (id_level_akses, level_akses, nick_level, id_status) FROM stdin;
1	SUPER ADMIN	SAD	1
2	ADMIN	ADM	1
3	OPERATOR	OPR	1
\.


--
-- TOC entry 3496 (class 0 OID 24709)
-- Dependencies: 217
-- Data for Name: xi_sa_log_login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_log_login (id_log, username, login_time, ip_address, user_agent) FROM stdin;
\.


--
-- TOC entry 3497 (class 0 OID 24715)
-- Dependencies: 218
-- Data for Name: xi_sa_log_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_log_session (id_log_session, id_users, username, login_time, ip_address, user_agent, id_status, session_id) FROM stdin;
78	1	primaaulia	1645774913	::1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36	0	fe0c003fb4914a0fd7b45fcf81161d4108b3b0c6e67f21db925a286524bef21c2bf51586ec61bd861ec4630dbb4406a833d585af9f3c1bec22e4815212306ff8LJ8xKthM0PqspwG0JSIhbTIRetxKIQV1sE1w/7RcbNmYER9ayQwEl8KZApH48zNY
79	1	primaaulia	1645775658	::1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36	1	724ce6b2fa64db422d30f2578f99af3abc3d30d0703a0b2e5c5907ccd84dd829786ebee0c21c564cfbda65f05f62fc148ccd43ad899e4e4931cb617c56e411722hzycj6ReXx3Cqpni+7+NVQDCA8cF8UR5uMlRmxpvN57fITmD2FijQ2HIfJ2q5sV
\.


--
-- TOC entry 3498 (class 0 OID 24720)
-- Dependencies: 219
-- Data for Name: xi_sa_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_menu (id_menu, title_menu, url_menu, icon_menu, order_menu, id_rules, parent_id, is_parent, create_by, create_date, create_ip, mod_by, mod_date, mod_ip, id_status) FROM stdin;
1	Home		fas fa-home	1	1	0	N	primaaulia	2017-06-07 12:09:31	::1	primaaulia	2020-09-17 20:00:32	::1	1
2	Manajemen	#	fas fa-user-cog	2	0	0	Y	primaaulia	2017-06-07 12:09:47	::1	primaaulia	2019-04-23 14:32:10	36.67.76.99	1
3	Fungsi			1	2	2	N	primaaulia	2017-06-07 12:10:03	::1	primaaulia	2019-04-23 14:32:04	36.67.76.99	1
4	Kontrol			2	8	2	N	primaaulia	2017-06-07 12:10:26	::1	primaaulia	2019-04-23 14:32:20	36.67.76.99	1
5	Module			3	14	2	N	primaaulia	2017-06-07 12:10:48	::1	primaaulia	2019-04-23 14:32:26	36.67.76.99	1
6	Menu			5	21	2	N	primaaulia	2017-06-07 12:11:06	::1	primaaulia	2020-09-24 08:52:06	::1	1
7	Group			4	27	2	N	primaaulia	2017-06-10 22:25:19	::1	primaaulia	2020-09-24 08:52:14	::1	1
8	Users			6	34	2	N	primaaulia	2017-06-14 19:20:01	::1	primaaulia	2019-04-23 14:32:44	36.67.76.99	1
\.


--
-- TOC entry 3499 (class 0 OID 24725)
-- Dependencies: 220
-- Data for Name: xi_sa_module; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_module (id_module, nama_module, label_module, url_module, deskripsi_module, create_by, create_date, create_ip, mod_by, mod_date, mod_ip, id_status) FROM stdin;
1	home	Home	home	Module home	primaaulia	2017-06-04 19:39:22	::1	primaaulia	2020-05-19 11:06:41	::1	1
2	manajemen	Manajemen	manajemen	Module konfigurasi system khusus untuk superadmin	primaaulia	2017-06-04 19:40:50	::1	primaaulia	2017-08-03 16:00:08	::1	1
3	master	Data Master	master	Module data master	primaaulia	2017-11-05 13:58:28	::1	primaaulia	2020-08-28 23:30:26	::1	1
5	laporan	Laporan	laporan	laporan	primaaulia	2022-02-24 16:54:53	::1	primaaulia	2022-02-24 16:54:53	::1	1
\.


--
-- TOC entry 3500 (class 0 OID 24730)
-- Dependencies: 221
-- Data for Name: xi_sa_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_rules (id_rules, id_module, id_kontrol, id_fungsi, id_status) FROM stdin;
1	1	1	1	1
2	2	2	1	1
3	2	2	2	1
4	2	2	3	1
5	2	2	4	1
6	2	2	5	1
7	2	2	7	1
8	2	3	1	1
9	2	3	2	1
10	2	3	3	1
11	2	3	4	1
12	2	3	5	1
13	2	3	7	1
14	2	4	1	1
15	2	4	2	1
16	2	4	3	1
17	2	4	4	1
18	2	4	5	1
19	2	4	7	1
20	2	4	9	1
21	2	5	1	1
22	2	5	2	1
23	2	5	3	1
24	2	5	4	1
25	2	5	5	1
26	2	5	7	1
27	2	6	1	1
28	2	6	2	1
29	2	6	3	1
30	2	6	4	1
31	2	6	5	1
32	2	6	7	1
33	2	6	10	1
34	2	7	1	1
35	2	7	2	1
36	2	7	3	1
37	2	7	4	1
38	2	7	5	1
39	2	7	7	1
40	2	7	8	1
94	2	7	25	1
\.


--
-- TOC entry 3501 (class 0 OID 24733)
-- Dependencies: 222
-- Data for Name: xi_sa_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_setting (id, app_name, app_author, app_description, app_year, app_icon, app_favicon, app_keywords, app_versi) FROM stdin;
1	clear engine	Dinas Komunikasi dan Informatika Provinsi Sumatera Barat	clear engine	2022	logo_sumbar.png	favicon.ico	Aplikasi Basic	1.0.0
\.


--
-- TOC entry 3502 (class 0 OID 24738)
-- Dependencies: 223
-- Data for Name: xi_sa_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_status (id_status, nm_status) FROM stdin;
0 	Tidak Aktif
1 	Aktif
\.


--
-- TOC entry 3503 (class 0 OID 24741)
-- Dependencies: 224
-- Data for Name: xi_sa_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_users (id_users, token, unit_id, unit_id_name, username, password, email, fullname, foto_profile, blokir, id_status, validate_email_code, validate_email_status, reset_password_code, reset_password_status, reset_password_expired, create_by, create_date, create_ip, mod_by, mod_date, mod_ip) FROM stdin;
1	4A3729CA5A1593D72E67FF0FE31185D1	2496	Dinas Komunikasi, Informatika Dan Statistik	primaaulia	$2a$12$fexNr6W.H7RPvO9rOTjojuHzoWwK1JO7N2nyuFiD/ufsrlO6tU4ju		Prima Aulia	default-user-icon.jpg	0	1		0		0	0	primaaulia	2020-12-23 09:18:01	::1	primaaulia	2022-02-25 09:52:02	::1
\.


--
-- TOC entry 3504 (class 0 OID 24746)
-- Dependencies: 225
-- Data for Name: xi_sa_users_default_pass; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_users_default_pass (id_default_pass, id_users, pass_plain, updated) FROM stdin;
\.


--
-- TOC entry 3505 (class 0 OID 24749)
-- Dependencies: 226
-- Data for Name: xi_sa_users_privileges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_users_privileges (id_users_privileges, id_users, id_group, id_status) FROM stdin;
2	1	1	1
3	1	3	1
\.


--
-- TOC entry 3506 (class 0 OID 24752)
-- Dependencies: 227
-- Data for Name: xi_sa_white_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.xi_sa_white_list (id_white_list, module_name, class_name, method_name, id_status) FROM stdin;
1	auth	signin	login	1
2	auth	signin	logout	1
3	auth	signin	switch_group	1
4	auth	signin	timeout	1
5	auth	signin	account	1
\.


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 237
-- Name: ac_xi_sa_fungsi; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_fungsi', 27, true);


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 236
-- Name: ac_xi_sa_group; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_group', 5, true);


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 241
-- Name: ac_xi_sa_group_privileges; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_group_privileges', 281, true);


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 246
-- Name: ac_xi_sa_jenis_fungsi; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_jenis_fungsi', 5, false);


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 238
-- Name: ac_xi_sa_kontrol; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_kontrol', 8, true);


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 247
-- Name: ac_xi_sa_level_akses; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_level_akses', 4, false);


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 245
-- Name: ac_xi_sa_log_login; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_log_login', 9, true);


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 228
-- Name: ac_xi_sa_log_session; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_log_session', 79, true);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 242
-- Name: ac_xi_sa_menu; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_menu', 14, true);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 239
-- Name: ac_xi_sa_module; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_module', 5, true);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 240
-- Name: ac_xi_sa_rules; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_rules', 95, true);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 243
-- Name: ac_xi_sa_users; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_users', 4, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 244
-- Name: ac_xi_sa_users_default_pass; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_users_default_pass', 2, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 234
-- Name: ac_xi_sa_users_privileges; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_users_privileges', 5, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 235
-- Name: ac_xi_sa_white_list; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ac_xi_sa_white_list', 5, false);


--
-- TOC entry 3304 (class 2606 OID 24758)
-- Name: xi_sa_ci_session xi_sa_ci_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_ci_session
    ADD CONSTRAINT xi_sa_ci_session_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 33130)
-- Name: xi_sa_fungsi xi_sa_fungsi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_fungsi
    ADD CONSTRAINT xi_sa_fungsi_pkey PRIMARY KEY (id_fungsi);


--
-- TOC entry 3308 (class 2606 OID 33118)
-- Name: xi_sa_group xi_sa_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_group
    ADD CONSTRAINT xi_sa_group_pkey PRIMARY KEY (id_group);


--
-- TOC entry 3310 (class 2606 OID 33173)
-- Name: xi_sa_group_privileges xi_sa_group_privileges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_group_privileges
    ADD CONSTRAINT xi_sa_group_privileges_pkey PRIMARY KEY (id_group_privileges);


--
-- TOC entry 3312 (class 2606 OID 33243)
-- Name: xi_sa_jenis_fungsi xi_sa_jenis_fungsi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_jenis_fungsi
    ADD CONSTRAINT xi_sa_jenis_fungsi_pkey PRIMARY KEY (id_jenis_fungsi);


--
-- TOC entry 3314 (class 2606 OID 33142)
-- Name: xi_sa_kontrol xi_sa_kontrol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_kontrol
    ADD CONSTRAINT xi_sa_kontrol_pkey PRIMARY KEY (id_kontrol);


--
-- TOC entry 3316 (class 2606 OID 33251)
-- Name: xi_sa_level_akses xi_sa_level_akses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_level_akses
    ADD CONSTRAINT xi_sa_level_akses_pkey PRIMARY KEY (id_level_akses);


--
-- TOC entry 3318 (class 2606 OID 33228)
-- Name: xi_sa_log_login xi_sa_log_login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_log_login
    ADD CONSTRAINT xi_sa_log_login_pkey PRIMARY KEY (id_log);


--
-- TOC entry 3320 (class 2606 OID 33542)
-- Name: xi_sa_log_session xi_sa_log_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_log_session
    ADD CONSTRAINT xi_sa_log_session_pkey PRIMARY KEY (id_log_session);


--
-- TOC entry 3322 (class 2606 OID 33182)
-- Name: xi_sa_menu xi_sa_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_menu
    ADD CONSTRAINT xi_sa_menu_pkey PRIMARY KEY (id_menu);


--
-- TOC entry 3324 (class 2606 OID 33154)
-- Name: xi_sa_module xi_sa_module_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_module
    ADD CONSTRAINT xi_sa_module_pkey PRIMARY KEY (id_module);


--
-- TOC entry 3326 (class 2606 OID 33164)
-- Name: xi_sa_rules xi_sa_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_rules
    ADD CONSTRAINT xi_sa_rules_pkey PRIMARY KEY (id_rules);


--
-- TOC entry 3328 (class 2606 OID 24786)
-- Name: xi_sa_setting xi_sa_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_setting
    ADD CONSTRAINT xi_sa_setting_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 24788)
-- Name: xi_sa_status xi_sa_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_status
    ADD CONSTRAINT xi_sa_status_pkey PRIMARY KEY (id_status);


--
-- TOC entry 3335 (class 2606 OID 33078)
-- Name: xi_sa_users_default_pass xi_sa_users_default_pass_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_default_pass
    ADD CONSTRAINT xi_sa_users_default_pass_pkey PRIMARY KEY (id_default_pass);


--
-- TOC entry 3333 (class 2606 OID 33201)
-- Name: xi_sa_users xi_sa_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users
    ADD CONSTRAINT xi_sa_users_pkey PRIMARY KEY (id_users);


--
-- TOC entry 3337 (class 2606 OID 33101)
-- Name: xi_sa_users_privileges xi_sa_users_privileges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_privileges
    ADD CONSTRAINT xi_sa_users_privileges_pkey PRIMARY KEY (id_users_privileges);


--
-- TOC entry 3339 (class 2606 OID 33110)
-- Name: xi_sa_white_list xi_sa_white_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_white_list
    ADD CONSTRAINT xi_sa_white_list_pkey PRIMARY KEY (id_white_list);


--
-- TOC entry 3331 (class 1259 OID 24789)
-- Name: username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX username ON public.xi_sa_users USING btree (username);


--
-- TOC entry 3347 (class 2606 OID 33202)
-- Name: xi_sa_users_default_pass defaultPasstoUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_default_pass
    ADD CONSTRAINT "defaultPasstoUsers" FOREIGN KEY (id_users) REFERENCES public.xi_sa_users(id_users) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3340 (class 2606 OID 33310)
-- Name: xi_sa_fungsi fungsiToJenisFungsi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_fungsi
    ADD CONSTRAINT "fungsiToJenisFungsi" FOREIGN KEY (id_jenis_fungsi) REFERENCES public.xi_sa_jenis_fungsi(id_jenis_fungsi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3341 (class 2606 OID 33295)
-- Name: xi_sa_group_privileges groupPrevilegesToGroup; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_group_privileges
    ADD CONSTRAINT "groupPrevilegesToGroup" FOREIGN KEY (id_group) REFERENCES public.xi_sa_group(id_group) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3342 (class 2606 OID 33305)
-- Name: xi_sa_group_privileges groupPrevilegesToRules; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_group_privileges
    ADD CONSTRAINT "groupPrevilegesToRules" FOREIGN KEY (id_rules) REFERENCES public.xi_sa_rules(id_rules) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3343 (class 2606 OID 33543)
-- Name: xi_sa_log_session logSessionToUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_log_session
    ADD CONSTRAINT "logSessionToUsers" FOREIGN KEY (id_users) REFERENCES public.xi_sa_users(id_users) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3346 (class 2606 OID 33285)
-- Name: xi_sa_rules rulesToFungsi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_rules
    ADD CONSTRAINT "rulesToFungsi" FOREIGN KEY (id_fungsi) REFERENCES public.xi_sa_fungsi(id_fungsi) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3345 (class 2606 OID 33280)
-- Name: xi_sa_rules rulesToKontrol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_rules
    ADD CONSTRAINT "rulesToKontrol" FOREIGN KEY (id_kontrol) REFERENCES public.xi_sa_kontrol(id_kontrol) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3344 (class 2606 OID 33275)
-- Name: xi_sa_rules rulesToModule; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_rules
    ADD CONSTRAINT "rulesToModule" FOREIGN KEY (id_module) REFERENCES public.xi_sa_module(id_module) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3349 (class 2606 OID 33270)
-- Name: xi_sa_users_privileges whiteToGroup; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_privileges
    ADD CONSTRAINT "whiteToGroup" FOREIGN KEY (id_group) REFERENCES public.xi_sa_group(id_group) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3348 (class 2606 OID 33265)
-- Name: xi_sa_users_privileges whiteToUsers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.xi_sa_users_privileges
    ADD CONSTRAINT "whiteToUsers" FOREIGN KEY (id_users) REFERENCES public.xi_sa_users(id_users) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2022-02-25 16:21:42

--
-- PostgreSQL database dump complete
--

