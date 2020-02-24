--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.25
-- Dumped by pg_dump version 11.5

-- Started on 2020-01-24 10:35:34

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

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 16479)
-- Name: comments; Type: TABLE; Schema: public; Owner: marlie
--

CREATE TABLE public.comments (
    c_id text NOT NULL,
    text text,
    likes integer,
    author text,
    video_id text,
    published_at timestamp without time zone,
    updated_at timestamp without time zone,
    sentiment character varying(10),
    prob_pos numeric,
    prob_neg numeric,
    prob_neutral numeric,
    clean_text text
);


ALTER TABLE public.comments OWNER TO marlie;

--
-- TOC entry 173 (class 1259 OID 16495)
-- Name: searchlist_s_id_seq; Type: SEQUENCE; Schema: public; Owner: marlie
--

CREATE SEQUENCE public.searchlist_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.searchlist_s_id_seq OWNER TO marlie;

--
-- TOC entry 174 (class 1259 OID 16497)
-- Name: searchlist; Type: TABLE; Schema: public; Owner: marlie
--

CREATE TABLE public.searchlist (
    video text NOT NULL,
    search_q text NOT NULL,
    s_id integer DEFAULT nextval('public.searchlist_s_id_seq'::regclass) NOT NULL
);


ALTER TABLE public.searchlist OWNER TO marlie;

--
-- TOC entry 171 (class 1259 OID 16471)
-- Name: video; Type: TABLE; Schema: public; Owner: marlie
--

CREATE TABLE public.video (
    title text,
    descr text,
    views integer,
    likes integer,
    dislikes integer,
    fav_count integer,
    com_count integer,
    v_id text NOT NULL,
    channel_id text,
    channel_name text,
    "searchQ" text,
    duration text,
    url character varying(150),
    clean_descr text,
    language text,
    is_reliable boolean,
    confidence numeric
);


ALTER TABLE public.video OWNER TO marlie;

--
-- TOC entry 1959 (class 0 OID 0)
-- Dependencies: 171
-- Name: COLUMN video.clean_descr; Type: COMMENT; Schema: public; Owner: marlie
--

COMMENT ON COLUMN public.video.clean_descr IS 'video description after cleaning';


--
-- TOC entry 1950 (class 0 OID 16479)
-- Dependencies: 172
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: marlie
--

INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzpioVu_RC5zGBk41V4AaABAg', 'Great course!', 0, '黃柏瑋', '2g9OSRKJuzM', '2018-04-28 07:25:41', '2018-04-28 07:25:41', 'pos', 0.6986498023830945, 0.3013501976169055, 0.27119050546800266, 'great cours');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwKBqbNtBHb9KL2Igh4AaABAg', 'A Skip List needs a reference to 2 nodes, the previous and the next one. This helps positioning which gives the O(log n). Not gonna go deeper because it''s based on Linked List and insert(e) function with a  height level added to it.', 0, 'Jonathan Hector', '2g9OSRKJuzM', '2018-04-15 12:15:59', '2018-04-15 12:15:59', 'neg', 0.26139340127742144, 0.7386065987225785, 0.4471265826471485, 'skip list need refer 2 node previou next one help posit give olog n gon na go deeper base link list insert function height level ad');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyxuVibkkQlrpg5Hhl4AaABAg', 'even i want a free frisbee', 1, 'CR74LIFE', '2g9OSRKJuzM', '2017-10-27 11:28:11', '2017-10-27 11:28:11', 'pos', 0.5574948141937861, 0.4425051858062139, 0.2726332700976614, 'even want free frisbe');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyjtVH7sEnflbdGv8d4AaABAg', 'Expected value for highest number of levels is actually only 4 regardless of number of stations ...', 0, 'Behnam Saeedi', '2g9OSRKJuzM', '2017-12-06 02:48:56', '2017-12-06 02:48:56', 'neutral', 0.596414640609732, 0.40358535939026796, 0.540406623820343, 'expect valu highest number level actual 4 regardless number station');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjEu9lk9crRm3gCoAEC', 'The Skip list is not doublylinkedList rather it is a SinglyLikedList, every node has a pointer to the next element not to the previous one.', 4, 'Unnati Singh', '2g9OSRKJuzM', '2016-10-12 20:36:16', '2016-10-12 20:36:16', 'neg', 0.43833269674407255, 0.5616673032559274, 0.3900240326575765, 'skip list doublylinkedlist rather singlylikedlist everi node pointer next element previou one');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjdqKlaYJUPCngCoAEC', '7:17 - It''s a[i] (a of i, not AFI) - Meaning, the index place in an a array', 0, 'Bar Laor', '2g9OSRKJuzM', '2016-05-30 22:21:33', '2016-05-30 22:21:33', 'neg', 0.4857991348010131, 0.5142008651989869, 0.3892378842552148, '717 ai afi mean index place array');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxTi9RpA-WQXqJaxfZ4AaABAg', 'Hi see youtube title wrong  BFS not DFS', 0, 'Saïd BENAISSA', 'iaBEKo5sM7w', '2019-12-08 21:36:41', '2019-12-08 21:36:41', 'neg', 0.43706520959617856, 0.5629347904038214, 0.2766269676292286, 'hi see youtub titl wrong bf df');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugw8xQFCHScvBdPd-N94AaABAg', 'Bsdke algo kaha h?', 0, 'This is NKC', 'iaBEKo5sM7w', '2019-12-01 12:01:53', '2019-12-01 12:01:53', 'neutral', 0.5240357207389519, 0.4759642792610481, 0.5950890614040548, 'bsdke algo kaha h');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugy9FJfkdvHXO82cUz94AaABAg', 'thanks', 0, 'Adesh Paul', 'iaBEKo5sM7w', '2019-12-27 12:53:19', '2019-12-27 12:53:19', 'neutral', 0.5417195618656777, 0.4582804381343223, 0.5318181496726184, 'thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxHy2g6plQYGOPfKxN4AaABAg', 'dishing out knowledge and frisbees!', 7, 'Charlie Hoover', '2g9OSRKJuzM', '2017-10-19 15:26:16', '2017-10-19 15:26:16', 'neutral', 0.45936280524145634, 0.5406371947585437, 0.5225935369314391, 'dish knowledg frisbe');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxzFJa7Um3uSWqkZI94AaABAg', 'Thanks for the lecture.  My university has a problem of having very limited curriculum for Upper division courses, and most of the staff is teaching lower division.  So once I graduated with my bachelors degree I discovered OCW and I am just going to do independant self study and hopefully I can get some help from my school taking "special topics in computer science", over and over and hopefully I can gain higher proficiency than what is normally available to the University.', 1, 'Aaron Linder', '2g9OSRKJuzM', '2019-04-01 20:34:36', '2019-04-01 20:34:36', 'neutral', 0.4475235550882386, 0.5524764449117614, 0.8200489923660649, 'thank lectur univers problem limit curriculum upper divis cours staff teach lower divis graduat bachelor degre discov ocw go independ self studi hope get help school take special topic comput scienc hope gain higher profici normal avail univers');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugy3VGrr31nSLz3jQPZ4AaABAg', 'Where is link sir😨', 0, 'Najish Sultana', 'iaBEKo5sM7w', '2019-11-17 04:33:54', '2019-11-17 04:33:54', 'neutral', 0.564942874040687, 0.435057125959313, 0.7949560113248864, 'link sir😨');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugw-Cut3xSpWJC9Mmvl4AaABAg', 'What if they give numbers instead of alphabets?', 0, 'Sai Nikhil Raj Akaveeti', 'iaBEKo5sM7w', '2019-09-20 02:44:20', '2019-09-20 02:44:45', 'neg', 0.4747687788787365, 0.5252312211212635, 0.4967231491107536, 'give number instead alphabet');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxSp2ZdniREy1nYUaN4AaABAg', 'Thank you!', 0, 'D1vid3By0', 'iaBEKo5sM7w', '2019-07-01 14:15:09', '2019-07-01 14:15:09', 'neutral', 0.5417195618656777, 0.4582804381343223, 0.5318181496726184, 'thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxZJc-UZdXWseqM6aJ4AaABAg', 'english caption: DFSauf alte residenzstdt wird haben nun will porto steckt oder events', 0, 'Heiballa Abdellahi', 'iaBEKo5sM7w', '2019-06-19 23:09:25', '2019-06-19 23:09:25', 'neutral', 0.5638937189101112, 0.4361062810898888, 0.7836621723981443, 'english caption dfsauf alt residenzstdt wird haben nun porto steckt oder event');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwpiDJE3G3482lGikl4AaABAg', 'excellent concept', 0, 'shaikh zainab', 'iaBEKo5sM7w', '2019-06-14 16:28:30', '2019-06-14 16:28:30', 'pos', 0.5018843557023657, 0.49811564429763433, 0.4772279826721802, 'excel concept');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugxd9s0PQDAoEtZ6bPl4AaABAg', 'Concise and precise. Thanks a lot!', 0, 'Mahesh Mehandiratta', 'iaBEKo5sM7w', '2019-06-09 07:39:37', '2019-06-09 07:39:37', 'pos', 0.5440707190631918, 0.4559292809368082, 0.4549637115285671, 'concis precis thank lot');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxlwdxPuv64EplR5YJ4AaABAg', 'sirji dfs and bfs same hi lag raha ha... aj mera exam bekar ho gya', 1, 'Deepak Raj', 'iaBEKo5sM7w', '2019-05-21 07:21:46', '2019-05-21 07:21:46', 'neutral', 0.4633645848883, 0.5366354151117, 0.561251517095395, 'sirji df bf hi lag raha ha aj mera exam bekar ho gya');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugxolhy0y2ypG1ZJGBB4AaABAg', 'Why we start with A', 0, 'Ahsan Ali', 'iaBEKo5sM7w', '2019-05-09 03:53:53', '2019-05-09 03:53:53', 'neutral', 0.4590165937906855, 0.5409834062093145, 0.6966947145305018, 'start');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzZvtpR9IQrYb7ync54AaABAg', 'GOOD EXPLANATION  .....    :)', 0, 'Saranya Vilwadhri', 'iaBEKo5sM7w', '2019-04-23 09:11:29', '2019-04-23 09:11:29', 'pos', 0.6430542795156622, 0.3569457204843378, 0.27524987150901575, 'good explan');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwTUoNG5FLlxBKawNR4AaABAg', 'Senin aksanını kardeşim  love indian accent', 1, 'Baturay Kurum', 'iaBEKo5sM7w', '2019-04-19 20:38:51', '2019-04-19 20:38:51', 'pos', 0.6084317038194821, 0.3915682961805179, 0.362195578692639, 'senin aksanını kardeşim love indian accent');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugwg7cecVnVzurSKohR4AaABAg', 'good job🖖', 0, 'shumaila Khurshid', 'iaBEKo5sM7w', '2019-04-14 11:35:07', '2019-04-14 11:35:07', 'pos', 0.7511576985291926, 0.24884230147080744, 0.3325023362993911, 'good job🖖');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugw2igfzdLj9QiZwuXR4AaABAg', 'bro aren''t you suppose to use a queue  for depth first and stack for breath first?', 0, 'itsurguy1', 'iaBEKo5sM7w', '2019-04-09 08:52:43', '2019-04-09 08:52:43', 'pos', 0.6905349673755821, 0.30946503262441794, 0.37436961944700164, 'bro arent suppos use queue depth first stack breath first');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwkjtDHEU1uKS10ccJ4AaABAg', 'literally the best explanation possible. Thank you!', 0, 'Nicholas Redick', 'pcKY4hjDrxk', '2020-01-16 23:33:38', '2020-01-16 23:33:38', 'pos', 0.7449124079412914, 0.25508759205870857, 0.3633259521223781, 'liter best explan possibl thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxoYvNS2K_5QWVlgs94AaABAg', 'Salute to you sir!!', 0, 'Aman Ullah', 'pcKY4hjDrxk', '2020-01-16 18:25:15', '2020-01-16 18:25:46', 'neutral', 0.5680190346005292, 0.43198096539947084, 0.7170381701543883, 'salut sir');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx2k-WTcxiSBpZmVtB4AaABAg', 'L', 0, 'Mathi Vanan', 'pcKY4hjDrxk', '2020-01-16 10:16:21', '2020-01-16 10:16:21', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.8181168768530437, 'l');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxWjSRAPNOhsTfUoTh4AaABAg', 'I  like u professor thank you very much I clearly understand!', 0, 'Zelalem Dansa Shanka', 'pcKY4hjDrxk', '2020-01-12 19:05:49', '2020-01-12 19:05:49', 'neutral', 0.5267597495843284, 0.47324025041567164, 0.5641691040679592, 'like u professor thank much clearli understand');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzXfgcbX3VHOh03Qbh4AaABAg', 'Great explanation sir🙂🙂', 0, 'ANKIT GUPTA', 'pcKY4hjDrxk', '2020-01-12 06:30:14', '2020-01-12 06:30:14', 'pos', 0.7543335545599579, 0.24566644544004212, 0.40740546996405413, 'great explan sir🙂🙂');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugy3PXbUCyeUCQrSNtZ4AaABAg', 'thanks sir lots of love', 0, 'Husnain Umar', 'pcKY4hjDrxk', '2020-01-11 15:35:01', '2020-01-11 15:35:01', 'pos', 0.6887073505080439, 0.3112926494919561, 0.4744702152966573, 'thank sir lot love');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugy7YRt0wk3Br5YMXgp4AaABAg', 'Thank u sir😂😂😂', 0, 'Umair Khan', 'pcKY4hjDrxk', '2020-01-09 20:10:41', '2020-01-09 20:10:41', 'neutral', 0.5885347184910181, 0.4114652815089819, 0.8080909131955845, 'thank u sir😂😂😂');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzlQfBRc_PONHnng094AaABAg', '"This is the rule" sounds like, "This is the way"', 2, 'Mustafa İsmail Eyi', 'pcKY4hjDrxk', '2020-01-08 20:24:34', '2020-01-08 20:24:34', 'pos', 0.5202512449633432, 0.4797487550366568, 0.35480160519798537, 'rule sound like way');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugyi27gu8oWdBh8qq6N4AaABAg', 'algorithms นี้สามารถใช้เวลามากหรือน้อย และเราสามารถจับเวลาได้ไหมคะ?', 1, 'Jaruwan Jewnuch', '623M32VtOag', '2018-05-26 17:17:00', '2018-05-26 17:17:00', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'algorithm นี้สามารถใช้เวลามากหรือน้อย และเราสามารถจับเวลาได้ไหมคะ');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwDvd8qDPP1L-ITXmZ4AaABAg', '..ขั้นตอน insert ค่อนข้างยุ่งยาก ไม่ทราบว่า การเก็บข้อมูลแบบนี้ นำไปใช้ได้จริงรึเปล่าครับ?', 0, 'Sirawit Tasanapoom', '623M32VtOag', '2018-05-24 16:24:57', '2018-05-24 16:24:57', 'neutral', 0.46341631028293356, 0.5365836897170664, 0.5950890614040548, 'ขั้นตอน insert ค่อนข้างยุ่งยาก ไม่ทราบว่า การเก็บข้อมูลแบบนี้ นำไปใช้ได้จริงรึเปล่าครับ');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwtR9VtvW9dqbdPhhF4AaABAg', '0:26 today''s lecture is about randomized data structure called skip list
0:36 because it is randomized, we have to do probabilistic analysis
4:01 context of skip list
4:51 you can think of the skip list as beginning with a simple linked list
    5:09 first think of it as unsorted
    6:00 go ahead to think of it as sorted double-linked list
    6:20 you have a pointer to the front of the list 6:25 and it is double linked list
    6:27 Q: what is the complexity of search in a sorted double linked list
    7:30 sorting does not help with respect to the search
