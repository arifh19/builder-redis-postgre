PGDMP     2    "            	    x         
   restaurant    12.4    12.4 !    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16436 
   restaurant    DATABASE     �   CREATE DATABASE restaurant WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE restaurant;
                arif    false            �            1259    16447 
   categories    TABLE     �   CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.categories;
       public         heap    arif    false            �            1259    16445    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          arif    false    205            ,           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          arif    false    204            �            1259    16490 	   histories    TABLE     <  CREATE TABLE public.histories (
    id bigint NOT NULL,
    invoices character varying(50) NOT NULL,
    cashier character varying(50) NOT NULL,
    orders character varying(254) NOT NULL,
    amount bigint NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    date character varying NOT NULL
);
    DROP TABLE public.histories;
       public         heap    arif    false            �            1259    16488    history_id_seq    SEQUENCE     w   CREATE SEQUENCE public.history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.history_id_seq;
       public          arif    false    207            -           0    0    history_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.history_id_seq OWNED BY public.histories.id;
          public          arif    false    206            �            1259    16439    products    TABLE       CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    image character varying(50) NOT NULL,
    price bigint NOT NULL,
    stock bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.products;
       public         heap    arif    false            �            1259    16437    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          arif    false    203            .           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          arif    false    202            �            1259    16542    users    TABLE     !  CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    role character varying NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    name character varying,
    uuid character varying
);
    DROP TABLE public.users;
       public         heap    arif    false            �            1259    16540    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          arif    false    209            /           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          arif    false    208            �
           2604    16450    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          arif    false    205    204    205            �
           2604    16493    histories id    DEFAULT     j   ALTER TABLE ONLY public.histories ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);
 ;   ALTER TABLE public.histories ALTER COLUMN id DROP DEFAULT;
       public          arif    false    207    206    207            �
           2604    16442    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          arif    false    202    203    203            �
           2604    16545    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          arif    false    208    209    209            !          0    16447 
   categories 
   TABLE DATA           F   COPY public.categories (id, name, created_at, updated_at) FROM stdin;
    public          arif    false    205   �#       #          0    16490 	   histories 
   TABLE DATA           h   COPY public.histories (id, invoices, cashier, orders, amount, created_at, updated_at, date) FROM stdin;
    public          arif    false    207   %$                 0    16439    products 
   TABLE DATA           f   COPY public.products (id, name, image, price, stock, category_id, created_at, updated_at) FROM stdin;
    public          arif    false    203   �$       %          0    16542    users 
   TABLE DATA           a   COPY public.users (id, username, password, role, created_at, updated_at, name, uuid) FROM stdin;
    public          arif    false    209   �$       0           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 3, true);
          public          arif    false    204            1           0    0    history_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.history_id_seq', 1, true);
          public          arif    false    206            2           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 1, true);
          public          arif    false    202            3           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          arif    false    208            �
           2606    16452    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            arif    false    205            �
           2606    16495    histories history_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.histories
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.histories DROP CONSTRAINT history_pkey;
       public            arif    false    207            �
           2606    16504    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            arif    false    203            �
           2606    16550    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            arif    false    209            �
           2606    16498    products category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT category_id;
       public          arif    false    2714    205    203            !   7   x�3�t��O�4202�5��56Dbrq�e�e�5��KL��Z�+F��� �F�      #   e   x�3�T604014�4��t,�LS��LI�L,�t�OKKU�I,)IU0��Qp�L�UH�/J�K�9ML8��t,u���3C�L�����M��b���� �N�            x������ � �      %   �   x���=O�0��9�Y�7�qƪj�Q*"(H,vl�����Q��t ������2�g���Fo��'/�����2���FLϳ��L�ץ�S%�2W�n�w�n[q�I EJhB�����q7YcԢ��A�,׎#�0�HWK�$�17,�Q���ԏ�*�����|��8tEQ�ӣ??,Y����j���u�+�J��4/��?` @�ՆP����H�.����tB1|���ćV>     