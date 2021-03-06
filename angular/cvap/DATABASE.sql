PGDMP                         x           cavp    12.2    12.2 /    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    16395    cavp    DATABASE     �   CREATE DATABASE cavp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_Belgium.1252' LC_CTYPE = 'French_Belgium.1252';
    DROP DATABASE cavp;
                postgres    false            M           0    0    DATABASE cavp    COMMENT     7   COMMENT ON DATABASE cavp IS 'bdd for le cavp project';
                   postgres    false    2892            "           1247    16397    groupestypes    TYPE     J   CREATE TYPE public.groupestypes AS ENUM (
    '1',
    '2',
    'TOUS'
);
    DROP TYPE public.groupestypes;
       public          postgres    false            �            1259    16403    cours    TABLE     y   CREATE TABLE public.cours (
    numcours integer NOT NULL,
    matprof integer,
    heures_total text,
    ue integer
);
    DROP TABLE public.cours;
       public         heap    postgres    false            �            1259    16409    cours_semaine    TABLE     T   CREATE TABLE public.cours_semaine (
    coursnum integer,
    semainenum integer
);
 !   DROP TABLE public.cours_semaine;
       public         heap    postgres    false            �            1259    16412    jours    TABLE     \   CREATE TABLE public.jours (
    nomjour character varying NOT NULL,
    seancesf integer
);
    DROP TABLE public.jours;
       public         heap    postgres    false            �            1259    16418    prof    TABLE     Y   CREATE TABLE public.prof (
    nummat integer NOT NULL,
    nomprof character varying
);
    DROP TABLE public.prof;
       public         heap    postgres    false            �            1259    16424    prof_nummat_seq    SEQUENCE     �   CREATE SEQUENCE public.prof_nummat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.prof_nummat_seq;
       public          postgres    false    205            N           0    0    prof_nummat_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.prof_nummat_seq OWNED BY public.prof.nummat;
          public          postgres    false    206            �            1259    16561    quadri    TABLE     @   CREATE TABLE public.quadri (
    "idQuadri" integer NOT NULL
);
    DROP TABLE public.quadri;
       public         heap    postgres    false            �            1259    16559    quadri_idQuadri_seq    SEQUENCE     �   CREATE SEQUENCE public."quadri_idQuadri_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."quadri_idQuadri_seq";
       public          postgres    false    212            O           0    0    quadri_idQuadri_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."quadri_idQuadri_seq" OWNED BY public.quadri."idQuadri";
          public          postgres    false    211            �            1259    16426    seance    TABLE     �   CREATE TABLE public.seance (
    idseance integer NOT NULL,
    heure_debut text,
    heure_fin text,
    local character varying,
    groupe public.groupestypes
);
    DROP TABLE public.seance;
       public         heap    postgres    false    546            �            1259    16432    seance_idseance_seq    SEQUENCE     �   CREATE SEQUENCE public.seance_idseance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.seance_idseance_seq;
       public          postgres    false    207            P           0    0    seance_idseance_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.seance_idseance_seq OWNED BY public.seance.idseance;
          public          postgres    false    208            �            1259    16434    semaine    TABLE     A   CREATE TABLE public.semaine (
    numsemaine integer NOT NULL
);
    DROP TABLE public.semaine;
       public         heap    postgres    false            �            1259    16437    ue    TABLE     }   CREATE TABLE public.ue (
    idue integer NOT NULL,
    nom character varying,
    quadri integer,
    "nbCredit" integer
);
    DROP TABLE public.ue;
       public         heap    postgres    false            �
           2604    16443    prof nummat    DEFAULT     j   ALTER TABLE ONLY public.prof ALTER COLUMN nummat SET DEFAULT nextval('public.prof_nummat_seq'::regclass);
 :   ALTER TABLE public.prof ALTER COLUMN nummat DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    16564    quadri idQuadri    DEFAULT     v   ALTER TABLE ONLY public.quadri ALTER COLUMN "idQuadri" SET DEFAULT nextval('public."quadri_idQuadri_seq"'::regclass);
 @   ALTER TABLE public.quadri ALTER COLUMN "idQuadri" DROP DEFAULT;
       public          postgres    false    211    212    212            �
           2604    16444    seance idseance    DEFAULT     r   ALTER TABLE ONLY public.seance ALTER COLUMN idseance SET DEFAULT nextval('public.seance_idseance_seq'::regclass);
 >   ALTER TABLE public.seance ALTER COLUMN idseance DROP DEFAULT;
       public          postgres    false    208    207            <          0    16403    cours 
   TABLE DATA           D   COPY public.cours (numcours, matprof, heures_total, ue) FROM stdin;
    public          postgres    false    202   %0       =          0    16409    cours_semaine 
   TABLE DATA           =   COPY public.cours_semaine (coursnum, semainenum) FROM stdin;
    public          postgres    false    203   B0       >          0    16412    jours 
   TABLE DATA           2   COPY public.jours (nomjour, seancesf) FROM stdin;
    public          postgres    false    204   _0       ?          0    16418    prof 
   TABLE DATA           /   COPY public.prof (nummat, nomprof) FROM stdin;
    public          postgres    false    205   |0       F          0    16561    quadri 
   TABLE DATA           ,   COPY public.quadri ("idQuadri") FROM stdin;
    public          postgres    false    212   1       A          0    16426    seance 
   TABLE DATA           Q   COPY public.seance (idseance, heure_debut, heure_fin, local, groupe) FROM stdin;
    public          postgres    false    207    1       C          0    16434    semaine 
   TABLE DATA           -   COPY public.semaine (numsemaine) FROM stdin;
    public          postgres    false    209   :2       D          0    16437    ue 
   TABLE DATA           ;   COPY public.ue (idue, nom, quadri, "nbCredit") FROM stdin;
    public          postgres    false    210   W2       Q           0    0    prof_nummat_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.prof_nummat_seq', 20, true);
          public          postgres    false    206            R           0    0    quadri_idQuadri_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."quadri_idQuadri_seq"', 1, false);
          public          postgres    false    211            S           0    0    seance_idseance_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.seance_idseance_seq', 100, true);
          public          postgres    false    208            �
           2606    16446    cours cours_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT cours_pkey PRIMARY KEY (numcours);
 :   ALTER TABLE ONLY public.cours DROP CONSTRAINT cours_pkey;
       public            postgres    false    202            �
           2606    16566    quadri idQuadri 
   CONSTRAINT     W   ALTER TABLE ONLY public.quadri
    ADD CONSTRAINT "idQuadri" PRIMARY KEY ("idQuadri");
 ;   ALTER TABLE ONLY public.quadri DROP CONSTRAINT "idQuadri";
       public            postgres    false    212            �
           2606    16448    jours jours_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.jours
    ADD CONSTRAINT jours_pkey PRIMARY KEY (nomjour);
 :   ALTER TABLE ONLY public.jours DROP CONSTRAINT jours_pkey;
       public            postgres    false    204            �
           2606    16450    prof prof_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prof
    ADD CONSTRAINT prof_pkey PRIMARY KEY (nummat);
 8   ALTER TABLE ONLY public.prof DROP CONSTRAINT prof_pkey;
       public            postgres    false    205            �
           2606    16452    seance seance_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.seance
    ADD CONSTRAINT seance_pkey PRIMARY KEY (idseance);
 <   ALTER TABLE ONLY public.seance DROP CONSTRAINT seance_pkey;
       public            postgres    false    207            �
           2606    16454    semaine semaine_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.semaine
    ADD CONSTRAINT semaine_pkey PRIMARY KEY (numsemaine);
 >   ALTER TABLE ONLY public.semaine DROP CONSTRAINT semaine_pkey;
       public            postgres    false    209            �
           2606    16456 
   ue ue_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ue
    ADD CONSTRAINT ue_pkey PRIMARY KEY (idue);
 4   ALTER TABLE ONLY public.ue DROP CONSTRAINT ue_pkey;
       public            postgres    false    210            �
           1259    16572 
   fki_quadri    INDEX     ;   CREATE INDEX fki_quadri ON public.ue USING btree (quadri);
    DROP INDEX public.fki_quadri;
       public            postgres    false    210            �
           2606    16457    cours fkey_cours_prof    FK CONSTRAINT     w   ALTER TABLE ONLY public.cours
    ADD CONSTRAINT fkey_cours_prof FOREIGN KEY (matprof) REFERENCES public.prof(nummat);
 ?   ALTER TABLE ONLY public.cours DROP CONSTRAINT fkey_cours_prof;
       public          postgres    false    205    202    2735            �
           2606    16462 !   cours_semaine fkey_courssem_cours    FK CONSTRAINT     �   ALTER TABLE ONLY public.cours_semaine
    ADD CONSTRAINT fkey_courssem_cours FOREIGN KEY (coursnum) REFERENCES public.cours(numcours);
 K   ALTER TABLE ONLY public.cours_semaine DROP CONSTRAINT fkey_courssem_cours;
       public          postgres    false    202    2731    203            �
           2606    16467    cours_semaine fkey_courssem_sem    FK CONSTRAINT     �   ALTER TABLE ONLY public.cours_semaine
    ADD CONSTRAINT fkey_courssem_sem FOREIGN KEY (semainenum) REFERENCES public.semaine(numsemaine);
 I   ALTER TABLE ONLY public.cours_semaine DROP CONSTRAINT fkey_courssem_sem;
       public          postgres    false    209    2739    203            �
           2606    16472    jours fkey_jour_seances    FK CONSTRAINT     ~   ALTER TABLE ONLY public.jours
    ADD CONSTRAINT fkey_jour_seances FOREIGN KEY (seancesf) REFERENCES public.seance(idseance);
 A   ALTER TABLE ONLY public.jours DROP CONSTRAINT fkey_jour_seances;
       public          postgres    false    2737    204    207            �
           2606    16567 	   ue quadri    FK CONSTRAINT     z   ALTER TABLE ONLY public.ue
    ADD CONSTRAINT quadri FOREIGN KEY (quadri) REFERENCES public.quadri("idQuadri") NOT VALID;
 3   ALTER TABLE ONLY public.ue DROP CONSTRAINT quadri;
       public          postgres    false    212    2744    210            <      x������ � �      =      x������ � �      >      x������ � �      ?   w   x�=�=
�@�z�S� A��߆�V!�X�q�dgeI�o
�~��n6��5:����Z���	xK]�>�<�wԙ漌=�҂t%�/v�:[E|��|�s(Z��Z�C��$��F<W ���&V      F      x������ � �      A   
  x�m�ݑ� �����_W���+X� v��(���'��.���*�
�&�RשʘE��&�h|1&S��%��*��+��c.�����q�T���s�:�R���/A�Tk߷d=�mo�Tmx{�6��;������Uq�rt��6��-��!wA�s˱��<�Ί�G�E��l�{��<�[;�X�l�>�b�`1G�X X�,�/�o�+����a�AX�!,Q ,Q!,� ,!�PK�%��`�y�-����1~�R      C      x������ � �      D      x������ � �     