8:10 say we have two sorted linked list
    9:30 there is not going to be another element on top of each element
    10:21 the other linked list is randomized
    10:38 the given example is the subway stops - 7th revenue express line in New York city
12:15 basic notion of skip list
    12:53 it is really simple
14:15 expression of the search algorithm
16:00', 43, 'Rui Xue', '2g9OSRKJuzM', '2018-06-10 08:17:03', '2018-10-02 17:59:47', 'neutral', 0.5167268080385741, 0.48327319196142593, 0.826142962410121, '026 today lectur random data structur call skip list 036 random probabilist analysi 401 context skip list 451 think skip list begin simpl link list 509 first think unsort 600 go ahead think sort doublelink list 620 pointer front list 625 doubl link list 627 q complex search sort doubl link list 730 sort help respect search 810 say two sort link list 930 go anoth element top element 1021 link list random 1038 given exampl subway stop 7th revenu express line new york citi 1215 basic notion skip list 1253 realli simpl 1415 express search algorithm 1600');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzJFsuMES5cW045yB14AaABAg', 'wrong informations about the sqrt(n) complex while its'' log2(n)  because each level have half of the nodes', 2, 'Luca Paterlini', 'ypod5jeYzAU', '2019-05-30 15:20:15', '2019-05-30 15:20:15', 'neg', 0.4012401949775798, 0.5987598050224202, 0.27980869075632314, 'wrong inform sqrtn complex log2n level half node');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxWShpxJW3rb1Bxlt94AaABAg', 'How can this be useful if the list is not sorted, for that case, Do we need to sort the elements in increasing order, first????', 2, 'Sadistic Nepal', 'ypod5jeYzAU', '2018-02-01 07:43:41', '2018-02-01 07:43:41', 'pos', 0.6516714410904082, 0.3483285589095918, 0.44110900226226396, 'use list sort case need sort element increas order first');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyMyr8xlXSb6ZTVMTB4AaABAg', 'Great Video! Now I just have to figure out how to code all of this lol', 1, 'Cristian Londono', 'rhKuVZSsU_Q', '2019-10-14 17:24:49', '2019-10-14 17:24:49', 'pos', 0.5594203971591991, 0.4405796028408009, 0.41331239832466055, 'great video figur code lol');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyRb6Z9f-FDE51rQR14AaABAg', 'what happened to the coin flip process after inserting 16?', 0, 'Alex ZHANG', 'Dx7Hk8-8Kdw', '2019-10-19 23:18:50', '2019-10-19 23:18:50', 'neutral', 0.5597979596679099, 0.4402020403320901, 0.8628626918614968, 'happen coin flip process insert 16');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugw9EUS1roagxlG0q0J4AaABAg', 'Your explanation is really good, thank you so much.', 0, 'Malegere Sandhya', 'Dx7Hk8-8Kdw', '2018-02-05 05:46:38', '2018-02-05 05:46:38', 'pos', 0.6196658322485761, 0.3803341677514239, 0.24880281357433018, 'explan realli good thank much');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugh51RmFb6wcfngCoAEC', 'Do you consider node 9 already inserted while you insert 16 ? Or you begin from scratch it is not clear.', 0, 'volodymyr Kozubal', 'Dx7Hk8-8Kdw', '2017-07-16 21:14:04', '2017-07-16 21:14:04', 'neutral', 0.4233901170322767, 0.5766098829677233, 0.6745176186943129, 'consid node 9 alreadi insert insert 16 begin scratch clear');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UghlxQnQOGaJY3gCoAEC', 'Grate explanation, but I hoped you''ll have coding part on youtube too. No one have video of explanation of coding part.
I have understanding about double linked list coding and sorting too. But some codes I found on internet is bit too much for me to understand... at the moment.', 0, 'NeZvers', 'Dx7Hk8-8Kdw', '2016-04-30 13:56:21', '2016-04-30 13:56:21', 'neutral', 0.3469647178187011, 0.6530352821812989, 0.6517737438086041, 'grate explan hope youll code part youtub one video explan code part understand doubl link list code sort code found internet bit much understand moment');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwQlP4O1Z75pY9mv-h4AaABAg', 'This video helps me to do my report in Data structure and algorithm thank you so much! 💛', 0, 'Banana roti hearteu', 'iaBEKo5sM7w', '2019-11-13 12:57:47', '2019-11-13 12:57:47', 'neutral', 0.46752854227711954, 0.5324714577228804, 0.5828036885317521, 'video help report data structur algorithm thank much 💛');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwRPnMtXa5QbHaNNtB4AaABAg', 'this is a simple search strategy, but i have trouble handling with some misunderstanding about the stack. your video had solved it nice and tidy. i have no confusion now. thanks a lot.', 0, 'Tuấn Anh', 'iaBEKo5sM7w', '2019-10-30 19:09:06', '2019-10-30 19:09:06', 'pos', 0.6265636028905481, 0.37343639710945187, 0.18630147942409647, 'simpl search strategi troubl handl misunderstand stack video solv nice tidi confus thank lot');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugyg94r6JkYtDY8WSr94AaABAg', 'The output should be displayed in the reverse order in which you have it in the video, because you''re popping from the top of the stack, meaning the most recent element pushed in should be the first element popped out and returned to the output AKA Last In First Out(LIFO).', 0, 'Leo Zhang', 'iaBEKo5sM7w', '2019-05-31 15:27:05', '2019-05-31 15:27:05', 'neutral', 0.5714659493030257, 0.42853405069697426, 0.5776667567493536, 'output display revers order video your pop top stack mean recent element push first element pop return output aka last first outlifo');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugws4nTtZORlYqetwI54AaABAg', 'If teachers can teach there course like you in China''s college,the students'' life will be much better.I''m 31 years old software engineer, If I can learn from you when I was young in college, maybe I can be much better than now.', 1, 'Frio Hao', 'pcKY4hjDrxk', '2020-01-17 05:39:05', '2020-01-17 05:39:05', 'neutral', 0.7238061090711633, 0.2761938909288367, 0.7732027215942524, 'teacher teach cours like china colleg student life much better im 31 year old softwar engin learn young colleg mayb much better');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugxw4LxhTnLcmb-90md4AaABAg', 'u r best', 0, 'laiba butt', 'pcKY4hjDrxk', '2020-01-03 18:42:27', '2020-01-03 18:42:27', 'neutral', 0.7548477849039481, 0.2451522150960519, 0.7055892571404287, 'u r best');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzTCYkKgEPu2XN43QV4AaABAg', 'Thank you sir.', 0, 'Priyam Vashi', 'pcKY4hjDrxk', '2020-01-03 06:21:37', '2020-01-03 06:21:37', 'neutral', 0.5852696359823107, 0.41473036401768926, 0.6682781565013811, 'thank sir');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwKfK-OMkffoX76csd4AaABAg', 'Sir, DFS is inorder right?', 0, 'POOJA HARIDAS', 'pcKY4hjDrxk', '2020-01-02 04:40:56', '2020-01-02 04:40:56', 'neutral', 0.637420239582996, 0.362579760417004, 0.5271803585364451, 'sir df inord right');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugyd8HPy7l_k_y3pJvp4AaABAg', 'Thank you soo much  sir', 0, 'MD NADEEM', 'pcKY4hjDrxk', '2020-01-01 21:47:40', '2020-01-01 21:47:40', 'pos', 0.5510517111813329, 0.4489482888186671, 0.46681413616356515, 'thank soo much sir');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwO2hqWxhgKjAu762J4AaABAg', 'Awesome', 0, 'deepak chintala', 'pcKY4hjDrxk', '2020-01-01 17:12:36', '2020-01-01 17:12:36', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'awesom');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxZZujZb8IbV-Z3kcB4AaABAg', 'ถ้าจะทำการลบ node นึง.
แต่ node นั้นไม่มีอยู่ใน node ใดเลย จะเกิดอะไรขึ้นครับ?', 0, 'Utaiwat Klaykum', '623M32VtOag', '2018-05-24 16:03:42', '2018-05-24 16:03:42', 'neutral', 0.5241479270122538, 0.47585207298774623, 0.5950890614040548, 'ถ้าจะทำการลบ node นึง แต่ node นั้นไม่มีอยู่ใน node ใดเลย จะเกิดอะไรขึ้นครับ');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugy9a7WvUnGlAATj63t4AaABAg', 'I ask you to explain  traverse graph not tree .', 0, 'Suhrab Sharifi', 'pcKY4hjDrxk', '2020-01-04 10:54:27', '2020-01-04 10:54:27', 'neutral', 0.42688517549480576, 0.5731148245051942, 0.7733432214011948, 'ask explain travers graph tree');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwjGnEoqKxaDuWVaMl4AaABAg', 'i love abdul bari and the hello alians guy, they both explain so well', 0, 'afca', 'pcKY4hjDrxk', '2020-01-03 14:19:55', '2020-01-03 14:19:55', 'neutral', 0.6149930018768757, 0.38500699812312433, 0.5948221904634309, 'love abdul bari hello alian guy explain well');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzoupdIK6JCSAC6F6d4AaABAg', 'Thanks a lot, your explanation is very good. I just added ''frontier'' to my AI jargon, better than saying current variable.', 0, 'sanjarcode', '7QcoJjSVT38', '2019-11-18 14:29:38', '2019-11-18 14:30:17', 'pos', 0.5428026077038772, 0.4571973922961228, 0.1807389142137853, 'thank lot explan good ad frontier ai jargon better say current variabl');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugzl2XA-asgEnZhV3Fp4AaABAg', 'I''m to assume that if a node we hit IS a goal, we should stop the expansion there?', 1, 'Gaskin Foreman', '7QcoJjSVT38', '2019-10-18 16:13:45', '2019-10-18 16:13:45', 'neutral', 0.4440280200304751, 0.5559719799695249, 0.8828486058692614, 'im assum node hit goal stop expans');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyecIjm6dqRP3GR-X54AaABAg', 'This is such a coherent explanation, thank you! Could you point to any resources that deal with implementing IDDFS on a 2D array in particular languages (e.g. Java)? Cheers!', 0, 'TJ', '7QcoJjSVT38', '2019-09-26 02:25:43', '2019-09-26 02:25:43', 'pos', 0.5217705402165425, 0.47822945978345754, 0.3177955923773555, 'coher explan thank could point resourc deal implement iddf 2d array particular languag e g java cheer');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx3rfQ1AOKkHDAzZPx4AaABAg', 'Thank u sir', 0, 'ADRIANO RODRIGUEZ', '7QcoJjSVT38', '2019-05-13 09:39:54', '2019-05-13 09:39:54', 'neutral', 0.5885347184910181, 0.4114652815089819, 0.8080909131955845, 'thank u sir');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugyq9u887vmERG42hGt4AaABAg', 'If you think this is very complicated, watch this tutorial - https://www.youtube.com/watch?v=G2StfUE2qHU&pbjreload=10
Same thing, but easy to understand! :)', 0, 'Nethma Gunathilaka', '7QcoJjSVT38', '2019-02-20 08:40:04', '2019-02-20 08:40:04', 'neg', 0.4362529702227722, 0.5637470297772278, 0.41492081379754436, 'think complic watch tutori httpswww youtub comwatch vg2stfue2qhu pbjreload10 thing easi understand');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugw0hwrX3b7Wl9G9uHZ4AaABAg', 'Toronto!', 0, 'Sunny Singh', '7QcoJjSVT38', '2018-10-03 22:51:34', '2018-10-03 22:51:34', 'neutral', 0.5067867790758611, 0.4932132209241389, 0.5950890614040548, 'toronto');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UggDk65WxazLRXgCoAEC', 'Thank :)', 0, 'Gangbaolede Li', '7QcoJjSVT38', '2014-09-23 17:13:47', '2014-09-23 17:13:47', 'neutral', 0.5417195618656777, 0.4582804381343223, 0.5318181496726184, 'thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Uggi874QZLea43gCoAEC', 'helpful, thanks and God bless :)', 0, 'Okafor Dami', '7QcoJjSVT38', '2014-09-18 14:07:37', '2014-09-18 14:07:37', 'neutral', 0.5932274043981882, 0.4067725956018118, 0.6546540010521679, 'help thank god bless');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UghT4VGlH_zWUXgCoAEC', 'Very helpful, thank u Douglas!', 0, 'Johan Lund', '7QcoJjSVT38', '2014-06-26 14:19:05', '2014-06-26 14:19:05', 'neutral', 0.6050691926012657, 0.3949308073987343, 0.8321747525128907, 'help thank u dougla');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UghcESHy7OObYngCoAEC', 'Thank you. It helps. :-)', 0, 'Melrix', '7QcoJjSVT38', '2014-06-09 17:36:52', '2014-06-09 17:36:52', 'neutral', 0.5820973157603644, 0.4179026842396356, 0.6872237427045671, 'thank help');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz1ZSNmWiBn0mLEqEJ4AaABAg', 'thanks sir', 0, 'James Harden', '7QcoJjSVT38', '2017-10-08 14:57:54', '2017-10-08 14:57:54', 'neutral', 0.5852696359823107, 0.41473036401768926, 0.6682781565013811, 'thank sir');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugik73yZurwbK3gCoAEC', 'Why depth first search not halt? Does it assume that it doesn''t remember that it has visited it or not ?', 0, '施仲晉', '7QcoJjSVT38', '2017-04-18 03:51:46', '2017-04-18 03:51:46', 'neutral', 0.6576787047949265, 0.3423212952050735, 0.7136771971892765, 'depth first search halt assum doesnt rememb visit');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UghK-04224dkhngCoAEC', 'Good Explanation.
Dear Students To Learn In Urdu. Join Us.', 0, 'Asif Educational Expert Academy', '7QcoJjSVT38', '2017-03-07 10:33:19', '2017-03-07 10:33:19', 'neutral', 0.6658612421351293, 0.3341387578648707, 0.715544846301599, 'good explan dear student learn urdu join u');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjAiyOpJ0EvGHgCoAEC', 'So, its basically the pre-order traversal upto the given depth?', 2, 'Aman Garg', '7QcoJjSVT38', '2017-02-17 18:25:55', '2017-02-17 18:25:55', 'neg', 0.4401282750249456, 0.5598717249750544, 0.40856933668004297, 'basic preorder travers upto given depth');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjB4iMGiPJjp3gCoAEC', 'Thank you this was really helpful for my AI class :)', 11, 'Lori Kougioumtzian', '7QcoJjSVT38', '2016-10-29 09:43:15', '2016-10-29 09:43:15', 'neutral', 0.5865375715154348, 0.41346242848456516, 0.6872237427045671, 'thank realli help ai class');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugj4hxktPPhUR3gCoAEC', 'Is it possible to have the slides?', 0, 'Matteo Muscella', '7QcoJjSVT38', '2016-08-29 16:28:51', '2016-08-29 16:28:51', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5225935369314391, 'possibl slide');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ughc4fEVkPdTnXgCoAEC', 'Maksud e sat', 0, 'Mdzul Fahmy', '7QcoJjSVT38', '2016-06-26 07:06:13', '2016-06-26 07:06:13', 'neutral', 0.456299769737934, 0.5437002302620659, 0.5950890614040548, 'maksud e sat');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjXElsi6MtmWngCoAEC', 'What about with a graph? Do you keep checking nodes that have already been seen?', 2, 'koby pascual', '7QcoJjSVT38', '2016-02-17 17:20:03', '2016-02-17 17:20:03', 'pos', 0.5926544450176967, 0.4073455549823033, 0.4694623345680382, 'graph keep check node alreadi seen');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjuFYRnHz63sXgCoAEC', 'Helpful.............', 0, 'shahrukh631', '7QcoJjSVT38', '2015-06-06 17:10:49', '2015-06-06 17:10:49', 'neutral', 0.5192349907945645, 0.4807650092054355, 0.7379805994240102, 'help');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugg8W7hIVnoUPngCoAEC', 'Excellent!', 0, 'RoccoBrazilec', '7QcoJjSVT38', '2015-04-29 19:39:56', '2015-04-29 19:39:56', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'excel');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UghJG3RtEh-5u3gCoAEC', 'I understand the simple implementation of DFS has a runtime of time of O(|V| +E). However, shouldn’t your detailed implementation of DFS (at ~4:13 mark) have a runtime of O(   V* (|V| +E)  ) due to the outer loop in the DFS() method.  We are *touching every vertex twice, once to discover it and the second time to see if it has been discovered.  

