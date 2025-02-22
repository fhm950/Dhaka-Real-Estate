PGDMP         3                 w            dhkredb    10.10    10.10     *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �            1259    16576    listings_listing    TABLE     ~  CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    zipcode character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);
 $   DROP TABLE public.listings_listing;
       public         postgres    false            �            1259    16574    listings_listing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.listings_listing_id_seq;
       public       postgres    false    218            -           0    0    listings_listing_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;
            public       postgres    false    217            �
           2604    16579    listings_listing id    DEFAULT     z   ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);
 B   ALTER TABLE public.listings_listing ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            '          0    16576    listings_listing 
   TABLE DATA               �   COPY public.listings_listing (id, title, address, city, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
    public       postgres    false    218   �       .           0    0    listings_listing_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.listings_listing_id_seq', 6, true);
            public       postgres    false    217            �
           2606    16584 &   listings_listing listings_listing_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_pkey;
       public         postgres    false    218            �
           1259    16590 $   listings_listing_realtor_id_90583529    INDEX     g   CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);
 8   DROP INDEX public.listings_listing_realtor_id_90583529;
       public         postgres    false    218            �
           2606    16585 L   listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.listings_listing DROP CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id;
       public       postgres    false    218            '   �  x����n�8 �k���6Mw���e���V�Lb��>P�a�>�:PЌ
��q��ǟ�O_��vd��X�'�Rb�G��9~� @��&�@!$Jj(�,�� ǚ0Vh�1#���\�O�H�k>�BQ�d���P�%%�2,!.��+������~+�*-���۞>�\@�Q*�&�!�P�i�QY�=�T�%՚@ARH���إA;/;��f0�a�(�R�ԃ}����~r��]�ökە��N���5Č�h���r���8�v��V-U��FD�!�~.se��2�������Pۑ0/g>�o�Pm�jϹ��v �b���n�X*���_UaԶW���x� /@��R~\��H}���q�ׯt�KN.���X%�fn1�!&t��:�D1�&ƀ��ү_��f4C����@,�'$G��v³�Ӵ�vv� �,n y��Qs9�Ar��?����P2¸���b)��C��w\L%�ߍ�I7u���V//�b����֌�-�L��
�r�x(�πNP����+(hԿ�=.� HB�ML�.��(Y�)��5'?��Y�VN~��=������p����Z���V:^�<��M�o�qIU�%��="�X�ـ�gp'	.�v�]Ɗ6�?v�\�����,R6�uO��~�$��ۇ��9��?w�p�g���$w�K�[m��CMT݊����`:��ޞ��wR_�������PE��f�4�E����Q}.9,H��0z~w��m�!����a���+�����m>�w����vo��;�[�;�Wm��R_X��S��/<�8"e[a(f�Z�e՚�Ā8���1O�\�1�q�v�\�d����7.%��f����ָ˧������`5��\4y�>9����nB�as�f5ޚ�׫T*����     