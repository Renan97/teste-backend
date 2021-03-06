PGDMP         !        
        x         
   carsharing    9.5.17    9.5.5 $    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Z           1262    16566 
   carsharing    DATABASE     �   CREATE DATABASE carsharing WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE carsharing;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            [           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            \           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ]           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16605    aluguelCarro    TABLE     �   CREATE TABLE "aluguelCarro" (
    "idAluguel" integer NOT NULL,
    "dataCheckIn" timestamp with time zone,
    "dataCheckOut" timestamp with time zone,
    "fkCarro" integer
);
 "   DROP TABLE public."aluguelCarro";
       public         postgres    false    6            �            1259    16603    aluguelCarro_idAluguel_seq    SEQUENCE     ~   CREATE SEQUENCE "aluguelCarro_idAluguel_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."aluguelCarro_idAluguel_seq";
       public       postgres    false    188    6            ^           0    0    aluguelCarro_idAluguel_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "aluguelCarro_idAluguel_seq" OWNED BY "aluguelCarro"."idAluguel";
            public       postgres    false    187            �            1259    16594    carro    TABLE     �   CREATE TABLE carro (
    id integer NOT NULL,
    "idUnidade" integer,
    "idModelo" integer,
    placa character varying,
    cor character varying
);
    DROP TABLE public.carro;
       public         postgres    false    6            �            1259    16592    carro_id_seq    SEQUENCE     n   CREATE SEQUENCE carro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carro_id_seq;
       public       postgres    false    186    6            _           0    0    carro_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE carro_id_seq OWNED BY carro.id;
            public       postgres    false    185            �            1259    16569 
   fabricante    TABLE     W   CREATE TABLE fabricante (
    id integer NOT NULL,
    fabricante character varying
);
    DROP TABLE public.fabricante;
       public         postgres    false    6            �            1259    16567    fabricante_id_seq    SEQUENCE     s   CREATE SEQUENCE fabricante_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.fabricante_id_seq;
       public       postgres    false    182    6            `           0    0    fabricante_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE fabricante_id_seq OWNED BY fabricante.id;
            public       postgres    false    181            �            1259    16580    modeloCarro    TABLE     �   CREATE TABLE "modeloCarro" (
    id integer NOT NULL,
    "idFabricante" integer,
    modelo character varying,
    imagem character varying
);
 !   DROP TABLE public."modeloCarro";
       public         postgres    false    6            �            1259    16578    modeloCarro_id_seq    SEQUENCE     v   CREATE SEQUENCE "modeloCarro_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."modeloCarro_id_seq";
       public       postgres    false    184    6            a           0    0    modeloCarro_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE "modeloCarro_id_seq" OWNED BY "modeloCarro".id;
            public       postgres    false    183            �           2604    16608 	   idAluguel    DEFAULT     x   ALTER TABLE ONLY "aluguelCarro" ALTER COLUMN "idAluguel" SET DEFAULT nextval('"aluguelCarro_idAluguel_seq"'::regclass);
 I   ALTER TABLE public."aluguelCarro" ALTER COLUMN "idAluguel" DROP DEFAULT;
       public       postgres    false    187    188    188            �           2604    16597    id    DEFAULT     V   ALTER TABLE ONLY carro ALTER COLUMN id SET DEFAULT nextval('carro_id_seq'::regclass);
 7   ALTER TABLE public.carro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            �           2604    16572    id    DEFAULT     `   ALTER TABLE ONLY fabricante ALTER COLUMN id SET DEFAULT nextval('fabricante_id_seq'::regclass);
 <   ALTER TABLE public.fabricante ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    181    182    182            �           2604    16583    id    DEFAULT     f   ALTER TABLE ONLY "modeloCarro" ALTER COLUMN id SET DEFAULT nextval('"modeloCarro_id_seq"'::regclass);
 ?   ALTER TABLE public."modeloCarro" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    183    184            U          0    16605    aluguelCarro 
   TABLE DATA               X   COPY "aluguelCarro" ("idAluguel", "dataCheckIn", "dataCheckOut", "fkCarro") FROM stdin;
    public       postgres    false    188   �#       b           0    0    aluguelCarro_idAluguel_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"aluguelCarro_idAluguel_seq"', 1, false);
            public       postgres    false    187            S          0    16594    carro 
   TABLE DATA               A   COPY carro (id, "idUnidade", "idModelo", placa, cor) FROM stdin;
    public       postgres    false    186   $       c           0    0    carro_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('carro_id_seq', 1, false);
            public       postgres    false    185            O          0    16569 
   fabricante 
   TABLE DATA               -   COPY fabricante (id, fabricante) FROM stdin;
    public       postgres    false    182   J$       d           0    0    fabricante_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('fabricante_id_seq', 1, false);
            public       postgres    false    181            Q          0    16580    modeloCarro 
   TABLE DATA               D   COPY "modeloCarro" (id, "idFabricante", modelo, imagem) FROM stdin;
    public       postgres    false    184   q$       e           0    0    modeloCarro_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('"modeloCarro_id_seq"', 1, true);
            public       postgres    false    183            �           2606    16602 
   carro_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public         postgres    false    186    186            �           2606    16577    fabricante_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fabricante
    ADD CONSTRAINT fabricante_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fabricante DROP CONSTRAINT fabricante_pkey;
       public         postgres    false    182    182            �           2606    16609    aluguelCarro_fkCarro_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY "aluguelCarro"
    ADD CONSTRAINT "aluguelCarro_fkCarro_fkey" FOREIGN KEY ("fkCarro") REFERENCES carro(id);
 T   ALTER TABLE ONLY public."aluguelCarro" DROP CONSTRAINT "aluguelCarro_fkCarro_fkey";
       public       postgres    false    2009    188    186            �           2606    16587    modeloCarro_idFabricante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "modeloCarro"
    ADD CONSTRAINT "modeloCarro_idFabricante_fkey" FOREIGN KEY ("idFabricante") REFERENCES fabricante(id);
 W   ALTER TABLE ONLY public."modeloCarro" DROP CONSTRAINT "modeloCarro_idFabricante_fkey";
       public       postgres    false    182    2007    184            U      x������ � �      S   %   x�34�412�4�tr6u2��t
r�s������ R�z      O      x�3�J�K,�)����� "��      Q   %   x�3�4��.�L���OI��/��r�
�ҹb���� ��	     