Due to the reset, the entire runtime will be O(   |V| +   V* (|V| +E)  ), which is then reduced to  O(   V* (|V| +E)  ).  I’m correct?

Also, why do you have |V| in your runtime of the graph, instead of a simple V? What is the difference between |V| vs. V?

Thank again,', 0, 'koeber99', 'qH-mHxkoK0Q', '2017-07-01 18:55:35', '2017-07-01 18:56:51', 'pos', 0.7307358677655404, 0.26926413223445955, 0.32027553046458795, 'understand simpl implement df runtim time ov e howev ’ detail implement df 413 mark runtim v v e due outer loop df method touch everi vertex twice discov second time see discov due reset entir runtim v v v e reduc v v e ’ correct also v runtim graph instead simpl v differ v v v thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwRhNMYmKlOOK4TAeh4AaABAg', '7:58 - Was that a deadpan reference to the AC/DC song, or have I just watched this video one too many times?', 0, 'Niket Bhodia', 'qH-mHxkoK0Q', '2019-05-07 19:33:31', '2019-05-07 19:33:31', 'pos', 0.5738589844114611, 0.4261410155885389, 0.11058024031585661, '758 deadpan refer acdc song watch video one mani time');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz2kFZiNWAHvsIK_Ih4AaABAg', 'Hahah "what''s that smell" - I am so glad I found these. You explain it well without being superficial, and the examples are great!', 1, 'Schroedinger Cat', 'qH-mHxkoK0Q', '2019-04-30 14:18:26', '2019-04-30 14:18:26', 'pos', 0.7461866868177809, 0.2538133131822191, 0.18058811559831245, 'hahah what smell glad found explain well without superfici exampl great');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzkX432rbP-kd1wElJ4AaABAg', 'Quality', 0, 'AmongStar', 'fkAGII1caoU', '2018-03-08 08:21:41', '2018-03-08 08:21:41', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'qualiti');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyhxoeVOgHlXTOJAt94AaABAg', 'aee betichod video to shi upload krta', 0, 'krishna', 'SS11RsuwXig', '2018-09-27 14:06:40', '2018-09-27 14:06:40', 'neg', 0.4084564506260204, 0.5915435493739796, 0.4934926585288282, 'aee betichod video shi upload krta');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugwxs16KLXNoRvL-cVB4AaABAg', 'why the screen is upside-down ?', 0, 'horriblefate', 'SS11RsuwXig', '2018-08-20 05:36:53', '2018-08-20 05:36:53', 'neg', 0.4227553292178887, 0.5772446707821113, 0.3940582694467258, 'screen upsidedown');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyiHl9Ys5409EWSndF4AaABAg', 'Kinda used 11:07''s DFS(G) in the 23-tree lab. I''ve used something similar when writing a filesystem scanner but didn''t know it was called DFS.', 0, 'Yisheng Jiang', 'qH-mHxkoK0Q', '2019-03-17 18:13:50', '2019-03-17 18:13:50', 'neutral', 0.36078093826100394, 0.6392190617389961, 0.5697272695002918, 'kinda use 1107 dfsg 23tree lab ive use someth similar write filesystem scanner didnt know call df');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzOnnX45mCLZQfCZNN4AaABAg', 'Thank god I know how to make the screen upside-down 
You should provide more details', 2, 'Udbhav Kalra', 'SS11RsuwXig', '2017-09-07 03:45:05', '2017-09-07 03:45:05', 'pos', 0.5624718726839307, 0.43752812731606927, 0.36330354610607474, 'thank god know make screen upsidedown provid detail');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz3uIRa3ywt_4LLARB4AaABAg', 'For the last line of RESETGRAPH(G), shouldn’t it be time = 0?', 0, 'Ajay Abraham', 'qH-mHxkoK0Q', '2019-10-06 23:20:51', '2019-10-06 23:20:51', 'neutral', 0.4216073095890641, 0.5783926904109359, 0.6971948195567026, 'last line resetgraphg ’ time 0');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzGeX9fLE-C7RDiB5N4AaABAg', 'at 8:28, to explain forward edge, you said "G is finished, but it''s discovery time is after D", isn''t that the same for the back edge B->A? B''s discovery time is after A, and it finished before A as well?', 0, 'Jessie Gao', 'qH-mHxkoK0Q', '2019-07-27 20:30:49', '2019-07-27 20:30:49', 'neutral', 0.43618404154903073, 0.5638159584509692, 0.744209609772064, '828 explain forward edg said g finish discoveri time isnt back edg ba b discoveri time finish well');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugyr4yaem877yiTckyJ4AaABAg', 'VERY WELL!! NICE EXPLANATION', 0, 'Firelizz', 'qH-mHxkoK0Q', '2019-06-17 19:33:50', '2019-06-17 19:33:50', 'pos', 0.6811454345792967, 0.31885456542070334, 0.13116640607053756, 'well nice explan');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgycMekdR7f9nZS23fp4AaABAg', 'at 5:27, is the $time variable ''u.discovery = time++'' and ''u.discovery = time++'' some sort of global static variable? does recursive calls toDFSVertex(v) each increment this variable (twice per call).', 0, 'Yisheng Jiang', 'qH-mHxkoK0Q', '2019-03-17 18:06:29', '2019-03-17 18:06:29', 'neutral', 0.5493468791497202, 0.45065312085027975, 0.5024551170631791, '527 time variabl u discoveri time u discoveri time sort global static variabl recurs call todfsvertexv increment variabl twice per call');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugwm3RmY9FpTdt1mgY14AaABAg', 'These videos were great, very well explained!', 0, 'dinesh jagai', 'qH-mHxkoK0Q', '2019-03-13 21:34:52', '2019-03-13 21:34:52', 'pos', 0.6546514457131746, 0.3453485542868254, 0.3363932556630849, 'video great well explain');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwpRvMa5MddwJ1JwLB4AaABAg', 'Non recursive implementation is difficult to understand.', 0, 'Aman Kumar Kashyap', 'qH-mHxkoK0Q', '2019-03-02 07:02:15', '2019-03-02 07:02:15', 'neg', 0.3463950846315913, 0.6536049153684087, 0.11241843656352342, 'non recurs implement difficult understand');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwTlvlPCFvO0q1SP3R4AaABAg', 'The video was very helpful and contributed massively to my coursework considering how short it was. Thanks!', 0, 'Manol Tonchev', 'qH-mHxkoK0Q', '2018-11-30 02:23:18', '2018-11-30 02:23:18', 'neutral', 0.44065673693192353, 0.5593432630680765, 0.5503471404922349, 'video help contribut massiv coursework consid short thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzsXSwdfxtQZlmPYGV4AaABAg', 'wouldn''t the edge from D to F also be a blue forward edge?', 0, 'ATLOO1', 'qH-mHxkoK0Q', '2018-08-17 05:09:17', '2018-08-17 05:09:17', 'neutral', 0.5393406876894912, 0.46065931231050883, 0.5245632068068801, 'wouldnt edg f also blue forward edg');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwyKo5juCL9xRIA7Dt4AaABAg', 'Hi, May you please explain how you get the finishing times for every vertex, that''s the one thing that confuses me. For example at 5:03 , vertex G gets a finishing time of 5, then vertex B gets a finishing time of 6 then there''s a massive jump in size where vertex C somehow gets a finishing time of 9. But how, thanks a lot in advance.', 0, 'Adam Deacon', 'qH-mHxkoK0Q', '2018-01-11 20:23:16', '2018-01-11 20:23:16', 'neg', 0.46670817184772484, 0.5332918281522752, 0.36507797143926884, 'hi may pleas explain get finish time everi vertex that one thing confus exampl 503 vertex g get finish time 5 vertex b get finish time 6 there massiv jump size vertex c somehow get finish time 9 thank lot advanc');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyEYXV1QjnkZf9Qmet4AaABAg', 'i learned nothing from this and all other videos on Youtube. Its still confusing how all these algorithms work and are implemented.', 0, 'TheUmbrellaCorpX7[エヴ]', 'qH-mHxkoK0Q', '2017-12-04 03:07:04', '2017-12-04 03:07:04', 'neutral', 0.46958946551336794, 0.5304105344866321, 0.5186605386458131, 'learn noth video youtub still confus algorithm work implement');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzKkco08e-tbKlEHLV4AaABAg', 'Finally, most informative info on DFS and I''ve been looking for an hour. Thanks!', 0, 'TheMAM', 'qH-mHxkoK0Q', '2017-11-09 02:52:25', '2017-11-09 02:52:25', 'neg', 0.47517070978582576, 0.5248292902141742, 0.12512265349276688, 'final inform info df ive look hour thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzFzKWKiYojnBvTgIN4AaABAg', 'Excellent explnation!', 0, 'Hello World', 'qH-mHxkoK0Q', '2017-10-26 19:20:54', '2017-10-26 19:20:54', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'excel explnat');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz0udPmAGPB69giWKl4AaABAg', 'Great content!, thank you!. You got one new Subscriber!', 1, 'Erik Porroa', 'qH-mHxkoK0Q', '2017-08-18 16:56:30', '2017-08-18 16:56:30', 'pos', 0.6475711309196195, 0.3524288690803805, 0.39249618375409967, 'great content thank got one new subscrib');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UggUFT9kaFdzQ3gCoAEC', 'niqqa you good', 0, 'elton nyahora', 'qH-mHxkoK0Q', '2017-06-11 10:31:23', '2017-06-11 10:31:23', 'pos', 0.6430542795156622, 0.3569457204843378, 0.27524987150901575, 'niqqa good');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgisJWbRXGnd0HgCoAEC', 'beautiful explanaton...', 1, 'SHUBHAM ITANKAR', 'qH-mHxkoK0Q', '2017-04-19 14:03:20', '2017-04-19 14:03:20', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'beauti explanaton');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugh5c-DCGzRDv3gCoAEC', 'pseudocode for print output in unweighted graph???', 0, 'Dipa khatun munna', 'qH-mHxkoK0Q', '2017-03-13 19:35:50', '2017-03-13 19:35:50', 'neutral', 0.4942941430761222, 0.5057058569238778, 0.5950890614040548, 'pseudocod print output unweight graph');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwIrkIkTHLzEsWahbB4AaABAg', 'OMG, I understood BFS in 5min.! this is good material.', 0, 'Antony', 'pcKY4hjDrxk', '2020-01-20 16:12:10', '2020-01-20 16:12:10', 'pos', 0.6542413017223413, 0.3457586982776587, 0.27524987150901575, 'omg understood bf 5min good materi');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwsO3yOfDyzjK59v154AaABAg', 'Sir, I used your videos to study for algorithms and design class last academic term. I am back, but this time, in order to prepare for technical interview with Yahoo. Thank you so much.', 1, 'moon_disaster', 'pcKY4hjDrxk', '2020-01-20 11:45:02', '2020-01-20 11:45:02', 'neutral', 0.5483020553601928, 0.45169794463980717, 0.7356395755608626, 'sir use video studi algorithm design class last academ term back time order prepar technic interview yahoo thank much');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyJs3hTBeNvk9pQPhZ4AaABAg', 'a very stupid video. dont watch it, there are plenty of videos way better than this.', 0, 'M-Ray', 'nzGSoiGbFig', '2013-01-12 19:18:57', '2013-01-12 19:18:57', 'neg', 0.20977927951179426, 0.7902207204882057, 0.11771393216528758, 'stupid video dont watch plenti video way better');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugw2CNzUjJLLA6DwQEd4AaABAg', 'Hey Guys, Now we have launched our own website www.gatevidyalay.com
Kindly visit that website and you can download the notes from there and get other study material!
If you can provide any suggestions regarding the improvement of YouTube channel as well as website...we would definitely love to have them!
All the best...Keep learning :)', 1, 'LearnVidFun', 'SvbF-L_8Edw', '2018-03-25 08:52:43', '2018-03-25 08:52:43', 'neutral', 0.7315035196856303, 0.2684964803143697, 0.6573376523078768, 'hey guy launch websit www gatevidyalay com kindli visit websit download note get studi materi provid suggest regard improv youtub channel well websit would definit love best keep learn');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxZ62ZImyhsJS0yWrB4AaABAg', 'Really loved the way you have taught the concepts and your website is commendable. It really helps during the quick revision. However I have noticed that you have been inactive for over a year. How you would make more contents soon', 0, 'Anto Anish', 'SvbF-L_8Edw', '2019-01-15 14:31:40', '2019-01-15 14:31:40', 'neutral', 0.6858036406221111, 0.3141963593778889, 0.7312998032392857, 'realli love way taught concept websit commend realli help quick revis howev notic inact year would make content soon');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzHnyamAWtAkgPUm9V4AaABAg', 'Thnku so much brother', 0, 'Sanjay kumar', 'SvbF-L_8Edw', '2018-12-03 10:58:38', '2018-12-03 10:58:38', 'neutral', 0.46514756397100804, 0.5348524360289919, 0.6970666608346431, 'thnku much brother');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx-XSbdTsb9BPDtNYd4AaABAg', 'You should reduce the number of "rights"  and perhaps replace them with a few "lefts".', 1, 'c.daniel Premkumar', 'SvbF-L_8Edw', '2018-10-14 15:36:59', '2018-10-14 15:36:59', 'neutral', 0.4572940198239271, 0.542705980176073, 0.6158430332650106, 'reduc number right perhap replac left');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzdxQhoCLntVfMDSAx4AaABAg', 'sir i want about backtracking  queens model problem please can u keep it', 0, 'sravani vankayalapati', 'SvbF-L_8Edw', '2018-09-25 17:21:24', '2018-09-25 17:21:24', 'neutral', 0.49578570242991143, 0.5042142975700885, 0.8633918073207352, 'sir want backtrack queen model problem pleas u keep');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzOiKZWQpSysi17ePN4AaABAg', 'Please upload video on BFS please asap', 1, 'Suraj Mahato', 'SvbF-L_8Edw', '2018-09-23 14:43:02', '2018-09-23 14:43:02', 'neg', 0.4274335306527093, 0.5725664693472907, 0.4934926585288282, 'pleas upload video bf pleas asap');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz1-VoeX195AcQ1lSx4AaABAg', 'Awesome work', 0, 'Nosheen Malik', 'SvbF-L_8Edw', '2018-09-08 21:32:05', '2018-09-08 21:32:05', 'neutral', 0.4645838096557275, 0.5354161903442725, 0.5632123070226548, 'awesom work');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwrilZ3iKSCvfXZf614AaABAg', 'It was osm,plzz sir upload bfs', 1, 'sheetal Deo lucky', 'SvbF-L_8Edw', '2018-06-20 05:12:54', '2018-06-20 05:12:54', 'neutral', 0.5467993667093062, 0.4532006332906938, 0.6575910835047992, 'osm plzz sir upload bf');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzjrVSf3DVWk4KVqVp4AaABAg', '1.25X and u r good to go! great an clean notes!!  rrigght! :D', 1, 'AVIK MUKHERJEE', 'SvbF-L_8Edw', '2018-05-19 07:46:46', '2018-05-19 07:46:46', 'neutral', 0.7016371014201639, 0.2983628985798361, 0.6001299883949837, '1 25x u r good go great clean note rrigght');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwakPD3x5TfzV9ZGuZ4AaABAg', 'badal251297@gmail.com', 1, 'Badal Kumar', 'SvbF-L_8Edw', '2018-05-14 06:47:53', '2018-05-14 06:47:53', 'neutral', 0.4190453801869894, 0.5809546198130107, 0.5950890614040548, 'badal251297 gmail com');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwKnudrTu24jxCdlyR4AaABAg', 'sir,ur video is awesome. plz upload bfs algorithm...:(', 1, 'VASAVI SRILEKHA', 'SvbF-L_8Edw', '2018-05-06 21:17:02', '2018-05-06 21:17:02', 'neutral', 0.49342144336830884, 0.5065785566316912, 0.6224236817823207, 'sir ur video awesom plz upload bf algorithm');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwrjDQS2IoaaMJkfFp4AaABAg', 'Explanation is better', 1, 'Rishu Singh', 'SvbF-L_8Edw', '2018-04-24 19:33:05', '2018-04-24 19:33:05', 'pos', 0.5431056245502177, 0.4568943754497823, 0.3303618732469906, 'explan better');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyqytGOMpUxNzBHFXp4AaABAg', 'Sir i try your second problem before seen the Video then i got the Final Output as G F C B E D A i think it was just because i Select different Vertices Like A >> D instead of A >> B (as you shown in video). So Finally i wants the answer that Is it possible that we may have different  different output of the same problem and Is it also rights or not ??  thanks in advance i hope you clear my Confusion..', 1, 'Omshri Chouhan', 'SvbF-L_8Edw', '2017-12-22 10:53:56', '2017-12-22 10:53:56', 'pos', 0.5201072620361215, 0.47989273796387855, 0.483010386837835, 'sir tri second problem seen video got final output g f c b e think select differ vertex like instead b shown video final want answer possibl may differ differ output problem also right thank advanc hope clear confus');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwZ9UAJpmlQiOvIyCR4AaABAg', 'very neat and clean notes!', 2, 'Sheth Nisarg', 'SvbF-L_8Edw', '2017-11-26 09:09:46', '2017-11-26 09:09:46', 'neg', 0.43432791537824134, 0.5656720846217587, 0.2887420681207441, 'neat clean note');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz-QdPibm40efFawFR4AaABAg', 'mail me chutkirana1998@gmail.com', 1, 'chanderrekha thakur', 'SvbF-L_8Edw', '2017-11-19 12:03:00', '2017-11-19 12:03:00', 'neutral', 0.4732729503912578, 0.5267270496087422, 0.6535457544152942, 'mail chutkirana1998 gmail com');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxGq1C_-fmbx7UuemF4AaABAg', 'Can u send me note of algorithms plz ..my exam very near plz send me my email I''d is   sayka37@gmail.com', 1, 'Sayka37 Tamkeen', 'SvbF-L_8Edw', '2017-11-15 14:17:27', '2017-11-15 14:17:27', 'neutral', 0.4326078634250872, 0.5673921365749128, 0.7286458864884064, 'u send note algorithm plz exam near plz send email id sayka37 gmail com');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugzra_h8PFomPbDMhhZ4AaABAg', 'Wow grt job keep it up', 1, 'Sayka37 Tamkeen', 'SvbF-L_8Edw', '2017-11-15 14:15:33', '2017-11-15 14:15:33', 'pos', 0.5913237557170623, 0.4086762442829377, 0.23785605481401484, 'wow grt job keep');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgysejZ_Z_KKIRdNOlN4AaABAg', 'Your all the videos are very nicely explain brother..
There no need to change and method in your video lecture , all the lecture are well explained and perfect , any one can easily understand your vedeo lecturer
Thank you brother for sharing us your knowledge and i please share other video with us 
Thank you (``learning vid fun``)', 2, 'Yogesh Rohit', 'SvbF-L_8Edw', '2017-11-15 05:47:55', '2017-11-15 05:47:55', 'neutral', 0.873478831388899, 0.12652116861110096, 0.6169535928736399, 'video nice explain brother need chang method video lectur lectur well explain perfect one easili understand vedeo lectur thank brother share u knowledg pleas share video u thank learn vid fun');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugwcn9yJSi4jGlZOsbd4AaABAg', 'Awesome  video Sir Ji', 1, 'Twinkle Maddeshiya', 'SvbF-L_8Edw', '2017-11-09 18:21:15', '2017-11-09 18:21:15', 'neutral', 0.4912682036607669, 0.508731796339233, 0.6899659001732751, 'awesom video sir ji');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx4wbgJxbXlt_pZcJF4AaABAg', 'Ur teaching is awesome.can u send notes for 0/1 knapsack & DFS to anithaguna2012@gmail.com', 1, 'anitha devi g', 'SvbF-L_8Edw', '2017-11-03 13:37:55', '2017-11-03 13:37:55', 'neutral', 0.4228197506097704, 0.5771802493902296, 0.8807240040155344, 'ur teach awesom u send note 01 knapsack df anithaguna2012 gmail com');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx5dV34ER9i2RuqMPR4AaABAg', 'thank you sir', 0, 'isac', 'iaBEKo5sM7w', '2020-01-04 22:14:10', '2020-01-04 22:14:10', 'neutral', 0.5852696359823107, 0.41473036401768926, 0.6682781565013811, 'thank sir');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzQtYrZKS9ZIpFRofd4AaABAg', '1st step main hi bilkul clear ho gya', 0, 'Muskaan Mittal', 'iaBEKo5sM7w', '2019-11-22 14:40:17', '2019-11-22 14:40:17', 'pos', 0.5685259147223602, 0.43147408527763975, 0.4418070726509506, '1st step main hi bilkul clear ho gya');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgznXKKXR5pL3P_NNcZ4AaABAg', 'The output of this is code is A only .I m not getting the path', 0, 'VAIBHAV VIKRAM SINGH', 'FGswVJHx5Hk', '2019-07-14 12:42:45', '2019-07-14 12:42:45', 'neutral', 0.47321310789085697, 0.526786892109143, 0.879188729829396, 'output code get path');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzLgc2P53nlh52L_lF4AaABAg', 'is the time complexity for this still O(V+E) like the recursive dfs?', 0, 'Arunika Oyshi', 'FGswVJHx5Hk', '2019-02-02 06:01:31', '2019-02-02 06:01:31', 'pos', 0.56803040952675, 0.43196959047325, 0.2842397332583145, 'time complex still ove like recurs df');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyQuNWAfN5xcalANK94AaABAg', 'You managed to condense half a lecture into less than two minutes, Thank You', 18, 'ZomBitch007', 'ypod5jeYzAU', '2018-02-06 12:36:08', '2018-02-06 12:36:08', 'neg', 0.49264410885470483, 0.5073558911452951, 0.4657762182829342, 'manag condens half lectur le two minut thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxhSbizQ0desNYsjzd4AaABAg', 'spot on information in just 1 and half minute. kudos', 35, 'Paras Chawla', 'ypod5jeYzAU', '2017-11-09 16:31:39', '2017-11-09 16:31:39', 'neg', 0.36248334191204173, 0.6375166580879583, 0.33332705370272375, 'spot inform 1 half minut kudo');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UggDK_Ptmjij3ngCoAEC', 'Well Explained! :)', 0, 'Hashir Baig', 'r-xQ9dvmMko', '2016-10-18 18:40:21', '2016-10-18 18:40:21', 'neutral', 0.5149533065045061, 0.4850466934954939, 0.687986370552463, 'well explain');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzffmkwgY4NntbDfB94AaABAg', 'nice expalnation
', 0, 'siddhant jain', 'r-xQ9dvmMko', '2012-10-06 06:18:20', '2012-10-06 06:18:20', 'pos', 0.6472145653268888, 0.3527854346731112, 0.194226456465732, 'nice expaln');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyPs-5atxCMQvij6Ih4AaABAg', 'this video starts from 1:12', 0, 'intoeleven', 'rhKuVZSsU_Q', '2020-01-13 23:03:24', '2020-01-13 23:03:24', 'neutral', 0.3962719412833369, 0.6037280587166631, 0.6630595327903674, 'video start 112');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzPkdq5QN6VgDtLart4AaABAg', 'short and sweet, thank you!', 1, 'spasman', 'rhKuVZSsU_Q', '2020-01-08 15:27:28', '2020-01-08 15:27:28', 'pos', 0.6194925598373918, 0.3805074401626082, 0.278985978092896, 'short sweet thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyEDuqPsPKYj0x0KsR4AaABAg', 'Good Video! Thank You!', 1, 'Brainy Hunt', 'rhKuVZSsU_Q', '2019-03-07 17:21:12', '2019-03-07 17:21:12', 'pos', 0.6004402506103648, 0.39955974938963523, 0.21609910418186293, 'good video thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzBDNSFBZ8HZDitF6R4AaABAg', 'This is the  best video on skip list..', 2, 'Pulkit Patel', 'rhKuVZSsU_Q', '2018-12-06 17:42:48', '2018-12-06 17:42:48', 'pos', 0.6027096975236286, 0.3972903024763714, 0.3069626381630925, 'best video skip list');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyNBkkT-4YFjxofEft4AaABAg', 'Great style', 6, 'Kendrick Timothy Mercado', 'rhKuVZSsU_Q', '2018-09-01 11:15:14', '2018-09-01 11:15:14', 'pos', 0.7497114821951735, 0.2502885178048265, 0.16863906045046673, 'great style');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz1BnrH7hJseDxRZJh4AaABAg', 'Whats the damn hurry? Speak slowly Bro..', 7, 'Ron Montreal', 'rhKuVZSsU_Q', '2018-06-12 04:26:04', '2018-06-12 04:26:04', 'pos', 0.551205525299141, 0.448794474700859, 0.44662330151700735, 'what damn hurri speak slowli bro');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx6seoliiqCgSNZPlx4AaABAg', 'Lot of help. thanks!', 0, 'Younggil Tak', 'Dx7Hk8-8Kdw', '2019-09-17 02:09:33', '2019-09-17 02:09:33', 'neutral', 0.586083873322715, 0.41391612667728495, 0.5778734975002036, 'lot help thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxgYR0VXO7Fx_a1sOR4AaABAg', '7:21
why didn''t you skip to the 9?', 2, 'bartalor', 'Dx7Hk8-8Kdw', '2019-07-13 17:04:34', '2019-07-13 17:04:34', 'neutral', 0.3482510639122285, 0.6517489360877715, 0.5120151380287653, '721 didnt skip 9');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwjLti5I_vMWpSLGrd4AaABAg', 'Chujowe', 0, 'Blend all', 'Dx7Hk8-8Kdw', '2019-03-26 22:29:05', '2019-03-26 22:29:05', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'chujow');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyShhs9J4-96C1jUMp4AaABAg', 'This was so helpful! My instructor made it seem much more difficult. I now understand why it is called a Skip List!', 3, 'Shane Saunders', 'Dx7Hk8-8Kdw', '2017-09-14 04:26:21', '2017-09-14 04:26:21', 'neg', 0.33459563012939786, 0.6654043698706021, 0.05261058271761548, 'help instructor made seem much difficult understand call skip list');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjPtV_THSNtJHgCoAEC', 'Thank you!', 0, 'Nguyen Nguyen', 'Dx7Hk8-8Kdw', '2017-07-25 04:39:07', '2017-07-25 04:39:07', 'neutral', 0.5417195618656777, 0.4582804381343223, 0.5318181496726184, 'thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgjnCAJTXbJxM3gCoAEC', 'God bless you', 1, 'Brazo07', 'Dx7Hk8-8Kdw', '2017-04-16 11:53:20', '2017-04-16 11:53:20', 'neutral', 0.5486255926538106, 0.4513744073461894, 0.6377776439003584, 'god bless');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ughjl3UwnQIoaXgCoAEC', '2 years later and still useful. You''re a champ!', 0, 'Ancient Laws', 'Dx7Hk8-8Kdw', '2016-12-31 12:08:46', '2016-12-31 12:08:46', 'neutral', 0.598470807778133, 0.401529192221867, 0.8127883571630825, '2 year later still use your champ');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugj_MDt0Q0L4WngCoAEC', 'very good explanation. One question is how would you determine how many coin flips you need to insert an element N ?', 1, 'rajesh rao', 'Dx7Hk8-8Kdw', '2016-05-25 02:05:32', '2016-05-25 02:05:32', 'pos', 0.5825370276562789, 0.4174629723437211, 0.31707795257597177, 'good explan one question would determin mani coin flip need insert element n');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugg3uXrKsObY83gCoAEC', 'Thanks man, I appreciate this video. It gave me a good idea of how Skip List insertions work. Thanks alot', 0, 'Rockwell', 'Dx7Hk8-8Kdw', '2015-10-30 19:22:48', '2015-10-30 19:22:48', 'neg', 0.49993276408517845, 0.5000672359148215, 0.18676935411858664, 'thank man appreci video gave good idea skip list insert work thank alot');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UggTs0LVRO3qoXgCoAEC', 'Thank you!', 6, 'Felipe Bravo', 'Dx7Hk8-8Kdw', '2015-05-11 13:05:29', '2015-05-11 13:05:29', 'neutral', 0.5417195618656777, 0.4582804381343223, 0.5318181496726184, 'thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgibdvnFO0q-1ngCoAEC', 'good jobe, thx , thumb up!', 2, 'Владимир Троеглазов', 'Dx7Hk8-8Kdw', '2015-01-18 14:06:02', '2015-01-18 14:06:02', 'pos', 0.653158107063841, 0.34684189293615897, 0.27524987150901575, 'good jobe thx thumb');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UggRDqyPEJz9D3gCoAEC', 'Super helpful, thanks', 4, 'the datamancer', 'Dx7Hk8-8Kdw', '2014-10-21 15:37:20', '2014-10-21 15:37:20', 'neutral', 0.6083156253514423, 0.39168437464855765, 0.505585690283274, 'super help thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgwI6VWZVN8gNebmUkB4AaABAg', 'สามารถเพิ่ม node ได้ไหมครับ', 1, 'Itsarapong Chaiyathum', '623M32VtOag', '2018-05-26 19:41:04', '2018-05-26 19:42:03', 'neutral', 0.5241479270122538, 0.47585207298774623, 0.5950890614040548, 'สามารถเพิ่ม node ได้ไหมครับ');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyIClnwAdNg6fYjXgN4AaABAg', 'เป็นกำลังใจให้ค่ะ', 0, 'Pitchayapa 59160290', '623M32VtOag', '2018-05-25 03:02:21', '2018-05-25 03:02:21', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'เป็นกำลังใจให้ค่ะ');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzPh6q_hEIopmKPX-h4AaABAg', 'เหนื่อยหน่อยนะครับ เนื้อหาเยอะมากเลย', 0, 'Sirawit Tasanapoom', '623M32VtOag', '2018-05-24 16:24:47', '2018-05-24 16:24:47', 'neutral', 0.4904480010932484, 0.5095519989067516, 0.5950890614040548, 'เหนื่อยหน่อยนะครับ เนื้อหาเยอะมากเลย');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyANmJxAsAPvVJm4Cp4AaABAg', 'this guy teaches better than all my prof ; wish i was an MIT student !!!', 3, 'The big bang comedy channel', '2g9OSRKJuzM', '2019-11-10 08:09:50', '2019-11-10 08:09:50', 'neutral', 0.5233959224367716, 0.4766040775632284, 0.6384210020520505, 'guy teach better prof wish mit student');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgyuN951W8bIricMQ5V4AaABAg', 'good presentation', 0, 'pallavi buroju', 'ypod5jeYzAU', '2019-03-03 18:19:05', '2019-03-03 18:19:05', 'pos', 0.6344041590990542, 0.36559584090094577, 0.49180389208109937, 'good present');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgzNFXOWccLcys-Q15R4AaABAg', 'thank you a lot <3', 0, 'Agnieszka Rutkowska', 'ypod5jeYzAU', '2019-02-06 23:23:53', '2019-02-06 23:23:53', 'pos', 0.5554539863763511, 0.4445460136236489, 0.4936345082445082, 'thank lot 3');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz98IB1V7TqTEKzR7N4AaABAg', 'Very short and sweet', 0, 'ur madhu', 'ypod5jeYzAU', '2018-11-14 02:27:41', '2018-11-14 02:27:41', 'pos', 0.5882956459988365, 0.41170435400116345, 0.31211377283833, 'short sweet');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxtsCscSf6CpwUGpw14AaABAg', 'isn''t it the avg search time complexity of skip list is O(log n). Please update', 8, 'C/C++ Interview Topics', 'ypod5jeYzAU', '2018-04-14 09:11:32', '2018-04-14 09:11:56', 'neutral', 0.48061208690176727, 0.5193879130982327, 0.6261476327808299, 'isnt avg search time complex skip list olog n pleas updat');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugz2uIhCz4Q5ENaAuQZ4AaABAg', 'Music for dying', 0, 'RagazzoKZ', 'ypod5jeYzAU', '2019-10-23 11:45:33', '2019-10-23 11:45:33', 'neutral', 0.5173442294870259, 0.48265577051297415, 0.5790672398347515, 'music die');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('Ugx7yCXrbwTgQ-R1X6J4AaABAg', 'excellent thank you', 0, 'Erkc', 'pcKY4hjDrxk', '2020-01-18 08:39:20', '2020-01-18 08:39:20', 'neutral', 0.5417195618656777, 0.4582804381343223, 0.5318181496726184, 'excel thank');
INSERT INTO public.comments (c_id, text, likes, author, video_id, published_at, updated_at, sentiment, prob_pos, prob_neg, prob_neutral, clean_text) VALUES ('UgxU9F1dBlqEx5CN0gp4AaABAg', 'You just summarized 25% - 40% of the Chapter and it''s Questions in 18 minutes. Thank you very much! Best fast-taught video on BFS and DFS!', 1, 'Victor Chrispin Samson', 'pcKY4hjDrxk', '2020-01-17 11:11:02', '2020-01-17 11:11:02', 'neutral', 0.6639571254743845, 0.33604287452561554, 0.6270332062458269, 'summar 25 40 chapter question 18 minut thank much best fasttaught video bf df');


