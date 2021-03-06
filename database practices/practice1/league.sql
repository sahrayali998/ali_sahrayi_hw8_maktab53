PGDMP         	                y           league     13.3 (Ubuntu 13.3-1.pgdg20.04+1)     13.3 (Ubuntu 13.3-1.pgdg20.04+1) @    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17609    league    DATABASE     [   CREATE DATABASE league WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE league;
                ali    false            ?            1259    17632    league    TABLE     _   CREATE TABLE public.league (
    league_id integer NOT NULL,
    season_id integer NOT NULL
);
    DROP TABLE public.league;
       public         heap    postgres    false            ?            1259    17630    league_league_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.league_league_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.league_league_id_seq;
       public          postgres    false    205                       0    0    league_league_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.league_league_id_seq OWNED BY public.league.league_id;
          public          postgres    false    204            ?            1259    17648    match    TABLE     ?   CREATE TABLE public.match (
    match_id integer NOT NULL,
    host_team integer NOT NULL,
    guest_team integer NOT NULL,
    season_id integer NOT NULL,
    result character varying(10)
);
    DROP TABLE public.match;
       public         heap    postgres    false            ?            1259    17646    match_match_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.match_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.match_match_id_seq;
       public          postgres    false    209                       0    0    match_match_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.match_match_id_seq OWNED BY public.match.match_id;
          public          postgres    false    208            ?            1259    17624    player    TABLE     ?   CREATE TABLE public.player (
    player_id integer NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    birth_date date,
    post character varying(10),
    team_id integer
);
    DROP TABLE public.player;
       public         heap    postgres    false            ?            1259    17656    player_history    TABLE     ?   CREATE TABLE public.player_history (
    history_id integer NOT NULL,
    player_id integer NOT NULL,
    team_id integer NOT NULL,
    season_id integer NOT NULL,
    price integer
);
 "   DROP TABLE public.player_history;
       public         heap    postgres    false            ?            1259    17654    player_history_history_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.player_history_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.player_history_history_id_seq;
       public          postgres    false    211                       0    0    player_history_history_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.player_history_history_id_seq OWNED BY public.player_history.history_id;
          public          postgres    false    210            ?            1259    17622    player_player_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.player_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.player_player_id_seq;
       public          postgres    false    203                       0    0    player_player_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.player_player_id_seq OWNED BY public.player.player_id;
          public          postgres    false    202            ?            1259    17640    season    TABLE     ~   CREATE TABLE public.season (
    season_id integer NOT NULL,
    league_id integer,
    year integer,
    champion integer
);
    DROP TABLE public.season;
       public         heap    postgres    false            ?            1259    17638    season_season_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.season_season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.season_season_id_seq;
       public          postgres    false    207                       0    0    season_season_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.season_season_id_seq OWNED BY public.season.season_id;
          public          postgres    false    206            ?            1259    17612    team    TABLE     ?   CREATE TABLE public.team (
    team_id integer NOT NULL,
    name character varying(25) NOT NULL,
    rank_league integer NOT NULL,
    league_id integer
);
    DROP TABLE public.team;
       public         heap    postgres    false            ?            1259    17610    team_team_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.team_team_id_seq;
       public          postgres    false    201                       0    0    team_team_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.team_team_id_seq OWNED BY public.team.team_id;
          public          postgres    false    200            J           2604    17635    league league_id    DEFAULT     t   ALTER TABLE ONLY public.league ALTER COLUMN league_id SET DEFAULT nextval('public.league_league_id_seq'::regclass);
 ?   ALTER TABLE public.league ALTER COLUMN league_id DROP DEFAULT;
       public          postgres    false    204    205    205            L           2604    17651    match match_id    DEFAULT     p   ALTER TABLE ONLY public.match ALTER COLUMN match_id SET DEFAULT nextval('public.match_match_id_seq'::regclass);
 =   ALTER TABLE public.match ALTER COLUMN match_id DROP DEFAULT;
       public          postgres    false    208    209    209            I           2604    17627    player player_id    DEFAULT     t   ALTER TABLE ONLY public.player ALTER COLUMN player_id SET DEFAULT nextval('public.player_player_id_seq'::regclass);
 ?   ALTER TABLE public.player ALTER COLUMN player_id DROP DEFAULT;
       public          postgres    false    203    202    203            M           2604    17659    player_history history_id    DEFAULT     ?   ALTER TABLE ONLY public.player_history ALTER COLUMN history_id SET DEFAULT nextval('public.player_history_history_id_seq'::regclass);
 H   ALTER TABLE public.player_history ALTER COLUMN history_id DROP DEFAULT;
       public          postgres    false    210    211    211            K           2604    17643    season season_id    DEFAULT     t   ALTER TABLE ONLY public.season ALTER COLUMN season_id SET DEFAULT nextval('public.season_season_id_seq'::regclass);
 ?   ALTER TABLE public.season ALTER COLUMN season_id DROP DEFAULT;
       public          postgres    false    207    206    207            H           2604    17615    team team_id    DEFAULT     l   ALTER TABLE ONLY public.team ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);
 ;   ALTER TABLE public.team ALTER COLUMN team_id DROP DEFAULT;
       public          postgres    false    200    201    201            ?          0    17632    league 
   TABLE DATA           6   COPY public.league (league_id, season_id) FROM stdin;
    public          postgres    false    205   ?L       ?          0    17648    match 
   TABLE DATA           S   COPY public.match (match_id, host_team, guest_team, season_id, result) FROM stdin;
    public          postgres    false    209   ?L       ?          0    17624    player 
   TABLE DATA           ]   COPY public.player (player_id, first_name, last_name, birth_date, post, team_id) FROM stdin;
    public          postgres    false    203   ?L       ?          0    17656    player_history 
   TABLE DATA           Z   COPY public.player_history (history_id, player_id, team_id, season_id, price) FROM stdin;
    public          postgres    false    211   ?M       ?          0    17640    season 
   TABLE DATA           F   COPY public.season (season_id, league_id, year, champion) FROM stdin;
    public          postgres    false    207   \M       ?          0    17612    team 
   TABLE DATA           E   COPY public.team (team_id, name, rank_league, league_id) FROM stdin;
    public          postgres    false    201   ?M                  0    0    league_league_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.league_league_id_seq', 2, true);
          public          postgres    false    204            	           0    0    match_match_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.match_match_id_seq', 1, true);
          public          postgres    false    208            
           0    0    player_history_history_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.player_history_history_id_seq', 1, false);
          public          postgres    false    210                       0    0    player_player_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.player_player_id_seq', 3, true);
          public          postgres    false    202                       0    0    season_season_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.season_season_id_seq', 1, true);
          public          postgres    false    206                       0    0    team_team_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.team_team_id_seq', 2, true);
          public          postgres    false    200            W           2606    17637    league league_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.league
    ADD CONSTRAINT league_pkey PRIMARY KEY (league_id);
 <   ALTER TABLE ONLY public.league DROP CONSTRAINT league_pkey;
       public            postgres    false    205            [           2606    17653    match match_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.match
    ADD CONSTRAINT match_pkey PRIMARY KEY (match_id);
 :   ALTER TABLE ONLY public.match DROP CONSTRAINT match_pkey;
       public            postgres    false    209            ]           2606    17661 "   player_history player_history_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.player_history
    ADD CONSTRAINT player_history_pkey PRIMARY KEY (history_id);
 L   ALTER TABLE ONLY public.player_history DROP CONSTRAINT player_history_pkey;
       public            postgres    false    211            U           2606    17629    player player_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (player_id);
 <   ALTER TABLE ONLY public.player DROP CONSTRAINT player_pkey;
       public            postgres    false    203            Y           2606    17645    season season_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (season_id);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    207            O           2606    17619    team team_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.team DROP CONSTRAINT team_name_key;
       public            postgres    false    201            Q           2606    17617    team team_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public            postgres    false    201            S           2606    17621    team team_rank_league_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_rank_league_key UNIQUE (rank_league);
 C   ALTER TABLE ONLY public.team DROP CONSTRAINT team_rank_league_key;
       public            postgres    false    201            a           2606    17677    league league_league_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.league
    ADD CONSTRAINT league_league_id_fkey FOREIGN KEY (league_id) REFERENCES public.league(league_id);
 F   ALTER TABLE ONLY public.league DROP CONSTRAINT league_league_id_fkey;
       public          postgres    false    205    2903    205            b           2606    17767    league league_season_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.league
    ADD CONSTRAINT league_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.season(season_id);
 F   ALTER TABLE ONLY public.league DROP CONSTRAINT league_season_id_fkey;
       public          postgres    false    207    2905    205            h           2606    17737    match match_guest_team_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.match
    ADD CONSTRAINT match_guest_team_fkey FOREIGN KEY (guest_team) REFERENCES public.team(team_id);
 E   ALTER TABLE ONLY public.match DROP CONSTRAINT match_guest_team_fkey;
       public          postgres    false    201    209    2897            g           2606    17732    match match_host_team_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.match
    ADD CONSTRAINT match_host_team_fkey FOREIGN KEY (host_team) REFERENCES public.team(team_id);
 D   ALTER TABLE ONLY public.match DROP CONSTRAINT match_host_team_fkey;
       public          postgres    false    2897    201    209            f           2606    17727    match match_match_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.match
    ADD CONSTRAINT match_match_id_fkey FOREIGN KEY (match_id) REFERENCES public.match(match_id);
 C   ALTER TABLE ONLY public.match DROP CONSTRAINT match_match_id_fkey;
       public          postgres    false    209    2907    209            i           2606    17742    match match_season_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.match
    ADD CONSTRAINT match_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.season(season_id);
 D   ALTER TABLE ONLY public.match DROP CONSTRAINT match_season_id_fkey;
       public          postgres    false    209    207    2905            j           2606    17747 -   player_history player_history_history_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.player_history
    ADD CONSTRAINT player_history_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.player_history(history_id);
 W   ALTER TABLE ONLY public.player_history DROP CONSTRAINT player_history_history_id_fkey;
       public          postgres    false    211    2909    211            k           2606    17752 ,   player_history player_history_player_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.player_history
    ADD CONSTRAINT player_history_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.player(player_id);
 V   ALTER TABLE ONLY public.player_history DROP CONSTRAINT player_history_player_id_fkey;
       public          postgres    false    211    2901    203            m           2606    17762 ,   player_history player_history_season_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.player_history
    ADD CONSTRAINT player_history_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.season(season_id);
 V   ALTER TABLE ONLY public.player_history DROP CONSTRAINT player_history_season_id_fkey;
       public          postgres    false    211    2905    207            l           2606    17757 *   player_history player_history_team_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.player_history
    ADD CONSTRAINT player_history_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(team_id);
 T   ALTER TABLE ONLY public.player_history DROP CONSTRAINT player_history_team_id_fkey;
       public          postgres    false    201    2897    211            _           2606    17667    player player_player_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.player(player_id);
 F   ALTER TABLE ONLY public.player DROP CONSTRAINT player_player_id_fkey;
       public          postgres    false    203    203    2901            `           2606    17672    player player_team_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.player
    ADD CONSTRAINT player_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(team_id);
 D   ALTER TABLE ONLY public.player DROP CONSTRAINT player_team_id_fkey;
       public          postgres    false    201    203    2897            e           2606    17722    season season_champion_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_champion_fkey FOREIGN KEY (champion) REFERENCES public.team(team_id);
 E   ALTER TABLE ONLY public.season DROP CONSTRAINT season_champion_fkey;
       public          postgres    false    201    2897    207            d           2606    17717    season season_league_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_league_id_fkey FOREIGN KEY (league_id) REFERENCES public.league(league_id);
 F   ALTER TABLE ONLY public.season DROP CONSTRAINT season_league_id_fkey;
       public          postgres    false    207    205    2903            c           2606    17712    season season_season_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.season(season_id);
 F   ALTER TABLE ONLY public.season DROP CONSTRAINT season_season_id_fkey;
       public          postgres    false    207    2905    207            ^           2606    17662    team team_team_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.team(team_id);
 @   ALTER TABLE ONLY public.team DROP CONSTRAINT team_team_id_fkey;
       public          postgres    false    2897    201    201            ?      x?3?4?????? f      ?      x?3?4?4a]?=...  +      ?   S   x?U?A
? F???]?Q????EA??S?E?x??j???x291bG??Г,;B	??˸???~M3???&?Fp?????_O?      ?      x?????? ? ?      ?      x?3????4202?\1z\\\        ?   !   x?3?,IM?UH?4?4?2?p?8???=... s?l     