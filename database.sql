PGDMP     9    :                x           cavp    12.1    12.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17627    cavp    DATABASE     b   CREATE DATABASE cavp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE cavp;
                postgres    false            4           1247    17629    groupestypes    TYPE     J   CREATE TYPE public.groupestypes AS ENUM (
    '1',
    '2',
    'TOUS'
);
    DROP TYPE public.groupestypes;
       public          postgres    false            �            1259    17776 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17774    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    218                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    217            �            1259    17786    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17784    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    220                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    219            �            1259    17768    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17766    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    216                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    215            �            1259    17794 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17804    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17802    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    224                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    223            �            1259    17792    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    222                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    221            �            1259    17812    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17810 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    226                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    225            �            1259    17635    cours    TABLE     �   CREATE TABLE public.cours (
    numcours integer NOT NULL,
    matprof integer,
    heures_total integer,
    ue text,
    nomcours text
);
    DROP TABLE public.cours;
       public         heap    postgres    false            �            1259    17641    cours_semaine    TABLE     T   CREATE TABLE public.cours_semaine (
    coursnum integer,
    semainenum integer
);
 !   DROP TABLE public.cours_semaine;
       public         heap    postgres    false            �            1259    17872    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17870    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    228                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    227            �            1259    17758    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17756    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    214                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    213            �            1259    17747    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17745    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    212                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    211            �            1259    17903    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17644    jours    TABLE     a   CREATE TABLE public.jours (
    idjours integer NOT NULL,
    nomjour text,
    seancesf text
);
    DROP TABLE public.jours;
       public         heap    postgres    false            �            1259    17998    jours_idjours_seq    SEQUENCE     �   CREATE SEQUENCE public.jours_idjours_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.jours_idjours_seq;
       public          postgres    false    204                       0    0    jours_idjours_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.jours_idjours_seq OWNED BY public.jours.idjours;
          public          postgres    false    230            �            1259    17650    prof    TABLE     L   CREATE TABLE public.prof (
    nummat integer NOT NULL,
    nomprof text
);
    DROP TABLE public.prof;
       public         heap    postgres    false            �            1259    17656    prof_nummat_seq    SEQUENCE     �   CREATE SEQUENCE public.prof_nummat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.prof_nummat_seq;
       public          postgres    false    205                       0    0    prof_nummat_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.prof_nummat_seq OWNED BY public.prof.nummat;
          public          postgres    false    206            �            1259    17658    seance    TABLE     �   CREATE TABLE public.seance (
    idseance integer NOT NULL,
    heure_debut double precision,
    heure_fin double precision,
    local character varying,
    groupe text,
    nom text,
    jour text
);
    DROP TABLE public.seance;
       public         heap    postgres    false            �            1259    17664    seance_idseance_seq    SEQUENCE     �   CREATE SEQUENCE public.seance_idseance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seance_idseance_seq;
       public          postgres    false    207                       0    0    seance_idseance_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.seance_idseance_seq OWNED BY public.seance.idseance;
          public          postgres    false    208            �            1259    17666    semaine    TABLE     A   CREATE TABLE public.semaine (
    numsemaine integer NOT NULL
);
    DROP TABLE public.semaine;
       public         heap    postgres    false            �            1259    17728    ue    TABLE     t   CREATE TABLE public.ue (
    idue text NOT NULL,
    nom text,
    quadri integer,
    nbcredit double precision
);
    DROP TABLE public.ue;
       public         heap    postgres    false            $           2604    17779    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            %           2604    17789    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            #           2604    17771    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            &           2604    17797    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            '           2604    17807    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            (           2604    17815    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            )           2604    17875    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            "           2604    17761    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            !           2604    17750    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212                       2604    18000    jours idjours    DEFAULT     n   ALTER TABLE ONLY public.jours ALTER COLUMN idjours SET DEFAULT nextval('public.jours_idjours_seq'::regclass);
 <   ALTER TABLE public.jours ALTER COLUMN idjours DROP DEFAULT;
       public          postgres    false    230    204                       2604    17675    prof nummat    DEFAULT     j   ALTER TABLE ONLY public.prof ALTER COLUMN nummat SET DEFAULT nextval('public.prof_nummat_seq'::regclass);
 :   ALTER TABLE public.prof ALTER COLUMN nummat DROP DEFAULT;
       public          postgres    false    206    205                        2604    17676    seance idseance    DEFAULT     r   ALTER TABLE ONLY public.seance ALTER COLUMN idseance SET DEFAULT nextval('public.seance_idseance_seq'::regclass);
 >   ALTER TABLE public.seance ALTER COLUMN idseance DROP DEFAULT;
       public          postgres    false    208    207                       0    17776 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    218   �                 0    17786    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    220   #�       �          0    17768    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    216   @�                 0    17794 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    222   ͬ                 0    17804    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    224   �                 0    17812    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    226   �       �          0    17635    cours 
   TABLE DATA           N   COPY public.cours (numcours, matprof, heures_total, ue, nomcours) FROM stdin;
    public          postgres    false    202   $�       �          0    17641    cours_semaine 
   TABLE DATA           =   COPY public.cours_semaine (coursnum, semainenum) FROM stdin;
    public          postgres    false    203   !�       
          0    17872    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    228   >�       �          0    17758    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    214   [�       �          0    17747    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    212   /�                 0    17903    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    229   ߱       �          0    17644    jours 
   TABLE DATA           ;   COPY public.jours (idjours, nomjour, seancesf) FROM stdin;
    public          postgres    false    204   ��       �          0    17650    prof 
   TABLE DATA           /   COPY public.prof (nummat, nomprof) FROM stdin;
    public          postgres    false    205   ��       �          0    17658    seance 
   TABLE DATA           \   COPY public.seance (idseance, heure_debut, heure_fin, local, groupe, nom, jour) FROM stdin;
    public          postgres    false    207   ��       �          0    17666    semaine 
   TABLE DATA           -   COPY public.semaine (numsemaine) FROM stdin;
    public          postgres    false    209   ��       �          0    17728    ue 
   TABLE DATA           9   COPY public.ue (idue, nom, quadri, nbcredit) FROM stdin;
    public          postgres    false    210   ʵ                  0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    217                        0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    219            !           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          postgres    false    215            "           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    223            #           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    221            $           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    225            %           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    227            &           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          postgres    false    213            '           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    211            (           0    0    jours_idjours_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.jours_idjours_seq', 121, true);
          public          postgres    false    230            )           0    0    prof_nummat_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.prof_nummat_seq', 197, true);
          public          postgres    false    206            *           0    0    seance_idseance_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.seance_idseance_seq', 999, true);
          public          postgres    false    208            D           2606    17901    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    218            I           2606    17828 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    220    220            L           2606    17791 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    220            F           2606    17781    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    218            ?           2606    17819 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    216    216            A           2606    17773 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    216            T           2606    17809 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    224            W           2606    17843 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    224    224            N           2606    17799    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    222            Z           2606    17817 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    226            ]           2606    17857 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    226    226            Q           2606    17895     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    222            ,           2606    17678    cours cours_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT cours_pkey PRIMARY KEY (numcours);
 :   ALTER TABLE ONLY public.cours DROP CONSTRAINT cours_pkey;
       public            postgres    false    202            `           2606    17881 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    228            :           2606    17765 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    214    214            <           2606    17763 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    214            8           2606    17755 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    212            d           2606    17910 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    229            .           2606    18002    jours jours_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.jours
    ADD CONSTRAINT jours_pkey PRIMARY KEY (idjours);
 :   ALTER TABLE ONLY public.jours DROP CONSTRAINT jours_pkey;
       public            postgres    false    204            0           2606    17682    prof prof_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prof
    ADD CONSTRAINT prof_pkey PRIMARY KEY (nummat);
 8   ALTER TABLE ONLY public.prof DROP CONSTRAINT prof_pkey;
       public            postgres    false    205            2           2606    17684    seance seance_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (idseance);
 <   ALTER TABLE ONLY public.seance DROP CONSTRAINT seance_pkey;
       public            postgres    false    207            4           2606    17686    semaine semaine_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.semaine
    ADD CONSTRAINT semaine_pkey PRIMARY KEY (numsemaine);
 >   ALTER TABLE ONLY public.semaine DROP CONSTRAINT semaine_pkey;
       public            postgres    false    209            6           2606    17737 
   ue ue_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ue
    ADD CONSTRAINT ue_pkey PRIMARY KEY (idue);
 4   ALTER TABLE ONLY public.ue DROP CONSTRAINT ue_pkey;
       public            postgres    false    210            B           1259    17902    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    218            G           1259    17839 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    220            J           1259    17840 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    220            =           1259    17825 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    216            R           1259    17855 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    224            U           1259    17854 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    224            X           1259    17869 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    226            [           1259    17868 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    226            O           1259    17896     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    222            ^           1259    17892 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    228            a           1259    17893 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    228            b           1259    17912 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    229            e           1259    17911 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    229            k           2606    17834 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    216    3137    220            j           2606    17829 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3142    218    220            i           2606    17820 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3132    216    214            m           2606    17849 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    224    3142    218            l           2606    17844 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    224    3150            o           2606    17863 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3137    226    216            n           2606    17858 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3150    222    226            p           2606    17882 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3132    214    228            q           2606    17887 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3150    228    222            f           2606    17689    cours fkey_cours_prof    FK CONSTRAINT     w   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT fkey_cours_prof FOREIGN KEY (matprof) REFERENCES public.prof(nummat);
 ?   ALTER TABLE ONLY public.cours DROP CONSTRAINT fkey_cours_prof;
       public          postgres    false    202    3120    205            g           2606    17694 !   cours_semaine fkey_courssem_cours    FK CONSTRAINT     �   ALTER TABLE ONLY public.cours_semaine
    ADD CONSTRAINT fkey_courssem_cours FOREIGN KEY (coursnum) REFERENCES public.cours(numcours);
 K   ALTER TABLE ONLY public.cours_semaine DROP CONSTRAINT fkey_courssem_cours;
       public          postgres    false    203    3116    202            h           2606    17699    cours_semaine fkey_courssem_sem    FK CONSTRAINT     �   ALTER TABLE ONLY public.cours_semaine
    ADD CONSTRAINT fkey_courssem_sem FOREIGN KEY (semainenum) REFERENCES public.semaine(numsemaine);
 I   ALTER TABLE ONLY public.cours_semaine DROP CONSTRAINT fkey_courssem_sem;
       public          postgres    false    209    3124    203                   x������ � �            x������ � �      �   }  x�u�]n�0���S��I�?�
!V�l�v�ܾ�r��%���j��l�sZ��t�����\�*[m���{�5����i9ϊ�M�	<͟�S��)��/�?��j��}^����r[*G�b��М��=�S,v�I���y���UM���#�u�ňEOa;��h% �˵8x=�j��~il���*?�->�~���l.ӣ}��'�ݖ���ϯ�\�䀛�c4��lH�#�Jx���;F�	Mvk��c�o�#�|g��a����1�'���+A�H�^�w~�=���{vj�+���F�b��0�I�.an<�A;����e�>����LIi>Յ+EM:б��ֿ ��D���n��JiQ�f9�
��K�)�dBE�����V���x=d�=:f�
�	m��� �O��ܡe��ZeԷ���(qtu�;�A���J�	������8�N���p(6�b�m?I䬫|�����WȺJ��o;R?L����k�5�(ۍi�z/a@vb��?�����{�[P��.���:]���Mt�m�m2Sȣ9���G��W�t�eD��~��ܶ��eُ\����o��մj��D�$թ�_�q�D��BPRQ�Tc�TjǷ�}�s�l�T�S꺐0U��J�d9S-DU�6M{�����'RYc��BT�SAQ�rj�J��!��ec�0�� ��a�?��B�-���$"��	�A\1>���tcz�D�~�Qk�0l�X� 7\������T�o��������D��Ɂ�G;1��u�QDU<]O��\9˧�����: r��Tr����=��ցᣵ'Zp�WJ�؎_#�N�H1�kG%��$�b&���V���k6�ھ�ֶ�þ>ն*V_��i�����ÚvM            x������ � �            x������ � �            x������ � �      �   �  x�uS�n�0<�_A���@X��1IsPQܠ�\h{m3�HE����k������I��\)������ٙ�UxI�qI�nB�.���y.+e�[�Q�@L(&���Hy8/e�*���u�e�8��3�|�ڴͮ.U�6L��-q�c���d�}���`�1?�({�c{�$7U�ӖRb<���*���!'폝56W~\��t�WYkY�va<��ͻ�?�}�,�İ�Q�����E�N*J�E�ծ�	�Ur��.��v�+&+Y��&,v]�u����'��L��2*���5�9_��ݚ�Vx9� d�v�x� ��b\QpF>�'�[3���T��#D��SF>��h[���Xn�����6"W^�v��R98gw��HI�d����o�閃���x�/�3w	ټ����#�{x.�U��N�ɥFA:��>�#��59�T̻nl��f�x�ŀ���h��9F�.����~�v�3�����v�S���Q:zA)�=)�      �      x������ � �      
      x������ � �      �   �   x�U�M� ���0����]�05"�������t���$//��ջ���R(�Z�Z�*Q���� Ql�5� P�2�j��,m啈{��bjݼ~`R&��-�N[�2��n���掸�6��F��~2Zy�5/0���pl��a���4�e ����ĩ+xg�)�s���(��\K����Da2a&��K����+�e oԊ��      �   �  x���ߎ� �k�{��	��<�&'�ep2}���&c���~�~��;�9�9��bcG��f��;Fy!�B�/�ޘ~���	;�ά��8� ��	ޙ�����*]"�a8�!���?,��{4�˾!{�
w�߉CsN���w4�߽;�v)�{N�%��ž��.`�����.%�$LJ���1ـ�����T�8�O�<�v)�+��7j��d'��Cd/��7E<*�T��KگGHM��CI3��ML�z���:М��І�\�Յ�n�KgO����N�M�aFw1ɇX߆�N6F3<Yw ����w�9h�G�D��o���Z��nP��(٨!�u�L��4����.�"�K�ׇ��)5����h�;�nPZC� мs�$�J"�@���ğ����)�N�            x������ � �      �   �   x�M�;�@�x�0h{�s�S"��8���i���UT�������=�g�EH�U��M(�]��#,��D3w�b�ɩ�׈T�@��l���ΐ�2C�Ca�s�c���u�����5@��_�5d�k(�P%N�I<B����۾�v�;�9�(�9p*an���}��m3      �   4  x�}λj1��Z�~ V��Ԛ��2&�Ti��x^mX���s�B��s�����{�\�2�1��t��;R����丅����x�m��)�u}<iq����r�s,�يÚ�s�e���>�뾇͉�Xv�K�Miޚ! 
!
!�!�B@BT��b��F�F�f���݁���bbbb*� � �t ����X�X�X��
� ���m �! �B1�*� B��1� ����*��!�u ��8�8�x�x�x��
� ���o �! !!�!�B@BB�C���a�!fT      �   �  x���KN�0���SDb�*v���<�(�6Q2�H�Sq����v�4ς+�|�����,t!��\�4���>)E&{�+y�MXH0#>jV���~�&��p�\:�5M�t�\�<-���X`\~�;Ta���&��K�����T�P-���&k�}��tv"���pRT?J����xcL�X'�~i�0I�%�ba��A�S�`Q�+M�"�y�Ͱ�X�:e=.r[ܱ�U,׸���u��l#����2(�8��7Y���D����o�*��'p>��O��֞Jљ�5d^�ڸ3;�����
n�4\�0��N�JF����}/�_���$����mJ�3v���Q<�F2Ћ�|�,�W��Bd��w�YY�O�3��x�,��`u��ǤAGm::O+�-�����ˇS�u6�L���      �      x������ � �      �   $  x��WMs�6=C�3���؍>��FQ��_%H;�酑`�E�$�&��sO��ԩ~�I~I I�l�mO"����ݷP�h��M�5�qhE�����u��'{�e^DE4ː�8$m�o��E�fU��"+�RYQY�bQ�YE�xK��R�uZUɝ���i��EZ+K����z!
|F"9���'�O�e�����i�ӢL2i�&eZ+�v+V�;�
�K1;�CFYD�x���?挎��~8���۠%|"�r1��T;eGE9M󤖋ݳA+������mQ� g��g tI�(���q��	�ˣ�$H��+��L��y��U�!�~p�Nܤ�oV�t%3<5+<7>����`z�Y:�R5L yj�nYC�pt�����Z�U���.f�:y�fiݬ�]�ʛ�*�^��1���6��Ɣ{�yc��Km0N����U(IFY~��ս�Ct@.T��,�7lH:�Vp��vr�����!]�����k|×N����uYL�3e���,>b����bQ������ �
v����rS�%��Pp*�E'�A�m��]�4d��I��T�wm�ܤ�1�+�@7Uҳ��_�����]��6�TA�?D�!���x7VF��R�5e&&%�S�8S�ކ���d
�j����#u,�n=M���L�}�����1Dz�I|S��i��)�A@�3�t1�lQ_Z�Kͣ�����j����']S���͘k�Ɨ���z&h��0�5`�SU�L�r�����e��w�w�tR�f��H���i�񣈚�\�<:�ޅn�F��ܘU�TIz��2��+��	5x�#N�Ie(?-�\�ld[DalT�1�=��vZbd�K�6 *�O�F�8�}��m��<z��h�񩪛�g
Α�8�p(l�l�f�!��T\<�]eƾ2�C	�=)8���+�B-K���!��Dq����h�c���ā^OR�щQ�l�^Op�1!���aq��Js�wC\�];=e�5�T[Vq|���E^C�KɈ]3�sF�>�^�Bm�������A�謀�����{�X\cT�z�Z�u�\;H���eV~wuk�a����J0���N�s2f��k�R�+���d�����bT��#�=0��@��E���V�r����HA�=�`l��F:׷��}p~��^��ſ�$��!z(	N��݁��(�ӽ_��=����@� T_�QD���l�����Q>]<:�� X�o��� )k�'e�@�P29WL��)ʻ$O+��^}�����X:7�~��ʬ�u��Ps�~;35�:�c�����6ER��(dAȅ�n�����3���ɦ��Cv���߷�z�Fjyh丮/f�١3:J���R0+~���~c_Z����X\_p�C4ܽ�Vt�����$��7����U����Au����Z��= ���y���Tp �j�P�Hh8��5y�W}�=��+���x����'d�}r����|�C��t������G�?�к����p����YF1��龆���J Y�;����>��,Qj~����{|�_Ш�L�~��&���'\=����!���Og�V�Յ�     