--
-- TOC entry 1952 (class 0 OID 16497)
-- Dependencies: 174
-- Data for Name: searchlist; Type: TABLE DATA; Schema: public; Owner: marlie
--



--
-- TOC entry 1949 (class 0 OID 16471)
-- Dependencies: 171
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: marlie
--

INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List Teach', '', 14, 0, 0, 0, 0, 'CTIK517Sj9o', 'UC_kYVhZX_bkWxxhST89DTTA', 'Yang Demi', 'Skip List', 'short', 'https://youtube.com/watch?v=CTIK517Sj9o', ' ', 'en', true, 10);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('skip list', '------------------------------
By Bandicam Screen Recorder (https://www.bandicam.com)', 17, 0, 0, 0, 0, 'xg3T_k0zCCw', 'UCfzFqBB0iDxboHBxL3RzpVQ', '張順益', 'Skip List', 'medium', 'https://youtube.com/watch?v=xg3T_k0zCCw', 'bandicam screen record httpswww bandicam com', 'en', true, 5.77);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('What is a skip list?', 'A description and analysis of what a skip list is and how it works', 2085, 4, 40, 0, 3, 'SS11RsuwXig', 'UC32dL1pf4DUYz2ni3ALdaqg', 'Engineering123', 'Skip List', 'medium', 'https://youtube.com/watch?v=SS11RsuwXig', 'descript analysi skip list work', 'en', true, 9.64);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('10   5   Depth First Search DFS  The Basics 7 min', ' ', 58, 0, 0, 0, 0, 'aUYKPdD4ltU', 'UCRqLw9t5VF_5B-Q4jmDPljQ', 'sevki', 'Depth First Search', 'medium', 'https://youtube.com/watch?v=aUYKPdD4ltU', ' ', 'en', true, 11.31);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('7. Randomization: Skip Lists', 'MIT 6.046J Design and Analysis of Algorithms, Spring 2015
View the complete course: http://ocw.mit.edu/6-046JS15
Instructor: Srinivas Devadas

In this lecture, Professor Devadas continues with randomization, introducing skip lists as a randomized data structure.

License: Creative Commons BY-NC-SA
More information at http://ocw.mit.edu/terms
More courses at http://ocw.mit.edu', 40000, 386, 9, 0, 20, '2g9OSRKJuzM', 'UCEBb1b_L6zDS3xTUrIALZOw', 'MIT OpenCourseWare', 'Skip List', 'long', 'https://youtube.com/watch?v=2g9OSRKJuzM', 'mit 6 046j design analysi algorithm spring 2015 view complet cours httpocw mit edu6046js15 instructor sriniva devada lectur professor devada continu random introduc skip list random data structur licens creativ common byncsa inform httpocw mit eduterm cours httpocw mit edu', 'en', true, 4.36);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Graphs:  Depth First Search (DFS) with Example', 'Table of Contents:

00:40 - Concept
02:09 - Simple Implementation 
03:27 - Full Implementation
04:06 - Vertex vs. Graph DFS
04:33 - Example
06:03 - Parenthesis Notation
06:42 - Cormen Vertex Colors
07:00 - Edge Classification
09:28 - Analysis
09:56 - Concern:  Call Stack Overflow 
10:55 - Non-recursive Depth First Search', 46963, 516, 25, 0, 51, 'qH-mHxkoK0Q', 'UCUGQA2H6AXFolADHf9mBb4Q', 'Algorithms with Attitude', 'Depth First Search', 'medium', 'https://youtube.com/watch?v=qH-mHxkoK0Q', 'tabl content 0040 concept 0209 simpl implement 0327 full implement 0406 vertex v graph df 0433 exampl 0603 parenthesi notat 0642 cormen vertex color 0700 edg classif 0928 analysi 0956 concern call stack overflow 1055 nonrecurs depth first search', 'en', true, 6.87);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('How to delete from a Skip list', 'Full algorithm of how to delete an element from a skiplist', 245, 0, 0, 0, 0, 'Ot0gI-_nCug', 'UC32dL1pf4DUYz2ni3ALdaqg', 'Engineering123', 'Skip List', 'short', 'https://youtube.com/watch?v=Ot0gI-_nCug', 'full algorithm delet element skiplist', 'en', true, 6.67);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip list: INSERT example', 'Example of how to insert into a skip list', 398, 0, 1, 0, 0, 'xx57GU_nJaU', 'UC32dL1pf4DUYz2ni3ALdaqg', 'Engineering123', 'Skip List', 'short', 'https://youtube.com/watch?v=xx57GU_nJaU', 'exampl insert skip list', 'en', true, 8);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('08: Skip List, Amortisierte Liste, Aggregat Methode, Hotlist, Duplikaterkennung', '0:00:00 Starten
0:00:05 Roadmap
0:01:12 Verkettete Liste
0:02:56 Skip List
0:06:33 Amortisierte Liste
0:09:45 Aggregat Methode
0:11:28 Hotlist
0:13:39 Hotlist Lookup
0:14:42 Hotlist Insert
0:16:25 Hotlist Amortisierung
0:18:07 Hotlist Delete
0:19:55 Hotlist Aufräumen
0:20:50 Hashtabelle
0:22:14 Duplikaterkennung
0:27:57 Bloom Filter

E-Learning-Video des ZML über Skip List, Amortisierte Liste, Aggregat Methode, Hotlist und Duplikaterkennung
aus der Vorlesungsreihe Algorithmen 1
von Prof. Dr. Carsten Sinz.
Die Übung wurde am 22.05.2019 von Markus Iser am KIT gehalten 
im SOMMERSEMESTER 2019
für das Fach Algorithmen 1.

Dozenten:
Prof. Dr. Carsten Sinz, Markus Iser | Karlsruher Institut für Technologie (KIT), Institut für Theoretische Informatik

Vorlesungsaufzeichnung: KIT | WEBCAST
http://webcast.kit.edu', 481, 2, 1, 0, 0, 'rZYFI0UauQs', 'UC6AqaL6fH91U5YhyUCI0ZOQ', 'KIT | WEBCAST', 'Skip List', 'long', 'https://youtube.com/watch?v=rZYFI0UauQs', '00000 starten 00005 roadmap 00112 verkettet list 00256 skip list 00633 amortisiert list 00945 aggregat method 01128 hotlist 01339 hotlist lookup 01442 hotlist insert 01625 hotlist amortisierung 01807 hotlist delet 01955 hotlist aufräumen 02050 hashtabel 02214 duplikaterkennung 02757 bloom filter elearningvideo de zml über skip list amortisiert list aggregat method hotlist und duplikaterkennung au der vorlesungsreih algorithmen 1 von prof dr carsten sinz die übung wurd 22 05 2019 von marku iser kit gehalten im sommersemest 2019 für da fach algorithmen 1 dozenten prof dr carsten sinz marku iser karlsruh institut für technologi kit institut für theoretisch informatik vorlesungsaufzeichnung kit webcast httpwebcast kit edu', 'de', false, 4.89);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List (Data Structure) - with Implementation in JAVA', 'Skip List is a probabilistic Data Structure, this video explains Theory and Implementation of the skip list.
Implementation in JAVA: https://goo.gl/AQJ7Rw 
The paper by William Pugh: https://goo.gl/V1oPLU

Complete the challenge and write your answers in the comments below, answers will be released in a video.
___________________________________________________
MUSIC
Alien Restaurant by Kevin MacLeod is licensed under a Creative Commons Attribution license (https://creativecommons.org/licenses/...)
Source: http://incompetech.com/music/royalty-...
Artist: http://incompetech.com/', 11388, 128, 26, 0, 8, 'rhKuVZSsU_Q', 'UCXJdNKlcDb4hrwgyI5SImag', 'Learnet Education', 'Skip List', 'medium', 'https://youtube.com/watch?v=rhKuVZSsU_Q', 'skip list probabilist data structur video explain theori implement skip list implement java httpsgoo glaqj7rw paper william pugh httpsgoo glv1oplu complet challeng write answer comment answer releas video music alien restaur kevin macleod licens creativ common attribut licens httpscreativecommon orglicens sourc httpincompetech commusicroyalti artist httpincompetech com', 'en', true, 6.26);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('04 4  Depth First Search', '', 167, 2, 0, 0, 0, 'Uj6lQWBU6jk', 'UCZze4s_iofqjuNRsSvHkQ2Q', 'Computer Science', 'Depth First Search', 'long', 'https://youtube.com/watch?v=Uj6lQWBU6jk', ' ', 'en', true, 15.62);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('CS 202 f2017   exam review skip list AVL tree and tri', '', 34, 0, 0, 0, 0, 'ocIKiB3WEQM', 'UCy483t6B88bNACTMTZvPiqQ', 'Jeff Kinne', 'Skip List', 'long', 'https://youtube.com/watch?v=ocIKiB3WEQM', ' ', 'en', true, 9.77);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('18 Depth First Search ad', ' ', 4439, 5, 13, 0, 1, 'nzGSoiGbFig', 'UCIk9Y6iJ8LGpOlpXq7wHC9Q', 'knowitvideos', 'Depth First Search', 'short', 'https://youtube.com/watch?v=nzGSoiGbFig', ' ', 'en', true, 13.49);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Depth First Search (DFS) Algorithm Step by Step | Graph Traversal Algorithms', 'In this video, we will discuss about Depth First Search Algorithm commonly Known as DFS Algorithm.

Topics covered in the video include-

1) Graph Traversal Algorithms Introduction
2) Depth First Search (DFS) Algorithm Introduction
3) How to apply DFS Algorithm on a given graph or tree
4) Problems illustrating the application of DFS Algorithm

