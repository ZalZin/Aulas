PGDMP                         x            empresa    9.5.4    9.5.4     6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            8           1262    16393    empresa    DATABASE     �   CREATE DATABASE empresa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE empresa;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            9           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            :           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ;           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16396    contatos    TABLE     �   CREATE TABLE contatos (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(255),
    fone character varying(15)
);
    DROP TABLE public.contatos;
       public         postgres    false    6            �            1259    16394    contatos_id_seq    SEQUENCE     q   CREATE SEQUENCE contatos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contatos_id_seq;
       public       postgres    false    182    6            <           0    0    contatos_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE contatos_id_seq OWNED BY contatos.id;
            public       postgres    false    181            �           2604    16399    id    DEFAULT     \   ALTER TABLE ONLY contatos ALTER COLUMN id SET DEFAULT nextval('contatos_id_seq'::regclass);
 :   ALTER TABLE public.contatos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    181    182            3          0    16396    contatos 
   TABLE DATA               2   COPY contatos (id, nome, email, fone) FROM stdin;
    public       postgres    false    182   l       =           0    0    contatos_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('contatos_id_seq', 8, true);
            public       postgres    false    181            �           2606    16401    contatos_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY contatos
    ADD CONSTRAINT contatos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contatos DROP CONSTRAINT contatos_pkey;
       public         postgres    false    182    182            3   e  x�m��n�0���S�\D�e˷����b-��.�-$De���y�=E_lt\�ǃ }$�(u���p�o1�-0����Mg-��1�m�$G�՗�Y@��.�
S�:Wk)�_��qd�#OQ8����tA����0M�Ox��\^9]�o��7�|��H)q@Xs��°���2��[�"sVL�j��an�S�:�9mg����I�Jݠ�#���+F������WW�V�8t>&��cG�t��J���H+ޏ��af�v����
�Wک����(�#t���S��Dܰt�x|�Ė.7Ym]���V�a��g�ᇔ�oY(��9#�^� 2Zq�<���,�ȦE�>�Z����S     