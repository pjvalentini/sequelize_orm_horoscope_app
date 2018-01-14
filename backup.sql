--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Horoscopes; Type: TABLE; Schema: public; Owner: philipvalentini
--

CREATE TABLE "Horoscopes" (
    id integer NOT NULL,
    zodiac character varying(255),
    todays_horoscope character varying(1000),
    description character varying(1000),
    date_range character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE "Horoscopes" OWNER TO philipvalentini;

--
-- Name: Horoscopes_id_seq; Type: SEQUENCE; Schema: public; Owner: philipvalentini
--

CREATE SEQUENCE "Horoscopes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Horoscopes_id_seq" OWNER TO philipvalentini;

--
-- Name: Horoscopes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: philipvalentini
--

ALTER SEQUENCE "Horoscopes_id_seq" OWNED BY "Horoscopes".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: philipvalentini
--

CREATE TABLE "Users" (
    id integer NOT NULL,
    name character varying(255),
    birthdate character varying(255),
    zodiac character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE "Users" OWNER TO philipvalentini;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: philipvalentini
--

CREATE SEQUENCE "Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Users_id_seq" OWNER TO philipvalentini;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: philipvalentini
--

ALTER SEQUENCE "Users_id_seq" OWNED BY "Users".id;


--
-- Name: Horoscopes id; Type: DEFAULT; Schema: public; Owner: philipvalentini
--

ALTER TABLE ONLY "Horoscopes" ALTER COLUMN id SET DEFAULT nextval('"Horoscopes_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: philipvalentini
--

ALTER TABLE ONLY "Users" ALTER COLUMN id SET DEFAULT nextval('"Users_id_seq"'::regclass);


--
-- Data for Name: Horoscopes; Type: TABLE DATA; Schema: public; Owner: philipvalentini
--

COPY "Horoscopes" (id, zodiac, todays_horoscope, description, date_range, "createdAt", "updatedAt") FROM stdin;
1	Aquarius	Excesses in food and drink yesterday may force you to cancel a social engagement today, Aquarius. You probably aren't feeling up to it. This might be a bit irritating, and somewhat embarrassing as well. However, you just might have needed the rest even if you hadn't eaten too much. Make the most of your evening alone. Soak in a tub and go to bed early. In the morning, you'll be glad you did.	They are weird and like clowns	01/20 - 02/18	2018-01-08 22:41:38.182-05	2018-01-08 22:41:38.182-05
6	Cancer	Cancer, right now you could be overwhelmed by conflicts among your own needs, the needs of your family, and your responsibilities toward your job. As a result, you may be feeling tense and stressed out, and wondering if the situation will ever be resolved. Don't panic. It will, and you'll be none the worse for it. The keyword is balance, and the solution lies in finding it. Get to it! You'll want to put this behind you.	Temper dude!, WTF!	06/21 - 07/22	2018-01-08 22:51:58.31-05	2018-01-08 22:51:58.31-05
2	Pisces	Tension between a married couple who are both your friends could have you situated in the most uncomfortable place of all, Pisces: right smack in the middle. Both may want to recruit you to their side, but you'll want to avoid allying yourself with either party. The best you can do is mediate by trying to get each of them to see the other's point of view. Whether you succeed or not, you'll have tried your best.	Emotional...thats all!	02/19 - 03/20	2018-01-08 22:43:50.382-05	2018-01-08 22:43:50.382-05
12	Capricorn	Money matters might require your attention today, Sagittarius. Unusual expenses may have depleted your reserves, so you might have to cut a few corners. Your income, however, is probably the same if not slightly higher. This is, therefore, only a temporary situation, and your accounts should be back to normal in time, although some caution with regard to spending may need to be observed for a while. Work creatively on your budget and try to relax.	its a goat...and a fish...right...	12/22 - 01/19	2018-01-08 23:05:19.751-05	2018-01-08 23:05:19.751-05
3	Aries	 Gloom over the absence of a family member or romantic partner could come upon you today, Aries, and your usually exuberant nature could be far more subdued than is normal for you. You might even spend the entire evening watching whatever happens to be on TV. It would be far more productive if you treated yourself to a trip to the bookstore and picked up some new reading material. At least you'll learn something while your partner is away!	They ram shit with their heads...stubborn ones!	03/21 - 04/19	2018-01-08 22:45:33.476-05	2018-01-08 22:45:33.476-05
7	Leo	A close relative may be ill or otherwise troubled, Leo, and you might worry a bit too much today because of a lack of communication from this person. Attempts to phone might result in no answer or repeated voicemail messages. However, take care to stay focused and objective. Your relative is probably recovering from whatever has been bothering him or her. Remember, no news is good news. Hang in there.	I eat poople alive...and im fiery too!	07/23 - 08/22	2018-01-08 22:53:33.496-05	2018-01-08 22:53:33.496-05
10	Scorpio	Your ingenuity and imagination may seem to have deserted you today, Scorpio, and this isn't making it easy for you to produce the high level of quality you're used to at work. Perhaps it might be best to busy yourself with routine tasks you can do automatically and, if you can, put off the more creative endeavors until your brain gets back in gear. Don't be too proud or too shy to ask for help. Hang in there.	I hate these things...they sting and they are like spiders...you've been judged	10/23 - 11/21	2018-01-08 23:01:37.714-05	2018-01-08 23:01:37.714-05
9	Libra	You should be looking especially attractive today, Libra, but you may feel that it's wasted because your beloved isn't around to appreciate it. Cheer up! It will only be for a few days, and you'll still look pretty good by then. Try to keep yourself busy, preferably doing something you love to do, so your enthusiasm will enhance your good looks. Your friend won't be away forever. It only seems that way.	Balanced or UN-balanced, you tell me!	09/23 - 10/22	2018-01-08 22:58:54.04-05	2018-01-08 22:58:54.04-05
11	Sagittarius	Money matters might require your attention today, Sagittarius. Unusual expenses may have depleted your reserves, so you might have to cut a few corners. Your income, however, is probably the same if not slightly higher. This is, therefore, only a temporary situation, and your accounts should be back to normal in time, although some caution with regard to spending may need to be observed for a while. Work creatively on your budget and try to relax.	Man-horsey...with arrows and stuff.	11/22 - 12/21	2018-01-08 23:03:46.933-05	2018-01-08 23:03:46.933-05
4	Taurus	Too much food and drink could have you feeling a little out of sorts today, Taurus. Some friends might have taken you out and exposed you to the most tempting of food and drink. This is always fun, but today you have to face the consequences! A workout fueled with water could help burn off any toxins or extra calories, and a nap just might complete the process so you're feeling like your old self again. Get going!	The are hornny...	04/20 - 05/20	2018-01-08 22:47:01.646-05	2018-01-08 22:47:01.646-05
5	Gemini	Right now you might be in the process of moving from one job to another, Gemini. This might even be a total change in career. Your hard work is paying off, though it may not show up in your bank account for a while yet. There might be contracts to be executed first. Your social life may be put on hold until all facets of this transition are worked out. Don't be intimidated, however. You've made the right choice.	Two people live inside of them	05/21 - 06/20	2018-01-08 22:49:58.139-05	2018-01-08 22:49:58.139-05
8	Virgo	This is not the day to make financial investments of any kind, Virgo, although someone may present you with some possible opportunities. They may sound good, but caution is called for. If the information appeals to you, look into it and try to learn the facts, but make no commitment today. If it's truly a good opportunity, it won't disappear within a few days. If it isn't, you'll want to know. Wait!	I have opinions on shit...a lot of shit!	08/23 - 09/22	2018-01-08 22:55:40.733-05	2018-01-08 22:55:40.733-05
\.


--
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: philipvalentini
--

COPY "Users" (id, name, birthdate, zodiac, "createdAt", "updatedAt") FROM stdin;
7	Bol	1925-11-27 19:00:00-05	gemini	2018-01-09 15:51:24.906-05	2018-01-09 15:51:24.906-05
2	Ai Hua	1980-08-29 20:00:00-04	virgo	2018-01-08 21:46:14.843-05	2018-01-08 21:46:14.843-05
1	PJ	1978-01-04 19:00:00-05	capricorn	2018-01-08 21:44:40.854-05	2018-01-08 21:44:40.854-05
3	Yin Yin	1998-01-15 19:00:00-05	capricorn	2018-01-08 21:46:43.535-05	2018-01-08 21:46:43.535-05
5	Harold	1972-06-29 20:00:00-04	cancer	2018-01-08 21:49:12.28-05	2018-01-08 21:49:12.28-05
6	Susan	1948-03-06 19:00:00-05	pisces	2018-01-09 14:52:35.257-05	2018-01-09 14:52:35.257-05
4	George	1943-04-24 20:00:00-04	taurus	2018-01-08 21:47:17.947-05	2018-01-08 21:47:17.947-05
12	Bbab	1989-03-05	pisces	2018-01-09 18:27:29.685-05	2018-01-09 18:27:29.685-05
13	Jojo	1998-04-06	aries	2018-01-09 20:13:48.211-05	2018-01-09 20:13:48.211-05
14	Jennifer	1988-01-05	capricorn	2018-01-09 20:50:49.485-05	2018-01-09 20:50:49.485-05
15	Bill	1988-01-05	capricorn	2018-01-09 20:53:09.319-05	2018-01-09 20:53:09.319-05
16	Joey	1998-01-05	capricorn	2018-01-09 20:53:39.2-05	2018-01-09 20:53:39.2-05
17	Bill	1998-12-31	capricorn	2018-01-09 20:54:21.122-05	2018-01-09 20:54:21.122-05
18	Hollis	1976-05-06	taurus	2018-01-09 20:56:38.193-05	2018-01-09 20:56:38.193-05
19	Blaze	1980-12-15	sagittarius	2018-01-09 20:59:00.903-05	2018-01-09 20:59:00.903-05
24	Bosley	1956-10-04	libra	2018-01-10 20:29:39.327-05	2018-01-10 20:29:39.327-05
26	Bill	1987-03-03	capricorn	2018-01-10 21:54:39.466-05	2018-01-10 21:54:39.466-05
37	Samuel	1980-12-15	sagittarius	2018-01-10 22:48:12.589-05	2018-01-10 22:48:12.589-05
42	James	1967-10-16	Libra	2018-01-11 00:18:20.094-05	2018-01-11 00:18:20.094-05
43	Julie	1985-01-21	Aquarius	2018-01-11 00:47:58.079-05	2018-01-11 00:47:58.079-05
44	Kevin	1974-12-05	Sagittarius	2018-01-11 00:49:19.219-05	2018-01-11 00:49:19.219-05
45	Onslo	1973-12-16	Sagittarius	2018-01-11 14:57:27.681-05	2018-01-11 14:57:27.681-05
46	Jayla	1973-01-05	Capricorn	2018-01-14 11:10:42.137-05	2018-01-14 11:10:42.137-05
\.


--
-- Name: Horoscopes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: philipvalentini
--

SELECT pg_catalog.setval('"Horoscopes_id_seq"', 12, true);


--
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: philipvalentini
--

SELECT pg_catalog.setval('"Users_id_seq"', 46, true);


--
-- Name: Horoscopes Horoscopes_pkey; Type: CONSTRAINT; Schema: public; Owner: philipvalentini
--

ALTER TABLE ONLY "Horoscopes"
    ADD CONSTRAINT "Horoscopes_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: philipvalentini
--

ALTER TABLE ONLY "Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