Graph Traversal-

Graph Traversal refers to the process of visiting each vertex of a graph in some particular order. It is a general way in which graphs are processed.

Types of Graph Traversals-

There are two general types of graph traversals-

1. Depth First Search
2. Breadth First Search

For details, please watch the video.

Get the handwritten notes of Depth First Search here-
https://www.gatevidyalay.com/depth-first-search-dfs-algorithm/

Get the handwritten notes of Breadth First Search here-
https://www.gatevidyalay.com/breadth-first-search-bfs-algorithm/

Depth First Search and Breadth First Search are important topics for semester examination as well as competitive examinations like GATE, NET etc.

Watch the complete Algorithms Tutorials here-
https://www.youtube.com/watch?v=H4Ifnffy3Ts&list=PLwmA1T37CsHpuqdquKCmAJeScAhOCStLI

Follow us on-

LearnVidFun Facebook   : https://www.facebook.com/learnvidfun
Gate Vidyalay Facebook : https://www.facebook.com/GateVidyalay
Gate Vidyalay Website    : https://www.gatevidyalay.com

For any doubts/ queries, please comment below...

Please...Like, share and comment if you really gained something from this video and don''t forget to subscribe yourself for getting the latest updates!

Your support really encourages us to do better....Thank you!! :)

All the best...Keep learning :)', 13282, 223, 17, 0, 67, 'SvbF-L_8Edw', 'UCvJxACaJaJOrTCHvQFze15A', 'LearnVidFun', 'Depth First Search', 'long', 'https://youtube.com/watch?v=SvbF-L_8Edw', 'video discu depth first search algorithm commonli known df algorithm topic cover video includ 1 graph travers algorithm introduct 2 depth first search df algorithm introduct 3 appli df algorithm given graph tree 4 problem illustr applic df algorithm graph travers graph travers refer process visit vertex graph particular order gener way graph process type graph travers two gener type graph travers 1 depth first search 2 breadth first search detail pleas watch video get handwritten note depth first search httpswww gatevidyalay comdepthfirstsearchdfsalgorithm get handwritten note breadth first search httpswww gatevidyalay combreadthfirstsearchbfsalgorithm depth first search breadth first search import topic semest examin well competit examin like gate net etc watch complet algorithm tutori httpswww youtub comwatch vh4ifnffy3t listplwma1t37cshpuqdqukcmajescahocstli follow u learnvidfun facebook httpswww facebook comlearnvidfun gate vidyalay facebook httpswww facebook comgatevidyalay gate vidyalay websit httpswww gatevidyalay com doubt queri pleas comment pleas like share comment realli gain someth video dont forget subscrib get latest updat support realli encourag u better thank best keep learn', 'en', true, 7.16);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('IMPORTANT TOPICS OF STACKS , QUEUES AND SKIP LIST & HASHING ||DS||OU EDUCATION', 'Link for our website and app where u can get the pdfs 
App:-http://bit.ly/35QackJ
Website:- http://bit.ly/2FSFjl3 IMPORTANT TOPICS OF STACKS , QUEUES AND SKIP LIST & HASHING ||DS||OU EDUCATION  
MY WEBSITE https://education4fun.com/ FOR ALL KINDS OF STUFF FOR EDUCATION AND FOR  LOGICAL AND SWITCHING THEORY 
  https://education4fun.com/data-structures/', 89, 0, 0, 0, 0, 'YfDwYppj8nU', 'UCUEpR6_K-g-VsDp_M2NJnsw', 'OU Education', 'Skip List', 'short', 'https://youtube.com/watch?v=YfDwYppj8nU', 'link websit app u get pdf apphttpbit ly35qackj websit httpbit ly2fsfjl3 import topic stack queue skip list hash dsou educ websit httpseducation4fun com kind stuff educ logic switch theori httpseducation4fun comdatastructur', 'en', true, 7.4);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List | Hashing | Advanced data structures', 'Update soon', 126, 1, 1, 0, 0, 'QFmw5_8Q7j8', 'UCUdp8VSNSQ7S_VTe4yY6OsQ', 'Exam Partner', 'Skip List', 'short', 'https://youtube.com/watch?v=QFmw5_8Q7j8', 'updat soon', 'en', true, 8.91);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Basics of Depth First Search(DFS) Algorithm', 'Basics Properties and Applications of DFS Algorithm.', 51, 1, 0, 0, 0, 'r5IQNEge66Q', 'UC2o2JeM-paD_x2qpgbR1LOg', 'COMPUTER SCIENCE NOTES', 'Depth First Search', 'short', 'https://youtube.com/watch?v=r5IQNEge66Q', 'basic properti applic df algorithm', 'en', true, 6.69);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Features of Skip List | Skip List | Hashing | Advanced data structures', 'Update soon', 98, 4, 0, 0, 0, 'ADriMlxQbHs', 'UCUdp8VSNSQ7S_VTe4yY6OsQ', 'Exam Partner', 'Skip List', 'short', 'https://youtube.com/watch?v=ADriMlxQbHs', 'updat soon', 'en', true, 8.75);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Depth First Search (dfs) on Graph with implementation in Java', 'Welcome to Coding Simplified (www.codingsimplified.com)

