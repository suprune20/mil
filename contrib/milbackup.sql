PGDMP     1        	            o           mil    9.0.3    9.0.3 �    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            k           1262    50911    mil    DATABASE     u   CREATE DATABASE mil WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';
    DROP DATABASE mil;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            l           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            m           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �           2612    11574    plpgsql    PROCEDURAL LANGUAGE     /   CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;
 "   DROP PROCEDURAL LANGUAGE plpgsql;
             postgres    false            D           1259    50939 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    5            C           1259    50937    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    5    1604            n           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    1603            o           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    1603            B           1259    50924    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    5            A           1259    50922    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    5    1602            p           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    1601            q           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    1601            @           1259    50914    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    5            ?           1259    50912    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    5    1600            r           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    1599            s           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 117, true);
            public       postgres    false    1599            J           1259    50984 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    5            H           1259    50969    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    5            G           1259    50967    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    5    1608            t           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    1607            u           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    1607            I           1259    50982    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    1610    5            v           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    1609            w           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    1609            F           1259    50954    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    5            E           1259    50952 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    5    1606            x           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    1605            y           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    1605            b           1259    51214    common_burial    TABLE     i  CREATE TABLE common_burial (
    uuid character varying(36) NOT NULL,
    passportid character varying(128),
    date_passport date,
    date_burried date,
    date_discovered date,
    burial_type_id character varying(36),
    military_conflict_id character varying(36),
    date_memorial date,
    date_gosznak date,
    unknown_count double precision,
    creator_id integer,
    date_of_creation timestamp with time zone NOT NULL,
    date_last_edit timestamp with time zone NOT NULL,
    additional_info text,
    is_trash boolean NOT NULL,
    photo character varying(100),
    scheme character varying(100)
);
 !   DROP TABLE public.common_burial;
       public         postgres    false    5            c           1259    51237    common_burialeditcause    TABLE     �   CREATE TABLE common_burialeditcause (
    uuid character varying(36) NOT NULL,
    burial_id character varying(36) NOT NULL,
    name character varying(100) NOT NULL,
    number character varying(100) NOT NULL,
    date date NOT NULL
);
 *   DROP TABLE public.common_burialeditcause;
       public         postgres    false    5            e           1259    51272    common_burialinformationlinks    TABLE     �   CREATE TABLE common_burialinformationlinks (
    uuid character varying(36) NOT NULL,
    burial_id character varying(36) NOT NULL,
    link character varying(100) NOT NULL
);
 1   DROP TABLE public.common_burialinformationlinks;
       public         postgres    false    5            d           1259    51247    common_burialpictures    TABLE     �   CREATE TABLE common_burialpictures (
    uuid character varying(36) NOT NULL,
    burial_id character varying(36) NOT NULL,
    photo character varying(100)
);
 )   DROP TABLE public.common_burialpictures;
       public         postgres    false    5            X           1259    51096    common_burialtype    TABLE     �   CREATE TABLE common_burialtype (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL,
    brief character varying(100) NOT NULL
);
 %   DROP TABLE public.common_burialtype;
       public         postgres    false    5            g           1259    51294    common_closedburial    TABLE     �   CREATE TABLE common_closedburial (
    burial_id character varying(36) NOT NULL,
    burial_from_id character varying(36) NOT NULL,
    date date NOT NULL,
    cause_id character varying(36) NOT NULL
);
 '   DROP TABLE public.common_closedburial;
       public         postgres    false    5            \           1259    51121    common_closurecause    TABLE     x   CREATE TABLE common_closurecause (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL
);
 '   DROP TABLE public.common_closurecause;
       public         postgres    false    5            V           1259    51086    common_deadmancategory    TABLE     �   CREATE TABLE common_deadmancategory (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL,
    brief character varying(100) NOT NULL
);
 *   DROP TABLE public.common_deadmancategory;
       public         postgres    false    5            U           1259    51081    common_deathcause    TABLE     v   CREATE TABLE common_deathcause (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.common_deathcause;
       public         postgres    false    5            W           1259    51091    common_documentsplace    TABLE     z   CREATE TABLE common_documentsplace (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL
);
 )   DROP TABLE public.common_documentsplace;
       public         postgres    false    5            i           1259    51359    common_duty    TABLE     p   CREATE TABLE common_duty (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.common_duty;
       public         postgres    false    5            R           1259    51052    common_geocity    TABLE     �   CREATE TABLE common_geocity (
    uuid character varying(36) NOT NULL,
    region_id character varying(36) NOT NULL,
    name character varying(36) NOT NULL
);
 "   DROP TABLE public.common_geocity;
       public         postgres    false    5            P           1259    51033    common_geocountry    TABLE     u   CREATE TABLE common_geocountry (
    uuid character varying(36) NOT NULL,
    name character varying(24) NOT NULL
);
 %   DROP TABLE public.common_geocountry;
       public         postgres    false    5            Q           1259    51040    common_georegion    TABLE     �   CREATE TABLE common_georegion (
    uuid character varying(36) NOT NULL,
    country_id character varying(36) NOT NULL,
    name character varying(36) NOT NULL
);
 $   DROP TABLE public.common_georegion;
       public         postgres    false    5            S           1259    51064    common_geostreet    TABLE     �   CREATE TABLE common_geostreet (
    uuid character varying(36) NOT NULL,
    city_id character varying(36) NOT NULL,
    name character varying(99) NOT NULL
);
 $   DROP TABLE public.common_geostreet;
       public         postgres    false    5            [           1259    51116    common_informationsource    TABLE     }   CREATE TABLE common_informationsource (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL
);
 ,   DROP TABLE public.common_informationsource;
       public         postgres    false    5            a           1259    51189    common_locationbirth    TABLE     �   CREATE TABLE common_locationbirth (
    country_id character varying(36),
    region_id character varying(36),
    city_id character varying(36),
    person_id character varying(36) NOT NULL
);
 (   DROP TABLE public.common_locationbirth;
       public         postgres    false    5            h           1259    51329    common_locationburial    TABLE     �  CREATE TABLE common_locationburial (
    country_id character varying(36),
    region_id character varying(36),
    city_id character varying(36),
    burial_id character varying(36) NOT NULL,
    post_index character varying(16) NOT NULL,
    street_id character varying(36),
    house character varying(16) NOT NULL,
    gps_x double precision,
    gps_y double precision,
    gps_z double precision
);
 )   DROP TABLE public.common_locationburial;
       public         postgres    false    5            l           1259    51401    common_locationduty    TABLE     �  CREATE TABLE common_locationduty (
    country_id character varying(36),
    region_id character varying(36),
    city_id character varying(36),
    duty_id character varying(36) NOT NULL,
    post_index character varying(16) NOT NULL,
    street_id character varying(36),
    house character varying(16) NOT NULL,
    block character varying(16) NOT NULL,
    building character varying(16) NOT NULL
);
 '   DROP TABLE public.common_locationduty;
       public         postgres    false    5            Z           1259    51106    common_militaryconflict    TABLE     �   CREATE TABLE common_militaryconflict (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL,
    brief character varying(100) NOT NULL,
    military_conflict_type_id character varying(36),
    comment text
);
 +   DROP TABLE public.common_militaryconflict;
       public         postgres    false    5            Y           1259    51101    common_militaryconflicttype    TABLE     �   CREATE TABLE common_militaryconflicttype (
    uuid character varying(36) NOT NULL,
    "full" character varying(100) NOT NULL,
    brief character varying(100) NOT NULL
);
 /   DROP TABLE public.common_militaryconflicttype;
       public         postgres    false    5            ]           1259    51126    common_nationality    TABLE     w   CREATE TABLE common_nationality (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL
);
 &   DROP TABLE public.common_nationality;
       public         postgres    false    5            ^           1259    51131    common_person    TABLE     �  CREATE TABLE common_person (
    uuid character varying(36) NOT NULL,
    last_name character varying(128) NOT NULL,
    first_name character varying(30) NOT NULL,
    patronymic character varying(30) NOT NULL,
    birth_date date,
    death_date date,
    death_cause_id character varying(36),
    nationality_id character varying(36),
    deadman_category_id character varying(36),
    documents_place_id character varying(36),
    information_source_id character varying(36),
    creator_id integer,
    date_of_creation timestamp with time zone NOT NULL,
    date_last_edit timestamp with time zone NOT NULL,
    additional_info text,
    is_trash boolean NOT NULL
);
 !   DROP TABLE public.common_person;
       public         postgres    false    5            j           1259    51364    common_personburial    TABLE        CREATE TABLE common_personburial (
    uuid character varying(36) NOT NULL,
    person_id character varying(36) NOT NULL,
    burial_id character varying(36) NOT NULL,
    date_burried date,
    date_exhumated date,
    bnameonmemorial boolean NOT NULL
);
 '   DROP TABLE public.common_personburial;
       public         postgres    false    5            k           1259    51381    common_personduty    TABLE     �   CREATE TABLE common_personduty (
    uuid character varying(36) NOT NULL,
    person_id character varying(36) NOT NULL,
    rank_id character varying(36) NOT NULL,
    duty_id character varying(36) NOT NULL,
    date_from date,
    date_to date
);
 %   DROP TABLE public.common_personduty;
       public         postgres    false    5            _           1259    51169    common_personeditcause    TABLE     �   CREATE TABLE common_personeditcause (
    uuid character varying(36) NOT NULL,
    person_id character varying(36) NOT NULL,
    name character varying(100) NOT NULL,
    number character varying(100) NOT NULL,
    date date NOT NULL
);
 *   DROP TABLE public.common_personeditcause;
       public         postgres    false    5            `           1259    51179    common_personinformationlinks    TABLE     �   CREATE TABLE common_personinformationlinks (
    uuid character varying(36) NOT NULL,
    person_id character varying(36) NOT NULL,
    link character varying(100) NOT NULL
);
 1   DROP TABLE public.common_personinformationlinks;
       public         postgres    false    5            T           1259    51076    common_rank    TABLE     �   CREATE TABLE common_rank (
    uuid character varying(36) NOT NULL,
    name character varying(100) NOT NULL,
    obid integer
);
    DROP TABLE public.common_rank;
       public         postgres    false    5            f           1259    51282    common_searchobject    TABLE       CREATE TABLE common_searchobject (
    uuid character varying(36) NOT NULL,
    number character varying(100) NOT NULL,
    date date,
    inv_number character varying(100) NOT NULL,
    burial_id character varying(36) NOT NULL,
    link character varying(100) NOT NULL
);
 '   DROP TABLE public.common_searchobject;
       public         postgres    false    5            n           1259    51433    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    1939    5            m           1259    51431    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    1646    5            z           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    1645            {           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 40, true);
            public       postgres    false    1645            L           1259    51004    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    5            K           1259    51002    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    1612    5            |           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    1611            }           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 39, true);
            public       postgres    false    1611            M           1259    51017    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    5            O           1259    51027    django_site    TABLE     �   CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    5            N           1259    51025    django_site_id_seq    SEQUENCE     t   CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    1615    5            ~           0    0    django_site_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;
            public       postgres    false    1614                       0    0    django_site_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('django_site_id_seq', 1, true);
            public       postgres    false    1614            r           1259    51741    easy_thumbnails_source    TABLE       CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone DEFAULT '2009-11-22 22:16:23.523494+03'::timestamp with time zone NOT NULL,
    storage_hash character varying(40) NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    1942    5            q           1259    51739    easy_thumbnails_source_id_seq    SEQUENCE        CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    5    1650            �           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;
            public       postgres    false    1649            �           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    1649            t           1259    51758    easy_thumbnails_thumbnail    TABLE     1  CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone DEFAULT '2009-11-22 22:16:23.523494+03'::timestamp with time zone NOT NULL,
    source_id integer NOT NULL,
    storage_hash character varying(40) NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    1944    5            s           1259    51756     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    1652    5            �           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;
            public       postgres    false    1651            �           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    1651            p           1259    51455    south_migrationhistory    TABLE     �   CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 *   DROP TABLE public.south_migrationhistory;
       public         postgres    false    5            o           1259    51453    south_migrationhistory_id_seq    SEQUENCE        CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.south_migrationhistory_id_seq;
       public       postgres    false    5    1648            �           0    0    south_migrationhistory_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;
            public       postgres    false    1647            �           0    0    south_migrationhistory_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('south_migrationhistory_id_seq', 18, true);
            public       postgres    false    1647            �           2604    50942    id    DEFAULT     [   ALTER TABLE auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1604    1603    1604            �           2604    50927    id    DEFAULT     s   ALTER TABLE auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1601    1602    1602            �           2604    50917    id    DEFAULT     e   ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1600    1599    1600            �           2604    50987    id    DEFAULT     Y   ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1609    1610    1610            �           2604    50972    id    DEFAULT     g   ALTER TABLE auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1607    1608    1608            �           2604    50957    id    DEFAULT     {   ALTER TABLE auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1605    1606    1606            �           2604    51436    id    DEFAULT     g   ALTER TABLE django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1645    1646    1646            �           2604    51007    id    DEFAULT     m   ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1612    1611    1612            �           2604    51030    id    DEFAULT     ]   ALTER TABLE django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1614    1615    1615            �           2604    51744    id    DEFAULT     s   ALTER TABLE easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1650    1649    1650            �           2604    51761    id    DEFAULT     y   ALTER TABLE easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1652    1651    1652            �           2604    51458    id    DEFAULT     s   ALTER TABLE south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);
 H   ALTER TABLE public.south_migrationhistory ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    1647    1648    1648            A          0    50939 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    1604   P      @          0    50924    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    1602   0P      ?          0    50914    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    1600   MP      D          0    50984 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
    public       postgres    false    1610   �V      C          0    50969    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    1608   ~W      B          0    50954    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    1606   �W      Z          0    51214    common_burial 
   TABLE DATA               
  COPY common_burial (uuid, passportid, date_passport, date_burried, date_discovered, burial_type_id, military_conflict_id, date_memorial, date_gosznak, unknown_count, creator_id, date_of_creation, date_last_edit, additional_info, is_trash, photo, scheme) FROM stdin;
    public       postgres    false    1634   �W      [          0    51237    common_burialeditcause 
   TABLE DATA               N   COPY common_burialeditcause (uuid, burial_id, name, number, date) FROM stdin;
    public       postgres    false    1635   �W      ]          0    51272    common_burialinformationlinks 
   TABLE DATA               G   COPY common_burialinformationlinks (uuid, burial_id, link) FROM stdin;
    public       postgres    false    1637   �W      \          0    51247    common_burialpictures 
   TABLE DATA               @   COPY common_burialpictures (uuid, burial_id, photo) FROM stdin;
    public       postgres    false    1636   X      P          0    51096    common_burialtype 
   TABLE DATA               7   COPY common_burialtype (uuid, name, brief) FROM stdin;
    public       postgres    false    1624   ,X      _          0    51294    common_closedburial 
   TABLE DATA               Q   COPY common_closedburial (burial_id, burial_from_id, date, cause_id) FROM stdin;
    public       postgres    false    1639   wY      T          0    51121    common_closurecause 
   TABLE DATA               2   COPY common_closurecause (uuid, name) FROM stdin;
    public       postgres    false    1628   �Y      N          0    51086    common_deadmancategory 
   TABLE DATA               <   COPY common_deadmancategory (uuid, name, brief) FROM stdin;
    public       postgres    false    1622   �Y      M          0    51081    common_deathcause 
   TABLE DATA               0   COPY common_deathcause (uuid, name) FROM stdin;
    public       postgres    false    1621   uZ      O          0    51091    common_documentsplace 
   TABLE DATA               4   COPY common_documentsplace (uuid, name) FROM stdin;
    public       postgres    false    1623   E[      a          0    51359    common_duty 
   TABLE DATA               *   COPY common_duty (uuid, name) FROM stdin;
    public       postgres    false    1641   b[      J          0    51052    common_geocity 
   TABLE DATA               8   COPY common_geocity (uuid, region_id, name) FROM stdin;
    public       postgres    false    1618   [      H          0    51033    common_geocountry 
   TABLE DATA               0   COPY common_geocountry (uuid, name) FROM stdin;
    public       postgres    false    1616   �[      I          0    51040    common_georegion 
   TABLE DATA               ;   COPY common_georegion (uuid, country_id, name) FROM stdin;
    public       postgres    false    1617   �[      K          0    51064    common_geostreet 
   TABLE DATA               8   COPY common_geostreet (uuid, city_id, name) FROM stdin;
    public       postgres    false    1619   �[      S          0    51116    common_informationsource 
   TABLE DATA               7   COPY common_informationsource (uuid, name) FROM stdin;
    public       postgres    false    1627   �[      Y          0    51189    common_locationbirth 
   TABLE DATA               R   COPY common_locationbirth (country_id, region_id, city_id, person_id) FROM stdin;
    public       postgres    false    1633   \      `          0    51329    common_locationburial 
   TABLE DATA               �   COPY common_locationburial (country_id, region_id, city_id, burial_id, post_index, street_id, house, gps_x, gps_y, gps_z) FROM stdin;
    public       postgres    false    1640   -\      d          0    51401    common_locationduty 
   TABLE DATA               ~   COPY common_locationduty (country_id, region_id, city_id, duty_id, post_index, street_id, house, block, building) FROM stdin;
    public       postgres    false    1644   J\      R          0    51106    common_militaryconflict 
   TABLE DATA               a   COPY common_militaryconflict (uuid, name, brief, military_conflict_type_id, comment) FROM stdin;
    public       postgres    false    1626   g\      Q          0    51101    common_militaryconflicttype 
   TABLE DATA               C   COPY common_militaryconflicttype (uuid, "full", brief) FROM stdin;
    public       postgres    false    1625   �_      U          0    51126    common_nationality 
   TABLE DATA               1   COPY common_nationality (uuid, name) FROM stdin;
    public       postgres    false    1629   e`      V          0    51131    common_person 
   TABLE DATA               
  COPY common_person (uuid, last_name, first_name, patronymic, birth_date, death_date, death_cause_id, nationality_id, deadman_category_id, documents_place_id, information_source_id, creator_id, date_of_creation, date_last_edit, additional_info, is_trash) FROM stdin;
    public       postgres    false    1630   �`      b          0    51364    common_personburial 
   TABLE DATA               q   COPY common_personburial (uuid, person_id, burial_id, date_burried, date_exhumated, bnameonmemorial) FROM stdin;
    public       postgres    false    1642   �`      c          0    51381    common_personduty 
   TABLE DATA               [   COPY common_personduty (uuid, person_id, rank_id, duty_id, date_from, date_to) FROM stdin;
    public       postgres    false    1643   �`      W          0    51169    common_personeditcause 
   TABLE DATA               N   COPY common_personeditcause (uuid, person_id, name, number, date) FROM stdin;
    public       postgres    false    1631   �`      X          0    51179    common_personinformationlinks 
   TABLE DATA               G   COPY common_personinformationlinks (uuid, person_id, link) FROM stdin;
    public       postgres    false    1632   �`      L          0    51076    common_rank 
   TABLE DATA               0   COPY common_rank (uuid, name, obid) FROM stdin;
    public       postgres    false    1620   a      ^          0    51282    common_searchobject 
   TABLE DATA               W   COPY common_searchobject (uuid, number, date, inv_number, burial_id, link) FROM stdin;
    public       postgres    false    1638   �i      e          0    51433    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
    public       postgres    false    1646   �i      E          0    51004    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       postgres    false    1612   �o      F          0    51017    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    1613   s      G          0    51027    django_site 
   TABLE DATA               0   COPY django_site (id, domain, name) FROM stdin;
    public       postgres    false    1615   	t      g          0    51741    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, name, modified, storage_hash) FROM stdin;
    public       postgres    false    1650   6t      h          0    51758    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, name, modified, source_id, storage_hash) FROM stdin;
    public       postgres    false    1652   St      f          0    51455    south_migrationhistory 
   TABLE DATA               K   COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
    public       postgres    false    1648   pt      �           2606    50946    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    1604    1604            �           2606    50931 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    1602    1602    1602            �           2606    50929    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    1602    1602            �           2606    50944    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    1604    1604            �           2606    50921 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    1600    1600    1600            �           2606    50919    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    1600    1600            �           2606    50974    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    1608    1608            �           2606    50976 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    1608    1608    1608            �           2606    50989    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    1610    1610            �           2606    50959    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    1606    1606            �           2606    50961 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    1606    1606    1606            �           2606    51473    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    1610    1610            �           2606    51221    common_burial_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY common_burial
    ADD CONSTRAINT common_burial_pkey PRIMARY KEY (uuid);
 J   ALTER TABLE ONLY public.common_burial DROP CONSTRAINT common_burial_pkey;
       public         postgres    false    1634    1634            �           2606    51241    common_burialeditcause_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY common_burialeditcause
    ADD CONSTRAINT common_burialeditcause_pkey PRIMARY KEY (uuid);
 \   ALTER TABLE ONLY public.common_burialeditcause DROP CONSTRAINT common_burialeditcause_pkey;
       public         postgres    false    1635    1635            �           2606    51276 "   common_burialinformationlinks_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY common_burialinformationlinks
    ADD CONSTRAINT common_burialinformationlinks_pkey PRIMARY KEY (uuid);
 j   ALTER TABLE ONLY public.common_burialinformationlinks DROP CONSTRAINT common_burialinformationlinks_pkey;
       public         postgres    false    1637    1637            �           2606    51251    common_burialpictures_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY common_burialpictures
    ADD CONSTRAINT common_burialpictures_pkey PRIMARY KEY (uuid);
 Z   ALTER TABLE ONLY public.common_burialpictures DROP CONSTRAINT common_burialpictures_pkey;
       public         postgres    false    1636    1636            �           2606    51100    common_burialtype_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY common_burialtype
    ADD CONSTRAINT common_burialtype_pkey PRIMARY KEY (uuid);
 R   ALTER TABLE ONLY public.common_burialtype DROP CONSTRAINT common_burialtype_pkey;
       public         postgres    false    1624    1624            �           2606    51298    common_closedburial_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY common_closedburial
    ADD CONSTRAINT common_closedburial_pkey PRIMARY KEY (burial_id);
 V   ALTER TABLE ONLY public.common_closedburial DROP CONSTRAINT common_closedburial_pkey;
       public         postgres    false    1639    1639            �           2606    51125    common_closurecause_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY common_closurecause
    ADD CONSTRAINT common_closurecause_pkey PRIMARY KEY (uuid);
 V   ALTER TABLE ONLY public.common_closurecause DROP CONSTRAINT common_closurecause_pkey;
       public         postgres    false    1628    1628            �           2606    51090    common_deadmancategory_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY common_deadmancategory
    ADD CONSTRAINT common_deadmancategory_pkey PRIMARY KEY (uuid);
 \   ALTER TABLE ONLY public.common_deadmancategory DROP CONSTRAINT common_deadmancategory_pkey;
       public         postgres    false    1622    1622            �           2606    51085    common_deathcause_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY common_deathcause
    ADD CONSTRAINT common_deathcause_pkey PRIMARY KEY (uuid);
 R   ALTER TABLE ONLY public.common_deathcause DROP CONSTRAINT common_deathcause_pkey;
       public         postgres    false    1621    1621            �           2606    51095    common_documentsplace_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY common_documentsplace
    ADD CONSTRAINT common_documentsplace_pkey PRIMARY KEY (uuid);
 Z   ALTER TABLE ONLY public.common_documentsplace DROP CONSTRAINT common_documentsplace_pkey;
       public         postgres    false    1623    1623            �           2606    51363    common_duty_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY common_duty
    ADD CONSTRAINT common_duty_pkey PRIMARY KEY (uuid);
 F   ALTER TABLE ONLY public.common_duty DROP CONSTRAINT common_duty_pkey;
       public         postgres    false    1641    1641            �           2606    51056    common_geocity_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY common_geocity
    ADD CONSTRAINT common_geocity_pkey PRIMARY KEY (uuid);
 L   ALTER TABLE ONLY public.common_geocity DROP CONSTRAINT common_geocity_pkey;
       public         postgres    false    1618    1618            �           2606    51058 !   common_geocity_region_id_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY common_geocity
    ADD CONSTRAINT common_geocity_region_id_name_key UNIQUE (region_id, name);
 Z   ALTER TABLE ONLY public.common_geocity DROP CONSTRAINT common_geocity_region_id_name_key;
       public         postgres    false    1618    1618    1618            �           2606    51039    common_geocountry_name_key 
   CONSTRAINT     `   ALTER TABLE ONLY common_geocountry
    ADD CONSTRAINT common_geocountry_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.common_geocountry DROP CONSTRAINT common_geocountry_name_key;
       public         postgres    false    1616    1616            �           2606    51037    common_geocountry_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY common_geocountry
    ADD CONSTRAINT common_geocountry_pkey PRIMARY KEY (uuid);
 R   ALTER TABLE ONLY public.common_geocountry DROP CONSTRAINT common_geocountry_pkey;
       public         postgres    false    1616    1616            �           2606    51046 $   common_georegion_country_id_name_key 
   CONSTRAINT     u   ALTER TABLE ONLY common_georegion
    ADD CONSTRAINT common_georegion_country_id_name_key UNIQUE (country_id, name);
 _   ALTER TABLE ONLY public.common_georegion DROP CONSTRAINT common_georegion_country_id_name_key;
       public         postgres    false    1617    1617    1617            �           2606    51044    common_georegion_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY common_georegion
    ADD CONSTRAINT common_georegion_pkey PRIMARY KEY (uuid);
 P   ALTER TABLE ONLY public.common_georegion DROP CONSTRAINT common_georegion_pkey;
       public         postgres    false    1617    1617            �           2606    51070 !   common_geostreet_city_id_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY common_geostreet
    ADD CONSTRAINT common_geostreet_city_id_name_key UNIQUE (city_id, name);
 \   ALTER TABLE ONLY public.common_geostreet DROP CONSTRAINT common_geostreet_city_id_name_key;
       public         postgres    false    1619    1619    1619            �           2606    51068    common_geostreet_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY common_geostreet
    ADD CONSTRAINT common_geostreet_pkey PRIMARY KEY (uuid);
 P   ALTER TABLE ONLY public.common_geostreet DROP CONSTRAINT common_geostreet_pkey;
       public         postgres    false    1619    1619            �           2606    51120    common_informationsource_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY common_informationsource
    ADD CONSTRAINT common_informationsource_pkey PRIMARY KEY (uuid);
 `   ALTER TABLE ONLY public.common_informationsource DROP CONSTRAINT common_informationsource_pkey;
       public         postgres    false    1627    1627            �           2606    51193    common_locationbirth_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY common_locationbirth
    ADD CONSTRAINT common_locationbirth_pkey PRIMARY KEY (person_id);
 X   ALTER TABLE ONLY public.common_locationbirth DROP CONSTRAINT common_locationbirth_pkey;
       public         postgres    false    1633    1633            �           2606    51333    common_locationburial_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY common_locationburial
    ADD CONSTRAINT common_locationburial_pkey PRIMARY KEY (burial_id);
 Z   ALTER TABLE ONLY public.common_locationburial DROP CONSTRAINT common_locationburial_pkey;
       public         postgres    false    1640    1640            �           2606    51405    common_locationduty_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY common_locationduty
    ADD CONSTRAINT common_locationduty_pkey PRIMARY KEY (duty_id);
 V   ALTER TABLE ONLY public.common_locationduty DROP CONSTRAINT common_locationduty_pkey;
       public         postgres    false    1644    1644            �           2606    51110    common_militaryconflict_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY common_militaryconflict
    ADD CONSTRAINT common_militaryconflict_pkey PRIMARY KEY (uuid);
 ^   ALTER TABLE ONLY public.common_militaryconflict DROP CONSTRAINT common_militaryconflict_pkey;
       public         postgres    false    1626    1626            �           2606    51105     common_militaryconflicttype_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY common_militaryconflicttype
    ADD CONSTRAINT common_militaryconflicttype_pkey PRIMARY KEY (uuid);
 f   ALTER TABLE ONLY public.common_militaryconflicttype DROP CONSTRAINT common_militaryconflicttype_pkey;
       public         postgres    false    1625    1625            �           2606    51130    common_nationality_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY common_nationality
    ADD CONSTRAINT common_nationality_pkey PRIMARY KEY (uuid);
 T   ALTER TABLE ONLY public.common_nationality DROP CONSTRAINT common_nationality_pkey;
       public         postgres    false    1629    1629            �           2606    51138    common_person_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_pkey PRIMARY KEY (uuid);
 J   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_pkey;
       public         postgres    false    1630    1630            �           2606    51370 +   common_personburial_person_id_burial_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY common_personburial
    ADD CONSTRAINT common_personburial_person_id_burial_id_key UNIQUE (person_id, burial_id);
 i   ALTER TABLE ONLY public.common_personburial DROP CONSTRAINT common_personburial_person_id_burial_id_key;
       public         postgres    false    1642    1642    1642            �           2606    51368    common_personburial_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY common_personburial
    ADD CONSTRAINT common_personburial_pkey PRIMARY KEY (uuid);
 V   ALTER TABLE ONLY public.common_personburial DROP CONSTRAINT common_personburial_pkey;
       public         postgres    false    1642    1642            �           2606    51385    common_personduty_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY common_personduty
    ADD CONSTRAINT common_personduty_pkey PRIMARY KEY (uuid);
 R   ALTER TABLE ONLY public.common_personduty DROP CONSTRAINT common_personduty_pkey;
       public         postgres    false    1643    1643            �           2606    51173    common_personeditcause_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY common_personeditcause
    ADD CONSTRAINT common_personeditcause_pkey PRIMARY KEY (uuid);
 \   ALTER TABLE ONLY public.common_personeditcause DROP CONSTRAINT common_personeditcause_pkey;
       public         postgres    false    1631    1631            �           2606    51183 "   common_personinformationlinks_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY common_personinformationlinks
    ADD CONSTRAINT common_personinformationlinks_pkey PRIMARY KEY (uuid);
 j   ALTER TABLE ONLY public.common_personinformationlinks DROP CONSTRAINT common_personinformationlinks_pkey;
       public         postgres    false    1632    1632            �           2606    51080    common_rank_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY common_rank
    ADD CONSTRAINT common_rank_pkey PRIMARY KEY (uuid);
 F   ALTER TABLE ONLY public.common_rank DROP CONSTRAINT common_rank_pkey;
       public         postgres    false    1620    1620            �           2606    51288 !   common_searchobject_burial_id_key 
   CONSTRAINT     n   ALTER TABLE ONLY common_searchobject
    ADD CONSTRAINT common_searchobject_burial_id_key UNIQUE (burial_id);
 _   ALTER TABLE ONLY public.common_searchobject DROP CONSTRAINT common_searchobject_burial_id_key;
       public         postgres    false    1638    1638            �           2606    51286    common_searchobject_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY common_searchobject
    ADD CONSTRAINT common_searchobject_pkey PRIMARY KEY (uuid);
 V   ALTER TABLE ONLY public.common_searchobject DROP CONSTRAINT common_searchobject_pkey;
       public         postgres    false    1638    1638                        2606    51442    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    1646    1646            �           2606    51011 '   django_content_type_app_label_model_key 
   CONSTRAINT     {   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);
 e   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_key;
       public         postgres    false    1612    1612    1612            �           2606    51009    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    1612    1612            �           2606    51024    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    1613    1613            �           2606    51032    django_site_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    1615    1615                       2606    51747    easy_thumbnails_source_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    1650    1650            	           2606    51764    easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    1652    1652                       2606    51463    south_migrationhistory_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.south_migrationhistory DROP CONSTRAINT south_migrationhistory_pkey;
       public         postgres    false    1648    1648                       1259    51785    easy_thumbnails_source_name    INDEX     W   CREATE INDEX easy_thumbnails_source_name ON easy_thumbnails_source USING btree (name);
 /   DROP INDEX public.easy_thumbnails_source_name;
       public         postgres    false    1650                       1259    51916 #   easy_thumbnails_source_storage_hash    INDEX     g   CREATE INDEX easy_thumbnails_source_storage_hash ON easy_thumbnails_source USING btree (storage_hash);
 7   DROP INDEX public.easy_thumbnails_source_storage_hash;
       public         postgres    false    1650                       1259    51786    easy_thumbnails_thumbnail_name    INDEX     ]   CREATE INDEX easy_thumbnails_thumbnail_name ON easy_thumbnails_thumbnail USING btree (name);
 2   DROP INDEX public.easy_thumbnails_thumbnail_name;
       public         postgres    false    1652            
           1259    51784 #   easy_thumbnails_thumbnail_source_id    INDEX     g   CREATE INDEX easy_thumbnails_thumbnail_source_id ON easy_thumbnails_thumbnail USING btree (source_id);
 7   DROP INDEX public.easy_thumbnails_thumbnail_source_id;
       public         postgres    false    1652                       1259    51917 &   easy_thumbnails_thumbnail_storage_hash    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_storage_hash ON easy_thumbnails_thumbnail USING btree (storage_hash);
 :   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash;
       public         postgres    false    1652                       2606    50932 )   auth_group_permissions_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_permission_id_fkey;
       public       postgres    false    1600    1947    1602                       2606    50977    auth_user_groups_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_fkey;
       public       postgres    false    1608    1604    1955                       2606    50962 -   auth_user_user_permissions_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_permission_id_fkey;
       public       postgres    false    1606    1600    1947            #           2606    51222 !   common_burial_burial_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_burial
    ADD CONSTRAINT common_burial_burial_type_id_fkey FOREIGN KEY (burial_type_id) REFERENCES common_burialtype(uuid) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.common_burial DROP CONSTRAINT common_burial_burial_type_id_fkey;
       public       postgres    false    1624    1634    2001            %           2606    51232    common_burial_creator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_burial
    ADD CONSTRAINT common_burial_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY public.common_burial DROP CONSTRAINT common_burial_creator_id_fkey;
       public       postgres    false    1965    1610    1634            $           2606    51227 '   common_burial_military_conflict_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_burial
    ADD CONSTRAINT common_burial_military_conflict_id_fkey FOREIGN KEY (military_conflict_id) REFERENCES common_militaryconflict(uuid) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.common_burial DROP CONSTRAINT common_burial_military_conflict_id_fkey;
       public       postgres    false    2005    1626    1634            &           2606    51242 %   common_burialeditcause_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_burialeditcause
    ADD CONSTRAINT common_burialeditcause_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.common_burialeditcause DROP CONSTRAINT common_burialeditcause_burial_id_fkey;
       public       postgres    false    1635    1634    2021            (           2606    51277 ,   common_burialinformationlinks_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_burialinformationlinks
    ADD CONSTRAINT common_burialinformationlinks_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.common_burialinformationlinks DROP CONSTRAINT common_burialinformationlinks_burial_id_fkey;
       public       postgres    false    1634    2021    1637            '           2606    51267 $   common_burialpictures_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_burialpictures
    ADD CONSTRAINT common_burialpictures_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.common_burialpictures DROP CONSTRAINT common_burialpictures_burial_id_fkey;
       public       postgres    false    1634    1636    2021            +           2606    51319 '   common_closedburial_burial_from_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_closedburial
    ADD CONSTRAINT common_closedburial_burial_from_id_fkey FOREIGN KEY (burial_from_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.common_closedburial DROP CONSTRAINT common_closedburial_burial_from_id_fkey;
       public       postgres    false    1634    1639    2021            *           2606    51314 "   common_closedburial_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_closedburial
    ADD CONSTRAINT common_closedburial_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_closedburial DROP CONSTRAINT common_closedburial_burial_id_fkey;
       public       postgres    false    2021    1639    1634            ,           2606    51324 !   common_closedburial_cause_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_closedburial
    ADD CONSTRAINT common_closedburial_cause_id_fkey FOREIGN KEY (cause_id) REFERENCES common_closurecause(uuid) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.common_closedburial DROP CONSTRAINT common_closedburial_cause_id_fkey;
       public       postgres    false    2009    1628    1639                       2606    51059    common_geocity_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_geocity
    ADD CONSTRAINT common_geocity_region_id_fkey FOREIGN KEY (region_id) REFERENCES common_georegion(uuid) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY public.common_geocity DROP CONSTRAINT common_geocity_region_id_fkey;
       public       postgres    false    1617    1618    1983                       2606    51047     common_georegion_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_georegion
    ADD CONSTRAINT common_georegion_country_id_fkey FOREIGN KEY (country_id) REFERENCES common_geocountry(uuid) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.common_georegion DROP CONSTRAINT common_georegion_country_id_fkey;
       public       postgres    false    1616    1979    1617                       2606    51071    common_geostreet_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_geostreet
    ADD CONSTRAINT common_geostreet_city_id_fkey FOREIGN KEY (city_id) REFERENCES common_geocity(uuid) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY public.common_geostreet DROP CONSTRAINT common_geostreet_city_id_fkey;
       public       postgres    false    1619    1985    1618            !           2606    51204 !   common_locationbirth_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationbirth
    ADD CONSTRAINT common_locationbirth_city_id_fkey FOREIGN KEY (city_id) REFERENCES common_geocity(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_locationbirth DROP CONSTRAINT common_locationbirth_city_id_fkey;
       public       postgres    false    1618    1633    1985                       2606    51194 $   common_locationbirth_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationbirth
    ADD CONSTRAINT common_locationbirth_country_id_fkey FOREIGN KEY (country_id) REFERENCES common_geocountry(uuid) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.common_locationbirth DROP CONSTRAINT common_locationbirth_country_id_fkey;
       public       postgres    false    1633    1979    1616            "           2606    51209 #   common_locationbirth_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationbirth
    ADD CONSTRAINT common_locationbirth_person_id_fkey FOREIGN KEY (person_id) REFERENCES common_person(uuid) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.common_locationbirth DROP CONSTRAINT common_locationbirth_person_id_fkey;
       public       postgres    false    1630    2013    1633                        2606    51199 #   common_locationbirth_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationbirth
    ADD CONSTRAINT common_locationbirth_region_id_fkey FOREIGN KEY (region_id) REFERENCES common_georegion(uuid) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.common_locationbirth DROP CONSTRAINT common_locationbirth_region_id_fkey;
       public       postgres    false    1633    1983    1617            0           2606    51349 $   common_locationburial_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationburial
    ADD CONSTRAINT common_locationburial_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.common_locationburial DROP CONSTRAINT common_locationburial_burial_id_fkey;
       public       postgres    false    2021    1634    1640            /           2606    51344 "   common_locationburial_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationburial
    ADD CONSTRAINT common_locationburial_city_id_fkey FOREIGN KEY (city_id) REFERENCES common_geocity(uuid) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.common_locationburial DROP CONSTRAINT common_locationburial_city_id_fkey;
       public       postgres    false    1618    1985    1640            -           2606    51334 %   common_locationburial_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationburial
    ADD CONSTRAINT common_locationburial_country_id_fkey FOREIGN KEY (country_id) REFERENCES common_geocountry(uuid) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.common_locationburial DROP CONSTRAINT common_locationburial_country_id_fkey;
       public       postgres    false    1616    1640    1979            .           2606    51339 $   common_locationburial_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationburial
    ADD CONSTRAINT common_locationburial_region_id_fkey FOREIGN KEY (region_id) REFERENCES common_georegion(uuid) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.common_locationburial DROP CONSTRAINT common_locationburial_region_id_fkey;
       public       postgres    false    1983    1617    1640            1           2606    51354 $   common_locationburial_street_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationburial
    ADD CONSTRAINT common_locationburial_street_id_fkey FOREIGN KEY (street_id) REFERENCES common_geostreet(uuid) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.common_locationburial DROP CONSTRAINT common_locationburial_street_id_fkey;
       public       postgres    false    1991    1640    1619            9           2606    51416     common_locationduty_city_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationduty
    ADD CONSTRAINT common_locationduty_city_id_fkey FOREIGN KEY (city_id) REFERENCES common_geocity(uuid) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.common_locationduty DROP CONSTRAINT common_locationduty_city_id_fkey;
       public       postgres    false    1618    1985    1644            7           2606    51406 #   common_locationduty_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationduty
    ADD CONSTRAINT common_locationduty_country_id_fkey FOREIGN KEY (country_id) REFERENCES common_geocountry(uuid) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.common_locationduty DROP CONSTRAINT common_locationduty_country_id_fkey;
       public       postgres    false    1979    1644    1616            :           2606    51421     common_locationduty_duty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationduty
    ADD CONSTRAINT common_locationduty_duty_id_fkey FOREIGN KEY (duty_id) REFERENCES common_personduty(uuid) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.common_locationduty DROP CONSTRAINT common_locationduty_duty_id_fkey;
       public       postgres    false    2043    1643    1644            8           2606    51411 "   common_locationduty_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationduty
    ADD CONSTRAINT common_locationduty_region_id_fkey FOREIGN KEY (region_id) REFERENCES common_georegion(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_locationduty DROP CONSTRAINT common_locationduty_region_id_fkey;
       public       postgres    false    1983    1617    1644            ;           2606    51426 "   common_locationduty_street_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_locationduty
    ADD CONSTRAINT common_locationduty_street_id_fkey FOREIGN KEY (street_id) REFERENCES common_geostreet(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_locationduty DROP CONSTRAINT common_locationduty_street_id_fkey;
       public       postgres    false    1619    1644    1991                       2606    51111 6   common_militaryconflict_military_conflict_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_militaryconflict
    ADD CONSTRAINT common_militaryconflict_military_conflict_type_id_fkey FOREIGN KEY (military_conflict_type_id) REFERENCES common_militaryconflicttype(uuid) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.common_militaryconflict DROP CONSTRAINT common_militaryconflict_military_conflict_type_id_fkey;
       public       postgres    false    1626    2003    1625                       2606    51164    common_person_creator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 U   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_creator_id_fkey;
       public       postgres    false    1965    1630    1610                       2606    51149 &   common_person_deadman_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_deadman_category_id_fkey FOREIGN KEY (deadman_category_id) REFERENCES common_deadmancategory(uuid) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_deadman_category_id_fkey;
       public       postgres    false    1997    1622    1630                       2606    51139 !   common_person_death_cause_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_death_cause_id_fkey FOREIGN KEY (death_cause_id) REFERENCES common_deathcause(uuid) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_death_cause_id_fkey;
       public       postgres    false    1995    1621    1630                       2606    51154 %   common_person_documents_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_documents_place_id_fkey FOREIGN KEY (documents_place_id) REFERENCES common_documentsplace(uuid) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_documents_place_id_fkey;
       public       postgres    false    1630    1999    1623                       2606    51159 (   common_person_information_source_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_information_source_id_fkey FOREIGN KEY (information_source_id) REFERENCES common_informationsource(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_information_source_id_fkey;
       public       postgres    false    1630    2007    1627                       2606    51144 !   common_person_nationality_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_person
    ADD CONSTRAINT common_person_nationality_id_fkey FOREIGN KEY (nationality_id) REFERENCES common_nationality(uuid) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.common_person DROP CONSTRAINT common_person_nationality_id_fkey;
       public       postgres    false    1629    1630    2011            3           2606    51376 "   common_personburial_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personburial
    ADD CONSTRAINT common_personburial_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_personburial DROP CONSTRAINT common_personburial_burial_id_fkey;
       public       postgres    false    1642    2021    1634            2           2606    51371 "   common_personburial_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personburial
    ADD CONSTRAINT common_personburial_person_id_fkey FOREIGN KEY (person_id) REFERENCES common_person(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_personburial DROP CONSTRAINT common_personburial_person_id_fkey;
       public       postgres    false    1630    2013    1642            6           2606    51396    common_personduty_duty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personduty
    ADD CONSTRAINT common_personduty_duty_id_fkey FOREIGN KEY (duty_id) REFERENCES common_duty(uuid) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.common_personduty DROP CONSTRAINT common_personduty_duty_id_fkey;
       public       postgres    false    2037    1641    1643            4           2606    51386     common_personduty_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personduty
    ADD CONSTRAINT common_personduty_person_id_fkey FOREIGN KEY (person_id) REFERENCES common_person(uuid) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.common_personduty DROP CONSTRAINT common_personduty_person_id_fkey;
       public       postgres    false    1630    2013    1643            5           2606    51391    common_personduty_rank_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personduty
    ADD CONSTRAINT common_personduty_rank_id_fkey FOREIGN KEY (rank_id) REFERENCES common_rank(uuid) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.common_personduty DROP CONSTRAINT common_personduty_rank_id_fkey;
       public       postgres    false    1643    1993    1620                       2606    51174 %   common_personeditcause_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personeditcause
    ADD CONSTRAINT common_personeditcause_person_id_fkey FOREIGN KEY (person_id) REFERENCES common_person(uuid) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.common_personeditcause DROP CONSTRAINT common_personeditcause_person_id_fkey;
       public       postgres    false    2013    1631    1630                       2606    51184 ,   common_personinformationlinks_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_personinformationlinks
    ADD CONSTRAINT common_personinformationlinks_person_id_fkey FOREIGN KEY (person_id) REFERENCES common_person(uuid) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.common_personinformationlinks DROP CONSTRAINT common_personinformationlinks_person_id_fkey;
       public       postgres    false    1630    2013    1632            )           2606    51289 "   common_searchobject_burial_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY common_searchobject
    ADD CONSTRAINT common_searchobject_burial_id_fkey FOREIGN KEY (burial_id) REFERENCES common_burial(uuid) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.common_searchobject DROP CONSTRAINT common_searchobject_burial_id_fkey;
       public       postgres    false    2021    1638    1634                       2606    51012     content_type_id_refs_id_728de91f    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT content_type_id_refs_id_728de91f;
       public       postgres    false    1600    1612    1971            =           2606    51448 %   django_admin_log_content_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_fkey;
       public       postgres    false    1646    1612    1971            <           2606    51443    django_admin_log_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_fkey;
       public       postgres    false    1610    1965    1646                       2606    50947    group_id_refs_id_3cea63fe    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT group_id_refs_id_3cea63fe;
       public       postgres    false    1604    1955    1602            >           2606    51779 "   source_id_refs_id_38c628a45bffe8f5    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT source_id_refs_id_38c628a45bffe8f5 FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT source_id_refs_id_38c628a45bffe8f5;
       public       postgres    false    2052    1652    1650                       2606    50997    user_id_refs_id_831107f1    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT user_id_refs_id_831107f1;
       public       postgres    false    1610    1608    1965                       2606    50992    user_id_refs_id_f2045483    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT user_id_refs_id_f2045483;
       public       postgres    false    1606    1610    1965            A      x������ � �      @      x������ � �      ?   �  x��Y�n�F}&�B_P��x�s�@AK��F�zț/izq�yiQ�Z�_Ŏ�_X�Qg�3)1���3g.ܝ9�x���b�N&�ì���e^,ρ�o���� ]L3
�k�$�eU+�0vh�O�bu��±��ا~��ID�=i�r"��_-��	=��&�]=T���s��Z<����XT٢T/3g(\�%��zv� +��c��
���2��E�/�� ,F�6���0���"�.�2'�����đ|��@B\H����!�������;v��r_dŸX-����aW��$�a���1��0��5�dkv��D�QfSq,��(4zH��h�F�&g}�[�w���3�q�>ק��M}�Lu�
��pP�mQ��y���m��'�[�S�Zׯ��pZT�˪̲��G�riR�`����{�l�.��k������� K���ٵ��.W���n@�N;�4%�n���W������~X�?p[v>�(���dW�diu0N����;lU�؜4��*`ln�*��ǉ�����l�[p�?���&�t1N�lZ�)H�Me�l�c�f����m��v�;����{���]�� x�`�v�'��q���������p��3wHF�C�u�dl<�[���mG�*����/����Z���xr���<���5$��!������p��1gԚ�胚����/�a����$9��,���L�g�|,G�0��|7�ʹ�7��~7�ʻ�׎c�V����r��5m7$��KG�nHFx�����w��<#��x�����Rl�O�Q^������ϊr�V0��Ū�c��ߛLe��GBo>�h_�9_�@���3� �Aǹ��b<+��2��?�����Z��x�d�ϭe2�ʄ�������m��!_;��*Q�t�EMH��.k�&����E��'HռCsl�>:��\[�n���i�O6����o?��������b�+��f�����ȑE��V6e�>���&y%_TD��㝐��*��
�Az�ox�gХn�~�z�P߫��i����f������QI��H�6R��I7�H��®����� }��R͊�����������n��n0P���A%�`@R����	>LnL�R�	�DnL�P�=n�8ڰr�S�Rr}X�H�t�ڛ��%g�H�;�vNʄ�'�Z�����#�Hh�v\�_�+
8;[&��j���a�t*�����RR��e�$gK�?eWLP!6zF<qWLh�6��+&���C*���B��{�?�+���������e ��hC3lg0W��$��I��"&A"���j����?�3ؾÂ=�Q���d	l���(5d#*���!jɼ������)�(��1���f�(�f�D͙���&�d.���֧0��gN�.�V fGT�u[�aD�Z����F��i+;��J6L��j�Q���6�5�{�a��G��v/j"���������7c��C��(��Gu�vc�����i�=�]��gFo��GH��v��n�ơQDaי�&jEd�֬�2�N�ا�o@aD�&<�%"�`Mk�<��"��A��
n��r���zQ����fÖH�V[sc�ak����p9��E��	o1zNi���'���iZ����4�9���f`dj���d:��n��|����y�,      D   }   x�]�9�0 k��P���������&ZɄ"��DTh��fPμU!~r�����Ǯx<��p���6Y��mr���58S)7�.�ns
��^��$��܌�B���hRD��`�*�wPC<��+)��'=      C      x������ � �      B      x������ � �      Z      x������ � �      [      x������ � �      ]      x������ � �      \      x������ � �      P   ;  x���[N�@���U��P������u��FMM�R�}1n�֢�^X��w�Z�߹�����D&�Q:�I�E�Gbz�U��ؠ��QF�qU���Qb�5�ܣ
���2V�mt;k-�(eܰJ��8�N<��R��Ħ��C?4���a+�����f>yff�;,ڙ{~��&��'��+bϷ>�Qn��Î)f^��9
m�v�*���Xr9"oӘ�C�8��[���F��<��盲ɠ�g��*@���cZ>��BSԬ��OT?�W,��=w�������@���������&��0Jɟ��4���X�����P@9      _      x������ � �      T      x������ � �      N   �   x���;�@��=X,�ݻ��<��[c� !����?7rAk�L7����(O�n(��2��vj�Џ}n�*�G��h1革�H:�tF���O&��dQ�2T�I�
*5��mjk�B�VK}h0n_z�x��Jc8������.�j&2�����G:���js��0pǍ�����9      M   �   x�����0EϦ�4�!Ћ��@�o�
��� ��ߎ\,�qs����oJ�Yl���8�T�3��х5!��+��xJ<��M���.�.I|0P#i%5�0���L���I�qń3]D0AkS��,{�̯�m�D�͚W�U��+�:Lۡ�\�{pF|p^��~Ƌn�s����t�ϛщ�Q�;+�v      O      x������ � �      a      x������ � �      J      x������ � �      H      x������ � �      I      x������ � �      K      x������ � �      S      x������ � �      Y      x������ � �      `      x������ � �      d      x������ � �      R     x���]R�0���*��xt����%��:�0<іB�<�a(w�z�d�a�aBb)���{�"9W��l�T5� Tl��ZO�	gT��t�_�����f��U�LqP��4H�0�N��C�o2|��G;b渵���[Z�(��
rݏq��5�f�|=ivq0G�O8���S��7��c�fa�,R�FP���:k"����l?�Y��<���W�
���N{���8D.3��n!�-3����Hc�0�6�f�?�^2�{��JL�I�^'
0`��0nIڢO����ߣ��j��lEQs4VAWU"׹���j�:b<�{���
�7�r6צ`�;B�,B@���A��i^��TN#ƕ�����L�cE�%�)K��?HĴd[��XL�^)�����ۚ,]7��^��c�KDW�uڌ	��,�*�ʕt'(��SlաklL�
��P~�s�4اG�t�@�	�"���8��\���R@ĹG�5��oߐ��X��e'62�(��2��*�.�g�Mƣ �|�;x����:|�w�آ*�2�,TP�,���`\�����l,#�!l��sF=Cr[ZQ���r�/�.B捂���"˖���+Ԑ���� Rt��HiM^Q/�#�4�X$���ȣ;����L�e�L�aG��R��pC���F��Uu8��bS�*��u�0wP���T'�{H~Z�)-�P�!B�ុXt=��5��(x�/�P��y�࠰%��h�g9��D;��I����(��_�i�XwN��:�J�>dI��)g�      Q   �   x���M�0���\ S(�r7
r�v���+5�#�(��͍ԍ���3�{ߗ�$t��#;�ǉ�8ci�b�m�G���f�Æ&�pA�wCS��hm!G�+d*Mh�3*��@�\nq����dF"�2R���8]�?[&|�z.H�(g��q�)6ōVl���UTr�{�ylh�K�4�")v"4#D���)G���v�����b      U      x������ � �      V      x������ � �      b      x������ � �      c      x������ � �      W      x������ � �      X      x������ � �      L   �  x���Kr����)fIE��]Ϯ��7��8��O �4e�D�M�DY���14^3�B����W���#.b��YY_>�A�*Zk�K�)��YU������5:�O�X~������'���ܨ�.Y�j�
��l8����~e��'�(|�2��������8N�/��p��
��mkQ���_����b8N������EVdu��/+:%�o�k����r�_�t�C�7A0��p�����]�!�r�BCE�$G���!G����f=�@�@�S^���Wß���N�ꯆ�lTbY�3�HwIǿ�/�r"$$%9�}p��H���b@�C�RQ0>I�"o�"!�\�9����$��3o������u0�u+1t�{>|sg�����9��=�X�l 2�l$���k�5#�]���� �|[5vh �
�/ߴ��Z�}�Sē�+҅� �(mM>?�X��%M�!@\�:'�����-h+����;r9��&�� ؂/J�?��b^'�i�,���6/U�_!]%h \h}�W���.��y��	 YQ}Q�J ���f����`/z-�J�7c� 0�Z	}�����Ŧ�R$A×M��<�Z����v���N�� �,2����կ!xJWkݿs���Η�2���2�J���q3|��aǯ�J���� ����`ƔFi�!
Tw��s�����zE �r>��p�[O�9���	Q���5����k�|��}��tx>�"�y�����^2K�$L�*l���I8���*��@��TF
j/����Պ���� Qu�|��I��������ե� I=g��I��XH��J;o+P�4�
I�A��.�V�L�V-|y۫<���t��V�`˱p��
���j��_��D��B�@k%�ڍ�+2ٖغ��\~�����;A��ζQ����˙�\G�G�����w]��C`�5�أ۞�f�T���}�5��䜒������5$C'e��/h�9䦚�;޹6���Û�u�k͸)�7������d�WN	�~݌v8(r�ڧJ�%����s�{�G��ީ}����#AQE���wD�|�uc��r�4'*��d��.�P�l%Nh+
[��c�>�tl%�cw�Z��u��Q	(�M+MyS7f|�� E�Ս�����`��qQJ;S���r�h�84�=���8L�|�PM��>k׮@Zer��)_&���.�R�z� |��QpgC�'���2@��u��\�u҃�Z���Zr]Z�qy�ߎ�[ �l�F��i�(�\(���e}n3@s�؋�-ʧ͜d>�F��G��_�R�&<N���( d�
�d��Ku���S�i��&anq�Q"-��]�k�����8e��nÁ��4��mL���ME-͆3���i@TT����t�|�<]�
N��8g(W��^�97�	�(*�p�hf���#��|M�1��S��	ȿ���d5�	]'u��/�GI$Ek�����I,R�K5:u��'��8�x��>�PƮ���x���{�3lS����҄=�u���x�WR�#�g��l��{ W�b�K֯�Q��7fe��+�K���m����2�,��&%���gU(���H�b���:Z�U�Ǥ=6'�۫:���gZ �S��o�`�j��=���g���Aˁ:�0,�U]�Zp�[��T�fL����u��/0>-5��Nz�@\cc+�쟱LLM�X+��WM$ͧ�y�� 	�:HI*y^e�N7�̊ ��^����&˫��P�Z+��ט��a�� �%�l�Ns5R�X/����H}���d<�.��	�?�m�@�;-D �0�[G��8�����fT�%Tަ������_u]�I�47��k)�:7e.m@��av�|�M
`��_缶�<��1��,��!@C���Z��i/ :��7ŋ~,^���ʈ�j�ϝ��
%5��+���b��e�䇐�d[<h���:�����3�Z�(-MM�^.�kD�pP���Oo�G��F���
��K'�B��q��n�Ebr��ۃ6&�v���7��xv�Ʒ{-�����o?�HO�VL���yr7ȵx�M�g�R\:�F����C[->���z�a��F+�~[x�������W�׳\��Ӷ���O3���ӥ>��o��D;�
��K��1�"�^��Nz�z�<��ꙇ�m���w˃���ö{      ^      x������ � �      e   �  x����nW���O��������DB�JH΢�\p�%� P�."ey�0x��N�Q�w�ݞnP@{k����j��\/A$��r)3RXe��r�Q;�VK��z	P�e^j���G8�J�������֟ӿ�͡��'��Ŀ���_��į�4��̯���ރ׌knK7�����4�_A��p=��<Y�7�ğ1�
h1F+d�	 ٱd��\O��i����f�у�#=�(;!��@�w�"�<��p�Q�5�de��5G�yJ�'����n�m�j�V�I�Ҩ�m�1Z���_S���{�@z��CZ�Y(���>!�/����[�j�T���oegsm
.���Fz�B��+z��yx�i�L$,�Jk�.RWU"���0�&�n�D�������W��)����1O*���\w��V
��!��!=�V4�sݼ؅�!��4�\�[[��*WΠ_Q�D��>��3��项Cz�����$}qX�|4ė���DQ(f��n��Z��55�5���� �*�J��i��@�|��_c���#�R!�D0���Uau�?tdN*���*�PAU����R�c[���d�0�-���[������2!aT�i낑w�[��s��^ (�~.���}���1�����]�TJ���];I# ��Nc� ���L��oC��mF*
y�N��s�٧XVX�B}B�~�P��	�P����ȺLXDVJ�ۇ���r��ng�
�,x&uth��SK9�I%gNkL�����v��?�J��to�M���]�w9��̤J2���35.���]�}4��䫇�e�=~P|�u���x����o+��#W�)w�r���?�z���������A�x&%�����uL���LC!]��Be
U9i�Q����P��:��M�X����^܉���)��a�u�qB���"��V�d�����<�5"���q}���>:F��u?�3�0�P�K@�d�5(��	��P�h�'���:��S�5�NZ�kw;����=ᬶ��iGgM#v�O)w϶=t,�d�hrd�˹D��4�4.£~\6����bhW�B���P�R������X�8�Ͱ���;~��M����.�=W��u5���Ss�$��$8f*�:i�x<�'$\m7�&z�=l��3z�R&�i���on�D]	�n�΢��\&S�NJ b�S��mo�#)O�WnZ�y,F&d������&-����e$�����X��I�۱�'Q�ȱL��u#�.
2iS��a�p�qe���YmK`�:�Qs��r&��1�I0��4"F�D����D�y���	������y�	%X��`Q%��M7ot��m�.�w1�!BXƁ�{�a�<��.���"�!����x���Y��(F>D���czX^f9�3~p�yO��@�ً��K������R      E   \  x��U�n�@>�>����qB�]*U�l����w}��4�I�T����F�� �@�@ ��~�~�khr���wf����&}�|��($n"��3��N%}c׏�!	g���'�K�(,��YqPϼz�{�3�%�����������$f�ّɅ!N����(	E<���Sy-S���ʅ�uT�&Q��w��,�";�w�|���0ˎ�1}1�����L�ӵ�\Č	j�D��*E����ij�[��TN���]#�
���r�#K������6sE�sA"�"��.i�]/ i�c�޼���{n蹂u"�a��MNgri�����FNt�:��J�W&uO��p����'�\h�����֣��U�[A|���Jb�t���Z݃"�
��N�+�{~�7@8�����D^!L��;�D~1���S3Kt�+�G-�8�=�Ã(�B�3JbEFs��` I��3���>I�D<��itm���yRuw$�ٹ�E����	57P¬AyW!�򮸆I�jJ!�h����j����Lb�:Z�P�/MwW�����.t���@�L�����o�wY�u�WԚ��?<��~�3ZaE��syڧ�ǢKk��M�WShdHk�'��e�r�&$E#�t�L��}��B����x]�������҇`!P����Л�7���|��f��P�G���gn�u��k�qr �K�Z&�E������Y;�cW{��c����/7Pϱ�n ��\b	��q�*ô�\B��5�-V#�"��jy���-�q1����+�����:����6����}��>�Z'֗���6>�v�pi���i��s����&�V�����i�Ҹq�|�/_PJ�Wt\�      F   �   x�E�MO�0 ����͖�峻��m�A`���
2,5���z/>�Ic߳_I��`߷�KdHh�U]���8�Q���iΌP'ŗL=\]��T���|_o����ṣ��t+ߙMM5
��\�J��a�H�C/u<	&dj�s�F������K���G��W��j�n9�H��@C_e��T�+@������![6 .&�9V��,�?hO^      G      x�3�L�H�-�I�K��Efs��qqq �<	�      g      x������ � �      h      x������ � �      f   �  x���ݎ�0������j����,�,���`"0jy�h��2I�^��ϙ3�C�w]�0>��m{����w`oPVLT\�� ���#�j��S썱Mc�޵��|������,�]�ߠBV�R 0�@Ye;h�l��P��>�a6���sN��Z1U�Zp�"ψ|G<MC�4�W��RϤ�L�D/0���6��i��oLzi��pML�M���x�%�� Iʊ�Bq��j�<8;�&^���o�'3�˂�(]�VL�t��\�4�q��R���1J>�1���p���I�S�6Sb��T�~jwÚ��O���T$��,���h���~2
��N `��}�o�'���J�Aeno���hF�n`M�5�+e��Nvf�%�VE�)���kNI�L�@8@̰���6r�`��<]�xy���-(ӛ6�[@�B��y =�/.��l���=�����
��?�,���`j�     