In this video, we''re going to reveal exact steps to Depth First Search (dfs) on Graph with implementation in Java

CHECK OUT CODING SIMPLIFIED
https://www.youtube.com/codingsimplified

I started my YouTube channel, Coding Simplified, during Dec of 2015.
Since then, I''ve published over 100+ videos. My account is Partner Verified and I get my earnings direct deposited into my account every month.


★☆★ VIEW THE BLOG POST: ★☆★
http://codingsimplified.com

★☆★ SUBSCRIBE TO ME ON YOUTUBE: ★☆★

https://www.youtube.com/codingsimplified?sub_confirmation=1

★☆★ SEND EMAIL At: ★☆★
Email: thecodingsimplified@gmail.com', 9608, 48, 16, 0, 3, 'FGswVJHx5Hk', 'UCnC0QFWfAHL1XwjJoDk60GA', 'Coding Simplified', 'Depth First Search', 'medium', 'https://youtube.com/watch?v=FGswVJHx5Hk', 'welcom code simplifi www codingsimplifi com video go reveal exact step depth first search df graph implement java check code simplifi httpswww youtub comcodingsimplifi start youtub channel code simplifi dec 2015 sinc ive publish 100 video account partner verifi get earn direct deposit account everi month ★☆★ view blog post ★☆★ httpcodingsimplifi com ★☆★ subscrib youtub ★☆★ httpswww youtub comcodingsimplifi subconfirmation1 ★☆★ send email ★☆★ email thecodingsimplifi gmail com', 'en', true, 7.12);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('skip list items by  5 or any you wish', 'visual basic 6 listbox', 211, 0, 3, 0, 1, 'fkAGII1caoU', 'UCloNK4jH9NAFWDizJKy8uxw', 'Hanna Aggassa', 'Skip List', 'short', 'https://youtube.com/watch?v=fkAGII1caoU', 'visual basic 6 listbox', 'en', true, 12.8);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Depth First Search Algorithm', 'This is one of the important Graph traversal technique. DFS is based on stack data structure.

Analysis:

The time complexity of DFS using Adjacency list is O(V + E) where V & E are the vertices and edges of the graph respectively.', 1090716, 5880, 442, 0, 228, 'iaBEKo5sM7w', 'UCo7nlq2MgsmITlb0JTxuZ9w', 'Go GATE IIT', 'Depth First Search', 'short', 'https://youtube.com/watch?v=iaBEKo5sM7w', 'one import graph travers techniqu df base stack data structur analysi time complex df use adjac list ov e v e vertex edg graph respect', 'en', true, 7.55);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('5.1 Graph Traversals - BFS & DFS -Breadth First Search and Depth First Search', 'Breadth First Search
Depth First Search

PATREON : https://www.patreon.com/bePatron?u=20475192

UDEMY
1. Data Structures using C and C++ on Udemy
$10.00
URL: https://www.udemy.com/datastructurescncpp/?couponCode=PROMODS

2. C++ course on Udemy
$10.00
URL: https://www.udemy.com/cpp-deep-dive/?couponCode=PROMOCPP', 917838, 13251, 356, 0, 671, 'pcKY4hjDrxk', 'UCZCFT11CWBi3MHNlGf019nw', 'Abdul Bari', 'Depth First Search', 'medium', 'https://youtube.com/watch?v=pcKY4hjDrxk', 'breadth first search depth first search patreon httpswww patreon combepatron u20475192 udemi 1 data structur use c c udemi 10 00 url httpswww udemi comdatastructurescncpp couponcodepromod 2 c cours udemi 10 00 url httpswww udemi comcppdeepd couponcodepromocpp', 'en', true, 6.64);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List: Find/Remove', ' ', 7358, 42, 8, 0, 2, 'r-xQ9dvmMko', 'UCi1J9ryDJeSZEDvGOREm2Yg', 'David Esposito', 'Skip List', 'short', 'https://youtube.com/watch?v=r-xQ9dvmMko', ' ', 'en', true, 6.98);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List', '', 293, 2, 2, 0, 0, '37QhtmfkoEU', 'UCikverBKdVmlYqffInFjOKw', 'Vojta K', 'Skip List', 'short', 'https://youtube.com/watch?v=37QhtmfkoEU', ' ', 'en', true, 10);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Iterative Deepening Depth First Search 1', 'This lecture goes through an example of Iterative Deepening Depth First Search', 138488, 513, 20, 0, 35, '7QcoJjSVT38', 'UCWOFdpEfNuQP3O_JUiwhT8A', 'Douglas Fisher', 'Depth First Search', 'medium', 'https://youtube.com/watch?v=7QcoJjSVT38', 'lectur go exampl iter deepen depth first search', 'en', true, 7.29);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List Insertion', 'Tutorial video in support of JMU CS240 Fall 2014 Programming Assignment #3

http://w3.cs.jmu.edu/spragunr/CS240/activities/skip_list/skip_list.shtml', 43074, 260, 16, 0, 17, 'Dx7Hk8-8Kdw', 'UCNle5qQfzRVB6szF_9UXYiQ', 'Nathan Sprague', 'Skip List', 'medium', 'https://youtube.com/watch?v=Dx7Hk8-8Kdw', 'tutori video support jmu cs240 fall 2014 program assign 3 httpw3 c jmu eduspragunrcs240activitiesskiplistskiplist shtml', 'en', true, 7.17);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List', 'รายวิชา 88721159 Data Structures and Applied Algorithms
***********************************************************
นางสาว ฐิติกา พิมเพ็ชร 59160751
***********************************************************
ลิ้งสำหรับโค้ดเพิ่มเติม
:https://jrglenn92.people.amherst.edu/301/F2015/Notes/SkipList/SkipList.java
:https://www.sanfoundry.com/java-program-implement-skip-list/
:https://www.geeksforgeeks.org/skip-list/', 109, 5, 0, 0, 11, '623M32VtOag', 'UCa--EHCA7Ny0Q9QsfUwb6yg', 'Thitika Pimpet', 'Skip List', 'medium', 'https://youtube.com/watch?v=623M32VtOag', 'รายวิชา 88721159 data structur appli algorithm นางสาว ฐิติกา พิมเพ็ชร 59160751 ลิ้งสำหรับโค้ดเพิ่มเติม httpsjrglenn92 peopl amherst edu301f2015notesskiplistskiplist java httpswww sanfoundri comjavaprogramimplementskiplist httpswww geeksforgeek orgskiplist', 'th', false, 10.24);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('skip list', '', 7, 0, 0, 0, 0, 'zJMBnefFQ9c', 'UCp-FXPVp9ple34AbtdE1KNw', 'Ching', 'Skip List', 'medium', 'https://youtube.com/watch?v=zJMBnefFQ9c', ' ', 'en', true, 10);
INSERT INTO public.video (title, descr, views, likes, dislikes, fav_count, com_count, v_id, channel_id, channel_name, "searchQ", duration, url, clean_descr, language, is_reliable, confidence) VALUES ('Skip List | Set 1 (Introduction) | GeeksforGeeks', 'Find Complete Code at GeeksforGeeks Article: http://www.geeksforgeeks.org/skip-list/

Soundtrack: Enochian Magic by JR Tundra

This video is contributed by Arjun Tyagi(www.behance.net/arjunbits)

Please Like, Comment and Share the Video among your friends.

Also, Subscribe if you haven''t already! :)', 43329, 416, 22, 0, 16, 'ypod5jeYzAU', 'UC0RhatS1pyxInC00YKjjBqQ', 'GeeksforGeeks', 'Skip List', 'short', 'https://youtube.com/watch?v=ypod5jeYzAU', 'find complet code geeksforgeek articl httpwww geeksforgeek orgskiplist soundtrack enochian magic jr tundra video contribut arjun tyagiwww behanc netarjunbit pleas like comment share video among friend also subscrib havent alreadi', 'en', true, 6.87);


--
-- TOC entry 1960 (class 0 OID 0)
-- Dependencies: 173
-- Name: searchlist_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: marlie
--

SELECT pg_catalog.setval('public.searchlist_s_id_seq', 1, false);


--
-- TOC entry 1836 (class 2606 OID 16478)
-- Name: video Video_pkey; Type: CONSTRAINT; Schema: public; Owner: marlie
--

ALTER TABLE ONLY public.video
    ADD CONSTRAINT "Video_pkey" PRIMARY KEY (v_id);


--
-- TOC entry 1838 (class 2606 OID 16486)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: marlie
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (c_id);


--
-- TOC entry 1840 (class 2606 OID 16505)
-- Name: searchlist pkey_searchlist; Type: CONSTRAINT; Schema: public; Owner: marlie
--

ALTER TABLE ONLY public.searchlist
    ADD CONSTRAINT pkey_searchlist PRIMARY KEY (s_id);


--
-- TOC entry 1841 (class 2606 OID 16487)
-- Name: comments video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: marlie
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT video_id_fkey FOREIGN KEY (video_id) REFERENCES public.video(v_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 1958 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-01-24 10:35:35

--
-- PostgreSQL database dump complete
--

