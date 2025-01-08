PGDMP  '    
    
             }            e_pr_db    16.4    16.4 K   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17072    e_pr_db    DATABASE     �   CREATE DATABASE e_pr_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE e_pr_db;
                postgres    false                        2615    17747    planning    SCHEMA        CREATE SCHEMA planning;
    DROP SCHEMA planning;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            R           1259    32833    tb_fund    TABLE     �   CREATE TABLE planning.tb_fund (
    id integer NOT NULL,
    fund_id character varying(100),
    fund_name character varying(100),
    detail text
);
    DROP TABLE planning.tb_fund;
       planning         heap    postgres    false    6            Q           1259    32832    fund_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.fund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE planning.fund_id_seq;
       planning          postgres    false    338    6                       0    0    fund_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE planning.fund_id_seq OWNED BY planning.tb_fund.id;
          planning          postgres    false    337            N           1259    17749    tb_plann_pr    TABLE     R  CREATE TABLE planning.tb_plann_pr (
    id integer NOT NULL,
    doc_num character varying(100),
    type_doc character varying(100),
    start_date text,
    end_date text,
    title character varying(80),
    detail text,
    order_list character varying(10),
    group_account character varying(100),
    matrail_name character varying(100),
    short_meagess character varying(100),
    quantity character varying(10),
    unit character varying(100),
    delivery_date character varying(100),
    requst_date character varying(100),
    mm_group character varying(100),
    factory_mm character varying(100),
    product_storage character varying(100),
    procurement_group character varying(100),
    price character varying(100),
    vat character varying(100),
    currency character varying(100),
    total character varying(100),
    g_l character varying(100),
    fund_money character varying(100),
    fund character varying(100),
    scpoe_fund character varying(100),
    fund_center character varying(100),
    commitments character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(10),
    estimated_price character varying(100)
);
 !   DROP TABLE planning.tb_plann_pr;
       planning         heap    postgres    false    6            M           1259    17748    plann_pr_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.plann_pr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE planning.plann_pr_id_seq;
       planning          postgres    false    334    6                       0    0    plann_pr_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE planning.plann_pr_id_seq OWNED BY planning.tb_plann_pr.id;
          planning          postgres    false    333            P           1259    17760 
   tb_comment    TABLE     "  CREATE TABLE planning.tb_comment (
    id integer NOT NULL,
    doc_num character varying(100),
    procurement_message character varying(100),
    item_notes character varying(100),
    delivery_message character varying(100),
    message_ordering_materials character varying(100),
    quotation_text character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE planning.tb_comment;
       planning         heap    postgres    false    6            O           1259    17759    tb_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE planning.tb_comment_id_seq;
       planning          postgres    false    336    6                       0    0    tb_comment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE planning.tb_comment_id_seq OWNED BY planning.tb_comment.id;
          planning          postgres    false    335            V           1259    32850    tb_costcenter    TABLE     �   CREATE TABLE planning.tb_costcenter (
    id integer NOT NULL,
    cost_id character varying(100),
    cost_name character varying(150)
);
 #   DROP TABLE planning.tb_costcenter;
       planning         heap    postgres    false    6            U           1259    32849    tb_costcenter_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_costcenter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE planning.tb_costcenter_id_seq;
       planning          postgres    false    6    342                       0    0    tb_costcenter_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE planning.tb_costcenter_id_seq OWNED BY planning.tb_costcenter.id;
          planning          postgres    false    341            ^           1259    32884 
   tb_factory    TABLE     �   CREATE TABLE planning.tb_factory (
    id integer NOT NULL,
    id_factory character varying(100),
    name_factory character varying(100),
    detail text
);
     DROP TABLE planning.tb_factory;
       planning         heap    postgres    false    6            ]           1259    32883    tb_factory_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_factory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE planning.tb_factory_id_seq;
       planning          postgres    false    350    6                       0    0    tb_factory_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE planning.tb_factory_id_seq OWNED BY planning.tb_factory.id;
          planning          postgres    false    349            X           1259    32857    tb_group_matrail    TABLE     �   CREATE TABLE planning.tb_group_matrail (
    id integer NOT NULL,
    id_group character varying(100),
    name_group character varying(150),
    detail text
);
 &   DROP TABLE planning.tb_group_matrail;
       planning         heap    postgres    false    6            W           1259    32856    tb_group_matrail_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_group_matrail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE planning.tb_group_matrail_id_seq;
       planning          postgres    false    344    6                       0    0    tb_group_matrail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE planning.tb_group_matrail_id_seq OWNED BY planning.tb_group_matrail.id;
          planning          postgres    false    343            Z           1259    32866    tb_material    TABLE     s   CREATE TABLE planning.tb_material (
    id integer NOT NULL,
    id_mm character varying(100),
    name_mm text
);
 !   DROP TABLE planning.tb_material;
       planning         heap    postgres    false    6            Y           1259    32865    tb_material_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE planning.tb_material_id_seq;
       planning          postgres    false    346    6            	           0    0    tb_material_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE planning.tb_material_id_seq OWNED BY planning.tb_material.id;
          planning          postgres    false    345            b           1259    32902    tb_purchasing_group    TABLE     �   CREATE TABLE planning.tb_purchasing_group (
    id integer NOT NULL,
    id_ph_gt character varying(100),
    name_ph_gt text
);
 )   DROP TABLE planning.tb_purchasing_group;
       planning         heap    postgres    false    6            a           1259    32901    tb_purchasing_group_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_purchasing_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE planning.tb_purchasing_group_id_seq;
       planning          postgres    false    354    6            
           0    0    tb_purchasing_group_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE planning.tb_purchasing_group_id_seq OWNED BY planning.tb_purchasing_group.id;
          planning          postgres    false    353            d           1259    32911    tb_s_coscenter    TABLE     �   CREATE TABLE planning.tb_s_coscenter (
    id integer NOT NULL,
    id_s_ct character varying(100),
    name_s_ct character varying(150)
);
 $   DROP TABLE planning.tb_s_coscenter;
       planning         heap    postgres    false    6            c           1259    32910    tb_s_coscenter_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_s_coscenter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE planning.tb_s_coscenter_id_seq;
       planning          postgres    false    6    356                       0    0    tb_s_coscenter_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE planning.tb_s_coscenter_id_seq OWNED BY planning.tb_s_coscenter.id;
          planning          postgres    false    355            T           1259    32842    tb_scope    TABLE     �   CREATE TABLE planning.tb_scope (
    id integer NOT NULL,
    id_scope character varying(100),
    scope_name character varying(150)
);
    DROP TABLE planning.tb_scope;
       planning         heap    postgres    false    6            S           1259    32841    tb_scope_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_scope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE planning.tb_scope_id_seq;
       planning          postgres    false    340    6                       0    0    tb_scope_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE planning.tb_scope_id_seq OWNED BY planning.tb_scope.id;
          planning          postgres    false    339            `           1259    32893    tb_storage_location    TABLE     �   CREATE TABLE planning.tb_storage_location (
    id integer NOT NULL,
    id_st_lo character varying(100),
    name_st_lo character varying(100),
    detail text
);
 )   DROP TABLE planning.tb_storage_location;
       planning         heap    postgres    false    6            _           1259    32892    tb_storage_location_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_storage_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE planning.tb_storage_location_id_seq;
       planning          postgres    false    6    352                       0    0    tb_storage_location_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE planning.tb_storage_location_id_seq OWNED BY planning.tb_storage_location.id;
          planning          postgres    false    351            \           1259    32875    tb_storage_unit    TABLE     }   CREATE TABLE planning.tb_storage_unit (
    id integer NOT NULL,
    id_sg_ut character varying(100),
    name_sg_ut text
);
 %   DROP TABLE planning.tb_storage_unit;
       planning         heap    postgres    false    6            [           1259    32874    tb_storage_unit_id_seq    SEQUENCE     �   CREATE SEQUENCE planning.tb_storage_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE planning.tb_storage_unit_id_seq;
       planning          postgres    false    6    348                       0    0    tb_storage_unit_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE planning.tb_storage_unit_id_seq OWNED BY planning.tb_storage_unit.id;
          planning          postgres    false    347            �            1259    17073    tb_province_plans    TABLE     �  CREATE TABLE public.tb_province_plans (
    id integer NOT NULL,
    province character varying(100),
    plan_id_branch character varying(100),
    province_id character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date character varying DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.tb_province_plans;
       public         heap    postgres    false    5                       0    0    TABLE tb_province_plans    COMMENT     �   COMMENT ON TABLE public.tb_province_plans IS 'สำหรับการรวมแผนของจังหวัดเพื่อส่งให้เขต พัสดุ';
          public          postgres    false    216            �            1259    17080    province_plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.province_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.province_plans_id_seq;
       public          postgres    false    5    216                       0    0    province_plans_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.province_plans_id_seq OWNED BY public.tb_province_plans.id;
          public          postgres    false    217            �            1259    17081    tb_activity    TABLE     �   CREATE TABLE public.tb_activity (
    activity_id character varying(10) NOT NULL,
    activity_name text,
    project_id character varying(10)
);
    DROP TABLE public.tb_activity;
       public         heap    postgres    false    5            �            1259    17086    tb_activity_2    TABLE     p   CREATE TABLE public.tb_activity_2 (
    activity2_id character varying(10),
    activity2_name text NOT NULL
);
 !   DROP TABLE public.tb_activity_2;
       public         heap    postgres    false    5            �            1259    17091    tb_activity_group    TABLE     ~   CREATE TABLE public.tb_activity_group (
    activity_group_id character varying(10) NOT NULL,
    activity_group_name text
);
 %   DROP TABLE public.tb_activity_group;
       public         heap    postgres    false    5            �            1259    17096    tb_activity_log    TABLE     �   CREATE TABLE public.tb_activity_log (
    user_id character varying(10),
    username text,
    fullname text,
    activity text,
    activity_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id integer NOT NULL
);
 #   DROP TABLE public.tb_activity_log;
       public         heap    postgres    false    5            �            1259    17102    tb_activity_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_activity_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_activity_log_id_seq;
       public          postgres    false    221    5                       0    0    tb_activity_log_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_activity_log_id_seq OWNED BY public.tb_activity_log.id;
          public          postgres    false    222            �            1259    17103    tb_approval    TABLE     �  CREATE TABLE public.tb_approval (
    budget_id character varying(5),
    request_date timestamp without time zone,
    requester_id character varying(10),
    requester_name character varying(100),
    fiscal_year_id character varying(100),
    department_id character varying(100),
    approve_by character varying(100),
    approve_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id integer NOT NULL
);
    DROP TABLE public.tb_approval;
       public         heap    postgres    false    5                       0    0    COLUMN tb_approval.requester_id    COMMENT     @   COMMENT ON COLUMN public.tb_approval.requester_id IS 'user_id';
          public          postgres    false    223                       0    0 !   COLUMN tb_approval.requester_name    COMMENT     C   COMMENT ON COLUMN public.tb_approval.requester_name IS 'fullname';
          public          postgres    false    223                       0    0 !   COLUMN tb_approval.fiscal_year_id    COMMENT     J   COMMENT ON COLUMN public.tb_approval.fiscal_year_id IS 'tb_filsacl_year';
          public          postgres    false    223                       0    0    COLUMN tb_approval.approve_by    COMMENT     F   COMMENT ON COLUMN public.tb_approval.approve_by IS 'user_id apporve';
          public          postgres    false    223            �            1259    17107    tb_approval_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_approval_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tb_approval_id_seq;
       public          postgres    false    5    223                       0    0    tb_approval_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tb_approval_id_seq OWNED BY public.tb_approval.id;
          public          postgres    false    224            �            1259    17108    tb_approval_log    TABLE     �  CREATE TABLE public.tb_approval_log (
    budget_id character varying(5),
    request_date timestamp without time zone,
    requester_id character varying(10),
    requester_name character varying(100),
    fiscal_year_id character varying(100),
    department_id character varying(100),
    approve_by character varying(100),
    approve_date timestamp without time zone,
    status character varying(5),
    id integer NOT NULL
);
 #   DROP TABLE public.tb_approval_log;
       public         heap    postgres    false    5                       0    0 #   COLUMN tb_approval_log.requester_id    COMMENT     D   COMMENT ON COLUMN public.tb_approval_log.requester_id IS 'user_id';
          public          postgres    false    225                       0    0 %   COLUMN tb_approval_log.requester_name    COMMENT     G   COMMENT ON COLUMN public.tb_approval_log.requester_name IS 'fullname';
          public          postgres    false    225                       0    0 %   COLUMN tb_approval_log.fiscal_year_id    COMMENT     N   COMMENT ON COLUMN public.tb_approval_log.fiscal_year_id IS 'tb_filsacl_year';
          public          postgres    false    225                       0    0 !   COLUMN tb_approval_log.approve_by    COMMENT     J   COMMENT ON COLUMN public.tb_approval_log.approve_by IS 'user_id apporve';
          public          postgres    false    225            �            1259    17111    tb_approval_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_approval_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_approval_log_id_seq;
       public          postgres    false    5    225                       0    0    tb_approval_log_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_approval_log_id_seq OWNED BY public.tb_approval_log.id;
          public          postgres    false    226            �            1259    17112    tb_approvaler    TABLE     \  CREATE TABLE public.tb_approvaler (
    id integer NOT NULL,
    approve_id character varying(100),
    request_date timestamp without time zone,
    requset_id character varying(10),
    requester_name character varying(100),
    fiscal_year_id character varying(100),
    department_id character varying(100),
    approve_by character varying(10),
    approve_date timestamp without time zone,
    type_approve character varying(10),
    description text,
    short_title text,
    status integer,
    branch_id integer,
    district_id integer,
    province_id integer,
    headquarters_id integer
);
 !   DROP TABLE public.tb_approvaler;
       public         heap    postgres    false    5            �            1259    17117    tb_approvaler_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_approvaler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_approvaler_id_seq;
       public          postgres    false    227    5                       0    0    tb_approvaler_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_approvaler_id_seq OWNED BY public.tb_approvaler.id;
          public          postgres    false    228            �            1259    17118    tb_approve_sale    TABLE     F  CREATE TABLE public.tb_approve_sale (
    id integer NOT NULL,
    item_id character varying(100),
    sale_date character varying(100),
    sale_drivery character varying(100),
    buyer character varying(50),
    email_cus character varying(100),
    "order" character varying(100),
    quantity character varying(10),
    unit character varying(100),
    unit_price character varying(10),
    total character varying(50),
    vat character varying(20),
    net_amount character varying(50),
    unit_amount character varying(50),
    salyer character varying(50),
    status integer,
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    create_by character varying(10),
    approve_date timestamp without time zone,
    approve_by character varying(10),
    sale_id character varying(100),
    descripton text
);
 #   DROP TABLE public.tb_approve_sale;
       public         heap    postgres    false    5            �            1259    17124    tb_approve_sale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_approve_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_approve_sale_id_seq;
       public          postgres    false    5    229                       0    0    tb_approve_sale_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_approve_sale_id_seq OWNED BY public.tb_approve_sale.id;
          public          postgres    false    230            �            1259    17125    tb_assessment    TABLE     �  CREATE TABLE public.tb_assessment (
    id integer NOT NULL,
    department text,
    month character varying(20),
    year character varying(4),
    a1_1 text,
    a1_2 text,
    a1_3 text,
    a1_4 text,
    a1_5 text,
    a1_6 text,
    a1_7 text,
    a2_1_1 text,
    a2_1_2 text,
    a2_2_1 text,
    a2_2_2 text,
    a2_2_3 text,
    a2_3_1 text,
    a2_3_2 text,
    a2_3_3 text,
    a2_3_4 text,
    a2_3_5 text,
    a2_4_1 text,
    a2_4_2 text,
    a2_4_3 text,
    a2_4_4 text,
    a2_5_1 text,
    a2_5_2 text,
    a2_5_3 text,
    a2_6 text,
    a3_1 text,
    a3_2 text,
    a3_3 text,
    a3_4 text,
    a3_5 text,
    a4_1 text,
    a4_2 text,
    "createDte" timestamp without time zone DEFAULT now()
);
 !   DROP TABLE public.tb_assessment;
       public         heap    postgres    false    5                       0    0    COLUMN tb_assessment.department    COMMENT     �   COMMENT ON COLUMN public.tb_assessment.department IS 'ความสุภาพของเจ้าหน้าที่การขาย';
          public          postgres    false    231                       0    0    COLUMN tb_assessment.month    COMMENT     v   COMMENT ON COLUMN public.tb_assessment.month IS 'ความรวดเร็วในการจัดส่ง';
          public          postgres    false    231                        0    0    COLUMN tb_assessment.year    COMMENT     o   COMMENT ON COLUMN public.tb_assessment.year IS 'ความสมบูรณ์ของสินค้า';
          public          postgres    false    231            !           0    0    COLUMN tb_assessment.a1_1    COMMENT     ~   COMMENT ON COLUMN public.tb_assessment.a1_1 IS 'ความสุภาพของพนักงานจัดส่ง';
          public          postgres    false    231            "           0    0    COLUMN tb_assessment.a1_2    COMMENT     l   COMMENT ON COLUMN public.tb_assessment.a1_2 IS 'ข้อเสนอแนะเพิ่มเติม';
          public          postgres    false    231            #           0    0    COLUMN tb_assessment.a1_7    COMMENT     �   COMMENT ON COLUMN public.tb_assessment.a1_7 IS 'รับค่ามากกว่า 1 คำตอบ คั่นด้วย |';
          public          postgres    false    231            �            1259    17131    tb_assessment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_assessment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_assessment_id_seq;
       public          postgres    false    5    231            $           0    0    tb_assessment_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_assessment_id_seq OWNED BY public.tb_assessment.id;
          public          postgres    false    232            �            1259    17132    tb_budget_source    TABLE     �   CREATE TABLE public.tb_budget_source (
    budget_source_id character varying(5) NOT NULL,
    budget_source_name text,
    general_id character varying(5),
    create_date timestamp without time zone,
    type_budget_source character varying(5)
);
 $   DROP TABLE public.tb_budget_source;
       public         heap    postgres    false    5            �            1259    17137    tb_bugdet_plan_department    TABLE     }  CREATE TABLE public.tb_bugdet_plan_department (
    budget_id character varying(5),
    fiscal_year_id character varying(5),
    version_id character varying(5),
    department_id character varying(100) NOT NULL,
    departmet_name character varying(100),
    fund_id character varying(100),
    functional_id character varying(100),
    budget double precision,
    status character varying(5),
    create_by character varying(5),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(5),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id integer NOT NULL
);
 -   DROP TABLE public.tb_bugdet_plan_department;
       public         heap    postgres    false    5            %           0    0 '   COLUMN tb_bugdet_plan_department.status    COMMENT     �   COMMENT ON COLUMN public.tb_bugdet_plan_department.status IS '0= not update , 1 = ร่าง, 2 = รออนุมัติ, 3 = อนุมัติแล้ว , 4 = ปฏิเสธและทำใหม่';
          public          postgres    false    234            �            1259    17142 "   tb_bugdet_plan_department_3_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_bugdet_plan_department_3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tb_bugdet_plan_department_3_id_seq;
       public          postgres    false    234    5            &           0    0 "   tb_bugdet_plan_department_3_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tb_bugdet_plan_department_3_id_seq OWNED BY public.tb_bugdet_plan_department.id;
          public          postgres    false    235            �            1259    17143    tb_bugdet_plan_functional    TABLE     s  CREATE TABLE public.tb_bugdet_plan_functional (
    budget_id character varying(5) NOT NULL,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    department_id character varying(100),
    fund_id character varying(100),
    functional_id character varying(100),
    functional_name character varying(100),
    budget double precision,
    create_by character varying(10),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(10),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status integer,
    id integer NOT NULL
);
 -   DROP TABLE public.tb_bugdet_plan_functional;
       public         heap    postgres    false    5            '           0    0 *   COLUMN tb_bugdet_plan_functional.budget_id    COMMENT     L   COMMENT ON COLUMN public.tb_bugdet_plan_functional.budget_id IS 'ex:B0001';
          public          postgres    false    236            (           0    0 '   COLUMN tb_bugdet_plan_functional.status    COMMENT     [   COMMENT ON COLUMN public.tb_bugdet_plan_functional.status IS '0= not update , 1 = update';
          public          postgres    false    236            �            1259    17148 "   tb_bugdet_plan_functional_2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_bugdet_plan_functional_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tb_bugdet_plan_functional_2_id_seq;
       public          postgres    false    5    236            )           0    0 "   tb_bugdet_plan_functional_2_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tb_bugdet_plan_functional_2_id_seq OWNED BY public.tb_bugdet_plan_functional.id;
          public          postgres    false    237            �            1259    17149    tb_bugdet_plan_fund    TABLE     e  CREATE TABLE public.tb_bugdet_plan_fund (
    budget_id character varying(5) NOT NULL,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    department_id character varying(100),
    fund_id character varying(100),
    fund_name character varying(100),
    budget double precision,
    create_by character varying(5),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(5),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status integer,
    functional_id character varying(100),
    id integer NOT NULL
);
 '   DROP TABLE public.tb_bugdet_plan_fund;
       public         heap    postgres    false    5            *           0    0 !   COLUMN tb_bugdet_plan_fund.status    COMMENT     U   COMMENT ON COLUMN public.tb_bugdet_plan_fund.status IS '0= not update , 1 = update';
          public          postgres    false    238            �            1259    17154    tb_bugdet_plan_fund_2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_bugdet_plan_fund_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tb_bugdet_plan_fund_2_id_seq;
       public          postgres    false    5    238            +           0    0    tb_bugdet_plan_fund_2_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_bugdet_plan_fund_2_id_seq OWNED BY public.tb_bugdet_plan_fund.id;
          public          postgres    false    239            �            1259    17155    tb_bugdet_plan_month    TABLE     N  CREATE TABLE public.tb_bugdet_plan_month (
    budget_id character varying(5) NOT NULL,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    department_id character varying(100),
    fund_id character varying(100),
    functional_id character varying(100),
    commitment_id character varying(100),
    commitment_name character varying(100),
    budget_total double precision,
    budget_january double precision,
    budget_february double precision,
    budget_march double precision,
    budget_april double precision,
    budget_may double precision,
    budget_june double precision,
    budget_july double precision,
    budget_august double precision,
    budget_september double precision,
    budget_october double precision,
    budget_november double precision,
    budget_december double precision,
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(5),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id integer NOT NULL
);
 (   DROP TABLE public.tb_bugdet_plan_month;
       public         heap    postgres    false    5            ,           0    0 "   COLUMN tb_bugdet_plan_month.status    COMMENT     V   COMMENT ON COLUMN public.tb_bugdet_plan_month.status IS '0= not update , 1 = update';
          public          postgres    false    240            �            1259    17162    tb_bugdet_plan_month_2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_bugdet_plan_month_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tb_bugdet_plan_month_2_id_seq;
       public          postgres    false    240    5            -           0    0    tb_bugdet_plan_month_2_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tb_bugdet_plan_month_2_id_seq OWNED BY public.tb_bugdet_plan_month.id;
          public          postgres    false    241            �            1259    17163    tb_bugdet_plan_month_log    TABLE       CREATE TABLE public.tb_bugdet_plan_month_log (
    budget_id character varying(5) NOT NULL,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    department_id character varying(100),
    fund_id character varying(100),
    functional_id character varying(100),
    commitment_id character varying(100),
    commitment_name character varying(100),
    budget_total double precision,
    budget_january double precision,
    budget_february double precision,
    budget_march double precision,
    budget_april double precision,
    budget_may double precision,
    budget_june double precision,
    budget_july double precision,
    budget_august double precision,
    budget_september double precision,
    budget_october double precision,
    budget_november double precision,
    budget_december double precision,
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone
);
 ,   DROP TABLE public.tb_bugdet_plan_month_log;
       public         heap    postgres    false    5            .           0    0 &   COLUMN tb_bugdet_plan_month_log.status    COMMENT     Z   COMMENT ON COLUMN public.tb_bugdet_plan_month_log.status IS '0= not update , 1 = update';
          public          postgres    false    242            �            1259    17168    tb_comment_item    TABLE     �   CREATE TABLE public.tb_comment_item (
    id integer NOT NULL,
    id_comment_id character varying(100),
    short_text text,
    type_comment_item text
);
 #   DROP TABLE public.tb_comment_item;
       public         heap    postgres    false    5            �            1259    17173    tb_comment_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_comment_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_comment_item_id_seq;
       public          postgres    false    243    5            /           0    0    tb_comment_item_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_comment_item_id_seq OWNED BY public.tb_comment_item.id;
          public          postgres    false    244            �            1259    17174    tb_connection    TABLE     /  CREATE TABLE public.tb_connection (
    connection_id character varying(5) NOT NULL,
    strategic_id character varying(5),
    target_strategic_id character varying(5),
    subject_strategic_id character varying(5),
    plan_under_strategy_id character varying(5),
    target_level_subject_id character varying(7),
    sub_plan_id character varying(6),
    target_sub_plan_id character varying(6),
    plan_strategy_id character varying(5),
    sub_indicators_strategy_id character varying(6),
    tactics_id character varying(5),
    strategic_objectives_id character varying(3),
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    form_ebudget_master_id character varying(5)
);
 !   DROP TABLE public.tb_connection;
       public         heap    postgres    false    5            �            1259    17177    tb_department    TABLE     o  CREATE TABLE public.tb_department (
    department_id character varying(100) NOT NULL,
    department_name text,
    department_mapping_id character varying(100),
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone
);
 !   DROP TABLE public.tb_department;
       public         heap    postgres    false    5            0           0    0 "   COLUMN tb_department.department_id    COMMENT     E   COMMENT ON COLUMN public.tb_department.department_id IS 'ex: 10401';
          public          postgres    false    246            �            1259    17183    tb_department_log    TABLE     s  CREATE TABLE public.tb_department_log (
    department_id character varying(100) NOT NULL,
    department_name text,
    department_mapping_id character varying(100),
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone
);
 %   DROP TABLE public.tb_department_log;
       public         heap    postgres    false    5            1           0    0 &   COLUMN tb_department_log.department_id    COMMENT     I   COMMENT ON COLUMN public.tb_department_log.department_id IS 'ex: 10401';
          public          postgres    false    247            �            1259    17189    tb_department_user    TABLE     f  CREATE TABLE public.tb_department_user (
    id integer NOT NULL,
    user_id character varying(5),
    department_id character varying(100),
    create_by character varying(5),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(5),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 &   DROP TABLE public.tb_department_user;
       public         heap    postgres    false    5            2           0    0 !   COLUMN tb_department_user.user_id    COMMENT     C   COMMENT ON COLUMN public.tb_department_user.user_id IS 'user_id ';
          public          postgres    false    248            3           0    0 #   COLUMN tb_department_user.create_by    COMMENT     D   COMMENT ON COLUMN public.tb_department_user.create_by IS 'user_id';
          public          postgres    false    248            4           0    0 #   COLUMN tb_department_user.update_by    COMMENT     D   COMMENT ON COLUMN public.tb_department_user.update_by IS 'user_id';
          public          postgres    false    248            �            1259    17194    tb_department_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_department_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_department_user_id_seq;
       public          postgres    false    248    5            5           0    0    tb_department_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_department_user_id_seq OWNED BY public.tb_department_user.id;
          public          postgres    false    249            �            1259    17195    tb_equipment_type    TABLE       CREATE TABLE public.tb_equipment_type (
    equipment_type_id character varying(10) NOT NULL,
    form_invest_budget_id character varying(5),
    list_invest_id text,
    number_units text,
    units_price text,
    total_amount text,
    equipment_standards text,
    nature text,
    equipment_number text,
    reason_necessity_equipment text,
    plan_project_equipment text,
    plan_equipment text,
    documents_equipment text,
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    disbursement_date_equipment text,
    budget_source_id character varying(5),
    general_strategic_id character varying(5),
    path_equipment text,
    list_invest_name text
);
 %   DROP TABLE public.tb_equipment_type;
       public         heap    postgres    false    5            �            1259    17200    tb_export_data_mockup    TABLE       CREATE TABLE public.tb_export_data_mockup (
    data_mockup_id integer NOT NULL,
    plan_code character varying(6),
    plan_name text,
    activity_code character varying(10),
    activity_name text,
    total_amount text,
    budget_source character varying(5)
);
 )   DROP TABLE public.tb_export_data_mockup;
       public         heap    postgres    false    5            �            1259    17205    tb_fiscal_year    TABLE     �  CREATE TABLE public.tb_fiscal_year (
    fiscal_year_id character varying(5) NOT NULL,
    fiscal_year_name text DEFAULT 2568,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    is_default boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone
);
 "   DROP TABLE public.tb_fiscal_year;
       public         heap    postgres    false    5            6           0    0 $   COLUMN tb_fiscal_year.fiscal_year_id    COMMENT     G   COMMENT ON COLUMN public.tb_fiscal_year.fiscal_year_id IS 'ex: Y0001';
          public          postgres    false    252            7           0    0    COLUMN tb_fiscal_year.create_by    COMMENT     @   COMMENT ON COLUMN public.tb_fiscal_year.create_by IS 'user_id';
          public          postgres    false    252            �            1259    17213    tb_fiscal_year_log    TABLE     �  CREATE TABLE public.tb_fiscal_year_log (
    fiscal_year_id character varying(5) NOT NULL,
    fiscal_year_name text,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    is_default boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    id_year integer
);
 &   DROP TABLE public.tb_fiscal_year_log;
       public         heap    postgres    false    5            8           0    0 (   COLUMN tb_fiscal_year_log.fiscal_year_id    COMMENT     K   COMMENT ON COLUMN public.tb_fiscal_year_log.fiscal_year_id IS 'ex: Y0001';
          public          postgres    false    253            9           0    0 #   COLUMN tb_fiscal_year_log.create_by    COMMENT     D   COMMENT ON COLUMN public.tb_fiscal_year_log.create_by IS 'user_id';
          public          postgres    false    253            �            1259    17220    tb_fiscal_year_log_2    TABLE     �  CREATE TABLE public.tb_fiscal_year_log_2 (
    fiscal_year_id character varying(5),
    fiscal_year_name text,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    is_default boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    id_year integer DEFAULT 1 NOT NULL
);
 (   DROP TABLE public.tb_fiscal_year_log_2;
       public         heap    postgres    false    5            :           0    0 *   COLUMN tb_fiscal_year_log_2.fiscal_year_id    COMMENT     M   COMMENT ON COLUMN public.tb_fiscal_year_log_2.fiscal_year_id IS 'ex: Y0001';
          public          postgres    false    254            ;           0    0 %   COLUMN tb_fiscal_year_log_2.create_by    COMMENT     F   COMMENT ON COLUMN public.tb_fiscal_year_log_2.create_by IS 'user_id';
          public          postgres    false    254            �            1259    17228    tb_form_ebudget_master    TABLE     �  CREATE TABLE public.tb_form_ebudget_master (
    form_ebudget_master_id character varying(5) NOT NULL,
    general_id character varying(5),
    connection_id character varying(5),
    plan_details_id character varying(5),
    plan_operational_id character varying(5),
    responsible_coordinator_id character varying(5),
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    department_id character varying(5),
    fullname text
);
 *   DROP TABLE public.tb_form_ebudget_master;
       public         heap    postgres    false    5                        1259    17233    tb_fund    TABLE     _   CREATE TABLE public.tb_fund (
    fund_id character varying(5),
    fund_name text NOT NULL
);
    DROP TABLE public.tb_fund;
       public         heap    postgres    false    5                       1259    17238    tb_fund_center    TABLE     u   CREATE TABLE public.tb_fund_center (
    fund_center_id character varying(10) NOT NULL,
    fund_center_name text
);
 "   DROP TABLE public.tb_fund_center;
       public         heap    postgres    false    5                       1259    17243    tb_g_l    TABLE       CREATE TABLE public.tb_g_l (
    id integer NOT NULL,
    g_l_id character varying(100),
    g_l_name text,
    g_l_ex text,
    is_deleted boolean DEFAULT false,
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tb_g_l;
       public         heap    postgres    false    5            <           0    0    COLUMN tb_g_l.g_l_id    COMMENT     I   COMMENT ON COLUMN public.tb_g_l.g_l_id IS 'รหัสบัญชี';
          public          postgres    false    258            =           0    0    COLUMN tb_g_l.g_l_name    COMMENT     f   COMMENT ON COLUMN public.tb_g_l.g_l_name IS 'ชื่อบัญชีแยกประเภท';
          public          postgres    false    258                       1259    17251    tb_g_l_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_g_l_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tb_g_l_id_seq;
       public          postgres    false    5    258            >           0    0    tb_g_l_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tb_g_l_id_seq OWNED BY public.tb_g_l.id;
          public          postgres    false    259                       1259    17252    tb_garden_type    TABLE     �  CREATE TABLE public.tb_garden_type (
    garden_type_id character varying(5) NOT NULL,
    form_invest_budget_id character varying(5),
    list_invest_id text,
    details_garden text,
    number_rai text,
    year_start character varying(5),
    year_end character varying(5),
    number_1 text,
    number_2 text,
    number_3 text,
    necessity_garden text,
    documents_garden text,
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    total_amount text,
    budget_source_id character varying(5),
    general_strategic_id character varying(5),
    update_by character varying(5),
    update_date timestamp without time zone,
    list_invest_name text
);
 "   DROP TABLE public.tb_garden_type;
       public         heap    postgres    false    5                       1259    17257 
   tb_general    TABLE     \  CREATE TABLE public.tb_general (
    fiscal_year_id character varying(5),
    version_id character varying(5),
    project_type text,
    fund_id character varying(10),
    project_id character varying(10),
    project2_id character varying(10),
    activity_id character varying(10),
    activity2_id character varying(10),
    activity_group_id character varying(10),
    budget_source_id character varying(5),
    budget_source_name text,
    short_project text,
    ongoing_project text,
    fiscal_year1 text,
    fiscal_year2 text,
    fiscal_year3 text,
    processing_time text,
    form_ebudget_master_id character varying(5),
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying,
    update_date timestamp with time zone,
    status integer,
    id integer NOT NULL,
    general_id text
);
    DROP TABLE public.tb_general;
       public         heap    postgres    false    5                       1259    17262    tb_general_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_general_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tb_general_id_seq;
       public          postgres    false    5    261            ?           0    0    tb_general_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tb_general_id_seq OWNED BY public.tb_general.id;
          public          postgres    false    262                       1259    17263    tb_general_strategic    TABLE     �   CREATE TABLE public.tb_general_strategic (
    general_strategic_id character varying(5) NOT NULL,
    general_strategic_name text,
    create_by character varying(5),
    create_date timestamp without time zone
);
 (   DROP TABLE public.tb_general_strategic;
       public         heap    postgres    false    5                       1259    17268    tb_giver    TABLE     �  CREATE TABLE public.tb_giver (
    id integer NOT NULL,
    type character varying(100),
    agency_organizing character varying(100),
    project character varying(100),
    i_am character varying(100),
    fullname character varying(100),
    numberhome character varying(100),
    stree character varying(100),
    sub_disceaty character varying(100),
    disceaty character varying(100),
    province character varying(100),
    money character varying(100),
    form_money character varying(100),
    price character varying(100),
    detail text,
    date_form character varying(100),
    list_item_order character varying(100),
    total character varying(100),
    pay_id_bill character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tb_giver;
       public         heap    postgres    false    5            	           1259    17275    tb_giver_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_giver_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tb_giver_id_seq;
       public          postgres    false    264    5            @           0    0    tb_giver_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tb_giver_id_seq OWNED BY public.tb_giver.id;
          public          postgres    false    265            
           1259    17276    tb_group_travel    TABLE     `  CREATE TABLE public.tb_group_travel (
    id integer NOT NULL,
    withdraw_payment_id character varying(100),
    id_card character varying(100),
    "position" character varying(100),
    level character varying(100),
    allowance character varying(100),
    accommodation character varying(100),
    transportation_expenses character varying(100),
    other_expenses character varying(100),
    food_or_training character varying(100),
    total character varying(100),
    signature character varying(150),
    comment text,
    department_id character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    name character varying(100),
    type_group character varying(100)
);
 #   DROP TABLE public.tb_group_travel;
       public         heap    postgres    false    5            A           0    0 *   COLUMN tb_group_travel.withdraw_payment_id    COMMENT     n   COMMENT ON COLUMN public.tb_group_travel.withdraw_payment_id IS 'รหัสรายการเบิก';
          public          postgres    false    266            B           0    0    COLUMN tb_group_travel.id_card    COMMENT     N   COMMENT ON COLUMN public.tb_group_travel.id_card IS 'หรัส ปชช';
          public          postgres    false    266            C           0    0 !   COLUMN tb_group_travel."position"    COMMENT     P   COMMENT ON COLUMN public.tb_group_travel."position" IS 'ตำแหน่ง';
          public          postgres    false    266            D           0    0    COLUMN tb_group_travel.level    COMMENT     E   COMMENT ON COLUMN public.tb_group_travel.level IS 'ระดับ';
          public          postgres    false    266            E           0    0     COLUMN tb_group_travel.allowance    COMMENT     d   COMMENT ON COLUMN public.tb_group_travel.allowance IS 'ค่าเบี้ยเลี้ยง';
          public          postgres    false    266            F           0    0 $   COLUMN tb_group_travel.accommodation    COMMENT     Y   COMMENT ON COLUMN public.tb_group_travel.accommodation IS 'ค่าที่พัก';
          public          postgres    false    266            G           0    0 .   COLUMN tb_group_travel.transportation_expenses    COMMENT     `   COMMENT ON COLUMN public.tb_group_travel.transportation_expenses IS 'ค่าพาหนะ';
          public          postgres    false    266            H           0    0 %   COLUMN tb_group_travel.other_expenses    COMMENT     l   COMMENT ON COLUMN public.tb_group_travel.other_expenses IS 'ค่าใช้จ่ายอื่นๆ';
          public          postgres    false    266            I           0    0 '   COLUMN tb_group_travel.food_or_training    COMMENT     �   COMMENT ON COLUMN public.tb_group_travel.food_or_training IS 'ค่าที่อยู่อาหารหรืออบรม';
          public          postgres    false    266                       1259    17283    tb_group_travel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_group_travel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_group_travel_id_seq;
       public          postgres    false    5    266            J           0    0    tb_group_travel_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_group_travel_id_seq OWNED BY public.tb_group_travel.id;
          public          postgres    false    267                       1259    17284    tb_head_office_plans    TABLE     �  CREATE TABLE public.tb_head_office_plans (
    id integer NOT NULL,
    head_office character varying(100),
    head_office_id character varying(100),
    region_id character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 (   DROP TABLE public.tb_head_office_plans;
       public         heap    postgres    false    5            K           0    0    TABLE tb_head_office_plans    COMMENT     �   COMMENT ON TABLE public.tb_head_office_plans IS 'ตารางรวมแผนระดับเขตเพื่อส่งให้ศนูย์ใหญ่';
          public          postgres    false    268                       1259    17291    tb_head_office_plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_head_office_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_head_office_plans_id_seq;
       public          postgres    false    5    268            L           0    0    tb_head_office_plans_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_head_office_plans_id_seq OWNED BY public.tb_head_office_plans.id;
          public          postgres    false    269                       1259    17292 	   tb_ie_log    TABLE     �  CREATE TABLE public.tb_ie_log (
    path_file character varying(100),
    ie_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    ie_type character varying(100),
    user_id character varying(5),
    fullname character varying(100),
    old_name text,
    new_name character varying(100),
    id integer DEFAULT nextval('public.tb_activity_log_id_seq'::regclass) NOT NULL
);
    DROP TABLE public.tb_ie_log;
       public         heap    postgres    false    222    5            M           0    0    COLUMN tb_ie_log.path_file    COMMENT     U   COMMENT ON COLUMN public.tb_ie_log.path_file IS 'ที่เก็บไฟล์';
          public          postgres    false    270            N           0    0    COLUMN tb_ie_log.ie_type    COMMENT     B   COMMENT ON COLUMN public.tb_ie_log.ie_type IS 'import or export';
          public          postgres    false    270            O           0    0    COLUMN tb_ie_log.user_id    COMMENT     :   COMMENT ON COLUMN public.tb_ie_log.user_id IS 'user_id ';
          public          postgres    false    270                       1259    17299    tb_invest_ebudget    TABLE     #  CREATE TABLE public.tb_invest_ebudget (
    invest_budget_id character varying(5) NOT NULL,
    fiscal_year_id character varying(5),
    version_id character varying(5),
    type_invest_id character varying(10),
    type_invest_code character varying(10),
    form_invest_budget_id character varying(5),
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    budget_source_id character varying(5),
    general_strategic_id character varying(5),
    department_id character varying(5),
    total_amount text,
    quantity_unit text,
    list_invest_id character varying(10),
    list_invest_name text,
    fund_center_id character varying(10),
    reason_necessity text
);
 %   DROP TABLE public.tb_invest_ebudget;
       public         heap    postgres    false    5                       1259    17304    tb_land_building_type    TABLE       CREATE TABLE public.tb_land_building_type (
    land_building_type_id character varying(5) NOT NULL,
    budget_source_id character varying(5),
    list_invest_id text,
    details_land_building text,
    total_amount text,
    necessity_land_building text,
    strategic_land_building character varying(5),
    plan_project_land_building text,
    documents_equipment_land_building text,
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    rawal_plan_land_building text,
    form_invest_budget_id character varying(5),
    disbursement_date_land_building text,
    general_strategic_id character varying(5),
    list_invest_name text
);
 )   DROP TABLE public.tb_land_building_type;
       public         heap    postgres    false    5                       1259    17309    tb_list_invest    TABLE     u   CREATE TABLE public.tb_list_invest (
    list_invest_id character varying(10),
    list_invest_name text NOT NULL
);
 "   DROP TABLE public.tb_list_invest;
       public         heap    postgres    false    5                       1259    17314    tb_material    TABLE     �   CREATE TABLE public.tb_material (
    id integer NOT NULL,
    material_id text,
    material_name text,
    material_group_lag character varying(2),
    material_detail text
);
    DROP TABLE public.tb_material;
       public         heap    postgres    false    5                       1259    17319    tb_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tb_material_id_seq;
       public          postgres    false    274    5            P           0    0    tb_material_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tb_material_id_seq OWNED BY public.tb_material.id;
          public          postgres    false    275                       1259    17320    tb_payment_instead_receipt    TABLE     E  CREATE TABLE public.tb_payment_instead_receipt (
    id integer NOT NULL,
    date_in text,
    short_text character varying(100),
    form_in character varying(150),
    to_in character varying(150),
    price character varying(100),
    description text,
    housnumber character varying(100),
    villagenumber character varying(100),
    subdistrict character varying(100),
    district character varying(100),
    province character varying(100),
    zip_code character varying(100),
    withdraw_payment_id character varying(100),
    department_id character varying(100)
);
 .   DROP TABLE public.tb_payment_instead_receipt;
       public         heap    postgres    false    5                       1259    17325 !   tb_payment_instead_receipt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_payment_instead_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tb_payment_instead_receipt_id_seq;
       public          postgres    false    276    5            Q           0    0 !   tb_payment_instead_receipt_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tb_payment_instead_receipt_id_seq OWNED BY public.tb_payment_instead_receipt.id;
          public          postgres    false    277                       1259    17326    tb_paymentout    TABLE     �  CREATE TABLE public.tb_paymentout (
    id integer NOT NULL,
    pay_id character varying(100),
    type_document character varying(100),
    start_date text,
    end_date text,
    matarial character varying(100),
    short_text text,
    quantity double precision,
    unit character varying(100),
    tax character varying(20),
    unit_price double precision,
    total_price double precision,
    delivery_date text,
    vender character varying(100),
    comment text,
    requst_date text,
    approval_date text,
    amount_bath double precision,
    g_l character varying(100),
    department character varying(100),
    cost character varying(100),
    fund character varying(100),
    scope character varying(100),
    fund_ctr character varying(100),
    status integer,
    create_by character varying(10),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(10),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.tb_paymentout;
       public         heap    postgres    false    5                       1259    17333    tb_paymentout_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_paymentout_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_paymentout_id_seq;
       public          postgres    false    5    278            R           0    0    tb_paymentout_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_paymentout_id_seq OWNED BY public.tb_paymentout.id;
          public          postgres    false    279                       1259    17334    tb_paymentuse_default    TABLE     �  CREATE TABLE public.tb_paymentuse_default (
    id integer NOT NULL,
    pay_id character varying(100),
    pay_id_bill character varying(100),
    id_marital character varying(100),
    short_title character varying(100),
    unit character varying(100),
    quantity character varying(100),
    quarter character varying(100),
    delivery_date text,
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    use_quantity text
);
 )   DROP TABLE public.tb_paymentuse_default;
       public         heap    postgres    false    5                       1259    17340    tb_paymentuse_default_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_paymentuse_default_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tb_paymentuse_default_id_seq;
       public          postgres    false    5    280            S           0    0    tb_paymentuse_default_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tb_paymentuse_default_id_seq OWNED BY public.tb_paymentuse_default.id;
          public          postgres    false    281                       1259    17341 	   tb_payout    TABLE     �  CREATE TABLE public.tb_payout (
    id integer NOT NULL,
    id_commit character varying(100),
    name character varying(100),
    department_id character varying(100),
    quantity double precision,
    price double precision,
    total double precision,
    description text,
    image text,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    date timestamp without time zone,
    paper text,
    vender_id character varying(100),
    date_paper timestamp without time zone,
    id_payout character varying(5),
    status integer,
    unit text,
    approve_by character varying(5),
    approve_date timestamp without time zone
);
    DROP TABLE public.tb_payout;
       public         heap    postgres    false    5            T           0    0    COLUMN tb_payout.id_commit    COMMENT     p   COMMENT ON COLUMN public.tb_payout.id_commit IS 'รหัสส่วนประกอบต้นทุน';
          public          postgres    false    282            U           0    0    COLUMN tb_payout.create_by    COMMENT     ;   COMMENT ON COLUMN public.tb_payout.create_by IS 'user_id';
          public          postgres    false    282            V           0    0    COLUMN tb_payout.date    COMMENT     Y   COMMENT ON COLUMN public.tb_payout.date IS 'วันที่ทำรายการ';
          public          postgres    false    282            W           0    0    COLUMN tb_payout.id_payout    COMMENT     =   COMMENT ON COLUMN public.tb_payout.id_payout IS 'ex: P0001';
          public          postgres    false    282            X           0    0    COLUMN tb_payout.status    COMMENT     h   COMMENT ON COLUMN public.tb_payout.status IS '1 = รออนุมัติ,2=อนุมัติ';
          public          postgres    false    282                       1259    17346    tb_payoutment    TABLE     .  CREATE TABLE public.tb_payoutment (
    id integer NOT NULL,
    pay_id character varying(10),
    start_date text,
    end_date text,
    id_marital character varying(100),
    short_title text,
    quantity text,
    unit character varying(100),
    quarter1 text,
    quarter2 text,
    quarter3 text,
    quarter4 text,
    delivery_date text,
    request_date text,
    approval_date text,
    quantity_used text,
    g_l character varying(100),
    department character varying(100),
    fund character varying(100),
    functional character varying(100),
    estimated_payout text,
    estimated_payout_add text,
    status_estimated character varying(100),
    estimated_price text,
    tax character varying(100),
    tax_value character varying(100),
    total text,
    vender character varying(100),
    comment text,
    advance_payment_id character varying(100),
    disursement_id character varying(100),
    pay_id_bill character varying(100),
    type_payout character varying(100),
    status integer,
    type_document character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    price text,
    overall_value text,
    used_amount text,
    rema_amount text,
    selectedlocation text,
    selectedebdlocation text,
    selecteddatetime text,
    selectenddatetime text,
    travel text,
    number text,
    time_up character varying(2),
    time_form character varying(2)
);
 !   DROP TABLE public.tb_payoutment;
       public         heap    postgres    false    5            Y           0    0    COLUMN tb_payoutment.pay_id    COMMENT     _   COMMENT ON COLUMN public.tb_payoutment.pay_id IS 'รหัสแผนการเบิก';
          public          postgres    false    283            Z           0    0 %   COLUMN tb_payoutment.estimated_payout    COMMENT     f   COMMENT ON COLUMN public.tb_payoutment.estimated_payout IS 'จำนวนที่ใช้ไป';
          public          postgres    false    283            [           0    0 )   COLUMN tb_payoutment.estimated_payout_add    COMMENT     [   COMMENT ON COLUMN public.tb_payoutment.estimated_payout_add IS 'เบิกเกิน';
          public          postgres    false    283            \           0    0 $   COLUMN tb_payoutment.estimated_price    COMMENT     S   COMMENT ON COLUMN public.tb_payoutment.estimated_price IS 'คงเหลือ';
          public          postgres    false    283            ]           0    0    COLUMN tb_payoutment.total    COMMENT     y   COMMENT ON COLUMN public.tb_payoutment.total IS 'ใช้ผลรวมราคาทั้ง 2 ประเภท';
          public          postgres    false    283            ^           0    0 '   COLUMN tb_payoutment.advance_payment_id    COMMENT     h   COMMENT ON COLUMN public.tb_payoutment.advance_payment_id IS 'รหัสทดรองจ่าย';
          public          postgres    false    283            _           0    0 #   COLUMN tb_payoutment.disursement_id    COMMENT     a   COMMENT ON COLUMN public.tb_payoutment.disursement_id IS 'หรัสเบิกจ่าย';
          public          postgres    false    283            `           0    0     COLUMN tb_payoutment.pay_id_bill    COMMENT     ^   COMMENT ON COLUMN public.tb_payoutment.pay_id_bill IS 'หรัสเบิกจ่าย';
          public          postgres    false    283            a           0    0     COLUMN tb_payoutment.type_payout    COMMENT     a   COMMENT ON COLUMN public.tb_payoutment.type_payout IS 'ประเภทการเบิก';
          public          postgres    false    283            b           0    0    COLUMN tb_payoutment.status    COMMENT     q   COMMENT ON COLUMN public.tb_payoutment.status IS 'ประภทสถานะการอนุมัติ';
          public          postgres    false    283            c           0    0 "   COLUMN tb_payoutment.overall_value    COMMENT     `   COMMENT ON COLUMN public.tb_payoutment.overall_value IS 'มูลค่าโดยรวม';
          public          postgres    false    283                       1259    17353    tb_payout_dev_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_payout_dev_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tb_payout_dev_id_seq;
       public          postgres    false    5    283            d           0    0    tb_payout_dev_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tb_payout_dev_id_seq OWNED BY public.tb_payoutment.id;
          public          postgres    false    284                       1259    17354    tb_payout_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_payout_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tb_payout_id_seq;
       public          postgres    false    5    282            e           0    0    tb_payout_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tb_payout_id_seq OWNED BY public.tb_payout.id;
          public          postgres    false    285                       1259    17355    tb_permission_master    TABLE     %  CREATE TABLE public.tb_permission_master (
    permission_id character varying(5) NOT NULL,
    permission_name text NOT NULL,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone
);
 (   DROP TABLE public.tb_permission_master;
       public         heap    postgres    false    5            f           0    0 )   COLUMN tb_permission_master.permission_id    COMMENT     L   COMMENT ON COLUMN public.tb_permission_master.permission_id IS 'ex: P0001';
          public          postgres    false    286            g           0    0 +   COLUMN tb_permission_master.permission_name    COMMENT     Z   COMMENT ON COLUMN public.tb_permission_master.permission_name IS 'ex: view,edit,approve';
          public          postgres    false    286            h           0    0 %   COLUMN tb_permission_master.create_by    COMMENT     F   COMMENT ON COLUMN public.tb_permission_master.create_by IS 'user_id';
          public          postgres    false    286                       1259    17360    tb_permission_master_log    TABLE     )  CREATE TABLE public.tb_permission_master_log (
    permission_id character varying(5) NOT NULL,
    permission_name text NOT NULL,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone
);
 ,   DROP TABLE public.tb_permission_master_log;
       public         heap    postgres    false    5            i           0    0 -   COLUMN tb_permission_master_log.permission_id    COMMENT     P   COMMENT ON COLUMN public.tb_permission_master_log.permission_id IS 'ex: P0001';
          public          postgres    false    287            j           0    0 /   COLUMN tb_permission_master_log.permission_name    COMMENT     ^   COMMENT ON COLUMN public.tb_permission_master_log.permission_name IS 'ex: view,edit,approve';
          public          postgres    false    287            k           0    0 )   COLUMN tb_permission_master_log.create_by    COMMENT     J   COMMENT ON COLUMN public.tb_permission_master_log.create_by IS 'user_id';
          public          postgres    false    287                        1259    17365    tb_plan_details    TABLE     o  CREATE TABLE public.tb_plan_details (
    plan_details_id character varying(5),
    principles_reasons text,
    objective text,
    indicators_target text,
    value_target text,
    counting_target text,
    indicators_plan text,
    value_plan text,
    counting_plan text,
    target_group text,
    number text,
    target_group_area text,
    place text,
    period text,
    number1 text,
    list_budget text,
    activity text,
    quantity text,
    price text,
    amount text,
    travel_plan text,
    position_level text,
    person text,
    workday text,
    rate_1 text,
    amount_1 text,
    rate_2 text,
    amount_2 text,
    number_days text,
    rate_3 text,
    amount_3 text,
    number_trips text,
    rate_4 text,
    amount_4 text,
    total_allowance text,
    total_transport text,
    total_stay text,
    total_fuel text,
    sum_travel_price text,
    already_exists_1 text,
    want_more_1 text,
    reason_more_1 text,
    list_2 text,
    already_exists_2 text,
    want_more_2 text,
    reason_more_2 text,
    form_ebudget_master_id character varying(5),
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    id integer NOT NULL,
    project_results text,
    budget text,
    input_budget2 text,
    list_person text
);
 #   DROP TABLE public.tb_plan_details;
       public         heap    postgres    false    5            !           1259    17370    tb_plan_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_plan_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_plan_details_id_seq;
       public          postgres    false    288    5            l           0    0    tb_plan_details_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_plan_details_id_seq OWNED BY public.tb_plan_details.id;
          public          postgres    false    289            "           1259    17371    tb_plan_operational    TABLE     �  CREATE TABLE public.tb_plan_operational (
    id integer NOT NULL,
    plan_operational_id character varying(5),
    project_time text,
    activity_operational text,
    procedure_operational text,
    budget_operational text,
    weight_operational text,
    target_value_operational text,
    counting_operational text,
    budget_jan text,
    budget_feb text,
    budget_mar text,
    budget_april text,
    budget_may text,
    budget_june text,
    budget_july text,
    budget_august text,
    budget_september text,
    budget_oct text,
    budget_nov text,
    budget_dec text,
    person_operational text,
    project_risk text,
    risk_owners text,
    risk_scennario text,
    risk_factor text,
    exising_control text,
    risk_assessment_s text,
    risk_assessment_o text,
    risk_assessment_f text,
    risk_assessment_c text,
    risk_assessment_lh text,
    risk_assessment_im text,
    risk_assessment_level text,
    risk_response text,
    risk_response_lh text,
    risk_response_im text,
    risk_response_level text,
    person_internal_control text,
    form_ebudget_master_id character varying(5),
    status integer,
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    plan_risk_v1 text,
    person_risk_v1 text,
    period__risk_v1 text,
    budget__risk text,
    plan_risk_v2 text,
    person_risk_v2 text,
    period__risk_v2 text
);
 '   DROP TABLE public.tb_plan_operational;
       public         heap    postgres    false    5            #           1259    17376    tb_plan_operational_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_plan_operational_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tb_plan_operational_id_seq;
       public          postgres    false    5    290            m           0    0    tb_plan_operational_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tb_plan_operational_id_seq OWNED BY public.tb_plan_operational.id;
          public          postgres    false    291            $           1259    17377    tb_plan_strategy    TABLE     0  CREATE TABLE public.tb_plan_strategy (
    id integer NOT NULL,
    plan_strategy_id character varying(5),
    plan_strategy_name text,
    sub_indicators_id character varying(5),
    tactics_id character varying(5),
    connection_id character varying(5),
    create_date timestamp without time zone
);
 $   DROP TABLE public.tb_plan_strategy;
       public         heap    postgres    false    5            %           1259    17382    tb_plan_under_strategy    TABLE     �   CREATE TABLE public.tb_plan_under_strategy (
    plan_under_strategy_id character varying(6) NOT NULL,
    plan_under_strategy_name text,
    connection_id character varying(5),
    create_date timestamp without time zone
);
 *   DROP TABLE public.tb_plan_under_strategy;
       public         heap    postgres    false    5            &           1259    17387 
   tb_project    TABLE     i   CREATE TABLE public.tb_project (
    project_id character varying(10) NOT NULL,
    project_name text
);
    DROP TABLE public.tb_project;
       public         heap    postgres    false    5            '           1259    17392    tb_project_2    TABLE     m   CREATE TABLE public.tb_project_2 (
    project2_id character varying(10) NOT NULL,
    project2_name text
);
     DROP TABLE public.tb_project_2;
       public         heap    postgres    false    5            (           1259    17397    tb_quarters    TABLE     �   CREATE TABLE public.tb_quarters (
    id integer NOT NULL,
    name character varying(100),
    start_day integer,
    start_month integer,
    end_day integer,
    end_month integer,
    status boolean DEFAULT false
);
    DROP TABLE public.tb_quarters;
       public         heap    postgres    false    5            )           1259    17401    tb_quarters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_quarters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tb_quarters_id_seq;
       public          postgres    false    5    296            n           0    0    tb_quarters_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tb_quarters_id_seq OWNED BY public.tb_quarters.id;
          public          postgres    false    297            *           1259    17402    tb_region_plans    TABLE     �  CREATE TABLE public.tb_region_plans (
    id integer NOT NULL,
    region character varying(100),
    region_id character varying(100),
    province_id character varying(100),
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.tb_region_plans;
       public         heap    postgres    false    5            o           0    0    COLUMN tb_region_plans.region    COMMENT     c   COMMENT ON COLUMN public.tb_region_plans.region IS 'เขต หรือ ชื่อเขต';
          public          postgres    false    298            p           0    0     COLUMN tb_region_plans.region_id    COMMENT     a   COMMENT ON COLUMN public.tb_region_plans.region_id IS 'รหัสรวมแผนเขต';
          public          postgres    false    298            q           0    0 "   COLUMN tb_region_plans.province_id    COMMENT     {   COMMENT ON COLUMN public.tb_region_plans.province_id IS 'หรัสอ้างอิงแผนจังหวัด';
          public          postgres    false    298            +           1259    17409    tb_region_plans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_region_plans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tb_region_plans_id_seq;
       public          postgres    false    5    298            r           0    0    tb_region_plans_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tb_region_plans_id_seq OWNED BY public.tb_region_plans.id;
          public          postgres    false    299            ,           1259    17410    tb_responsible_coordinator    TABLE     :  CREATE TABLE public.tb_responsible_coordinator (
    responsible_coordinator_id character varying(5) NOT NULL,
    responsible_department character varying(5),
    firstname_lastname_1 text,
    position_1 text,
    phone_1 text,
    email_1 text,
    firstname_lastname_2 text,
    position_2 text,
    phone_2 text,
    email_2 text,
    form_ebudget_master_id character varying(10),
    create_by character varying(5),
    create_date timestamp without time zone,
    update_by character varying(5),
    update_date timestamp without time zone,
    status integer
);
 .   DROP TABLE public.tb_responsible_coordinator;
       public         heap    postgres    false    5            -           1259    17415    tb_role_ajustement    TABLE     U  CREATE TABLE public.tb_role_ajustement (
    id integer NOT NULL,
    user_id character varying(10),
    role_id character varying(5),
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    permission_id character varying(5)
);
 &   DROP TABLE public.tb_role_ajustement;
       public         heap    postgres    false    5            s           0    0 !   COLUMN tb_role_ajustement.user_id    COMMENT     B   COMMENT ON COLUMN public.tb_role_ajustement.user_id IS 'user_id';
          public          postgres    false    301            t           0    0 !   COLUMN tb_role_ajustement.role_id    COMMENT     B   COMMENT ON COLUMN public.tb_role_ajustement.role_id IS 'role_id';
          public          postgres    false    301            u           0    0 #   COLUMN tb_role_ajustement.create_by    COMMENT     D   COMMENT ON COLUMN public.tb_role_ajustement.create_by IS 'user_id';
          public          postgres    false    301            v           0    0 %   COLUMN tb_role_ajustement.create_date    COMMENT     J   COMMENT ON COLUMN public.tb_role_ajustement.create_date IS 'create_date';
          public          postgres    false    301            w           0    0 #   COLUMN tb_role_ajustement.update_by    COMMENT     D   COMMENT ON COLUMN public.tb_role_ajustement.update_by IS 'user_id';
          public          postgres    false    301            x           0    0 %   COLUMN tb_role_ajustement.update_date    COMMENT     J   COMMENT ON COLUMN public.tb_role_ajustement.update_date IS 'update_date';
          public          postgres    false    301            y           0    0 '   COLUMN tb_role_ajustement.permission_id    COMMENT     N   COMMENT ON COLUMN public.tb_role_ajustement.permission_id IS 'permission_id';
          public          postgres    false    301            .           1259    17418    tb_role_ajustement_2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_role_ajustement_2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_role_ajustement_2_id_seq;
       public          postgres    false    5    301            z           0    0    tb_role_ajustement_2_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tb_role_ajustement_2_id_seq OWNED BY public.tb_role_ajustement.id;
          public          postgres    false    302            /           1259    17419    tb_role_ajustement_bk    TABLE     X  CREATE TABLE public.tb_role_ajustement_bk (
    user_id character varying(10),
    role_id character varying(5),
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    permission_id character varying(5),
    id integer NOT NULL
);
 )   DROP TABLE public.tb_role_ajustement_bk;
       public         heap    postgres    false    5            {           0    0 $   COLUMN tb_role_ajustement_bk.user_id    COMMENT     E   COMMENT ON COLUMN public.tb_role_ajustement_bk.user_id IS 'user_id';
          public          postgres    false    303            |           0    0 $   COLUMN tb_role_ajustement_bk.role_id    COMMENT     E   COMMENT ON COLUMN public.tb_role_ajustement_bk.role_id IS 'role_id';
          public          postgres    false    303            }           0    0 &   COLUMN tb_role_ajustement_bk.create_by    COMMENT     G   COMMENT ON COLUMN public.tb_role_ajustement_bk.create_by IS 'user_id';
          public          postgres    false    303            ~           0    0 (   COLUMN tb_role_ajustement_bk.create_date    COMMENT     M   COMMENT ON COLUMN public.tb_role_ajustement_bk.create_date IS 'create_date';
          public          postgres    false    303                       0    0 &   COLUMN tb_role_ajustement_bk.update_by    COMMENT     G   COMMENT ON COLUMN public.tb_role_ajustement_bk.update_by IS 'user_id';
          public          postgres    false    303            �           0    0 (   COLUMN tb_role_ajustement_bk.update_date    COMMENT     M   COMMENT ON COLUMN public.tb_role_ajustement_bk.update_date IS 'update_date';
          public          postgres    false    303            �           0    0 *   COLUMN tb_role_ajustement_bk.permission_id    COMMENT     Q   COMMENT ON COLUMN public.tb_role_ajustement_bk.permission_id IS 'permission_id';
          public          postgres    false    303            0           1259    17422    tb_role_ajustement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_role_ajustement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_role_ajustement_id_seq;
       public          postgres    false    303    5            �           0    0    tb_role_ajustement_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public.tb_role_ajustement_id_seq OWNED BY public.tb_role_ajustement_bk.id;
          public          postgres    false    304            1           1259    17423    tb_role_ajustement_log    TABLE     Y  CREATE TABLE public.tb_role_ajustement_log (
    user_id character varying(10),
    role_id character varying(5),
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    permission_id character varying(5),
    id integer NOT NULL
);
 *   DROP TABLE public.tb_role_ajustement_log;
       public         heap    postgres    false    5            �           0    0 %   COLUMN tb_role_ajustement_log.user_id    COMMENT     F   COMMENT ON COLUMN public.tb_role_ajustement_log.user_id IS 'user_id';
          public          postgres    false    305            �           0    0 '   COLUMN tb_role_ajustement_log.create_by    COMMENT     H   COMMENT ON COLUMN public.tb_role_ajustement_log.create_by IS 'user_id';
          public          postgres    false    305            �           0    0 '   COLUMN tb_role_ajustement_log.update_by    COMMENT     H   COMMENT ON COLUMN public.tb_role_ajustement_log.update_by IS 'user_id';
          public          postgres    false    305            2           1259    17426    tb_role_ajustement_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_role_ajustement_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tb_role_ajustement_log_id_seq;
       public          postgres    false    5    305            �           0    0    tb_role_ajustement_log_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tb_role_ajustement_log_id_seq OWNED BY public.tb_role_ajustement_log.id;
          public          postgres    false    306            3           1259    17427    tb_role_master    TABLE     �  CREATE TABLE public.tb_role_master (
    role_id character varying(5) NOT NULL,
    role_name_th text,
    role_status boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    is_deleted boolean DEFAULT false,
    icon character varying(250),
    url character varying(250),
    role_name_en character varying(250),
    role_type character varying(10)
);
 "   DROP TABLE public.tb_role_master;
       public         heap    postgres    false    5            �           0    0    COLUMN tb_role_master.role_id    COMMENT     @   COMMENT ON COLUMN public.tb_role_master.role_id IS 'ex: R0001';
          public          postgres    false    307            �           0    0    COLUMN tb_role_master.create_by    COMMENT     @   COMMENT ON COLUMN public.tb_role_master.create_by IS 'user_id';
          public          postgres    false    307            �           0    0    COLUMN tb_role_master.update_by    COMMENT     @   COMMENT ON COLUMN public.tb_role_master.update_by IS 'user_id';
          public          postgres    false    307            �           0    0    COLUMN tb_role_master.icon    COMMENT     v   COMMENT ON COLUMN public.tb_role_master.icon IS 'ไอคอนสำหรับแสดงกับเมนู';
          public          postgres    false    307            �           0    0    COLUMN tb_role_master.url    COMMENT     f   COMMENT ON COLUMN public.tb_role_master.url IS 'path หรือ ที่อยู่ไฟล์';
          public          postgres    false    307            �           0    0 "   COLUMN tb_role_master.role_name_en    COMMENT     T   COMMENT ON COLUMN public.tb_role_master.role_name_en IS 'ชื่อเมนู';
          public          postgres    false    307            4           1259    17434    tb_role_master_log    TABLE     5  CREATE TABLE public.tb_role_master_log (
    role_id character varying(5) NOT NULL,
    role_name text,
    role_status boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone
);
 &   DROP TABLE public.tb_role_master_log;
       public         heap    postgres    false    5            �           0    0 !   COLUMN tb_role_master_log.role_id    COMMENT     D   COMMENT ON COLUMN public.tb_role_master_log.role_id IS 'ex: R0001';
          public          postgres    false    308            �           0    0 #   COLUMN tb_role_master_log.create_by    COMMENT     D   COMMENT ON COLUMN public.tb_role_master_log.create_by IS 'user_id';
          public          postgres    false    308            �           0    0 #   COLUMN tb_role_master_log.update_by    COMMENT     D   COMMENT ON COLUMN public.tb_role_master_log.update_by IS 'user_id';
          public          postgres    false    308            5           1259    17440    tb_strategic    TABLE       CREATE TABLE public.tb_strategic (
    id integer NOT NULL,
    strategic_id character varying(5),
    strategic_name text,
    target_strategic_id character varying(5),
    subject_strategic_id character varying(5),
    create_date timestamp without time zone
);
     DROP TABLE public.tb_strategic;
       public         heap    postgres    false    5            6           1259    17445    tb_strategic_objectives    TABLE     �   CREATE TABLE public.tb_strategic_objectives (
    strategic_objectives_id character varying(5) NOT NULL,
    strategic_objectives_name text,
    create_by character varying(5),
    create_date timestamp without time zone
);
 +   DROP TABLE public.tb_strategic_objectives;
       public         heap    postgres    false    5            7           1259    17450    tb_strategy_general    TABLE       CREATE TABLE public.tb_strategy_general (
    strategy_general_id character varying(5),
    strategy_general_name text NOT NULL,
    general_strategic_id character varying(5),
    create_by character varying(5),
    create_date timestamp without time zone
);
 '   DROP TABLE public.tb_strategy_general;
       public         heap    postgres    false    5            8           1259    17455    tb_sub_indicators    TABLE     �   CREATE TABLE public.tb_sub_indicators (
    sub_indicators_id character varying(5) NOT NULL,
    sub_indicators_name text,
    plan_strategy_id character varying(5),
    create_date timestamp without time zone
);
 %   DROP TABLE public.tb_sub_indicators;
       public         heap    postgres    false    5            9           1259    17460    tb_sub_plan    TABLE     �   CREATE TABLE public.tb_sub_plan (
    sub_plan_id character varying(6) NOT NULL,
    sub_plan_name text,
    target_sub_plan_id character varying(6),
    plan_under_strategy_id character varying(6),
    create_date timestamp without time zone
);
    DROP TABLE public.tb_sub_plan;
       public         heap    postgres    false    5            :           1259    17465    tb_subject_strategic    TABLE     �   CREATE TABLE public.tb_subject_strategic (
    subject_strategic_id character varying(10) NOT NULL,
    subject_strategic_name text,
    created_at time with time zone,
    strategic_id character varying(5)
);
 (   DROP TABLE public.tb_subject_strategic;
       public         heap    postgres    false    5            ;           1259    17470 
   tb_tactics    TABLE     �   CREATE TABLE public.tb_tactics (
    tactics_id character varying(5) NOT NULL,
    tactics_name text,
    plan_strategy_id character varying(5),
    create_date timestamp without time zone
);
    DROP TABLE public.tb_tactics;
       public         heap    postgres    false    5            <           1259    17475    tb_target_level_subject    TABLE     �   CREATE TABLE public.tb_target_level_subject (
    target_level_subject_id character varying(10) NOT NULL,
    target_level_subject_name text,
    plan_under_strategy_id character varying(6),
    create_date timestamp without time zone
);
 +   DROP TABLE public.tb_target_level_subject;
       public         heap    postgres    false    5            =           1259    17480    tb_target_strategic    TABLE     �   CREATE TABLE public.tb_target_strategic (
    target_strategic_id character varying(10) NOT NULL,
    target_strategic_name text,
    "created_at timestamp" time with time zone,
    strategic_id character varying(5)
);
 '   DROP TABLE public.tb_target_strategic;
       public         heap    postgres    false    5            >           1259    17485    tb_target_sub_plan    TABLE       CREATE TABLE public.tb_target_sub_plan (
    target_sub_plan_id character varying(6) NOT NULL,
    target_sub_plan_name text,
    sub_plan_id character varying(6),
    plan_under_strategy_id character varying(6),
    create_date timestamp without time zone
);
 &   DROP TABLE public.tb_target_sub_plan;
       public         heap    postgres    false    5            ?           1259    17490    tb_travel_private_car    TABLE     �  CREATE TABLE public.tb_travel_private_car (
    id integer NOT NULL,
    withdraw_payment_id character varying(100),
    car character varying(100),
    motorcycle character varying(100),
    registration_number character varying(100),
    date text,
    address character varying(100),
    encamp character varying(100),
    address_from character varying(100),
    encamp_form character varying(100),
    km_range character varying(100),
    total character varying(100),
    comment text,
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 )   DROP TABLE public.tb_travel_private_car;
       public         heap    postgres    false    5            �           0    0 $   COLUMN tb_travel_private_car.address    COMMENT     P   COMMENT ON COLUMN public.tb_travel_private_car.address IS 'ออกจาก';
          public          postgres    false    319            �           0    0 #   COLUMN tb_travel_private_car.encamp    COMMENT     O   COMMENT ON COLUMN public.tb_travel_private_car.encamp IS 'ออกจาก';
          public          postgres    false    319            �           0    0 )   COLUMN tb_travel_private_car.address_from    COMMENT     X   COMMENT ON COLUMN public.tb_travel_private_car.address_from IS 'กลับถึง';
          public          postgres    false    319            �           0    0 (   COLUMN tb_travel_private_car.encamp_form    COMMENT     W   COMMENT ON COLUMN public.tb_travel_private_car.encamp_form IS 'กลับถึง';
          public          postgres    false    319            @           1259    17497    tb_travel_private_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_travel_private_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tb_travel_private_car_id_seq;
       public          postgres    false    319    5            �           0    0    tb_travel_private_car_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tb_travel_private_car_id_seq OWNED BY public.tb_travel_private_car.id;
          public          postgres    false    320            A           1259    17498    tb_type_budget_invest    TABLE     |   CREATE TABLE public.tb_type_budget_invest (
    type_invest_id character varying(10),
    type_invest_name text NOT NULL
);
 )   DROP TABLE public.tb_type_budget_invest;
       public         heap    postgres    false    5            B           1259    17503    tb_type_payment    TABLE     �   CREATE TABLE public.tb_type_payment (
    payment_type_id character varying(100) NOT NULL,
    type_doucument character varying(100)
);
 #   DROP TABLE public.tb_type_payment;
       public         heap    postgres    false    5            C           1259    17506    tb_uploadfile    TABLE     r   CREATE TABLE public.tb_uploadfile (
    uploadfile_id integer NOT NULL,
    file_name text,
    file_path text
);
 !   DROP TABLE public.tb_uploadfile;
       public         heap    postgres    false    5            D           1259    17511    tb_uploadfile_uploadfile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_uploadfile_uploadfile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tb_uploadfile_uploadfile_id_seq;
       public          postgres    false    323    5            �           0    0    tb_uploadfile_uploadfile_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tb_uploadfile_uploadfile_id_seq OWNED BY public.tb_uploadfile.uploadfile_id;
          public          postgres    false    324            E           1259    17512    tb_user    TABLE     �  CREATE TABLE public.tb_user (
    user_id character varying(10) NOT NULL,
    username text,
    password text,
    firstname text,
    middlename text,
    lastname text,
    department_id character varying(100),
    department_name text,
    position_id character varying(100),
    position_name text,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    level character varying(100),
    branch character varying(100),
    province character varying(100),
    zone_raot character varying(100)
);
    DROP TABLE public.tb_user;
       public         heap    postgres    false    5            �           0    0    COLUMN tb_user.user_id    COMMENT     ;   COMMENT ON COLUMN public.tb_user.user_id IS 'ex: U000001';
          public          postgres    false    325            �           0    0    COLUMN tb_user.department_id    COMMENT     Z   COMMENT ON COLUMN public.tb_user.department_id IS 'รหัสหน่วยงาน';
          public          postgres    false    325            �           0    0    COLUMN tb_user.department_name    COMMENT     \   COMMENT ON COLUMN public.tb_user.department_name IS 'ชื่อหน่วยงาน';
          public          postgres    false    325            �           0    0    COLUMN tb_user.create_by    COMMENT     9   COMMENT ON COLUMN public.tb_user.create_by IS 'user_id';
          public          postgres    false    325            �           0    0    COLUMN tb_user.update_by    COMMENT     9   COMMENT ON COLUMN public.tb_user.update_by IS 'user_id';
          public          postgres    false    325            F           1259    17518    tb_user_log    TABLE       CREATE TABLE public.tb_user_log (
    user_id character varying(10),
    username text,
    password text,
    firstname text,
    middlename text,
    lastname text,
    department_id character varying(100),
    department_name text,
    position_id character varying(100),
    position_name text,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date timestamp without time zone,
    id integer NOT NULL
);
    DROP TABLE public.tb_user_log;
       public         heap    postgres    false    5            �           0    0    COLUMN tb_user_log.user_id    COMMENT     ?   COMMENT ON COLUMN public.tb_user_log.user_id IS 'ex: U000001';
          public          postgres    false    326            �           0    0     COLUMN tb_user_log.department_id    COMMENT     ^   COMMENT ON COLUMN public.tb_user_log.department_id IS 'รหัสหน่วยงาน';
          public          postgres    false    326            �           0    0 "   COLUMN tb_user_log.department_name    COMMENT     `   COMMENT ON COLUMN public.tb_user_log.department_name IS 'ชื่อหน่วยงาน';
          public          postgres    false    326            �           0    0    COLUMN tb_user_log.create_by    COMMENT     =   COMMENT ON COLUMN public.tb_user_log.create_by IS 'user_id';
          public          postgres    false    326            �           0    0    COLUMN tb_user_log.update_by    COMMENT     =   COMMENT ON COLUMN public.tb_user_log.update_by IS 'user_id';
          public          postgres    false    326            G           1259    17524    tb_user_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_user_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tb_user_log_id_seq;
       public          postgres    false    5    326            �           0    0    tb_user_log_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tb_user_log_id_seq OWNED BY public.tb_user_log.id;
          public          postgres    false    327            H           1259    17525    tb_vat    TABLE     �   CREATE TABLE public.tb_vat (
    vat_id character varying(100) NOT NULL,
    vat character varying(100),
    name_vat character varying(100)
);
    DROP TABLE public.tb_vat;
       public         heap    postgres    false    5            I           1259    17528 	   tb_vendor    TABLE     N  CREATE TABLE public.tb_vendor (
    id integer NOT NULL,
    perfix character varying(100),
    firstname text,
    lastname text,
    email text,
    tel character varying(100),
    address text,
    village_no text,
    sub_district text,
    district text,
    province text,
    zone text,
    create_by character varying(100),
    create_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    update_by character varying(100),
    update_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_vender character varying(100),
    is_deleted boolean DEFAULT false
);
    DROP TABLE public.tb_vendor;
       public         heap    postgres    false    5            J           1259    17536    tb_vendor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tb_vendor_id_seq;
       public          postgres    false    5    329            �           0    0    tb_vendor_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tb_vendor_id_seq OWNED BY public.tb_vendor.id;
          public          postgres    false    330            K           1259    17537 
   tb_version    TABLE     �  CREATE TABLE public.tb_version (
    version_id character varying(5) NOT NULL,
    version_name text DEFAULT 5,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    is_default boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date time with time zone
);
    DROP TABLE public.tb_version;
       public         heap    postgres    false    5            �           0    0    COLUMN tb_version.version_id    COMMENT     ?   COMMENT ON COLUMN public.tb_version.version_id IS 'ex: V0001';
          public          postgres    false    331            L           1259    17545    tb_version_log    TABLE     �  CREATE TABLE public.tb_version_log (
    version_id character varying(5) NOT NULL,
    version_name text,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    is_default boolean DEFAULT false,
    is_deleted boolean DEFAULT false,
    create_by character varying(10),
    create_date timestamp without time zone,
    update_by character varying(10),
    update_date time with time zone
);
 "   DROP TABLE public.tb_version_log;
       public         heap    postgres    false    5            �           0    0     COLUMN tb_version_log.version_id    COMMENT     C   COMMENT ON COLUMN public.tb_version_log.version_id IS 'ex: V0001';
          public          postgres    false    332                       2604    17763    tb_comment id    DEFAULT     r   ALTER TABLE ONLY planning.tb_comment ALTER COLUMN id SET DEFAULT nextval('planning.tb_comment_id_seq'::regclass);
 >   ALTER TABLE planning.tb_comment ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    336    335    336            $           2604    32853    tb_costcenter id    DEFAULT     x   ALTER TABLE ONLY planning.tb_costcenter ALTER COLUMN id SET DEFAULT nextval('planning.tb_costcenter_id_seq'::regclass);
 A   ALTER TABLE planning.tb_costcenter ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    341    342    342            (           2604    32887    tb_factory id    DEFAULT     r   ALTER TABLE ONLY planning.tb_factory ALTER COLUMN id SET DEFAULT nextval('planning.tb_factory_id_seq'::regclass);
 >   ALTER TABLE planning.tb_factory ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    350    349    350            "           2604    32836 
   tb_fund id    DEFAULT     i   ALTER TABLE ONLY planning.tb_fund ALTER COLUMN id SET DEFAULT nextval('planning.fund_id_seq'::regclass);
 ;   ALTER TABLE planning.tb_fund ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    337    338    338            %           2604    32860    tb_group_matrail id    DEFAULT     ~   ALTER TABLE ONLY planning.tb_group_matrail ALTER COLUMN id SET DEFAULT nextval('planning.tb_group_matrail_id_seq'::regclass);
 D   ALTER TABLE planning.tb_group_matrail ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    344    343    344            &           2604    32869    tb_material id    DEFAULT     t   ALTER TABLE ONLY planning.tb_material ALTER COLUMN id SET DEFAULT nextval('planning.tb_material_id_seq'::regclass);
 ?   ALTER TABLE planning.tb_material ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    345    346    346                       2604    17752    tb_plann_pr id    DEFAULT     q   ALTER TABLE ONLY planning.tb_plann_pr ALTER COLUMN id SET DEFAULT nextval('planning.plann_pr_id_seq'::regclass);
 ?   ALTER TABLE planning.tb_plann_pr ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    334    333    334            *           2604    32905    tb_purchasing_group id    DEFAULT     �   ALTER TABLE ONLY planning.tb_purchasing_group ALTER COLUMN id SET DEFAULT nextval('planning.tb_purchasing_group_id_seq'::regclass);
 G   ALTER TABLE planning.tb_purchasing_group ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    354    353    354            +           2604    32914    tb_s_coscenter id    DEFAULT     z   ALTER TABLE ONLY planning.tb_s_coscenter ALTER COLUMN id SET DEFAULT nextval('planning.tb_s_coscenter_id_seq'::regclass);
 B   ALTER TABLE planning.tb_s_coscenter ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    356    355    356            #           2604    32845    tb_scope id    DEFAULT     n   ALTER TABLE ONLY planning.tb_scope ALTER COLUMN id SET DEFAULT nextval('planning.tb_scope_id_seq'::regclass);
 <   ALTER TABLE planning.tb_scope ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    340    339    340            )           2604    32896    tb_storage_location id    DEFAULT     �   ALTER TABLE ONLY planning.tb_storage_location ALTER COLUMN id SET DEFAULT nextval('planning.tb_storage_location_id_seq'::regclass);
 G   ALTER TABLE planning.tb_storage_location ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    351    352    352            '           2604    32878    tb_storage_unit id    DEFAULT     |   ALTER TABLE ONLY planning.tb_storage_unit ALTER COLUMN id SET DEFAULT nextval('planning.tb_storage_unit_id_seq'::regclass);
 C   ALTER TABLE planning.tb_storage_unit ALTER COLUMN id DROP DEFAULT;
       planning          postgres    false    347    348    348            �           2604    17552    tb_activity_log id    DEFAULT     x   ALTER TABLE ONLY public.tb_activity_log ALTER COLUMN id SET DEFAULT nextval('public.tb_activity_log_id_seq'::regclass);
 A   ALTER TABLE public.tb_activity_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    17553    tb_approval id    DEFAULT     p   ALTER TABLE ONLY public.tb_approval ALTER COLUMN id SET DEFAULT nextval('public.tb_approval_id_seq'::regclass);
 =   ALTER TABLE public.tb_approval ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17554    tb_approval_log id    DEFAULT     x   ALTER TABLE ONLY public.tb_approval_log ALTER COLUMN id SET DEFAULT nextval('public.tb_approval_log_id_seq'::regclass);
 A   ALTER TABLE public.tb_approval_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17555    tb_approvaler id    DEFAULT     t   ALTER TABLE ONLY public.tb_approvaler ALTER COLUMN id SET DEFAULT nextval('public.tb_approvaler_id_seq'::regclass);
 ?   ALTER TABLE public.tb_approvaler ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17556    tb_approve_sale id    DEFAULT     x   ALTER TABLE ONLY public.tb_approve_sale ALTER COLUMN id SET DEFAULT nextval('public.tb_approve_sale_id_seq'::regclass);
 A   ALTER TABLE public.tb_approve_sale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17557    tb_assessment id    DEFAULT     t   ALTER TABLE ONLY public.tb_assessment ALTER COLUMN id SET DEFAULT nextval('public.tb_assessment_id_seq'::regclass);
 ?   ALTER TABLE public.tb_assessment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    17558    tb_bugdet_plan_department id    DEFAULT     �   ALTER TABLE ONLY public.tb_bugdet_plan_department ALTER COLUMN id SET DEFAULT nextval('public.tb_bugdet_plan_department_3_id_seq'::regclass);
 K   ALTER TABLE public.tb_bugdet_plan_department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    17559    tb_bugdet_plan_functional id    DEFAULT     �   ALTER TABLE ONLY public.tb_bugdet_plan_functional ALTER COLUMN id SET DEFAULT nextval('public.tb_bugdet_plan_functional_2_id_seq'::regclass);
 K   ALTER TABLE public.tb_bugdet_plan_functional ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    17560    tb_bugdet_plan_fund id    DEFAULT     �   ALTER TABLE ONLY public.tb_bugdet_plan_fund ALTER COLUMN id SET DEFAULT nextval('public.tb_bugdet_plan_fund_2_id_seq'::regclass);
 E   ALTER TABLE public.tb_bugdet_plan_fund ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    17561    tb_bugdet_plan_month id    DEFAULT     �   ALTER TABLE ONLY public.tb_bugdet_plan_month ALTER COLUMN id SET DEFAULT nextval('public.tb_bugdet_plan_month_2_id_seq'::regclass);
 F   ALTER TABLE public.tb_bugdet_plan_month ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    17562    tb_comment_item id    DEFAULT     x   ALTER TABLE ONLY public.tb_comment_item ALTER COLUMN id SET DEFAULT nextval('public.tb_comment_item_id_seq'::regclass);
 A   ALTER TABLE public.tb_comment_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �           2604    17563    tb_department_user id    DEFAULT     ~   ALTER TABLE ONLY public.tb_department_user ALTER COLUMN id SET DEFAULT nextval('public.tb_department_user_id_seq'::regclass);
 D   ALTER TABLE public.tb_department_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            �           2604    17564 	   tb_g_l id    DEFAULT     f   ALTER TABLE ONLY public.tb_g_l ALTER COLUMN id SET DEFAULT nextval('public.tb_g_l_id_seq'::regclass);
 8   ALTER TABLE public.tb_g_l ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    17565    tb_general id    DEFAULT     n   ALTER TABLE ONLY public.tb_general ALTER COLUMN id SET DEFAULT nextval('public.tb_general_id_seq'::regclass);
 <   ALTER TABLE public.tb_general ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            �           2604    17566    tb_giver id    DEFAULT     j   ALTER TABLE ONLY public.tb_giver ALTER COLUMN id SET DEFAULT nextval('public.tb_giver_id_seq'::regclass);
 :   ALTER TABLE public.tb_giver ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            �           2604    17567    tb_group_travel id    DEFAULT     x   ALTER TABLE ONLY public.tb_group_travel ALTER COLUMN id SET DEFAULT nextval('public.tb_group_travel_id_seq'::regclass);
 A   ALTER TABLE public.tb_group_travel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            �           2604    17568    tb_head_office_plans id    DEFAULT     �   ALTER TABLE ONLY public.tb_head_office_plans ALTER COLUMN id SET DEFAULT nextval('public.tb_head_office_plans_id_seq'::regclass);
 F   ALTER TABLE public.tb_head_office_plans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    268            �           2604    17569    tb_material id    DEFAULT     p   ALTER TABLE ONLY public.tb_material ALTER COLUMN id SET DEFAULT nextval('public.tb_material_id_seq'::regclass);
 =   ALTER TABLE public.tb_material ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274            �           2604    17570    tb_payment_instead_receipt id    DEFAULT     �   ALTER TABLE ONLY public.tb_payment_instead_receipt ALTER COLUMN id SET DEFAULT nextval('public.tb_payment_instead_receipt_id_seq'::regclass);
 L   ALTER TABLE public.tb_payment_instead_receipt ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276            �           2604    17571    tb_paymentout id    DEFAULT     t   ALTER TABLE ONLY public.tb_paymentout ALTER COLUMN id SET DEFAULT nextval('public.tb_paymentout_id_seq'::regclass);
 ?   ALTER TABLE public.tb_paymentout ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278            �           2604    17572    tb_paymentuse_default id    DEFAULT     �   ALTER TABLE ONLY public.tb_paymentuse_default ALTER COLUMN id SET DEFAULT nextval('public.tb_paymentuse_default_id_seq'::regclass);
 G   ALTER TABLE public.tb_paymentuse_default ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    280            �           2604    17573    tb_payout id    DEFAULT     l   ALTER TABLE ONLY public.tb_payout ALTER COLUMN id SET DEFAULT nextval('public.tb_payout_id_seq'::regclass);
 ;   ALTER TABLE public.tb_payout ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    282            �           2604    17574    tb_payoutment id    DEFAULT     t   ALTER TABLE ONLY public.tb_payoutment ALTER COLUMN id SET DEFAULT nextval('public.tb_payout_dev_id_seq'::regclass);
 ?   ALTER TABLE public.tb_payoutment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    283            �           2604    17575    tb_plan_details id    DEFAULT     x   ALTER TABLE ONLY public.tb_plan_details ALTER COLUMN id SET DEFAULT nextval('public.tb_plan_details_id_seq'::regclass);
 A   ALTER TABLE public.tb_plan_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288                        2604    17576    tb_plan_operational id    DEFAULT     �   ALTER TABLE ONLY public.tb_plan_operational ALTER COLUMN id SET DEFAULT nextval('public.tb_plan_operational_id_seq'::regclass);
 E   ALTER TABLE public.tb_plan_operational ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290            �           2604    17577    tb_province_plans id    DEFAULT     y   ALTER TABLE ONLY public.tb_province_plans ALTER COLUMN id SET DEFAULT nextval('public.province_plans_id_seq'::regclass);
 C   ALTER TABLE public.tb_province_plans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216                       2604    17578    tb_quarters id    DEFAULT     p   ALTER TABLE ONLY public.tb_quarters ALTER COLUMN id SET DEFAULT nextval('public.tb_quarters_id_seq'::regclass);
 =   ALTER TABLE public.tb_quarters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    297    296                       2604    17579    tb_region_plans id    DEFAULT     x   ALTER TABLE ONLY public.tb_region_plans ALTER COLUMN id SET DEFAULT nextval('public.tb_region_plans_id_seq'::regclass);
 A   ALTER TABLE public.tb_region_plans ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298                       2604    17580    tb_role_ajustement id    DEFAULT     �   ALTER TABLE ONLY public.tb_role_ajustement ALTER COLUMN id SET DEFAULT nextval('public.tb_role_ajustement_2_id_seq'::regclass);
 D   ALTER TABLE public.tb_role_ajustement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301                       2604    17581    tb_role_ajustement_bk id    DEFAULT     �   ALTER TABLE ONLY public.tb_role_ajustement_bk ALTER COLUMN id SET DEFAULT nextval('public.tb_role_ajustement_id_seq'::regclass);
 G   ALTER TABLE public.tb_role_ajustement_bk ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    303                       2604    17582    tb_role_ajustement_log id    DEFAULT     �   ALTER TABLE ONLY public.tb_role_ajustement_log ALTER COLUMN id SET DEFAULT nextval('public.tb_role_ajustement_log_id_seq'::regclass);
 H   ALTER TABLE public.tb_role_ajustement_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305                       2604    17583    tb_travel_private_car id    DEFAULT     �   ALTER TABLE ONLY public.tb_travel_private_car ALTER COLUMN id SET DEFAULT nextval('public.tb_travel_private_car_id_seq'::regclass);
 G   ALTER TABLE public.tb_travel_private_car ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    320    319                       2604    17584    tb_uploadfile uploadfile_id    DEFAULT     �   ALTER TABLE ONLY public.tb_uploadfile ALTER COLUMN uploadfile_id SET DEFAULT nextval('public.tb_uploadfile_uploadfile_id_seq'::regclass);
 J   ALTER TABLE public.tb_uploadfile ALTER COLUMN uploadfile_id DROP DEFAULT;
       public          postgres    false    324    323                       2604    17585    tb_user_log id    DEFAULT     p   ALTER TABLE ONLY public.tb_user_log ALTER COLUMN id SET DEFAULT nextval('public.tb_user_log_id_seq'::regclass);
 =   ALTER TABLE public.tb_user_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    327    326                       2604    17586    tb_vendor id    DEFAULT     l   ALTER TABLE ONLY public.tb_vendor ALTER COLUMN id SET DEFAULT nextval('public.tb_vendor_id_seq'::regclass);
 ;   ALTER TABLE public.tb_vendor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    330    329            �          0    17760 
   tb_comment 
   TABLE DATA           �   COPY planning.tb_comment (id, doc_num, procurement_message, item_notes, delivery_message, message_ordering_materials, quotation_text, create_by, create_date, update_by, update_date) FROM stdin;
    planning          postgres    false    336   F$      �          0    32850    tb_costcenter 
   TABLE DATA           A   COPY planning.tb_costcenter (id, cost_id, cost_name) FROM stdin;
    planning          postgres    false    342   )%      �          0    32884 
   tb_factory 
   TABLE DATA           L   COPY planning.tb_factory (id, id_factory, name_factory, detail) FROM stdin;
    planning          postgres    false    350   �2      �          0    32833    tb_fund 
   TABLE DATA           C   COPY planning.tb_fund (id, fund_id, fund_name, detail) FROM stdin;
    planning          postgres    false    338    3      �          0    32857    tb_group_matrail 
   TABLE DATA           N   COPY planning.tb_group_matrail (id, id_group, name_group, detail) FROM stdin;
    planning          postgres    false    344   �4      �          0    32866    tb_material 
   TABLE DATA           ;   COPY planning.tb_material (id, id_mm, name_mm) FROM stdin;
    planning          postgres    false    346   �;      �          0    17749    tb_plann_pr 
   TABLE DATA           �  COPY planning.tb_plann_pr (id, doc_num, type_doc, start_date, end_date, title, detail, order_list, group_account, matrail_name, short_meagess, quantity, unit, delivery_date, requst_date, mm_group, factory_mm, product_storage, procurement_group, price, vat, currency, total, g_l, fund_money, fund, scpoe_fund, fund_center, commitments, create_by, create_date, update_by, update_date, status, estimated_price) FROM stdin;
    planning          postgres    false    334   �C      �          0    32902    tb_purchasing_group 
   TABLE DATA           I   COPY planning.tb_purchasing_group (id, id_ph_gt, name_ph_gt) FROM stdin;
    planning          postgres    false    354   �F      �          0    32911    tb_s_coscenter 
   TABLE DATA           B   COPY planning.tb_s_coscenter (id, id_s_ct, name_s_ct) FROM stdin;
    planning          postgres    false    356   �S      �          0    32842    tb_scope 
   TABLE DATA           >   COPY planning.tb_scope (id, id_scope, scope_name) FROM stdin;
    planning          postgres    false    340   �a      �          0    32893    tb_storage_location 
   TABLE DATA           Q   COPY planning.tb_storage_location (id, id_st_lo, name_st_lo, detail) FROM stdin;
    planning          postgres    false    352   Ԕ      �          0    32875    tb_storage_unit 
   TABLE DATA           E   COPY planning.tb_storage_unit (id, id_sg_ut, name_sg_ut) FROM stdin;
    planning          postgres    false    348   ��      q          0    17081    tb_activity 
   TABLE DATA           M   COPY public.tb_activity (activity_id, activity_name, project_id) FROM stdin;
    public          postgres    false    218   ]�      r          0    17086    tb_activity_2 
   TABLE DATA           E   COPY public.tb_activity_2 (activity2_id, activity2_name) FROM stdin;
    public          postgres    false    219   �      s          0    17091    tb_activity_group 
   TABLE DATA           S   COPY public.tb_activity_group (activity_group_id, activity_group_name) FROM stdin;
    public          postgres    false    220   *�      t          0    17096    tb_activity_log 
   TABLE DATA           c   COPY public.tb_activity_log (user_id, username, fullname, activity, activity_date, id) FROM stdin;
    public          postgres    false    221   j�      v          0    17103    tb_approval 
   TABLE DATA           �   COPY public.tb_approval (budget_id, request_date, requester_id, requester_name, fiscal_year_id, department_id, approve_by, approve_date, id) FROM stdin;
    public          postgres    false    223   +      x          0    17108    tb_approval_log 
   TABLE DATA           �   COPY public.tb_approval_log (budget_id, request_date, requester_id, requester_name, fiscal_year_id, department_id, approve_by, approve_date, status, id) FROM stdin;
    public          postgres    false    225   p-      z          0    17112    tb_approvaler 
   TABLE DATA              COPY public.tb_approvaler (id, approve_id, request_date, requset_id, requester_name, fiscal_year_id, department_id, approve_by, approve_date, type_approve, description, short_title, status, branch_id, district_id, province_id, headquarters_id) FROM stdin;
    public          postgres    false    227   �-      |          0    17118    tb_approve_sale 
   TABLE DATA             COPY public.tb_approve_sale (id, item_id, sale_date, sale_drivery, buyer, email_cus, "order", quantity, unit, unit_price, total, vat, net_amount, unit_amount, salyer, status, create_date, create_by, approve_date, approve_by, sale_id, descripton) FROM stdin;
    public          postgres    false    229   �S      ~          0    17125    tb_assessment 
   TABLE DATA           3  COPY public.tb_assessment (id, department, month, year, a1_1, a1_2, a1_3, a1_4, a1_5, a1_6, a1_7, a2_1_1, a2_1_2, a2_2_1, a2_2_2, a2_2_3, a2_3_1, a2_3_2, a2_3_3, a2_3_4, a2_3_5, a2_4_1, a2_4_2, a2_4_3, a2_4_4, a2_5_1, a2_5_2, a2_5_3, a2_6, a3_1, a3_2, a3_3, a3_4, a3_5, a4_1, a4_2, "createDte") FROM stdin;
    public          postgres    false    231   �T      �          0    17132    tb_budget_source 
   TABLE DATA           }   COPY public.tb_budget_source (budget_source_id, budget_source_name, general_id, create_date, type_budget_source) FROM stdin;
    public          postgres    false    233   �W      �          0    17137    tb_bugdet_plan_department 
   TABLE DATA           �   COPY public.tb_bugdet_plan_department (budget_id, fiscal_year_id, version_id, department_id, departmet_name, fund_id, functional_id, budget, status, create_by, create_date, update_by, update_date, id) FROM stdin;
    public          postgres    false    234   �X      �          0    17143    tb_bugdet_plan_functional 
   TABLE DATA           �   COPY public.tb_bugdet_plan_functional (budget_id, fiscal_year_id, version_id, department_id, fund_id, functional_id, functional_name, budget, create_by, create_date, update_by, update_date, status, id) FROM stdin;
    public          postgres    false    236   OZ      �          0    17149    tb_bugdet_plan_fund 
   TABLE DATA           �   COPY public.tb_bugdet_plan_fund (budget_id, fiscal_year_id, version_id, department_id, fund_id, fund_name, budget, create_by, create_date, update_by, update_date, status, functional_id, id) FROM stdin;
    public          postgres    false    238   q_      �          0    17155    tb_bugdet_plan_month 
   TABLE DATA           �  COPY public.tb_bugdet_plan_month (budget_id, fiscal_year_id, version_id, department_id, fund_id, functional_id, commitment_id, commitment_name, budget_total, budget_january, budget_february, budget_march, budget_april, budget_may, budget_june, budget_july, budget_august, budget_september, budget_october, budget_november, budget_december, status, create_by, create_date, update_by, update_date, id) FROM stdin;
    public          postgres    false    240   �a      �          0    17163    tb_bugdet_plan_month_log 
   TABLE DATA           �  COPY public.tb_bugdet_plan_month_log (budget_id, fiscal_year_id, version_id, department_id, fund_id, functional_id, commitment_id, commitment_name, budget_total, budget_january, budget_february, budget_march, budget_april, budget_may, budget_june, budget_july, budget_august, budget_september, budget_october, budget_november, budget_december, status, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    242   �p      �          0    17168    tb_comment_item 
   TABLE DATA           [   COPY public.tb_comment_item (id, id_comment_id, short_text, type_comment_item) FROM stdin;
    public          postgres    false    243   �p      �          0    17174    tb_connection 
   TABLE DATA           d  COPY public.tb_connection (connection_id, strategic_id, target_strategic_id, subject_strategic_id, plan_under_strategy_id, target_level_subject_id, sub_plan_id, target_sub_plan_id, plan_strategy_id, sub_indicators_strategy_id, tactics_id, strategic_objectives_id, status, create_by, create_date, update_by, update_date, form_ebudget_master_id) FROM stdin;
    public          postgres    false    245   Kx      �          0    17177    tb_department 
   TABLE DATA           �   COPY public.tb_department (department_id, department_name, department_mapping_id, is_deleted, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    246   fz      �          0    17183    tb_department_log 
   TABLE DATA           �   COPY public.tb_department_log (department_id, department_name, department_mapping_id, is_deleted, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    247   �{      �          0    17189    tb_department_user 
   TABLE DATA           x   COPY public.tb_department_user (id, user_id, department_id, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    248   �{      �          0    17195    tb_equipment_type 
   TABLE DATA           �  COPY public.tb_equipment_type (equipment_type_id, form_invest_budget_id, list_invest_id, number_units, units_price, total_amount, equipment_standards, nature, equipment_number, reason_necessity_equipment, plan_project_equipment, plan_equipment, documents_equipment, status, create_by, create_date, update_by, update_date, disbursement_date_equipment, budget_source_id, general_strategic_id, path_equipment, list_invest_name) FROM stdin;
    public          postgres    false    250   ]�      �          0    17200    tb_export_data_mockup 
   TABLE DATA           �   COPY public.tb_export_data_mockup (data_mockup_id, plan_code, plan_name, activity_code, activity_name, total_amount, budget_source) FROM stdin;
    public          postgres    false    251   ,�      �          0    17205    tb_fiscal_year 
   TABLE DATA           �   COPY public.tb_fiscal_year (fiscal_year_id, fiscal_year_name, start_date, end_date, is_default, is_deleted, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    252   o�      �          0    17213    tb_fiscal_year_log 
   TABLE DATA           �   COPY public.tb_fiscal_year_log (fiscal_year_id, fiscal_year_name, start_date, end_date, is_default, is_deleted, create_by, create_date, update_by, update_date, id_year) FROM stdin;
    public          postgres    false    253   �      �          0    17220    tb_fiscal_year_log_2 
   TABLE DATA           �   COPY public.tb_fiscal_year_log_2 (fiscal_year_id, fiscal_year_name, start_date, end_date, is_default, is_deleted, create_by, create_date, update_by, update_date, id_year) FROM stdin;
    public          postgres    false    254   ��      �          0    17228    tb_form_ebudget_master 
   TABLE DATA             COPY public.tb_form_ebudget_master (form_ebudget_master_id, general_id, connection_id, plan_details_id, plan_operational_id, responsible_coordinator_id, status, create_by, create_date, update_by, update_date, fiscal_year_id, version_id, department_id, fullname) FROM stdin;
    public          postgres    false    255   �      �          0    17233    tb_fund 
   TABLE DATA           5   COPY public.tb_fund (fund_id, fund_name) FROM stdin;
    public          postgres    false    256   @�      �          0    17238    tb_fund_center 
   TABLE DATA           J   COPY public.tb_fund_center (fund_center_id, fund_center_name) FROM stdin;
    public          postgres    false    257   -�      �          0    17243    tb_g_l 
   TABLE DATA           z   COPY public.tb_g_l (id, g_l_id, g_l_name, g_l_ex, is_deleted, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    258   ��      �          0    17252    tb_garden_type 
   TABLE DATA           S  COPY public.tb_garden_type (garden_type_id, form_invest_budget_id, list_invest_id, details_garden, number_rai, year_start, year_end, number_1, number_2, number_3, necessity_garden, documents_garden, status, create_by, create_date, total_amount, budget_source_id, general_strategic_id, update_by, update_date, list_invest_name) FROM stdin;
    public          postgres    false    260   7�      �          0    17257 
   tb_general 
   TABLE DATA             COPY public.tb_general (fiscal_year_id, version_id, project_type, fund_id, project_id, project2_id, activity_id, activity2_id, activity_group_id, budget_source_id, budget_source_name, short_project, ongoing_project, fiscal_year1, fiscal_year2, fiscal_year3, processing_time, form_ebudget_master_id, create_by, create_date, update_by, update_date, status, id, general_id) FROM stdin;
    public          postgres    false    261   ��      �          0    17263    tb_general_strategic 
   TABLE DATA           t   COPY public.tb_general_strategic (general_strategic_id, general_strategic_name, create_by, create_date) FROM stdin;
    public          postgres    false    263   n�      �          0    17268    tb_giver 
   TABLE DATA             COPY public.tb_giver (id, type, agency_organizing, project, i_am, fullname, numberhome, stree, sub_disceaty, disceaty, province, money, form_money, price, detail, date_form, list_item_order, total, pay_id_bill, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    264   ��      �          0    17276    tb_group_travel 
   TABLE DATA             COPY public.tb_group_travel (id, withdraw_payment_id, id_card, "position", level, allowance, accommodation, transportation_expenses, other_expenses, food_or_training, total, signature, comment, department_id, create_by, create_date, update_by, update_date, name, type_group) FROM stdin;
    public          postgres    false    266   ��      �          0    17284    tb_head_office_plans 
   TABLE DATA           �   COPY public.tb_head_office_plans (id, head_office, head_office_id, region_id, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    268   �      �          0    17292 	   tb_ie_log 
   TABLE DATA           �   COPY public.tb_ie_log (path_file, ie_date, fiscal_year_id, version_id, ie_type, user_id, fullname, old_name, new_name, id) FROM stdin;
    public          postgres    false    270   ��      �          0    17299    tb_invest_ebudget 
   TABLE DATA           b  COPY public.tb_invest_ebudget (invest_budget_id, fiscal_year_id, version_id, type_invest_id, type_invest_code, form_invest_budget_id, status, create_by, create_date, update_by, update_date, budget_source_id, general_strategic_id, department_id, total_amount, quantity_unit, list_invest_id, list_invest_name, fund_center_id, reason_necessity) FROM stdin;
    public          postgres    false    271   ��      �          0    17304    tb_land_building_type 
   TABLE DATA           �  COPY public.tb_land_building_type (land_building_type_id, budget_source_id, list_invest_id, details_land_building, total_amount, necessity_land_building, strategic_land_building, plan_project_land_building, documents_equipment_land_building, status, create_by, create_date, update_by, update_date, rawal_plan_land_building, form_invest_budget_id, disbursement_date_land_building, general_strategic_id, list_invest_name) FROM stdin;
    public          postgres    false    272   *�      �          0    17309    tb_list_invest 
   TABLE DATA           J   COPY public.tb_list_invest (list_invest_id, list_invest_name) FROM stdin;
    public          postgres    false    273   ��      �          0    17314    tb_material 
   TABLE DATA           j   COPY public.tb_material (id, material_id, material_name, material_group_lag, material_detail) FROM stdin;
    public          postgres    false    274   ��      �          0    17320    tb_payment_instead_receipt 
   TABLE DATA           �   COPY public.tb_payment_instead_receipt (id, date_in, short_text, form_in, to_in, price, description, housnumber, villagenumber, subdistrict, district, province, zip_code, withdraw_payment_id, department_id) FROM stdin;
    public          postgres    false    276   "�      �          0    17326    tb_paymentout 
   TABLE DATA           K  COPY public.tb_paymentout (id, pay_id, type_document, start_date, end_date, matarial, short_text, quantity, unit, tax, unit_price, total_price, delivery_date, vender, comment, requst_date, approval_date, amount_bath, g_l, department, cost, fund, scope, fund_ctr, status, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    278   �      �          0    17334    tb_paymentuse_default 
   TABLE DATA           �   COPY public.tb_paymentuse_default (id, pay_id, pay_id_bill, id_marital, short_title, unit, quantity, quarter, delivery_date, create_by, create_date, use_quantity) FROM stdin;
    public          postgres    false    280   �      �          0    17341 	   tb_payout 
   TABLE DATA           �   COPY public.tb_payout (id, id_commit, name, department_id, quantity, price, total, description, image, create_by, create_date, update_by, update_date, date, paper, vender_id, date_paper, id_payout, status, unit, approve_by, approve_date) FROM stdin;
    public          postgres    false    282   �      �          0    17346    tb_payoutment 
   TABLE DATA           �  COPY public.tb_payoutment (id, pay_id, start_date, end_date, id_marital, short_title, quantity, unit, quarter1, quarter2, quarter3, quarter4, delivery_date, request_date, approval_date, quantity_used, g_l, department, fund, functional, estimated_payout, estimated_payout_add, status_estimated, estimated_price, tax, tax_value, total, vender, comment, advance_payment_id, disursement_id, pay_id_bill, type_payout, status, type_document, create_by, create_date, update_by, update_date, price, overall_value, used_amount, rema_amount, selectedlocation, selectedebdlocation, selecteddatetime, selectenddatetime, travel, number, time_up, time_form) FROM stdin;
    public          postgres    false    283   ��      �          0    17355    tb_permission_master 
   TABLE DATA           ~   COPY public.tb_permission_master (permission_id, permission_name, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    286   "?      �          0    17360    tb_permission_master_log 
   TABLE DATA           �   COPY public.tb_permission_master_log (permission_id, permission_name, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    287   g?      �          0    17365    tb_plan_details 
   TABLE DATA           �  COPY public.tb_plan_details (plan_details_id, principles_reasons, objective, indicators_target, value_target, counting_target, indicators_plan, value_plan, counting_plan, target_group, number, target_group_area, place, period, number1, list_budget, activity, quantity, price, amount, travel_plan, position_level, person, workday, rate_1, amount_1, rate_2, amount_2, number_days, rate_3, amount_3, number_trips, rate_4, amount_4, total_allowance, total_transport, total_stay, total_fuel, sum_travel_price, already_exists_1, want_more_1, reason_more_1, list_2, already_exists_2, want_more_2, reason_more_2, form_ebudget_master_id, status, create_by, create_date, update_by, update_date, id, project_results, budget, input_budget2, list_person) FROM stdin;
    public          postgres    false    288   �?      �          0    17371    tb_plan_operational 
   TABLE DATA           {  COPY public.tb_plan_operational (id, plan_operational_id, project_time, activity_operational, procedure_operational, budget_operational, weight_operational, target_value_operational, counting_operational, budget_jan, budget_feb, budget_mar, budget_april, budget_may, budget_june, budget_july, budget_august, budget_september, budget_oct, budget_nov, budget_dec, person_operational, project_risk, risk_owners, risk_scennario, risk_factor, exising_control, risk_assessment_s, risk_assessment_o, risk_assessment_f, risk_assessment_c, risk_assessment_lh, risk_assessment_im, risk_assessment_level, risk_response, risk_response_lh, risk_response_im, risk_response_level, person_internal_control, form_ebudget_master_id, status, create_by, create_date, update_by, update_date, plan_risk_v1, person_risk_v1, period__risk_v1, budget__risk, plan_risk_v2, person_risk_v2, period__risk_v2) FROM stdin;
    public          postgres    false    290   �^      �          0    17377    tb_plan_strategy 
   TABLE DATA           �   COPY public.tb_plan_strategy (id, plan_strategy_id, plan_strategy_name, sub_indicators_id, tactics_id, connection_id, create_date) FROM stdin;
    public          postgres    false    292   pf      �          0    17382    tb_plan_under_strategy 
   TABLE DATA           ~   COPY public.tb_plan_under_strategy (plan_under_strategy_id, plan_under_strategy_name, connection_id, create_date) FROM stdin;
    public          postgres    false    293   �g      �          0    17387 
   tb_project 
   TABLE DATA           >   COPY public.tb_project (project_id, project_name) FROM stdin;
    public          postgres    false    294   �j      �          0    17392    tb_project_2 
   TABLE DATA           B   COPY public.tb_project_2 (project2_id, project2_name) FROM stdin;
    public          postgres    false    295   <m      o          0    17073    tb_province_plans 
   TABLE DATA           �   COPY public.tb_province_plans (id, province, plan_id_branch, province_id, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    216   �m      �          0    17397    tb_quarters 
   TABLE DATA           c   COPY public.tb_quarters (id, name, start_day, start_month, end_day, end_month, status) FROM stdin;
    public          postgres    false    296   )p      �          0    17402    tb_region_plans 
   TABLE DATA           }   COPY public.tb_region_plans (id, region, region_id, province_id, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    298   yp      �          0    17410    tb_responsible_coordinator 
   TABLE DATA              COPY public.tb_responsible_coordinator (responsible_coordinator_id, responsible_department, firstname_lastname_1, position_1, phone_1, email_1, firstname_lastname_2, position_2, phone_2, email_2, form_ebudget_master_id, create_by, create_date, update_by, update_date, status) FROM stdin;
    public          postgres    false    300   �q      �          0    17415    tb_role_ajustement 
   TABLE DATA           �   COPY public.tb_role_ajustement (id, user_id, role_id, create_by, create_date, update_by, update_date, permission_id) FROM stdin;
    public          postgres    false    301   �s      �          0    17419    tb_role_ajustement_bk 
   TABLE DATA           �   COPY public.tb_role_ajustement_bk (user_id, role_id, create_by, create_date, update_by, update_date, permission_id, id) FROM stdin;
    public          postgres    false    303   �      �          0    17423    tb_role_ajustement_log 
   TABLE DATA           �   COPY public.tb_role_ajustement_log (user_id, role_id, create_by, create_date, update_by, update_date, permission_id, id) FROM stdin;
    public          postgres    false    305   l�      �          0    17427    tb_role_master 
   TABLE DATA           �   COPY public.tb_role_master (role_id, role_name_th, role_status, create_by, create_date, update_by, update_date, is_deleted, icon, url, role_name_en, role_type) FROM stdin;
    public          postgres    false    307   ��      �          0    17434    tb_role_master_log 
   TABLE DATA           }   COPY public.tb_role_master_log (role_id, role_name, role_status, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    308   ��      �          0    17440    tb_strategic 
   TABLE DATA           �   COPY public.tb_strategic (id, strategic_id, strategic_name, target_strategic_id, subject_strategic_id, create_date) FROM stdin;
    public          postgres    false    309   ��      �          0    17445    tb_strategic_objectives 
   TABLE DATA           }   COPY public.tb_strategic_objectives (strategic_objectives_id, strategic_objectives_name, create_by, create_date) FROM stdin;
    public          postgres    false    310   F�      �          0    17450    tb_strategy_general 
   TABLE DATA           �   COPY public.tb_strategy_general (strategy_general_id, strategy_general_name, general_strategic_id, create_by, create_date) FROM stdin;
    public          postgres    false    311   �      �          0    17455    tb_sub_indicators 
   TABLE DATA           r   COPY public.tb_sub_indicators (sub_indicators_id, sub_indicators_name, plan_strategy_id, create_date) FROM stdin;
    public          postgres    false    312   �      �          0    17460    tb_sub_plan 
   TABLE DATA           z   COPY public.tb_sub_plan (sub_plan_id, sub_plan_name, target_sub_plan_id, plan_under_strategy_id, create_date) FROM stdin;
    public          postgres    false    313   ��      �          0    17465    tb_subject_strategic 
   TABLE DATA           v   COPY public.tb_subject_strategic (subject_strategic_id, subject_strategic_name, created_at, strategic_id) FROM stdin;
    public          postgres    false    314   D�      �          0    17470 
   tb_tactics 
   TABLE DATA           ]   COPY public.tb_tactics (tactics_id, tactics_name, plan_strategy_id, create_date) FROM stdin;
    public          postgres    false    315   ��      �          0    17475    tb_target_level_subject 
   TABLE DATA           �   COPY public.tb_target_level_subject (target_level_subject_id, target_level_subject_name, plan_under_strategy_id, create_date) FROM stdin;
    public          postgres    false    316   �      �          0    17480    tb_target_strategic 
   TABLE DATA              COPY public.tb_target_strategic (target_strategic_id, target_strategic_name, "created_at timestamp", strategic_id) FROM stdin;
    public          postgres    false    317   �      �          0    17485    tb_target_sub_plan 
   TABLE DATA           �   COPY public.tb_target_sub_plan (target_sub_plan_id, target_sub_plan_name, sub_plan_id, plan_under_strategy_id, create_date) FROM stdin;
    public          postgres    false    318   
      �          0    17490    tb_travel_private_car 
   TABLE DATA           �   COPY public.tb_travel_private_car (id, withdraw_payment_id, car, motorcycle, registration_number, date, address, encamp, address_from, encamp_form, km_range, total, comment, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    319   +      �          0    17498    tb_type_budget_invest 
   TABLE DATA           Q   COPY public.tb_type_budget_invest (type_invest_id, type_invest_name) FROM stdin;
    public          postgres    false    321   �      �          0    17503    tb_type_payment 
   TABLE DATA           J   COPY public.tb_type_payment (payment_type_id, type_doucument) FROM stdin;
    public          postgres    false    322   �      �          0    17506    tb_uploadfile 
   TABLE DATA           L   COPY public.tb_uploadfile (uploadfile_id, file_name, file_path) FROM stdin;
    public          postgres    false    323   �      �          0    17512    tb_user 
   TABLE DATA           �   COPY public.tb_user (user_id, username, password, firstname, middlename, lastname, department_id, department_name, position_id, position_name, is_deleted, create_by, create_date, update_by, update_date, level, branch, province, zone_raot) FROM stdin;
    public          postgres    false    325   �      �          0    17518    tb_user_log 
   TABLE DATA           �   COPY public.tb_user_log (user_id, username, password, firstname, middlename, lastname, department_id, department_name, position_id, position_name, is_deleted, create_by, create_date, update_by, update_date, id) FROM stdin;
    public          postgres    false    326   �      �          0    17525    tb_vat 
   TABLE DATA           7   COPY public.tb_vat (vat_id, vat, name_vat) FROM stdin;
    public          postgres    false    328   &      �          0    17528 	   tb_vendor 
   TABLE DATA           �   COPY public.tb_vendor (id, perfix, firstname, lastname, email, tel, address, village_no, sub_district, district, province, zone, create_by, create_date, update_by, update_date, id_vender, is_deleted) FROM stdin;
    public          postgres    false    329   O&      �          0    17537 
   tb_version 
   TABLE DATA           �   COPY public.tb_version (version_id, version_name, start_date, end_date, is_default, is_deleted, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    331   g'      �          0    17545    tb_version_log 
   TABLE DATA           �   COPY public.tb_version_log (version_id, version_name, start_date, end_date, is_default, is_deleted, create_by, create_date, update_by, update_date) FROM stdin;
    public          postgres    false    332   �'      �           0    0    fund_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('planning.fund_id_seq', 28, true);
          planning          postgres    false    337            �           0    0    plann_pr_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('planning.plann_pr_id_seq', 22, true);
          planning          postgres    false    333            �           0    0    tb_comment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('planning.tb_comment_id_seq', 16, true);
          planning          postgres    false    335            �           0    0    tb_costcenter_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('planning.tb_costcenter_id_seq', 255, true);
          planning          postgres    false    341            �           0    0    tb_factory_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('planning.tb_factory_id_seq', 1, true);
          planning          postgres    false    349            �           0    0    tb_group_matrail_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('planning.tb_group_matrail_id_seq', 127, true);
          planning          postgres    false    343            �           0    0    tb_material_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('planning.tb_material_id_seq', 161, true);
          planning          postgres    false    345            �           0    0    tb_purchasing_group_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('planning.tb_purchasing_group_id_seq', 253, true);
          planning          postgres    false    353            �           0    0    tb_s_coscenter_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('planning.tb_s_coscenter_id_seq', 258, true);
          planning          postgres    false    355            �           0    0    tb_scope_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('planning.tb_scope_id_seq', 1018, true);
          planning          postgres    false    339            �           0    0    tb_storage_location_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('planning.tb_storage_location_id_seq', 263, true);
          planning          postgres    false    351            �           0    0    tb_storage_unit_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('planning.tb_storage_unit_id_seq', 237, true);
          planning          postgres    false    347            �           0    0    province_plans_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.province_plans_id_seq', 43, true);
          public          postgres    false    217            �           0    0    tb_activity_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tb_activity_log_id_seq', 2843, true);
          public          postgres    false    222            �           0    0    tb_approval_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tb_approval_id_seq', 41, true);
          public          postgres    false    224            �           0    0    tb_approval_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_approval_log_id_seq', 1, false);
          public          postgres    false    226            �           0    0    tb_approvaler_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tb_approvaler_id_seq', 650, true);
          public          postgres    false    228            �           0    0    tb_approve_sale_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_approve_sale_id_seq', 139, true);
          public          postgres    false    230            �           0    0    tb_assessment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_assessment_id_seq', 14, true);
          public          postgres    false    232            �           0    0 "   tb_bugdet_plan_department_3_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tb_bugdet_plan_department_3_id_seq', 34, true);
          public          postgres    false    235            �           0    0 "   tb_bugdet_plan_functional_2_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.tb_bugdet_plan_functional_2_id_seq', 128, true);
          public          postgres    false    237            �           0    0    tb_bugdet_plan_fund_2_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tb_bugdet_plan_fund_2_id_seq', 56, true);
          public          postgres    false    239            �           0    0    tb_bugdet_plan_month_2_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tb_bugdet_plan_month_2_id_seq', 5069, true);
          public          postgres    false    241            �           0    0    tb_comment_item_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_comment_item_id_seq', 123, true);
          public          postgres    false    244            �           0    0    tb_department_user_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tb_department_user_id_seq', 268, true);
          public          postgres    false    249            �           0    0    tb_g_l_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tb_g_l_id_seq', 9, true);
          public          postgres    false    259            �           0    0    tb_general_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tb_general_id_seq', 80, true);
          public          postgres    false    262            �           0    0    tb_giver_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tb_giver_id_seq', 1, false);
          public          postgres    false    265            �           0    0    tb_group_travel_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_group_travel_id_seq', 20, true);
          public          postgres    false    267            �           0    0    tb_head_office_plans_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tb_head_office_plans_id_seq', 21, true);
          public          postgres    false    269            �           0    0    tb_material_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tb_material_id_seq', 339, true);
          public          postgres    false    275            �           0    0 !   tb_payment_instead_receipt_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tb_payment_instead_receipt_id_seq', 20, true);
          public          postgres    false    277            �           0    0    tb_paymentout_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_paymentout_id_seq', 24, true);
          public          postgres    false    279            �           0    0    tb_paymentuse_default_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tb_paymentuse_default_id_seq', 66, true);
          public          postgres    false    281            �           0    0    tb_payout_dev_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tb_payout_dev_id_seq', 556, true);
          public          postgres    false    284            �           0    0    tb_payout_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tb_payout_id_seq', 25, true);
          public          postgres    false    285            �           0    0    tb_plan_details_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tb_plan_details_id_seq', 1595, true);
          public          postgres    false    289            �           0    0    tb_plan_operational_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tb_plan_operational_id_seq', 387, true);
          public          postgres    false    291            �           0    0    tb_quarters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tb_quarters_id_seq', 4, true);
          public          postgres    false    297            �           0    0    tb_region_plans_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_region_plans_id_seq', 16, true);
          public          postgres    false    299            �           0    0    tb_role_ajustement_2_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tb_role_ajustement_2_id_seq', 4325, true);
          public          postgres    false    302            �           0    0    tb_role_ajustement_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_role_ajustement_id_seq', 42, true);
          public          postgres    false    304            �           0    0    tb_role_ajustement_log_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tb_role_ajustement_log_id_seq', 468, true);
          public          postgres    false    306            �           0    0    tb_travel_private_car_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tb_travel_private_car_id_seq', 1, true);
          public          postgres    false    320            �           0    0    tb_uploadfile_uploadfile_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tb_uploadfile_uploadfile_id_seq', 5, true);
          public          postgres    false    324            �           0    0    tb_user_log_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tb_user_log_id_seq', 47, true);
          public          postgres    false    327            �           0    0    tb_vendor_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tb_vendor_id_seq', 10, true);
          public          postgres    false    330            �           2606    32840    tb_fund fund_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY planning.tb_fund
    ADD CONSTRAINT fund_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY planning.tb_fund DROP CONSTRAINT fund_pkey;
       planning            postgres    false    338            �           2606    17758    tb_plann_pr plann_pr_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY planning.tb_plann_pr
    ADD CONSTRAINT plann_pr_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY planning.tb_plann_pr DROP CONSTRAINT plann_pr_pkey;
       planning            postgres    false    334            �           2606    17769    tb_comment tb_comment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY planning.tb_comment
    ADD CONSTRAINT tb_comment_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY planning.tb_comment DROP CONSTRAINT tb_comment_pkey;
       planning            postgres    false    336            �           2606    32855     tb_costcenter tb_costcenter_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY planning.tb_costcenter
    ADD CONSTRAINT tb_costcenter_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY planning.tb_costcenter DROP CONSTRAINT tb_costcenter_pkey;
       planning            postgres    false    342            �           2606    32891    tb_factory tb_factory_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY planning.tb_factory
    ADD CONSTRAINT tb_factory_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY planning.tb_factory DROP CONSTRAINT tb_factory_pkey;
       planning            postgres    false    350            �           2606    32864 &   tb_group_matrail tb_group_matrail_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY planning.tb_group_matrail
    ADD CONSTRAINT tb_group_matrail_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY planning.tb_group_matrail DROP CONSTRAINT tb_group_matrail_pkey;
       planning            postgres    false    344            �           2606    32873    tb_material tb_material_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY planning.tb_material
    ADD CONSTRAINT tb_material_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY planning.tb_material DROP CONSTRAINT tb_material_pkey;
       planning            postgres    false    346            �           2606    32909 ,   tb_purchasing_group tb_purchasing_group_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY planning.tb_purchasing_group
    ADD CONSTRAINT tb_purchasing_group_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY planning.tb_purchasing_group DROP CONSTRAINT tb_purchasing_group_pkey;
       planning            postgres    false    354            �           2606    32916 "   tb_s_coscenter tb_s_coscenter_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY planning.tb_s_coscenter
    ADD CONSTRAINT tb_s_coscenter_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY planning.tb_s_coscenter DROP CONSTRAINT tb_s_coscenter_pkey;
       planning            postgres    false    356            �           2606    32847    tb_scope tb_scope_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY planning.tb_scope
    ADD CONSTRAINT tb_scope_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY planning.tb_scope DROP CONSTRAINT tb_scope_pkey;
       planning            postgres    false    340            �           2606    32900 ,   tb_storage_location tb_storage_location_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY planning.tb_storage_location
    ADD CONSTRAINT tb_storage_location_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY planning.tb_storage_location DROP CONSTRAINT tb_storage_location_pkey;
       planning            postgres    false    352            �           2606    32882 $   tb_storage_unit tb_storage_unit_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY planning.tb_storage_unit
    ADD CONSTRAINT tb_storage_unit_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY planning.tb_storage_unit DROP CONSTRAINT tb_storage_unit_pkey;
       planning            postgres    false    348            -           2606    17588 %   tb_province_plans province_plans_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tb_province_plans
    ADD CONSTRAINT province_plans_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.tb_province_plans DROP CONSTRAINT province_plans_pkey;
       public            postgres    false    216            1           2606    17590     tb_activity_2 tb_activity_2_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tb_activity_2
    ADD CONSTRAINT tb_activity_2_pkey PRIMARY KEY (activity2_name);
 J   ALTER TABLE ONLY public.tb_activity_2 DROP CONSTRAINT tb_activity_2_pkey;
       public            postgres    false    219            3           2606    17592 (   tb_activity_group tb_activity_group_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.tb_activity_group
    ADD CONSTRAINT tb_activity_group_pkey PRIMARY KEY (activity_group_id);
 R   ALTER TABLE ONLY public.tb_activity_group DROP CONSTRAINT tb_activity_group_pkey;
       public            postgres    false    220            5           2606    17594 $   tb_activity_log tb_activity_log_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_activity_log
    ADD CONSTRAINT tb_activity_log_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_activity_log DROP CONSTRAINT tb_activity_log_pkey;
       public            postgres    false    221            /           2606    17596    tb_activity tb_activity_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tb_activity
    ADD CONSTRAINT tb_activity_pkey PRIMARY KEY (activity_id);
 F   ALTER TABLE ONLY public.tb_activity DROP CONSTRAINT tb_activity_pkey;
       public            postgres    false    218            �           2606    17598 !   tb_strategy_general tb_alowe_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tb_strategy_general
    ADD CONSTRAINT tb_alowe_pkey PRIMARY KEY (strategy_general_name);
 K   ALTER TABLE ONLY public.tb_strategy_general DROP CONSTRAINT tb_alowe_pkey;
       public            postgres    false    311            9           2606    17600 $   tb_approval_log tb_approval_log_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_approval_log
    ADD CONSTRAINT tb_approval_log_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_approval_log DROP CONSTRAINT tb_approval_log_pkey;
       public            postgres    false    225            7           2606    17602    tb_approval tb_approval_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_approval
    ADD CONSTRAINT tb_approval_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_approval DROP CONSTRAINT tb_approval_pkey;
       public            postgres    false    223            ;           2606    17604     tb_approvaler tb_approvaler_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tb_approvaler
    ADD CONSTRAINT tb_approvaler_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tb_approvaler DROP CONSTRAINT tb_approvaler_pkey;
       public            postgres    false    227            =           2606    17606 $   tb_approve_sale tb_approve_sale_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_approve_sale
    ADD CONSTRAINT tb_approve_sale_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_approve_sale DROP CONSTRAINT tb_approve_sale_pkey;
       public            postgres    false    229            ?           2606    17608     tb_assessment tb_assessment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tb_assessment
    ADD CONSTRAINT tb_assessment_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tb_assessment DROP CONSTRAINT tb_assessment_pkey;
       public            postgres    false    231            A           2606    17610 &   tb_budget_source tb_budget_source_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tb_budget_source
    ADD CONSTRAINT tb_budget_source_pkey PRIMARY KEY (budget_source_id);
 P   ALTER TABLE ONLY public.tb_budget_source DROP CONSTRAINT tb_budget_source_pkey;
       public            postgres    false    233            C           2606    17612 :   tb_bugdet_plan_department tb_bugdet_plan_department_3_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.tb_bugdet_plan_department
    ADD CONSTRAINT tb_bugdet_plan_department_3_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.tb_bugdet_plan_department DROP CONSTRAINT tb_bugdet_plan_department_3_pkey;
       public            postgres    false    234            E           2606    17614 :   tb_bugdet_plan_functional tb_bugdet_plan_functional_2_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.tb_bugdet_plan_functional
    ADD CONSTRAINT tb_bugdet_plan_functional_2_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.tb_bugdet_plan_functional DROP CONSTRAINT tb_bugdet_plan_functional_2_pkey;
       public            postgres    false    236            G           2606    17616 .   tb_bugdet_plan_fund tb_bugdet_plan_fund_2_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_bugdet_plan_fund
    ADD CONSTRAINT tb_bugdet_plan_fund_2_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tb_bugdet_plan_fund DROP CONSTRAINT tb_bugdet_plan_fund_2_pkey;
       public            postgres    false    238            I           2606    17618 0   tb_bugdet_plan_month tb_bugdet_plan_month_2_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tb_bugdet_plan_month
    ADD CONSTRAINT tb_bugdet_plan_month_2_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tb_bugdet_plan_month DROP CONSTRAINT tb_bugdet_plan_month_2_pkey;
       public            postgres    false    240            K           2606    17620 $   tb_comment_item tb_comment_item_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_comment_item
    ADD CONSTRAINT tb_comment_item_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_comment_item DROP CONSTRAINT tb_comment_item_pkey;
       public            postgres    false    243            M           2606    17622     tb_connection tb_connection_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tb_connection
    ADD CONSTRAINT tb_connection_pkey PRIMARY KEY (connection_id);
 J   ALTER TABLE ONLY public.tb_connection DROP CONSTRAINT tb_connection_pkey;
       public            postgres    false    245            O           2606    17624     tb_department tb_department_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tb_department
    ADD CONSTRAINT tb_department_pkey PRIMARY KEY (department_id);
 J   ALTER TABLE ONLY public.tb_department DROP CONSTRAINT tb_department_pkey;
       public            postgres    false    246            Q           2606    17626 *   tb_department_user tb_department_user_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tb_department_user
    ADD CONSTRAINT tb_department_user_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tb_department_user DROP CONSTRAINT tb_department_user_pkey;
       public            postgres    false    248            S           2606    17628 (   tb_equipment_type tb_equipment_type_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.tb_equipment_type
    ADD CONSTRAINT tb_equipment_type_pkey PRIMARY KEY (equipment_type_id);
 R   ALTER TABLE ONLY public.tb_equipment_type DROP CONSTRAINT tb_equipment_type_pkey;
       public            postgres    false    250            U           2606    17630 0   tb_export_data_mockup tb_export_data_mockup_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.tb_export_data_mockup
    ADD CONSTRAINT tb_export_data_mockup_pkey PRIMARY KEY (data_mockup_id);
 Z   ALTER TABLE ONLY public.tb_export_data_mockup DROP CONSTRAINT tb_export_data_mockup_pkey;
       public            postgres    false    251            [           2606    17632 .   tb_fiscal_year_log_2 tb_fiscal_year_log_2_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.tb_fiscal_year_log_2
    ADD CONSTRAINT tb_fiscal_year_log_2_pkey PRIMARY KEY (id_year);
 X   ALTER TABLE ONLY public.tb_fiscal_year_log_2 DROP CONSTRAINT tb_fiscal_year_log_2_pkey;
       public            postgres    false    254            Y           2606    17634 *   tb_fiscal_year_log tb_fiscal_year_log_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tb_fiscal_year_log
    ADD CONSTRAINT tb_fiscal_year_log_pkey PRIMARY KEY (fiscal_year_id);
 T   ALTER TABLE ONLY public.tb_fiscal_year_log DROP CONSTRAINT tb_fiscal_year_log_pkey;
       public            postgres    false    253            W           2606    17636 "   tb_fiscal_year tb_fiscal_year_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_fiscal_year
    ADD CONSTRAINT tb_fiscal_year_pkey PRIMARY KEY (fiscal_year_id);
 L   ALTER TABLE ONLY public.tb_fiscal_year DROP CONSTRAINT tb_fiscal_year_pkey;
       public            postgres    false    252            ]           2606    17638 2   tb_form_ebudget_master tb_form_ebudget_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_form_ebudget_master
    ADD CONSTRAINT tb_form_ebudget_master_pkey PRIMARY KEY (form_ebudget_master_id);
 \   ALTER TABLE ONLY public.tb_form_ebudget_master DROP CONSTRAINT tb_form_ebudget_master_pkey;
       public            postgres    false    255            a           2606    17640 "   tb_fund_center tb_fund_center_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_fund_center
    ADD CONSTRAINT tb_fund_center_pkey PRIMARY KEY (fund_center_id);
 L   ALTER TABLE ONLY public.tb_fund_center DROP CONSTRAINT tb_fund_center_pkey;
       public            postgres    false    257            _           2606    17642    tb_fund tb_fund_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tb_fund
    ADD CONSTRAINT tb_fund_pkey PRIMARY KEY (fund_name);
 >   ALTER TABLE ONLY public.tb_fund DROP CONSTRAINT tb_fund_pkey;
       public            postgres    false    256            c           2606    17644    tb_g_l tb_g_l_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tb_g_l
    ADD CONSTRAINT tb_g_l_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tb_g_l DROP CONSTRAINT tb_g_l_pkey;
       public            postgres    false    258            e           2606    17646 "   tb_garden_type tb_garden_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_garden_type
    ADD CONSTRAINT tb_garden_type_pkey PRIMARY KEY (garden_type_id);
 L   ALTER TABLE ONLY public.tb_garden_type DROP CONSTRAINT tb_garden_type_pkey;
       public            postgres    false    260            g           2606    17648    tb_general tb_general_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tb_general
    ADD CONSTRAINT tb_general_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tb_general DROP CONSTRAINT tb_general_pkey;
       public            postgres    false    261            i           2606    17650 .   tb_general_strategic tb_general_strategic_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tb_general_strategic
    ADD CONSTRAINT tb_general_strategic_pkey PRIMARY KEY (general_strategic_id);
 X   ALTER TABLE ONLY public.tb_general_strategic DROP CONSTRAINT tb_general_strategic_pkey;
       public            postgres    false    263            k           2606    17652    tb_giver tb_giver_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tb_giver
    ADD CONSTRAINT tb_giver_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tb_giver DROP CONSTRAINT tb_giver_pkey;
       public            postgres    false    264            m           2606    17654 $   tb_group_travel tb_group_travel_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_group_travel
    ADD CONSTRAINT tb_group_travel_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_group_travel DROP CONSTRAINT tb_group_travel_pkey;
       public            postgres    false    266            o           2606    17656 .   tb_head_office_plans tb_head_office_plans_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tb_head_office_plans
    ADD CONSTRAINT tb_head_office_plans_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tb_head_office_plans DROP CONSTRAINT tb_head_office_plans_pkey;
       public            postgres    false    268            q           2606    17658    tb_ie_log tb_ie_log_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tb_ie_log
    ADD CONSTRAINT tb_ie_log_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tb_ie_log DROP CONSTRAINT tb_ie_log_pkey;
       public            postgres    false    270            s           2606    17660 *   tb_invest_ebudget tb_invest_ebudget_2_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.tb_invest_ebudget
    ADD CONSTRAINT tb_invest_ebudget_2_pkey PRIMARY KEY (invest_budget_id);
 T   ALTER TABLE ONLY public.tb_invest_ebudget DROP CONSTRAINT tb_invest_ebudget_2_pkey;
       public            postgres    false    271            u           2606    17662 0   tb_land_building_type tb_land_building_type_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_land_building_type
    ADD CONSTRAINT tb_land_building_type_pkey PRIMARY KEY (land_building_type_id);
 Z   ALTER TABLE ONLY public.tb_land_building_type DROP CONSTRAINT tb_land_building_type_pkey;
       public            postgres    false    272            w           2606    17664 "   tb_list_invest tb_list_invest_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tb_list_invest
    ADD CONSTRAINT tb_list_invest_pkey PRIMARY KEY (list_invest_name);
 L   ALTER TABLE ONLY public.tb_list_invest DROP CONSTRAINT tb_list_invest_pkey;
       public            postgres    false    273            y           2606    17666    tb_material tb_material_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_material
    ADD CONSTRAINT tb_material_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_material DROP CONSTRAINT tb_material_pkey;
       public            postgres    false    274            {           2606    17668 :   tb_payment_instead_receipt tb_payment_instead_receipt_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.tb_payment_instead_receipt
    ADD CONSTRAINT tb_payment_instead_receipt_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.tb_payment_instead_receipt DROP CONSTRAINT tb_payment_instead_receipt_pkey;
       public            postgres    false    276            }           2606    17670     tb_paymentout tb_paymentout_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tb_paymentout
    ADD CONSTRAINT tb_paymentout_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tb_paymentout DROP CONSTRAINT tb_paymentout_pkey;
       public            postgres    false    278                       2606    17672 0   tb_paymentuse_default tb_paymentuse_default_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tb_paymentuse_default
    ADD CONSTRAINT tb_paymentuse_default_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tb_paymentuse_default DROP CONSTRAINT tb_paymentuse_default_pkey;
       public            postgres    false    280            �           2606    17674     tb_payoutment tb_payout_dev_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tb_payoutment
    ADD CONSTRAINT tb_payout_dev_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tb_payoutment DROP CONSTRAINT tb_payout_dev_pkey;
       public            postgres    false    283            �           2606    17676    tb_payout tb_payout_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tb_payout
    ADD CONSTRAINT tb_payout_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tb_payout DROP CONSTRAINT tb_payout_pkey;
       public            postgres    false    282            �           2606    17678 .   tb_permission_master tb_permission_master_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.tb_permission_master
    ADD CONSTRAINT tb_permission_master_pkey PRIMARY KEY (permission_name);
 X   ALTER TABLE ONLY public.tb_permission_master DROP CONSTRAINT tb_permission_master_pkey;
       public            postgres    false    286            �           2606    17680 $   tb_plan_details tb_plan_details_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_plan_details
    ADD CONSTRAINT tb_plan_details_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_plan_details DROP CONSTRAINT tb_plan_details_pkey;
       public            postgres    false    288            �           2606    17682 ,   tb_plan_operational tb_plan_operational_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tb_plan_operational
    ADD CONSTRAINT tb_plan_operational_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tb_plan_operational DROP CONSTRAINT tb_plan_operational_pkey;
       public            postgres    false    290            �           2606    17684 &   tb_plan_strategy tb_plan_strategy_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tb_plan_strategy
    ADD CONSTRAINT tb_plan_strategy_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tb_plan_strategy DROP CONSTRAINT tb_plan_strategy_pkey;
       public            postgres    false    292            �           2606    17686 2   tb_plan_under_strategy tb_plan_under_strategy_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_plan_under_strategy
    ADD CONSTRAINT tb_plan_under_strategy_pkey PRIMARY KEY (plan_under_strategy_id);
 \   ALTER TABLE ONLY public.tb_plan_under_strategy DROP CONSTRAINT tb_plan_under_strategy_pkey;
       public            postgres    false    293            �           2606    17688    tb_project_2 tb_project_2_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tb_project_2
    ADD CONSTRAINT tb_project_2_pkey PRIMARY KEY (project2_id);
 H   ALTER TABLE ONLY public.tb_project_2 DROP CONSTRAINT tb_project_2_pkey;
       public            postgres    false    295            �           2606    17690    tb_project tb_project_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_project
    ADD CONSTRAINT tb_project_pkey PRIMARY KEY (project_id);
 D   ALTER TABLE ONLY public.tb_project DROP CONSTRAINT tb_project_pkey;
       public            postgres    false    294            �           2606    17692    tb_quarters tb_quarters_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_quarters
    ADD CONSTRAINT tb_quarters_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_quarters DROP CONSTRAINT tb_quarters_pkey;
       public            postgres    false    296            �           2606    17694 $   tb_region_plans tb_region_plans_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_region_plans
    ADD CONSTRAINT tb_region_plans_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tb_region_plans DROP CONSTRAINT tb_region_plans_pkey;
       public            postgres    false    298            �           2606    17696 :   tb_responsible_coordinator tb_responsible_coordinator_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_responsible_coordinator
    ADD CONSTRAINT tb_responsible_coordinator_pkey PRIMARY KEY (responsible_coordinator_id);
 d   ALTER TABLE ONLY public.tb_responsible_coordinator DROP CONSTRAINT tb_responsible_coordinator_pkey;
       public            postgres    false    300            �           2606    17698 ,   tb_role_ajustement tb_role_ajustement_2_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tb_role_ajustement
    ADD CONSTRAINT tb_role_ajustement_2_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tb_role_ajustement DROP CONSTRAINT tb_role_ajustement_2_pkey;
       public            postgres    false    301            �           2606    17700 2   tb_role_ajustement_log tb_role_ajustement_log_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.tb_role_ajustement_log
    ADD CONSTRAINT tb_role_ajustement_log_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.tb_role_ajustement_log DROP CONSTRAINT tb_role_ajustement_log_pkey;
       public            postgres    false    305            �           2606    17702 -   tb_role_ajustement_bk tb_role_ajustement_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tb_role_ajustement_bk
    ADD CONSTRAINT tb_role_ajustement_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.tb_role_ajustement_bk DROP CONSTRAINT tb_role_ajustement_pkey;
       public            postgres    false    303            �           2606    17704 "   tb_role_master tb_role_master_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tb_role_master
    ADD CONSTRAINT tb_role_master_pkey PRIMARY KEY (role_id);
 L   ALTER TABLE ONLY public.tb_role_master DROP CONSTRAINT tb_role_master_pkey;
       public            postgres    false    307            �           2606    17706 4   tb_strategic_objectives tb_strategic_objectives_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_strategic_objectives
    ADD CONSTRAINT tb_strategic_objectives_pkey PRIMARY KEY (strategic_objectives_id);
 ^   ALTER TABLE ONLY public.tb_strategic_objectives DROP CONSTRAINT tb_strategic_objectives_pkey;
       public            postgres    false    310            �           2606    17708    tb_strategic tb_strategic_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tb_strategic
    ADD CONSTRAINT tb_strategic_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tb_strategic DROP CONSTRAINT tb_strategic_pkey;
       public            postgres    false    309            �           2606    17710 (   tb_sub_indicators tb_sub_indicators_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.tb_sub_indicators
    ADD CONSTRAINT tb_sub_indicators_pkey PRIMARY KEY (sub_indicators_id);
 R   ALTER TABLE ONLY public.tb_sub_indicators DROP CONSTRAINT tb_sub_indicators_pkey;
       public            postgres    false    312            �           2606    17712    tb_sub_plan tb_sub_plan_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tb_sub_plan
    ADD CONSTRAINT tb_sub_plan_pkey PRIMARY KEY (sub_plan_id);
 F   ALTER TABLE ONLY public.tb_sub_plan DROP CONSTRAINT tb_sub_plan_pkey;
       public            postgres    false    313            �           2606    17714 .   tb_subject_strategic tb_subject_strategic_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tb_subject_strategic
    ADD CONSTRAINT tb_subject_strategic_pkey PRIMARY KEY (subject_strategic_id);
 X   ALTER TABLE ONLY public.tb_subject_strategic DROP CONSTRAINT tb_subject_strategic_pkey;
       public            postgres    false    314            �           2606    17716    tb_tactics tb_tactics_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_tactics
    ADD CONSTRAINT tb_tactics_pkey PRIMARY KEY (tactics_id);
 D   ALTER TABLE ONLY public.tb_tactics DROP CONSTRAINT tb_tactics_pkey;
       public            postgres    false    315            �           2606    17718 4   tb_target_level_subject tb_target_level_subject_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_target_level_subject
    ADD CONSTRAINT tb_target_level_subject_pkey PRIMARY KEY (target_level_subject_id);
 ^   ALTER TABLE ONLY public.tb_target_level_subject DROP CONSTRAINT tb_target_level_subject_pkey;
       public            postgres    false    316            �           2606    17720 ,   tb_target_strategic tb_target_strategic_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.tb_target_strategic
    ADD CONSTRAINT tb_target_strategic_pkey PRIMARY KEY (target_strategic_id);
 V   ALTER TABLE ONLY public.tb_target_strategic DROP CONSTRAINT tb_target_strategic_pkey;
       public            postgres    false    317            �           2606    17722 *   tb_target_sub_plan tb_target_sub_plan_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.tb_target_sub_plan
    ADD CONSTRAINT tb_target_sub_plan_pkey PRIMARY KEY (target_sub_plan_id);
 T   ALTER TABLE ONLY public.tb_target_sub_plan DROP CONSTRAINT tb_target_sub_plan_pkey;
       public            postgres    false    318            �           2606    17724 0   tb_travel_private_car tb_travel_private_car_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tb_travel_private_car
    ADD CONSTRAINT tb_travel_private_car_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tb_travel_private_car DROP CONSTRAINT tb_travel_private_car_pkey;
       public            postgres    false    319            �           2606    17726 0   tb_type_budget_invest tb_type_budget_invest_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.tb_type_budget_invest
    ADD CONSTRAINT tb_type_budget_invest_pkey PRIMARY KEY (type_invest_name);
 Z   ALTER TABLE ONLY public.tb_type_budget_invest DROP CONSTRAINT tb_type_budget_invest_pkey;
       public            postgres    false    321            �           2606    17728 $   tb_type_payment tb_type_payment_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.tb_type_payment
    ADD CONSTRAINT tb_type_payment_pkey PRIMARY KEY (payment_type_id);
 N   ALTER TABLE ONLY public.tb_type_payment DROP CONSTRAINT tb_type_payment_pkey;
       public            postgres    false    322            �           2606    17730     tb_uploadfile tb_uploadfile_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tb_uploadfile
    ADD CONSTRAINT tb_uploadfile_pkey PRIMARY KEY (uploadfile_id);
 J   ALTER TABLE ONLY public.tb_uploadfile DROP CONSTRAINT tb_uploadfile_pkey;
       public            postgres    false    323            �           2606    17732    tb_user_log tb_user_log_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_user_log
    ADD CONSTRAINT tb_user_log_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tb_user_log DROP CONSTRAINT tb_user_log_pkey;
       public            postgres    false    326            �           2606    17734    tb_user tb_user_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.tb_user DROP CONSTRAINT tb_user_pkey;
       public            postgres    false    325            �           2606    17736    tb_vat tb_vat_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tb_vat
    ADD CONSTRAINT tb_vat_pkey PRIMARY KEY (vat_id);
 <   ALTER TABLE ONLY public.tb_vat DROP CONSTRAINT tb_vat_pkey;
       public            postgres    false    328            �           2606    17738    tb_vendor tb_vendor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tb_vendor
    ADD CONSTRAINT tb_vendor_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tb_vendor DROP CONSTRAINT tb_vendor_pkey;
       public            postgres    false    329            �           2606    17740 "   tb_version_log tb_version_log_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tb_version_log
    ADD CONSTRAINT tb_version_log_pkey PRIMARY KEY (version_id);
 L   ALTER TABLE ONLY public.tb_version_log DROP CONSTRAINT tb_version_log_pkey;
       public            postgres    false    332            �           2606    17742    tb_version tb_version_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_version
    ADD CONSTRAINT tb_version_pkey PRIMARY KEY (version_id);
 D   ALTER TABLE ONLY public.tb_version DROP CONSTRAINT tb_version_pkey;
       public            postgres    false    331            �   �   x��QK
�0\7��-y���C��z�B+nх ��B|����"��,B��7��P����hw�/�sp>�װc�������GF��'�S�"ʢ(u��N�����U�4{�罸 ��;�!x���&�G�SѸ��aѯE��-�;�Ig��c�	V�����}t-����G4-�!縒��8N����(3i���iLｼ�*�R74�n�      �   L  x��ZKrG]�N���F���g;1ǘ+x�����h�v�	S e��8�4n�G��W������������W�U-rH����Y/����f�jֳf���P��ď��'|� ��f�i6/��m�9m֏���.�E>�b@Q^��f=���:��ޯ�ج/��c�>k��f}-
�M��<B+��Y_����ټj6����QB��=�s�>m=zʫh=b��׬ߋ
���O�K�7�sX�?4NB��������܂��|��E����BA�m��[g��f-%���E�JH)���;�tV�E$N b�+Ґ�q�w���ǭC�zC��k��i ����YB*! �CH-��,���� �'���#d\�{3������Y4��5������Nv_Z�98�'o��j~�i+<��e���~�U��W���`�#������^()G]�� �/\��f�)�b�
JCJ�V�0Pʯ���r�drN�	r!�.Th����ĖȯB����&D�24��ng�F����8n��<sA��@���5j6��� �M+@_�A_��k�]t��]׆��ǈ����B+���2��D�Vن��֐��z�ب�$������d����i(f��'�`�|8�BJ�ڷ�Xmܒ�-&���.&t)�Hs�`Q�� p҅.!��&�7���?��B�`*����	
�o��/x`��C
]CJǅ�?c�>�b��)r�{6}+�"��F���R	)�x���U߷�5FAJۑ���r���p������!������&�-}�-c�"����v�
C��XH(�V�ƅd�d����H����˹0%D�^%��OA�*�#�3w"L)j���ijpz���M��c����7v(�;��~=z�V�oc�L5VT�� ��
��j���Jv�+��js�FG,��V�DF��Æ��ߦP�ZET�R:��)��ڑ'l	�+�i�7��z�:�V�������ҽ�5�t�傇�9o�3Q�����N��Ϣp�U'.X �;��<&MCi�nq���
)��4�s����[,A��6����6j��g��t� 
���q��]��Ja�>�}'�G��ʧ�;DA&�����[Q��"�������
"����L|�Kז�&D5�t�� ��[��{-:�1�5^�R2�JG疸ߺ�ݽ�zJ	)�(�����TQc�k�ɖ���QjHٷ�ym-%J
D��E��%��/�i~��҂&S˝r�wPD�̹�3g�/{+x�a_kf�g-�-�9������ϗ|
񁫵�}�Z�A�UK�R���9]�𣨆N�T^��9��9�#/YT0݇9E�XK��E��>�?P��f�g61�~ES-��q��:�v�;��}*���+HT�N���~)�<m7�����1�Q�f���n�[�?K�U)6���3���+�U)ŷ�RS����7{s~N�M��Z�s���\G���jO���M������"���%o�g�7�2�A��aܱ9}c���-���#��Ȱ%�bb���|��G����x�6�"���ϛ`����.Nt.y߰�PJ������U�."̷&��s�?3w�#}�;�7�|�ht	��azde*�;��Q M.��0�>��>��ګ�S;p�!.]b��a���ys�������DS�G�a�u- Ju�eg�����+��ѩ����^�d@W��xk�ك�����CS�g�+ϗ�'V��ao�ҹ�Ȭd�c�� FΑ��^�+<dIN�|$��������e���g$�L��* �~���=�4)�$�����ïY��d�o�"����PdȚ�1�v�n%��3+�C �z*� �$��ݠՅ�
�T�йȝ�p-�<�!��P,�̬��8Yer�����n�j�s�RR����8����JQ%�r��b'��=��\�����rή��}s�!��s H�̹��o�k$�v��1�_�Oe�n5$��]����,�ɛ2�K8�ߌf~b&(�Tf�2#����vR�vݒ���d�_� #��1�0D����{�NIBM���FH3$��d��NDI��vL�k�Y8@M4Z/��3�7��P�܁�4�v$�N8�T��",D�1=�����n"�� B�4�-^�-�J"�*�{Vi���P�ppU;�5��F܇��f;�:=����fBtx��X	�A�w
"
"�U��X�(񬋕Lms>�o�o� ���>�p����^��D�l-��ܟA��"�b��;�G�匿e'/��$�B֝ץ��;h�>�-���#P1$P�B��g�KD�D��);��S(�{�x%Z��e���;���!t.+��������'}B,o��|�@]��ӹd���5l5�Y�G�??�t�eҵ�e�r��3C�,j"�\o��L�̾pE��L!�!��9���T���_��i-kk�K�/���	jD��Lg����J��[�g|��7�҂cs~��, -r��mM<!��P�P�'�r����EF.��gg����\r�����BVC�:�O���>���ZV
��#���3܏�C��W�̶֒CB��+�w�*K�'�;�ݦ� �~2S�$�ɤy�Fq�o�.��(�+��Om�ްښ�œ���zH���LZm-�Y�g>�Vz�������P֊��-:��	��>�y�9o��ߐ�4��|�@@i�Y�YҌ��ýj]��VN�p��>YW@'�'Գ9�V�5pe~��t.E�]#ے�{�-�������nd�
�lo8��Ld� ����u����]o��#Lg�ȱ�1�'_����:��E�i%h��Ђ�G�R�F�N������M	JNΎ�S�>I�tP�G���~^^v�-�u��
�Z�aQ���4]�̓��[�p�D�����/(iAHse�W�#8J:��8[}@E�	gJ��
ff���B�K����NC���Ù���\���-�Rh�I�T[��Wmխc�4	���.0�2�˝b,��d	��a�+�;�7��J�rn����kTU��'��^j\nWo��K��x��p��h�p�{P�)����mȾ��H P�_Ƕ_^��8�zo5��z�w�Nڹ0�g��nS$P�1��rJp�7?����,�/_�/��G��jd�fr���a�>\�W����F���'��=�q�͍��|1���p8�=��/��(�5^�Z�S/� 'W����<�(��1���	��;Қ1�Mx=j�i�|;?�8N�MV�Zf^!x�htjcu��W\F�JY=�Q����w����m����U}k��oп�o���q�υ��Yl      �   k   x�]��	�@�^V g?だV *�A��fKQW��	��d�$��'D Nb!���O�K�v͞֊c����V13��'*	�bZxkT=*:���V	�+2��EXk6      �   �  x���1N�0E��)7ڙ�Nr����2[�@D�� Pxo�0�	����t��yߚ<}�v�����&���j>=�p��Ko1��p�C�u�)����6�G����-;�8���ieڡ�@S���e�2����t�X��6F���6�1�J�VA���Lw��;��]c:�{�����1}�Â�'���j�>�!��f>�-�X����2{���	9�]�%~���4rOF2>SroxR�~T�gN�n�i�ON��Lʹ�{��IJp�~jP��u�.7�rK�'��2�/5	�0@ۓ�3^�}Q��x+�+���w��k���8@Q��A��X��u�-�b�֗h9 s��D�x�b�}���+�%v���\�/��L�� Ea���WƘO2�u      �   
  x��YMo#E=;��'nI�=�}\�!$rZ	!�Z"�!~@,��"$D�Yo�$���$�@���O��U��g<=3N����l���U���'��:c���ȋD�$r�ȷ���<L�]"�'���~2�K�U"��_"g��mp�<��H[�_'�o> 6I��D�'�X�=����S��V�?X=_©����X��Xϴu3����	��?�'Lyأx"��� ϻ���g1L�+V\a!�N���hj�Q��쏉<��F���(ۍ�D�ߡ&bbb��4��|/4��g�1"�y2������k���B`�zgz��AƉ�����0O�a�[��7x����<"�lϲ�7�e>q�ݽ�*�Xrb���������)��F=�, �����ϰ
�**,9�9�Ʃue�pD�7�z�=�F2�P�A�(84��w6�Q5�DN���YV�lA�[�)G�ʊ
��vﱅ�L�z�7�dzO��%�H��/�M�A�+Mv��x���V�@F
e^��3�s��R%s�r
�3�&�fNJdE%f�A�WÂ��I�c�A�i�.�C��}"�mhlY�-~���:�1�U51�����Ae�D<�q�Ư�ѢS��5�`ǀ��.��1C֑e�N�?
�q�̏��{���rU������+o�K9�C��a)MI>A2W&��rY��+���,'���9���BQ�_?א<�
���*eڄ�!��4q��Z��ωl-M����1M���c-M������!Y=���q����1�=���$ە�x@
]OH��&�bW	)��M< U���R�z�x %��#��N�,� "��ԣ�f�� 4ш�5:2tzA���j���m
�	�܂��$ZO�.���w����a���/#+�(�x�F��0E��*�L�r�]FJJ�e`�����J'X[�_�S��ZVCp^	��N��֨K^��U��y�S���Յ3�Ay���>�{?���vl�|�TA%U����߳�Ӣѷ2�Z�$Q��ٚ� <n��	��3u��6�E܎pjп#-A�ť
޳E=\-��A~by�FV�����ߴa5�j5��=c�B��R�{�ȿ�r�^i��H_s`�Ax�Zx3����k��
�Q�G b|��.�V��*g����|�4�TP�TZy�}���C~�-?���k���;ͦ�R�n)f��ؖ�=�<����Ty8��+�X�S���b��W����F�CPA���Z� ��u3d��p-��b}�8hB8� w���f�����(Xc����`A���xlK)�Q�H(�4��}"Kс�_�����9�'��4Bi6}�.?,-EGp��f�r�l��������I-�(���,Hm�~�N���'�5gG[e7K��z�H�[Sd����~����ED��!�A�)j�!@�%#��b��_�;@����:�G���5��%j��k4QWrp���0��8��y ��u��RR���F�Aݷ��ס{:Q�qp�����Dݼa_��ұD]���q�ل���z�-%��kh�$����[�)�8�|�E�U�TY���/���8 1��g�fB��RV�K��x�(�
c�O�c6b��Yj�P���=1u�,M�	HI�5i)N<�\p����!�qh������q���P��t�"(�_~ܮ,�b<�b�C�=F�C�Dx��|\`7�����O�<j=����'_|�0Ow_������΋ow�y�������i��[��ӵ�      �     x��Z�n�6�]>�6��銤$��fv8�Z�ےuN�biPKP�][T~=��KK�N�X�%�E�8���=�^����$����'��yU�W�MU~�ʣ��R�����j�KUN��[U�D�~i��K5?�V�l�W���~���B|R���M&���a��	�S�s�>�=��?���<nݜ��B����+�����;�{��Hd藅��-v�9��I���#��v4�_�m�S������G�O��O�]��Lpy a��4��DQK�	J�.�\D���W<Ƙ^���y�!��'�,AW6��:?�7��5��caz�����/8l�|ɉ�xL��in�v���?���؞�i�ȡh���G�zz8�D�a͖&� �5ۚ� ��5��&~�+`<����|�������O�?���Q@�i����/�U�爷�;����%��_�۟�yY>Tퟮ9�g� �1 ^����z56t^k�ԟ�u�)b=Mb�]��6�Q�R�9�6%C��Ab�G�9�׶kl9£݅ao�w} R��5�ׂ�1�]�<����H�@D*w5��/� �T����<p�v��T{����p��:��1�F���q�N<+س|s8ⓝq@����o�u�"�Ӭׁ�F��h�T�����/E
^I�]�f�xă����c�u�'Nj����'2�|�`I=�O�!���������$���Mp����h&�>�c�6)�$�&�EbWǌ���ѳ��8/0��J���r�W�c�LH�Mv*5W��X�E��P%�lW*@D%�]*�NQ{M��$�Z6�B4��l�5�0�Z�&T��ҫjB��V��5�B�|��P!^��eךP!�U�]UjD���Ԅ!���E�5�"�Ϊҥ�PpzȪ��&Ԁ�VCք�����Ԅ��w^�FkB��a�\L��'���ԩb�v�@~�g���O6
�iGFGG�e�D�	7L�(�a>�oj�8��SxS\r�7/��wm̴;s�Xo�}���L��Y�"2Z��R�e��������w�͢��O�'���2���?9���+��q�jo��ҥ�[�4LvӚн�k����@hY�⃈ME��d[9�!s�pU��{Uϝy��|
���O\��z��{lq�3#ӱ����[fٓ��>�B>�On!��Y#v��,��|Թ�� +�Mq� j|�������u���>3ap�D竄S���f�F�>�O����E���z�X�=;9x��A�)e>�q������g���"�s������nC;�7��r5k�����w�*`<o}C�6�;8"��n�������կ���>\r5m{��%,´�Y@��oN9 ��J�9!��1�栃���-Rol�f��� ԋh�4����"�� t���lSo�r��� B5p�-��Bo�z����3� ��~u���[ �E1d�-���5� �$;N�74P�5��R"�F�5�Ӟ�c�׀L�6K�`�:/!�7�^�W����,�[o�b 6Sl�~�0��1=���j��\C�B	�'u�m��^s�~T�D�U�g�WJ<G_~�{ǠDç���AI�>��.�$��|��2()0�"�oIژ���:ș1��?�\E'�t8D��ڶF�:I��"�{����A����4�!gn��A�u}���Q��.���~_5�$�,L��Y� V��Xi�w�ƉX�4��A�D�jzܗ�ĉX�O��a:�ꂅ i"�4��AE�]"�⊅�j�4����� \r�c\�$P���-A����k�N�X���{���X�4�EAE2d��nZ�(�j?�ZZ+��Q�Z�,bu�`�-�3��m!��E�5�uA���a�["/g�w�B�d�j�-�޸�Z���ʅ �rf_��0g�c6��̙�ec��(�S"C�F*Z���vsf$C���H6��X���l-�t��l��t�l�i���3��+��fc�ЈUh�ec(̜�k6�L̙;�Ɛ�9s�lI�3{���9s�l]Eu]�e���Wb4      �   �  x��T�n�@>o��G8��]��v� 		�
n}���p
U	��TQJ#$����m�Q���iH#�D�$c�7?��i%^J%�SJBKm�>PI-FRxw�]�ݍw߽y��n�ݕ/������}�.�;��0$�M���]�G@|��J(�2��$/ﮁz7��G���H1	�ʒ�����ϐ���d+�h qgaȬ��uж�N;�IG'�Hp��^s��qNz�4܊܈�7��BV�*@An�E/@�2�'(+�x�B�c"2'�*�3�c$����p�Ga@~�|R��@�%�s@?���h㢦)`M�<�D�����~�4x����n��p�MgT��y������+Qy�C�;A����|qZ�Ǡa�N���[?����c<N�G��)�7�8_��i�nE������pV%?��7ufo��Z��Jn̛2弅�URiq�j��
%�������ں^r�s��_V��θE������i�͓vR�}��n-�^��B_�>�1�C��h�H33v*�f�c���8ƿM1�ٌ.�8T&U�T2��BZ�B��*��2����{���M��١5612I�2M�"Q���M�궔u�0R���z�h��#�~����32��v���s,���[<�T�����Ռ�_��jFf�Մv�j��V�'ѣ �      �   U  x��Zmr9��"'��d�ei\%Ǔ�Lm�8R2��T.'�z7�$��mt�} ���F[R\�J�A�| ��7��V�m��V�����}����j��ޞP�O��|�|� �>m��v�z[�n7g��Q���+J`t��m5�7�۔R���~c�m�Q����ηU���)�д=�=�Q��'���J>���͛�W��Yo�o�ꬵ�,�ݚz���q�3�[��:�mu![�]��ƅ=���p+C�2/&�Kl���/InӲ���8�B~������F϶�;h}�|l�������֊ɿd��xV_#���sE�q���/9��%��yr`�K��@�$�32a)6��>��r`��a.���=��l;|��@W��O�?�[�2\ғ�ǐ#\�kY�����N��s��yp�����j�yp�w�p)��%Y��\~jB�g".x���><��ET�T&`S��Pd*5)F�G��D"�q���)�G|���gȃ�C�E��7 �� ~&�_�r��fZ﷞�C�~�( �0�m��]����d�/�)���A���&�T( ���:�3�)c�ϗ�`z��������\���x( ���
�����h��}Ow�Wk
 BH���ZNM�=����aǟ���υ�3�#�]X䢑�Nd[qr�'����kY�	ʀ����;MP7,����7J@�P>��JFǟ���n�*ij�e�ܮ�����L����PI�P��:���Udˊɜ�SIx����$y�58���0T2|��	��*%�T��RD�4&��W9��2���\K��֝�O	���o���bu�kY�z)��G�.)��r�jO���]�)�Vv}JA����<�M}"�6�R�߽�)m�0�w�gC�Mڿ~z���qιzCHN�k7m�N*�S\t�[7�v���I��5;1�����A(m���&`w��J;����B2ڒGe Kz�,�	�NPe Kֿۖ2J��ϱ)�i
h�%o(����6�5�"f��=�I}�6}��4^"����^�����,��u�[\ǫ�#��/Y��DN����ޙ��|��i�X�(_����7�y��Q�d�����p��f�K���'�Q*�ݪ�X�,�=��Q��Q߽&�d���b�r�(�\i���}���g�������X�����r*��&�ǰ;���<�����E�n:�e�c�U>P�Ŋh���Vy�c����-Ɨf�5GV�ٞ=5�E�b�9x�wx���.���,��=���O��S�勸��	�x����H�R���ح��:-NzL�Z��VT ��q�Ϩ��F?�
p��q���ģu,��]]�E0��Ä��P&�i��O�A�Qu!�K�Z��(��%g��U�$��u|�R(�?T�E�\��(�g[�1e�-�1w�?�T�5��4-Kg*����	���z��K0��Qf$��:�T�2�4f��ʤ3�.R@�2���)�ΰ�pd%!����t�%hRf���8�Q��o�>���;��G����rg܈�`@Yؐ�箓�����ɪ�o+��&��N�=��ٰ��{j�M*�	��a',|W�=G�h7�&���f��>j��Q��k��b7���3���f8�1ǐ̬ޤ�U,bgr�!�I}Zw��*x^�Đ���4]��9¨���6Y��N�F��>���kb��;7d�;�o�5������X��.��ǌX}��ɕ, �9��z3|SO$\t� �����.ݨ3 �Y �bFQ�����C�ݔp�ȇw���������1���e
�Z7���J�IO�I��K�U@�e�¥���CY�eJ�-�Q����Ċ��&,{t����+i�Ǫ�aon����mL�Ib�����M�g�%
���\��\;<{��b���,Tz?�Ri���1AZr�f�?k&�[��� /X���/)�����ra� c��/nd�DR ~��7�}�|�&�}�: R���k��X@xlj
b]Ї����Ĳ�?�	��SO�X�,w�׬~^��R�K>�ݗ2nGk	���)�ʉ?�X������ �vb��'���"j��X���Ē�Ol�6�R�,f����%����:^��gKx>)�c��X��Ii�1�%���7����KA�t�D�X���v�HA�t��m�90���SS@��,�d)`���%�R�և.�R�O�E|�>�Sy�Q#��X���U�p�9���<�=�i6����?��1�ͥ�LA��R��ݲ�Ӄ���2`���.`�x�,�g-Z�Xe��YG���&��
�k>��:*rz}a�[b)�g6g�G��!�3���n2�ʷ�Z�c�g�3�a�	�ϼw2�1ˇд��n���N��
�l{����Kd>3������I� �{L�Y�������1����U2����&�?���S	��mqv*���"3r��\=��ެ9��[f\�x��8�A�ܔܼ��V;Q�X���`�}���R�� ?���7��\ �����u -�b=ы/_؊�8p��툕-_X�.����W�{���ӑ�)�X��]!�p��o� �+�a牥+����Ģ�٫�MJi��փ�:���(�.Yg�y#=�K0��_�Y;l�'�����KТ�v��^����(�85Kp��w�=���T�<�t��,��wy$�
f�%�Q�0����=�*j,��_k�|K�D(M�7aQ?���c��뜴��|YwOҊk'����&�qL&��=V�B�-B{�vv���$����l.}�'��SO:[X<àA�䡉Nb�*Xq����Q�A_���ܵ� ֱ�%���%�����UM���r��� ��|�7=�;�/�����n��`�L���o��}Q�	n�ի0�v}�Uߝ �0�z��u|B;X�t�
S�.e�J�~�:��c��Ә'��+�쁢���x&M�z`�����i��eY*���#�����~uԅz#Q��hZ��l��,MQ������@6�`�'d�`��� ���wB���V�ȼ��iu/d� ��k��j�	,F�a��R��� Ӏf���Rk@b�)[!��B�+���`��U�.�.�Xt
�V;��Ŏt"/e�	i��ߍ�=�U8���
(}p5e����lV�O~��"X_
���=�MZbA��Ɍ��U��-�f� ����Oi[�KK!��K;���Y:�qX�Z�ƀX���:;�[
�L'���Yt�;�����:5�0�<�P��'��$��4P����U�����t[S	�pY��G���s�G��`T?g9�s�W#�������΋�      �   �  x��[�r�}�|��eg����[>F�YE��'"E�YP,J`��OI����^fPq�h�>����Yۑu΍l�$ƍr�O2ڬ�6��fu�r�~�YoV��z�zجN��߿mV7���f5٬���IG�0�gp�l�?������[l������O���b�ެ����� A�܂��0�(�'<mVKpN�W����i�Qi;���K���������o�8%!��_T�x����t�X�������?��zEbc,�7k�yERCE�pF26%��;��2�4���.B<�H�l��}���a1Π��t	�c��<�u��'�KR6B�a��ݩ`�gc+��{�9<o�)�5�o�����=;LC�>7��/Q�N\� ��v���8W�<3.���=.P�C�O0׃qU�z�q�f��q��e�X�?�k7��4�s6.�O��q���H�h�/���8��ʕ
)Ɵ��)�]M��GM�1��B�'9֠�`҄T���G�\��&�){3&�F��m�:
�H�1�=T>m;�v�����&��1�\�_7�w��`�n�}�,�,8�ӂ�3��5t��'9/LJ�����w�0�-~.L�~�"�sH�DYM������d���bѻ@��+������RJ�,/�0�:J���u�#�\���e���5YF&�=w�-֧��8�b�\"*�U��b��D@���d%� �J�b���g�]#9c��>�>jUg^��d��#nu9����yB�1�&�A~}�Kԙ�_4�� �9kh���{��_��6{v�S�
i�1CH��R:���V�~/Q�v�sd�Kz+����,ѧ�y�a���iO�@�a/Q{�@_!�����G��8�%�j����'p��M`��)�a���]��#�43�cS�D�2ѿ�(w3b�8EU���G�p�����`��$�>���)rtҾ�_kC���dues29�����a�O@�nRTh�Q�7�=MQ#��4�
43e�)��ȥ���oX�Ң��={�����S&rV�t0T>��U���2q����0���� ���� �Z�v�p�K'�����W�x�Ҕ%Z� ��.e-�Ȧ2Q�RZ^��S�!���?�*A&f1�L�2�s��b��s����	��e�~1�-����ͽJ�B4Ҧ���T�/�Gdӥ̐��1c�����[�OmS0E�z5��Ε�U��Ol4UUa���LVc����5(���#X��;�:A��3�6_"g��{�Ǣڡ���:%�)ܱ���P-���,��F-g�CxcG��@U���;e�%r�ƁCG]���E�� �u/o����%���l��?��-"����>-{y�C�MRLՇ��l��H��9C�Md�����m"��!l:j�D*�!<���~|�I���p
%�[���p$;���?:�� (�l�~����Z�~�H��2�����>�BŘh��x��������6���a�t��|f��|$������q&-��
<��F��iw,C�`��z����S��;
�CkŅ�n#tWІDt	2��w���A���$ݛ?X��F�_����a?חd����֥pD�d!!�FNV��S�<�މ'G5�b���Vt�?ha#�KKRb�ַ�R%��|H�B�hB}�49ۑ_�X'��n�j�Nj㹱X3ũ�(���[,S�J�;w����Pw�����������q��H���J����x{᛾M3,"� ˙�����4g�����>ؔ��hw�������� �a±F���n��
bD��[C?Xy�C�]�2�A�H�k|)Sc�<G�f	`�L��"\/lE�/�aa��(�-�����of �h��:�7�m�ODHUᛞF�O��<��� (~��%��B8��X
%<@\+��AK0�^��{�b!�q��6�+�)����l�ex���8�I��a��+�P_0�d���qd��X�m}�&�\��7p���Jm�&26��q�����e�0C��59s��{�X�EZ��휧�lNrrΛ��ٜ)qr�z��1��w�͘#�F��eA�%)��a�!7	�ay�P<��K�k�=��[$��V�\�:a��;�;��˕kW�&��SV�p -����E
�r)����!m�E�۰�%�0n?L�I�Zn7��( 2h� ��o�w�*C�ٲ��`m���i'�	~b���]T(�-����?�Vt���rG�Ũj��KmU���Ɩ	*c�"�\�W�m]����B���Z�_�ߚU�)d)�.; �ǚB����:e�jz4U_[��
�d�>�s���;���9�^R�՝�c�jk�щB�Zl6�}�!�������a�b!J��QdG�)+ ��Z=�����L�UR���
�����*�F�����҆	.��%���r���FT����75xܮRDE���$�>a�PeH��'�<"y��Z��G��C�J7����-دP�3s���a$������dzo��߰�;����ZQԸ��ٿ���}�<�J��cGU&.�\��l�@�r��e�b�X+v0��3mX�Xb�[c� ��;!�e�),n�	����]�� �;FЋN�i�C�]�h��D�I�~�o�l]@�]q���C�Qz�a��8�h5�hK�)>��Ar�g�E#���{���m�!��LҔ�[}P%�t��"��Y@�Y�Wz�ּ��鮶>7��c��d٨�Ky�Csj�ՁFʸO��"~���JW�_a�pp�
��;0v{��TN��*_�"×���;3�d}�9��ax������s�.�;S��,,�5�� *�s g�5�4G�K 5 �C �Aϧ�l���(2�pca�C`��z�uE�����8��z}ܚVv��3ߥ�J�.}�5�r�f�:A\��y�E�v�H��	&��	1��~�ENl��s�
b+����+�Z�5������p�g�۬�)f�aq>���ȳ#��t�!77���!�۵���,��K�\}���@4��-�e��0|�
Ǜ	��b����ڹa�����H47�`rL�]���=�A_�Xz"l�~�qJx�0�˶�Cm��C���	F:qfW�o
!ors�i�/�+l]��mi�";��\�7�]j�Fo�2�6�\��q�p��X�b㳥�o��-��ݯK3t�T�n�����]*'μŲ��[���N�����V��Z�;-�}�(:���N]�c/�����P��ފ���7��s�q�4��OR𨑂���B�=��k���q�����e�Ւ�����J������-�CC0�G��x��w^j��4^>p�O'M\�(t�;w�wv6։��_��\շ#o���h�����!��ՙGC��e�陾ko=X~����9O���pµ�kƭ3��3t�<0-��(D%�,�.*�r�psPmH��������~�"E/�$�y/C0\>�L�)�ù�5��,r.&i��1 ]^������Kc�� `�u�      �      x��}Qo�ȕ��+���K��ܷ��LIf������t��y�Uc�;��N�V��[u��L[q'ҿ�O�:�|U,�x�{�4�d},V�s���N�{����͓��w7�w7��9���rWw7gr��|�����������ͳ�w7+��8����iA���~�������L	d.�{w�+�;��9��������[��?�������GX'|���}�?��~�~�� M��^���?X��|ዻ�~�2����@��;�>��?���ݰ��G����_2�'C������}�,P��?o���r��?�ëh�1�Y�Q���W��q@����u�꽻�}��^�Yd5���ͣ ��K2ܽ1P9C�Y	Md��91����iifup?��.���EҞ+��0z�e���,/X� ݿ����p��(]b�d(�������$|�g����?2�	뚌�/��pg���z��sV�#X.?Y^��8a2��n�dܰ�I���n��5`��#{�4�/>id��)��Q;���/���j,ڂLZ�ɓ��<�cn���G�<�_��e�&O��1��%C��T��?LJ�P�|�������~��i�����}9�h�P�<�.����z�+��@^��{��[��řu�)Hk��ņ����I��ò�ӯב���
ء�F\�/Ao��?H�YQ1�+?��l������'�7&H-�3�WG�S��ݮ{��=�@��}����h��K�Kw7SN�ȹ"=�X�V�k��cZ����O���>^���_��ѯ2UJ�ZZ_>�^u�cv� '�un>W���N3�� �;���RL���5}��=�<a3��^�R��y��;��_{��Xk#ip:�H��d��n��?�z���x����A�*z\d�0�cz%�������K��W����/6*��Xx<���
B#s��=�純�K+s�9�W<'<�?��9?[��=o�GV:�,a,�_W�R	��k�K~I���7��|ѣX
H�r��_�ӯ?��ѯ����~���>�8+��6{}��=P�G�Է�=��N:K8�Y-�����3��$+���3�:z�14i�rYY���g�(��o6�w�-��Hc���~��N�^��?�!|㝆'��_����y�!3��1v+����Լ�����f:g���%�S�>��]��uy�4f�d�t!ȕ-1���u�����<'�wyԊ�v��ϭk/
YS)]Ɛ��������6�	ՍlYu�e�̿��u��1�f/O�,��^��L۽|xcK�5c��F�-m��+�&W��<��u�k4Oz����Hڗ^-��Å��ngf	��-�*x��a}
������m�eduN���Mf
4L~V��^ߋ���a���*6�?�W�%�d�d�2�X�F��<��:�,A���1��ǹօ���w\�y?͌���ޭ�T I~jl8/�
Y���h�����D��HuG �K�&����owi�3���6�)�Qf�$��'��>���3� ��0�����Tf���� Z�^eV6a6�o�I'��]�#_e��8lvy�^E������:t��ầ�0Z�2�H�.�E{��I�~��nb���	K�&�`?�~�>t{�����1�
J��A�a��=M�O�m)�*,;Y%�d���1�������l,���L��J˦;2��G9V��_)�Ńd�|�Ef�oI�����ɪPɹa-*Q�j(�?�<W��h��ͫX����u "��K�����<sc������h3z��NU7�#���8�V��wgV�|f��A��D���1Y�7Ȥ\��|��h�}����:;cy������h����#)� ѵwQL"|�'jj!�_���9�#�z]��	�[t9��7�:l����椮�1rB�Q]��w��e�i�̀l�]oq�x!`#՝ܛ�Ymd,�W>r9��?���g��Wޘ�~�Wdu���H5���"�/F��������#���;D[�W�w|���:���Ai��){�~�;g��]���lO�%��;S27��gw-���4���I]n4���Κ�RS(�������BF/#�pG�Fy|��O��f�
�3�=��go�u��Aĥ-���^��|���)�~�����5�Q4��[����h鐌�@
���V7�G�/Y�،�.@�c�T������F�(a����ۜ��y��y��O3�<֓� +e�편�jx;�����)#���3,5����ÜQ��뼣�g�v������:A�K�&��u��F��4��?>�E"E���==�=�DM��qFZ,��lk�|(;ڵ4N�s�9��W�MnaG�[+&���
nj���1��$#�e��&vj���y}K�b{��T6ȜÅ����I1r�΢e�з�^�5����;��/Ȉ��$�����l��w^@�򤾵窫`���p�o�v��2��=+�o�d"�2r���^��S����o�Pob�I+��C���0�<Ξ��LNŋ,W�o��u�%\i/�ї9����CHl8�͇+�ΐf��~�pE�";���';)Q�t��գx{�`�[i&� 75Iܕ_f�rWre�;ʀ�p���sL�l�rUw�K�C�dg������a�SKQ�t+����'v�JQ����z���79\ַ���>�.L}�zwX�cC��&�>��᲎�|Z���w��I�h�lw�8\ֱ|�ȶ�/c�SKܤ���:���OY���t���
�3���5�f�O�K�NKP���k~��w7�/H��eu������ ��l�V���mpE��ۭ��\k�NȜ_�ֵ������y�9�9��}�:n�f6����N���젆�̯�n0he')C��wY�j`��������2���1rNyPC�������"9�B���p>������� �H�9Op���1������LԙO��3!�K��x� ��F3"�-�h�S���z� �P����pQ-�QF��+������q��p;q�F��A�R|��pI��n����� �ê�PHK���d
�kw(w��>_K��)-Bx��(�Z:�&�$�f��A�Դ8a��M��X��0;Խ}�#x�~�q��Nz���p�P>����i�p��a�����T͵���R�}��.��X˓�� MZD���[�RE�����ܗ8C���I��'۞�� �J:�h�^C�"|�gOH���֫X�>���#6D����:�e#���g:�DD��*��Z�/�I�SVص�o���2��*�4��.��%�pMK4�YțZ����6�t��ǟ䳱�Z���:ґ���%c�LfQ��E��p��8�I�1d�u���3n���Ϳ�TC���?��
E���ǎ��Q��t���kT�G��4�ư�'�� +��W�G��{(�"�l�9��)�L�����?�09�򜍟�U�ф�{�������7�:2
1�-���U9��M֛��$S���G�+[�T㻑�F��u���u��vN�-y�����_��:�{9�bv��LAdi2����L�#�Y�nA�a�{[Z�`�!'H��lA���4�ς�̱��laA�b5dA�R39d�mA:�N�O���( .�f�cEk����Hm2'$�mN^�`Z
H�&�R@����h��>�n@�B�c��)X*T�<��)�
h��sQ`F5SK��$*��6͟*�\��)U�NF[�7��s,j�l)��r��Ph�Ζ� �s�*��8[�<�i��%�럭�'��4%��"m:&��O��~7�( ������SQj��4���6N��s�����Ӧ���̽�)���·�0�|�B07͇V�ܦ��%����o&�qj�Kp���x�S�i�_<\D��t--Z�{������5D�1 ԲH�<��}�����i�+���P�=���y�Oy�E��CI!yzN�����9������%ǥ�����*���xR���J��:�t���Hyst�|��3U
'Ǐ��+ga�Dq���    [/���:0�`Lv��k�&y���׈m\@��s�;��	�E3S��A�VB<�F�dQB���-��/D�����_����n2�(��i<�N%�I�\!�Gw_�v�hc#D"W�KT��@��A�A�\�I��Tljz{��?��)p�4�%��o����f�P�!Ht���X�b�P��3��X��i���ds\/pPO�YJ���N��W��'�9��{Mn�'NN*��b{Y�h9�^VZ�*zq����;�WJ�6�U)T�AD7`�
3��k�Oj����²\c�Ưb4��pI��[�~
����>���gK� ��㲏��C��\,����UԶ�X�@�t�E��eEQL�����Z.SB��O�&��.�i��ʱ7�Q+���~ޮ�1NY!(���C�|}O8�x)-�����ם(�<*��g)�<|���j�����)5?n�fO��91�Kȕ_=|D��3EmB��ܯ����U��M�gQ�,U�q�D*U�ǋJl �<wiK�/�pEz���{����I3�������H���60���S�l�Z��Iع=�\e�	T�Yt��^��������qZ\����3/-/����x��Y0�}0����_��e��\�X�$���k!�T-�e����x���O(��2�uiI��O#cz��AF�,O��{N����L����6�3�`A�8�B��ح�C�l�|u��M�rH�*�n��Ӓ��C�
�y�������*����� ?W.;xk��T9);̓	�>Z6T(�F�-+�< 2��"��lu�d��Pċ8��/�@�vomү�GA����K�r�B�2j����7<~/Y�~�}�}����KA��:Rf�)߶y����wf���h��W�k(����|ƞ�H6j��k!��~�r��k�ږ��<��&��c�|�0bj���p��"������l�}/�y:%��֖L�<M�Iξw�݃ܙ�c��8ʯ
��I:�1��.�"e��G�{�u�k�}�0(�ǉ�i2$�J�rx2�]r���FD�/�Y*�m!�ϐh����N��F�K�*���v
`s�6��ł_�)�(� �.D\�|f�/��#�&LazmrzW�f�;�
�m�66���)A�&�_�OAJ戩�b `I/p�@G����������7qqe+!Un�h���융BVA�^��5�G���$6k:𜐗�
��+����6A�I��ay�'�k���DRX�=6��|&�BJ�^-�,|��:��),!��R9w�,}潣�X齶O-������w+��w���4���ʤ�l��m��->��  }UJ�袌зQ
�c_4��7';g��
\��o=�z��R�ޢ�^�k�^q����Y%e�,���4hHh��]�� ��CE�;�ܹ��Z�
q$"Q������:i��K���8�(A�>��IC��2���=8d�.C����17T_99Ґ�:�����mV�5/XC������p�����<��UIh2d��(�CiHy�����I�-laB��Y:g=?�)a�2+I�'�S(�t����E�=	$BVf��S(�p���n�B�*<Z�?z��'l�ޱ�
m�$'�w�,��n���=���1U%�AQr�?D�/������N��"p��yߛI��h���B�%'��8�����w�jd��념	ˮ�ݾ��W������ޏ��'?��O?͔��=���v��W-������G���<i�:��k���ü�읆���gޟ��+QL��/�.��t�g9vSn!����8�?}���Z�X�D��R�-���LY`��;=��_�R72e!���w�� zwEm}kK�2e!��M-�F"YI�q�eIfQ������\�v
DG��L7��מ�?�{�Y���2��I���V�w�O>jNZ��"�ҭ�?{�~������������M6���%��5f��~�������?p�
<�KRfo�����a�T܇N���CLw�|�[���ҁ����I?�U�|��_�q�M�H�Jrݑ
��@Ȝ,�����?��|�?2��K��`��^��s�@�d
T���\������Gn>A�HiѰ�t�+: @t��a�����:a%�[tٜ�^����Z�ړ�_y�w&܄NR���OQꌞ�Tb\B��]S�Q�Mh���kq��,1$�x����f�{fܡ��Ĺ����@�D�h�LS��9L	C�ݼ�+�a�G:�_���� YO��{�	�<�^V���fhc�S��t�o�t�)��Y	�B��Z�u�Lb���++�rh3��k{��=�f� �~N$��&��ʋ�8��=)w�!�\��Mқ�;�٦�K�A,�\��Z	ZDs�l�G�F��[����������^H ��(!�!��k2�>��Ct:L"��"C�p}N�_V�7�Ur�� �^�D��L	��W��Ŷ�e�t�YV�[�u'3�ã(Vظ�`Xt����׊cPn�.�������G�_��`���b�~{�ͺ�3~����~���f�&�	l��b���?�����$�f�9��Y	N��8D$\V�g��E��l��C%�S��K���sxXT����X�#��r��>�,�Q����?s�=���'� k����+~ԩ�Ӭc�h�)����z�.�4�c�<�o�2w'q�5�%Wb��}jŹk�+����iw��*�����3���]���m�.d�w�"q�dʗ�m�N3.�����*A�l��\��w6����٨tϜ��%����J%�j0��2�sK���8A�Z���X���x��i΁�Ð5��h<�k5 iS-�4����C�,����̉%��O�gޯ	�����{~`�pc	�gS�n	"���/��\zn=�
AV���*������[���-��O�[~o	vfJ~o	:ft~o	�e����������V��%蔪H�g��ozz��!B����v)]����ҿ�G�6<����Cb%��Ti�E�"�c���A��	,R�>L�y�G��e]h��,��l��>����]�Â�ɭ@��_<���U�wG��6����w�A.8�"f�K�-U:;y���c;o�5�w�ڊ-��R��tj����s��^��A�A�T*��Eaν��_�¢+^���B=TR=�������h�Cg�B��KP9��K�6��K�2�J��~��0y�q~"���S/:o�7�r����tMU.{2B6��ŝ������LUbs����6D��o�=���#��Q԰枲��7�j� !xɼ@�}�,~M�0U��x�;C�����p���$�҈���߰���#�+���߱5ߗ���yzE��%�V��a�����+c��:�4z�3�`L*����심>f;t�h.��Y|�,�[�@�T:_w6Tr�^���TKz�q�!?z��r 6:)6!��٦�A��F�./X�J�a���}������{�SX��E�����K!CZ&�\�kV��~��gJJ�%�	�up
x9Z���k����d��b�>-�7������k2�^��RQ&fw:d{�3x^+~":�P��Lr�O�B��ٛ�![��Q�Ɉrk1!�}�0r;�G��Io>����#Y-ܺ���Qrǣ�R���2�З�uR���_�P]�HX2�݊Ԇ}f�1���`�#�k7�3���j����ϙ%2�N��Q�>��R$1�P~�i��M.#Q���KBć�4X�*��)�\��|(ꕌ$��;�7/#e�?����~���#B����qz�4�?QUI�;��������L���(���Ӎl=�2��=SQU�S���ZsS������z���w\��1$�J�?/�'b��/C�:�`1�*)���پ��9%�Q%�>[V3Р3����[(��'��^y{��ka$T����Am:o��OPs�~k��,��ZH5W�~AM���B:�)e�Pj�:fZ��Y+ia*��Ru�'z�k_���9L�ɭ��Z�
5:���P�rZ��U\N!���ia(�踜�BM�    �-���s���Z��sZ��
�m�\��sZAX'F������
�;sP@��RB~G�(%s��\��I��4�%���&=&�!j �%y��`��NJ��l���CdI�M9MI�M9M��ܢ<�&v��PH;B�,O�� ������D�0ܜ�)41*��t"�)b�����P������V�Bk��*��T��?-�7�R�����R��5��TAy���]������kUȷ������d��(8ӋT�-Q,H�	E*����H�6p��Thc�l�"��)p;���L�J��(ϒ�P}��'�Y�OP��M�>A	��rL�	m!X;W���JA�X}µ�`��0A9��`���M;^)�Pa��7���&(9S�XaBW��+LD�B_����	8\H����$�PvBW��9�N�
�1���"�Nљ�섮 b��N�
�6C�	]A�+;�k����H,O�);�kHcO�	]C��5Dm����H���x/N3�-��u��~Ր����6-�{�OP�4�ޢ�%HKہ�f���\|�����ܢ��YbΧ�0K��� 䦸c�	Y�# i���I��� �YBz� �R5���YBȆ�O�"�1�.ɞ�p�B9Lߖ�(L��\������Q�º���!��r�"����كȎ���}9
�C�)Gar���(Li�P����]�Q��:[9
S@t����N;5U)2:�"���0�w�bt�EP�.Fa
����(蘌��S��N���b��h�{1
:[#X�Q��ƣ#�Q�i0�E��B+d`�J*�)�*���)�@�@�^�¨X+R��-�ס0
r6[
� �ա�����-�P�Y(n<����P�(i���)!s;�0%�n�"�ŌE(����P���0`:f-Ba@���0`8v(Ba�y�+Bq/�Ba@w�P��ء
���M�PL��{A:@h�T�B��侾���@�R��53h�}�
d�"���"��E*��E*x��"��6E*�ר�:� (�Ta�a�S��ضR��1�R�a1g�
�b�JQ���X��~LǼ�*x��Up#�ի0�IFի�����_����6�*���M.����U�*��U�+�ԫ0`a&֫0 e��Wa�Ԍ�Wa��l[���\���\ł;�?�,��H焺Bz$�V�� �gr劆ht�	�g����ܵ+8�͵+�v����3�P���.Ta@ڌ+Ta��L,Ta@�L)Ta@�L/Ta@��X��ٶ����].g��U�gt֪��C
h�lѦ�����V5,����n5,���jX�9SjX�9�kX�9[�0� n&�J[�5[�J[P6��J[P6�s�-���k�Ti�f�Ti.g�mDH�I�$���,(�9*X�<sW.��z�W.��@�f�~�|����x�Â.�Y����T����W����W�������oA��R����s����d��56���|��l���e���5�F�u��q	ھ(�o3�(�]�(J`��l*J`��l*J`A��S���Qٶ(���UQ�etQ�e���E	,�]�X�+#�X0(�X�#�%�`B�%�`G�*J`A��+J`���(J`���[�����(�)�UQ�cJQ�c���\E	,�DQ�czQ�c���ȬE	,����X&�%�`K�,��,����XP�%��:�(J`Aq�s�т�ء(���mQczQ�b�LK̄^�?��#Ғ����D'�DEp3��w�`���
b�!�#A�<o�"��j㞫���Q�&�?���@}��Xj��F��U�pAo���O�	^����܄|f��`�1,Q�4ѡ�E�+A`���V�[^Y�c`�|�����kި���p�� Yٯ�{��G��!B�&��d�Gν��D~��`�����8{�R��,�,��rhӳ����9�EY,���	�d�K4@�\Mn�����͋����\�����e��Nn������&n^Onn���rr�*n�OnK]>U�%���k��㎬/������}� O ��s������jD�/4���zI���6E�i�W�Yi�TΣ��3oT�?#��!u�?�;��y勅��]��y��7(#��^�.�\qo#R嬓`^�%-�T�g��*4S�fq���¼� ��_�4N�TGĎK��ƿ#p�a���+3"�W�peʼG==mv�X+ݷ;�D�B<�d��;��>L�֫Vkd3���HO�a�[$�%��������xpԾ���2�zdĭI�`L��B`3�ڀ:�S}>�N4O�]�����%Ĥ�MC\��U@�O�D=Ԡ��=ڥװ�}�鶃O���&�XK�+� �½�����p�����MZ��>��:M|�l'�A(HC�!315���&�4#��LD�[�?���������-l|.���G�!<���ڇe�N�a�{���� ��T�F�=�r��(a:��Q9Q�jX��x�
�?z`^2"&հ�f.F�$NI�fя~���7Q��[
�L��H��5X��x!:_A��*�[���$����U5J�"RR��!��Wt�F�u'��іL�4��ӃN�Y��	F) &ݛE�@�� mN�eDM
���AeDRJ�
��3姑�;X�{6�o4FF���Cc*�?��E����$n��|�C����ԍ���0JΕ+^4��`b2�h�+���Q�)�[ib9�i���R3�H�Έ���r��t�4���;߬�L��]��:��p2��g�������|I��Oa`�	�[
�%#�Tp��+p)���l��6sձW����,&���0Sj�հ��\µ���^��3"~	����O|��Ut���~<x�ɺ�,��5b*.}��a�r�&�~IeI�5ܤ���i�ߔ�L��8A����h�<t4�q͂;f|G�a���٦79Pֲ|9ݙ	��}d�D��n�i9�^��7�]��ܯ�N�t�	�У_������:hX���}�G���.�+�-�;r�����^�Q�Mh7��0�q���2b�&9�=b��Y8���?����eF�>�l9Fm�2��h�_�#6�/��X�
@�mt$��t�� 刍�A�z���Ę�w�r���6��q8���Ġ�O3�B ��2�՗X庛TI8�(AP��6锈�`K�&���*�ҫ�V4f��1� hW���1i7��={쏾�����{���V ��Vz?��![ɰA��1����T#��˜VK��5��V9p���{ϒ_55t$i�|d���T���>�Ƶ�.ߵ)�BQTc(��]݄iqd�'m&�TEۃ�.��Cv�3L�yu��^�k�񒿶��(�P��-{g��[�H����S| �$�S�;f�I+N�uN�o뉗�׬35�L�A7~]MR�Lr&���Z��)y�S�����d�qK���O� ӯ�Ww�w��F�c+4?�V]�-˞�u��Z�N,1��x�s4����8�
�����5�vܱ�K���}���~�+��A��h�+�;N1mxU>h�{2RL�y���bF^�ݹ�%�v
J���G�����D[)_�4����II����@A�� �����'}�Kҁ��⩷�OY8����	��Ґ7���Η��u�rҁ�ug�̝J��Rb	�]��}?�����\�ꃟ?r�Tܮ�o��O�Q9�b.�����C.��av1��v�����;��?���p5p�Sz}���9]�����_ܤ�N�卞õ�M,����O =bL4֌^�p+�&����#i\z�í��LY�]�����S�b	�T���s���O�9��U
��4n���b�E�z���\�΋ϩ�S](�M3bܬ�<G3�]��ኾ8f�|Q/��nR߶�5�M�ۺ���ԅD28�k+61Eܤjm�A���C�X��yp���VK�$���SVj��k�7�H�.?�mb�[ 7�H}	���D���L�tV|�+�3p�����h�@�tz�E�@��o����M�"]���1���D �  ��Cn�T��S݀��rOoL;�s��Eo��& �a�ps�KI�C�Bۀ �F�	�� 9��9�T���uz$x�6���(��{�7���wt�'��'���l���}�]����n@�����%x��z6 v�S�k[9� j�p�̀6���9\Q�-U�W�2A�s2��Лv2�(�`�	.��wC��7  50��> 6�oH�ʗ~�R�R�z��No	^���c�;�*jᏚ�Ħn�q��E����,��=C�T�i���w��[�@�l,�����?��g�v����z�8��i|�d��?Mx�n��hӰ��3����qͬo6܋��^O�6�8��>�g�>���X/��%s F���z����}?����wE�j�"��П�<��a)�m��k_��˦�^�űjq
�L�k��6j����]1�-Wl�R,�J����]�B.�{?����}��/��Z��}#7tt#ww�p�4w�
7ls�p7�p�jn(wC�us�t7���F*���7�1�F��hnXw#|z}a��u���ln��F��<��|��O��k>9�r!|j^Ʌ��y-§�\�Tr!|J!S^�O(J�@?�+WB��&tV�gBo����]eq%���q%t�,p%����4/�V�{�:_�y��+��y�W��Z�J�r:�=2:_�\1{������?���[v����׽����?�o�#]������S��]s����e�����      �     x��[�n#�>�O�S�2i���s ��)��KA�y��V��ٝ�E�[�]cm��G���Ǔ��F��ȏj6i�` hZU����>��/��������>�s_�q���m����^�Z��*��?>���g/��?~"�ӟ~��7��쥨�3����qa�;v�?���zy�^������^�'7�Ձ��|�?�_��X/O��k�Fei�'���zyǢg�e�^��K7D�i$:��0�����N���/�� AnT���t��?�����p���U��5)��ȏ|�K��n7BD���mc��W��s!4j�����"��αo�����k!5��z0��zyЛ��ٌ-dmS�?�i�'�b;]���v[8�c��e<��'^��z���]r�E�c�?M�0�->A�R�Ծq�rgw�H��HJ��[�_|�8����?ʅ �H�f��{�u�'��.i,ɺ�%�;�q�� �`�ox����  E��ZS��1�c�;�d�w���&֚0�>��gp�	Nl"H�]b��z�<�}��c�[x�f�Z�BU���G{���)$k������k�f�?/
H!2�߷RHU���.X�ǄM<
С:1�>�����B;�����D�v�<�mqyB,�&��0ֲ�(�K瀥�x����M0��7�P �����Z6��)��wBJ��`sf��=r$4@��ѣ;�t��㿟�}k�B)��"l�8�-��?e�E�
����x���X��{����y�|p|��QMb�����3�B2��*�	���?/�Py2��Rmb��oy�J���3���@���'X�ҕ~�����Ҳo��/K���`���X�@���>���.yA\�|�1#j K+��}�@���'hY�������`{Ed�c����������i��k����t;��G��=���u�1�c܎�:/����jb�5��5�TK�MX <��j�C�.2٦h �ZC���J�k �:�[��#����U���4�-8��E>��6# �N��"�'Nv�ݟV  �6�)�хݾD8�i�;A?4�w�2j��i��-�f��|�,�]��/���w��:㸑DL5rP	��k�H��".z	@5I�sz$�QS��k�r0ըb��ϑ��d�� G��qF��=,�pi� GM�v�S�IҶ0�3������&���7pԤa���K�ͬc�8������P ��ýa����2U��ޤ��-
�$�di���s�;��w��mK@�6�!Z ˨B�qͣ��4[�@]�3���:@5UF������p���>�.յ@�i����?PG��[ ˘ĺs4��X}���f��v�Y��V���e}d.���F/�N_�,�!��ڊ��nq��2�t�Z��e�'�+���耍��1��m��+/�B�!B�r�����~+�p":����GF@�& I��
p8�耖�y^Fr��耖��r��M�3u���l~��-m�|�6��r�{�6 �U��zÂ3pg�ÇCw Q'w�ད��)���ă$�GǱ��Y�9����������9�j X��D������˂t�$�3Ϝ]k���kYF]c�t�9t|�B����*E�������.�6���-��)fB���u��Ӳ
�HK{��혝�s�~��g�.Ȫ��N�I�B&�sx8ޔn�3��<����-�%�g��Fo�W����sdATg�oAX���Xod�q��V���P�27��j�oe�c�_{�&_{�Zs���\1X��a��Oo&��+1ls�3��c)��]��E�1&Ye;���=�o�t1I�c8�8d@	��$�:�ȶR��T2�9;3�U��ds��K�ポ�U!c2w�p�$sS*����}�1ɂ��B�$�S�Ӄ
�go^��%��I����m�����e
	z�d�G�T��>f�k�TP�L�FH��D҂��A@1c-vP���@�]�M��* B9@��WQ��.����
��'�
tP�����~G�����1+��G�*�t�x�~�1LT����zR4�J�}I�q �>���`�q t/��ɋ �KJ���
N�|��+��-��%kL�Y��*~�<x��ϭ8����tQXY��9̈Mw�1!Aڒzn���0�zn�VX�U��[�*����:`s*>��/��*@��� K���۟8Z:r�j� �m�8�~J(�cU]簟�nc���:U\t!6Ī3޷��"] �5��@5��]���v�Β1�*`��|g#��N��tؼT����M3V��?E�V�j�s��HB�����Q��g����"�X�x�`X�[5+��9Fܠ@�+�`��V��d�yzP)�|�g1�������2~���4�m���R]@J�EHp�T��P �s��T����� ���6�%$�Tj
�бB��[�D�&/!s�Y׎te5����FnA/ߡ����)y�5�)�CO��m�<	d)5�H���k>���� ��<����}ɜ�a�V�h�<���o�M�U&����\��>�_�}�KJL%�Zq!A���i'����*�c��[R�wx�bbU����r�-�P2Zo�S�I��6�L]�����O2MS:��^'�m� cLIi{{.��n�S(<�}��:�������gwq�
��B����t�,�Rf5+�nw�_���ߤV=ߑ@oR��Yy		r�����@B�<_�hM��1R�Z�4�V�h��ӆ@7�P��&�;�Ԓ.����Ss]�I�ܪ��j�=�ܚ٪I]!��'�_�0u�[�d �
(uN�o?�;��-���s��F�	*]�Ǧ9h�)�Mp�G�4�3yx�'�{V&A	�&um�B�ߡ�`v�)�T��N 1Հ�Dڌ�i|t��TE�s�K2�Jr*4ei���L洪�r��{�SUy�	��5x0�S�P�:9���k��鯻"��T�s�롪�j΀���n&o�#Y�����-�捸c+�_�;�H�v\��j7�����ӽ�}��W�- 3��^W۪�8L/U��#kꇹ�z��Թs�EU�_+yO`4��s�\���t�������G_�}���<6A۪���-�h>������/��_���b�U��*�g)�6�@U*�u�[��AS�����@T*��lV��n�\�"��^��AX�Dj��i��Uaq*x�n���kC`'���"�q�G���+��d�"�JU�G�����)��|,K��jZ�H�(+�]���V�T�-�m�	\DJ����Jw[C�H����;N����azx�\nad�$#o�`aU����++êB�~co�e��T�sI� ��<*]�u̇6�/g��z�=8G�ez�eMt��Q�B��w7��J�.�=X^�/)f�aa�&*]���;�
fׅ�ϯ���κP��N��Oceaj]0����\nw���w[;C�B����A�gA�}��cқ�6�|IX���U
~"�����#Պ���k��뮿�B���г      �   Y
  x��Y[o�~>�+�A[�wf�4%�2�-J2�苑�'���� �%�S�� ����f�o����3;K�0�3g��2+菔��Yz���d�%� gY:�ҽ,}��WY�o���y�ҡ/@�!K/��(KO�� �c-��� E0~��7�޷<�m���Yzb�|��ҟ-�ڭ�~������b��lj���,!�s+��6x�W,��s��ź^g�c����X�hwq�E��Yz`	�nl-���ZBP�Ͷ��_rĆ���b�%u��N{����u6~��n�:�����.uV�xU����9�:�rV\��OJ�yw��:>��sO�81�Ǵ�vu6����L(XҦ������Q.?�$��C�{�߷��b���J��4���ծ�6ܕ%=Z�uo2��ieS��%K�J�G�g�i��S�Q�%��xP�Q�`<��-2~�⋴3Ϊ^qlZ��z�ts#ъ��{�6�d���!���|�����r$�Tf~ˉrd9~׽>���ϫ3�G�6m����^�[�O�j9>pk����7K���ayi����m�r���4�dS�4���,'��-2I�ǹ��E9����z`�2ӥ�����g�6�k%ޭ��]AݸrwQ���3˕ �U.�1��:�wfp��������c���l�˅�� ��yꦧ�n�.K���r�a<���������iS��S�/HR�/�܈zm�k����|�<�z�)�:tT�'���<��'i�po8q��U��SU�=�n�U����ͨ�Ϧ}by.(��ܜ��'|*-C�&y̗<�˯T��<�oL_UČ�S���}��Ո��84K�ϋ��"�Ě��7:����޷A9�	k��8���3
���k}���$����_?�|�����kz�wq�j���|����T�mC��Iwǽ���'��ç�:���0y�lv�ִ�*Y�G�;lW������Y<�U!2�8�cv*�z�b*��=����9g�ЀJ��4��-C�"tȤz��d0��4���O�x�t�l�  ��B`��d����6��� ��41[�Mqk@S�L'��F(@ϢZ�.���-�B�f�x#��/%	��\2�F�85^�S�`�-.@��,�V�#����d�Wo-�\��me���7���#)�#��(_�7�������^�r�i#��W�&Fpro�.�$խE�M�Vϭ5�4	\��N%{G���Ȱ���i���4n����c����b,��<N��2��u\cPZmlغ���;�΋�ga��J����7�W�0�z]�e��vKN���������KV�^P��Gu���ɧX��\T�X�O���qavn���S��gs_#f-�����j]��'[�b��%�x6�x�=/u����*��UB�ܼݨ�K��*�⯷MN)��+�ʒ�!��U�=�ȯǴ0��د��t�"����QY�gI��2=��Ŕ/�?�zwx��*ý�m�l\��� {4$�n�O�v[_7�[	 ��-��	=��H*J��s�̱i��,��¼O�2�^�l�#�t0q�Q8��<}�D�_>~ЪH i8�Q���㍎�37::8�?X�wA������p��H;�	�c6���a��&�`j8qKW�7yԌ��ei>?��F8!���W��yyND���������o�ҵi�f��Wo�
��m4����'PI�����5[�uh���J�W%pi�U~��G[�U;/Z�@L�E�3&&�8��w�	���Fd�u�<�ȈvT�涾`�yS�09�.3�}�k�^��g�\��|EX�H<Aw��"�_�]W�()<	��zr왊���y(��Cw�|��ǜͯ%�w�.I�ϣ�+��� �h��&��R�P�i�:��D��f}N�Ēo+:5�W	g���|���#��g�4\^�O��(�+^��R�Yx����o����~O�315�> �K����n�ȏ�W�>ʛF��S{@E@�Ө��@6P�4����B2����.��GT�E�;���p��3^,D �E�u�����;��, �q<�Zx�3oJB�+|2��i
8��D��n���Lҟ�0@�G�S5:�B��D�d�
���'R)x`>haO��ݴ�]'��M�~B�Tx�>�dkc)N�W��꺂U7����m"�
�G-쳉T*� 
d�!: ��&�͐�J��f�pn��V&N��gF0,����&��8��`,z�w��/Lk@e�ޘ�!�_��Q쇉���E� �	'���<H��EU~�9@��<���
���M��J2�'�"�R�U���OМ��?�����^^��S�������L��U��ě��@���'�
q�����R!�O9�����x��j|��{R� { �����b�ߴ84Q�^5<WZU�t�ڞ��W���4)��C0'^@�Կ+�PP���)/xQ�x�cN';�Dl'\��2�{f��!�.�y�*�Z�f]D$b;�]T6Bl'�GypKv���������U�)�������Ѵl�$��,�K�w}�g6�;	$M���kI�w8E�V�@��2��B��Z]�,�m�O      q   y  x��X�RA>'O�G�`(�Q=p���7�|)7 �?��	H�X)0�d0�6�(N�=;��,������L���_�����T�jh5Ӫ��/��x���X��Vm<Fxg�M�s����R�VM������W�:n���@���.	�!<�����zOX�V\6��.��!�2o:k��m�s�Zݓ�k���eΟ��6��5�MP�]\��7�]a�T��Z�ю*��fN^B�����Z�M�Qp��M�GYN�	�_�rղ �u�_�~b�3�6��=��P��lTS,ڙ36��E��Ѽ�-���C�9]K-�-��.x!`��3����?ǭ�����ҫx�8DI��E4�t}
+x��%���j����ձ^+�=1{<E�@
����9*ād��TX�h,�ͩ<Ǵ&!Wp�� Ɇ�i%k:i·0X0P�N���'w�"��+(�e���*V�.*<X�rW[ٔD�ǎr���)���T.e�>[Vi��Z���N�H*oOH�x��u������X/ �'�3�b,��3� � ����ے���w�;��� >�W�p3ײ�\TF���CD'�X]��w8_�(h��U��I�̵1['���D�߇C�pM+5�ly�����f.���G�eb/��cg�1�Y0�\;Q��yg,7���;��o߽g�l�K
��IRC���<���tN$�\��p�ʺ�}F�Z�l!����Yu�od�F0r�n'2-J!۞I��(��/0�T+�(	[S&;�i�ĝ.#I�䛱����8��E>���?jvf����r'����J�����GC�����ǂc���;�_W�@,�}Z�&����7}�= u������㞅]DtON?���=q�m�w�d�W��鮍,A^��qR_3�B+�C�A�n��%R��ړ9����H� �ǁq��Z���T�\=C�=p��!X�m�9~ب=}�̝_�в�LgnGm�:��M�Y ��#����h�S�;�U�02��&��ŝ3��e0��������ܤ�qJ�rˆ2�e�"�}ŝ�Z���IEm2�3Vl-��Ah�DE�������-Q����4IǶ�ǉJ������m2q�?.CE�j��	o�=      r   4   x�33004��v�<���`Ǧ;f?ر����v��2��qr��qqq z�      s   0   x�33004 �;�X�`ǎ;;�X�`��;��
f\1z\\\ ��      t      x�̽ݮ%�y%v}��L��ue
��2غ
R{���h65����� _ؒ Q�-��)P|�z��"3Ϯ���9;rg���8+22#��~����<���|��?�я��⛇���_���o�}��7o�<��_�ۯ~��Cp����w�{���ho]�������;�?�b�/���k}0����/~��Ç�����>������?��>�������?��|�������_�������������Nhn
V"&L����[k��-a�y�Ҕ�+)?�y�[c��doc�Z�䇺�����4�m�SȾ���Λ����j���i�/x=M�S��ڃ�����[g�:SI.x{�᜗�y2� &)�>�x��r���6ĩ�R���w6�&�����)[�|�����86%|�����B��T`��P|��q9�['������k
xS�S<y�ěr�ΰ7���ϔXo�|����oo�Bm	s�����K�	h�ؓE��0�y�C8�hB�ɗB<�h	_ {�����u�,@p�t��<�kSs�`[�|�G�4��燰}D^����h�����Xl��3��h@��e�@��N���巡M��J�m�`�ф�j-)<��N�֣%?A��u�v6G�yW!��m����B|�4ⶍO@�+S���;x "n�K���l�yH��q�>ă �����j	`�.��k�����1�N��kW��:X��W�Ovp��N����2��w���\��`w��g��x���W]�B�%��	 �%����	��>�,Ã'����p.C���'�`aj�*��� �թ� [�!< ���r��g��	 ������ v���u����:x ���Q�F:x  �m����m����h���5� �<N�Qu|HO@�T[|V�C:x�&�3�!< ��S��f>����I)��%��)Ҭ�*U=Vyp���%C5� ��ʂ�`����s(��<x ,%�t.ć|p�'(-��������:GK'[����	��5�(��?���<X:���VtP�
��r�
�`̦�rh�+�`b��Շrh�,̥
�Xn�����ˤ: �N-�lb�Ǭ��U���C9z�jc����%]'P��#��S��j���Ѡ��c{��.�E:�����z�
^�bh���z���"U0>[����wBz��[˴>��x|y����F�Q>�ʪ�j���}u��קo��9ռժK����f�W�5p��v�6Mh�b`l�n%��вA�iGOV�1����ۥ�T�=����`��a�p��V�����b~hGwx��s�xgG�--Y���p��z	���?�⛯������o�����s���_�����������7&g?���~���0�~�_���?(d�_?��G����u�yYf!�Q� �
T5|��mGO��u+����Yߒ��qr����;x }��[�~��w�9m���]��/�B�XL�?�<5�j�'��|� 'L���ϒ>�:�\B�{���'xt��}����(�M.Ec����,��}qP0)o>��ó@�dhkx��2>۳M�s�Q�{��g{��"�.��?�ؽ����Е��9h��pK�a��c6��5{���t-�s���Z���1�,�*��-�T�p]E}�w_��7��Ç��Y	�\>˯�O�/����6=��כ��9�d�q#b�z�96�z�
��ciB�4Y����Ď'h�*��S����7&v<]jQ��gh �7�v<y��쀜R�R��	|�����	��5nwxZ��NlS-%a��pm�k�wG	J%�$��č����Ai�L�
��ic�j���ˎ��4�&,5Pmo����w �bc���J��Hƅ�RׯJ�������<�Z3G�qc��4�K|��s�7�\<]���M�.?�Z�<�kÖ��R�}�b����2�$򣍛�+X�
�?��>s*�v�H�1��'u�yZߓ߼��sD��4
"��)�?z=�\�n���36�� �y��3���	ʌ���"qoL�x�p�6,��ǁ��zQ��$H�Y�l:fe|����E����޺\3�G7�Kט���"�¨kh����5T+CG�>�}t�,>0g5*��S�G/&r{�2ԌFSG.�p�����S؈&8�$_��Ɛ�.�慬h�=3t��a�3K�����P�]�9h��1Z�Ѽ�;��1�p��3^[�w��Q-�8�<F���J�9�9&f������d3:AGS<.��eHh�;5HM��o�%f��o��>P��\o���,ё+#�h�ׁЂ�j<m5�����'+���)��G�8x#�qU�/y�	�wU�6���K�C�Ҍ�u� XѴ�s�����$��E�V���-��ANA�s������k���L��)4�a�M=��o����ݗ_|��ʒ7oT_��0��-��4����ٻ����Zn�Ǹz�1HUo��1�>[d
�+����OM`�����ߘ����L�4d@˞�[��������B�{�F��~�<��9�J��l��~���������M?o�{`_z�8��С*�善�O��ԙ�腂���T��#�����+ٛ��-&~�����FC��Ei��5Ӵ��h���5��a
jVzc\~[������裮p��J2��o�_?��lOʭv@�,p\��p�Zy^]룛ܚ��2�?4j�L�'������L�ua4����y�T�0_�p~�jf�-n��3���B.怿W�4�ݥ�D��h2f���o��ͺX��z1�j��s�˔h�������Opl����$����t�dw���Lr������Cqe˭V,���R|�޻o���w2�{q�U��+��&���T��s�}~����=�����7<�k6U�]�U|���I�9܁�Zj�p�o5�*�l���u�{���eW�����HXHJ�������	�>R��^5S����E���U�Cҕ�2��h�%Z�H����X���%&"Y�ٳ��{�r/0ͥq�w�Z�W%��0�Ճ{h!���A)�A���
��t8h��l�l���`����4x���[�ƿ��B�-_��{P���<������?Տ�lc	��8=4Z?漲��0��Be��p�18��t4�� �.+������B�%{�_���G��X8���`'��)����\&^���\����h�7�\���Xɽ�p��!� �G���	��+\ą�)����SP�.���;y�wz
9�����{�׻�
-j�h���ܔ�w�Op��c��}>FFd��p��WPhiW�R��~�o@kJ�wڡ�Qh��,��$��	'��
�&r�6�.:.\�.�P(�o�4�~�Ĕ\�{�t��s�))�|,�Q�5�~%���!��0p��-h���K�bt$�f�
�b����'��eJ|y��h�*��%�Ɣ7��C�Z�x��
����;�m.h)�%!���~keU���p��[�9� ߴҭNV�ql���>Cw�f\��X1ڠTyv㖯 +����� �;�G��U2L�Z�����GKNΖa�o���w��<�6a�V��:ӱ�㕥ȰE�:�\Ќ�W�5U�l�̦�����A��n4�Y	�C=A���gg�$3�+N���nM�˳�{	gڵFgƁdc
��y��h�k�̲���lU%u�� d/�u�B�.��� ��`4�!~��3S�v�:02e[w�_5�1��b�lX��y+�ӊ�zc�����d�L�0��'}_x6�)�]M�.�X��͓���J�J�G��}/�`�b؟7�n���g�/�� ��V�&U$;��Bv�/͚ve���n�_�n�X%��n�uw��ٗ�AE	�ח��
&�;#p��^ЂR{�A��Pm[��+%�Ug17FF+�/�ȳ����mQ���uճ����]�h �R�g�T;Fk�/�������:��,s�����x<�����d�.=D�f�    ���H.%�h���Y�<��H.�8\а�ZM�t�nX.`8�o�ٲ��@�ʉLǉn�8g��X�3���'c��u^���k3:�g}�R:Uezr���h&As�?�q�H+~M��Ŕ��va�M�1��N����p��L���$�x��3��"�J�^gNu*%�r9�!�3f�Xt�I�$����2���F/`���������G��Yd���ӿ�2/�Qh���|�ϱ�in�D�s������hT�|3n�v�I�s�j$�%��bؼu�Bt,��å� cG	�/�
#$=��fZ�G%]�q�\۾��섫�a���#�т��$<��R��@�b+dU���+�ʖZm�p�Q���%��?蹤���E��RbE��4�Xږ����VǛcd*�|���Z���ƀ�4��&H�\��G�4�(�ù�"�8L����M���)�z�6� �EI�����D�EwlB.��}H��O����݇����ˉ6_�1A�`FȤƽ�|d�,�`K�;#���LI�|([6����H0~(5�r������Є���/t\��Q��/n�����.��Igg����^h�Q��Y�ت���hP\l>��;\T��4-��f���J�p�O�f��sփ9������huJ���Ƶ�N<�d����W�B��[�$,�2�@�Ȣ�P{�Ω�B�����Þ���:mvpYh��]�U\G���cr�˲<�(�'7�O ˘��4�V=T�(U�����rcM��Ñ�LrV�d�@�E�6)H)=�S��Au�0��+8�7ư?���� ��g�rGk��)96�zҖ��4����hî��1[��n��eu�^[)�&ZI��x)���Wcft�����D�k
�u��q�kA��05t���r��_r���`� m���o�/���p㵮+Z�@󬲎���+Z�	��y����`j��h]W�Y�6����p3aǷ�o�G�O�*�|9c�a�{߼�dnM-���j��TcT�de'��N�r���3�g���*3�n ��O��"-����񳲠�6N�f7_��
mc�+�Hv�_�����o�����w������_� ��?jS������G�����i<�����{m�������f�\�Ww�Vy����g{�����>�͌�c�x}E�&xD���W���ՠ���P�����D���j�\j�l�5^ɕ���u+$�dg;�%t�M{�я�~���������o����w��ݷ_|�����t��hon{����!���:�ÞV���ׯtE�ʾ�q�R�-���~��qv�N�wt����x�9Ш+�·�ٛn8�!(��vid��̛q��<���)!�്�?tρS���@m�V~���jG���vB���2�S��Hk�����;�Y�"�SȐA7�_������Vp@K��]Pkj��*q��>�Ket4��O�@�(����ƴ
�1�ck}�N�5���݌�W}?�QL���
-oy2Eg�T~��ۡ�-�F	[���6��2�)�U��\��6�!s}d��Yǭ�����r�z�z�p��am�<�?�z]�c�������T�u�0��GW����\��3:�2+��99�D��2)]��`9c�3���|1�������eB�4u_ ����e>2�f�a�S#�}Be�G1rۜ�\�$��*�<=���jՖ�O�F��/�Hc�Y;c�	7� 3� ��t�QZ�M�Ãw9��Ӣw8���i�}�W~[�|���%����s9m���H�)q��Ϭ�� �Zh�Z�����W=7�:>����VQA�p����}�9�i昍rʯh�/ȩ�3��%���l�i1��Cj��ؤ�F��%b�?X�>>�� 4f�*ʔ!+��ކN����Z�f����)�-��o��^��n�Џ	gtN�l�?{�Y�8Js�瓯| ���$q��o��ޟ��˨��o���G�俨�T��}4�	,�i)v#w�%Z��:6���#ڞ���nfj'�-�*�NV��SM��.���|���%0S�jfU����̳+]W4j���
sj��~EKar�-��6|c^���B;���bs�b�3��Z�.�Kbp� T/^��9:`�I.�W2���L�n����(�0z��p�>#u3m���u�!����,h�w�/I_ʃFߊ���\兘�ցJ6.��YM��@cN�����D�L��l��j�-�M3�0�`��>M�J����T�F}���X�=���lg87��d%�H��3G�&��!�U'K�a]���\&����G����}1�o�<cr+�|/��˘A�"h��?Ӄ��YRo=��/�@˾�c����1���wɉ�h���``�Iwq�s�j��1��@��1hÎ&�hU|�5���ht4���td~�mp#��3h�%���.��+��-%��.ҡ~#��ӏڔ'H#h�|������Y
������ny��c�d��7��fN�ާ�[��|�b.��HVg4!fEk���x���=�Nf�<�@���ѭh�9���B�l4%��N�F�,�pJ��}�v�8��E�@�)MA�;:<}��`Y���h&KZ�{�A�{����@�(���U�Ɓ6�2z??���F�J:�ף������tcÇ˯���2��� ��ɫ��%u$�Z5�f�$�8����r(��ҍ�-�h����2�"�8������w����p��'B��l3�k��U�Co3��cߠ1��FӺ.���$y��^��``�;I"m�����w���"J�>�h�F'<	����K��#���*��a�s�9�S��5aÔ'�n.�\
���9�o�M$Kzf�@�Aǚ^�:�i�L�LZ�)#�* �?���bNv�ƪ���/����x�wѸ�p��'��T ��%����_f���f��	�J��}+P��h��Aس�p�
�S<�F~�33�/��F�]�0�f>_��ݳ�U�ߐ	M-�ѱK��O�������h�p���
�.@�Ě���S٘�9I�4ܡs���ً�,ah�E��QN�4�;n5U�:}L��5Zs�{͊ X��ܩvjԴnl�q��>�j���ṉ��+���᠇��h��4�]r�R�nt��@�;�|�4���)|'?\'oe�4��u�͝�q��ո��z1p|g�hyj>xZ(6�3C���m2������\Z8� I�$$h|Í��i���-O�yHL�K����H���r��s���c�i ةy�˜Qm+�A���sk��^����N���N��_�cJ^�5d�wFt�j���S �3�e�wp�����0C3'<#�k��)�H:#<���D��F�t����Yn� ���q�hF]�E��[a�ǁ�+�R ��3 V�H���ֳ)]��-�V[�Q���܆-����jo�m�~�dDz'3x<�aE�d���/�����bF��F<1p�F�h�/9����폱��0�$+XDa��tc�GK�p��=�`j�ӕf8� �7o���$�̲��?zo�����9��H}r�����m�Z�=���sB�Q�O�r�-}J��՜�u��(�R�m�Y���6WOdxy#�G����%�~����������b���ѭğ��E�ZhꑔFYKV��$���KWW9[���'�Oк�RթM^�x)�-������`�&'��l�nk��仰���&��m,gseZj�+$e�&N���fe�̠�a76�ofլ�t�����'v{m�κ��^c��m+�r'2x�|�8����G4�Eɩzm\gu=Hr��S`R�2ڠf�6J<��ȃ��ɦ:��Xy�d��-S=Թ{L��Cė��q�U�V��+�m��#�:Yk������xڎ�������U�A��������v4Ho��9��&n�k!�&48w�Q��Y0oz����ܡ��M��˱�/�+I'�cBG�h���3�%c����`E�)z|���ޗ�jbej&s��k���dˉ���n��u�F�p3mX�
,�[AͧA���so�L��y��օ$����    3%q��&�R.��D#Ҭ��ɠz�\X�B��y��f��)X&R2���8�ˋrX+A��~X�]���6����3k��l1'���~K�>L4�k�b���u 뻂w�!^1��d��6��!��A�z��⬲;x>���jή݆��
��ѝ�R�aSȅ��y�X���Q,Wf�F?���^�BH\���ʬs�<ٝWo�����z��b7�Fo�u �,Am���|Ŭ]ui�>�����EW>�7����J0�|���37�N�Et_&%^1ֺ<�h�U������6Z�R(�n�v��]$HT+׼[|��[Qs22 &�2g�TM&�=�ms?�lF0]���n ��&^֎�!����Íg+�u!�f|�A���U5Dl�h��nH� ��h���q���A8�FW4�A������@��d�pk����2�`r|eN{}{�Ő\!%
��p�o�K^ݗ��r?���.��HK�sn�O3�
K.Y���|�S#~s�Xnv2��9�w�y���C���`��t�'����9���k|���b�,�!�7>}56N��{ȍ�Y
�>'�=0�JQ���1��ֳ�@�b�_�Z/���$1m�`�6��u`Qi:O�n8�����J�q#���Y�1�h�ػѴ�g]��V�W�L{I,2"��**@Tx��3�i�J��hG�
�J�r�b7ywn�`i�b��X�k4޶��$�W�ؙ��W�J��՚i�6��+���(��/`�l׈k����50)���T�vw�f/L�k������,(5�1�o
��rCm��tdΌ�5�J���S;v����Bqx:f�b��Q^Ϡ8>I�}����xp���j���\^Ϟ8<]/<��������؜.�j<v�~�Hĭ�VQ)����U������l�h�{×+��|�����[-�:���uR�#�`\���'��J�,��N���Q��3%�Rӓ;V�J�������
,��.j��\��;��y�����#;��u�z&~�딟����Pl��o~�3ezV��J��h�&?M��� �F@_\DT��M؎�"t���G�	K	�/��g�6&��ٜ߭?~�:�/��$Gs۴�\�em"�;�ni��k�ad��*�I}X��j�Y�e#�z1�t�!�1p��IsK�����2�r[$�j=��rlL�-�hE�[�T�%߀6���,}a�G��7�.>Y����*�e/��>���m��<g�8Һb �m��<�+ؘ�ޘ+�S�y(������{5/�o�U�u>���^�hp��e
i��'6�-~Xq�Jp�`���+�e��'Ph)����[�ݲ�נEz�py��O�l�
���G�Iu�|4��w-� �aٛ%��m���q�!�8GeE9�\���f��0��p�"�6w�:�LJ��ݍ��>�� k`�M��b�
�%}�ۆr�G�en@�4���Q_v��G
?+5 �$����7=�} �f�ZkA/xSf֙>�JfʙB3l
M����	t�QZ�IMк�v��)K&�96W���-��.�A�m�Rׁ��lNR�C�{���{>Jͪ�]oT���X��d�L}�<��׹�W��{��*�C	����:_L�}7H���`�%�!6y���d����9���h�T��V��-E,�9I����(4�z��I�@�?EV�/��@j�Y�:�6�(�©�������1�z�p�Ш�{3���o�{��rQE,��{x1�4��y�e�����czTe�*�d	'b���L�"�h����
�*�Ö+�� ��
�wµ	6zw�~f�1�`�bu�찷���:�`��Ω������y`Vh$����v��^1k��$� �w��_��p%�Fe��20�y��7��͐��@�"ј]�C�+ًZ���a��h,ע�\$=_�9��hL�{��q|ͣ)�b���p�qŢ����j���,J`df�o�w���-��g��}Gً�L��L2�98%?S��^$�| �q�ǁ�]��X�
W��b�A)�׸�{C���h�׸�{{&���[)��O_�I:���H���ΥI�a|�ݶ�	�Ѐ��<�]7�]?&�Tq����1E�D� ��#I���E�0n�p�,���R.�"/�Q���6:�f�<6�,�+ZPzs�����a��U�i�vc?�����;���F\�IC'��7����L�6��Ep�F�)�0�FCy<l�29�2��6�o��5�h����S���j��BEy@��6�u��yţٜ��=N�hiۊV�|���A����Чc؄�ܸ� �yi���!��n]�����갭��.�<lz�|6�0v���
I�́S�|Z �u�=,S�0'=O�1�	Ҁ-q�;�˪��� Z|ͱ̹��ɁL�ׇȁ��u<64R}��4���Z�cC-�zTﴈ��kKA4�MB������gP�'_�p������K��ms�*���w�
ְAza��Ś�j��ϳ�ϩ�t{�m��y.�fK�m�n�]�����m��'�'0r��`��2�MG
X���a�oT�eq��si�v߅x���r`�R,Ɨ2,,������*�R��Zc�$�G�g�9�,6R��#N����E�(���i8��V����=7��u�*3=3Y���}���L���o|��� �͆'�`�Do�|�q�P�͗��0|��`�c
���[��
4v�0����)50Ɂ�p�y��񍹠a.E�0��6[E��y&5 l�bk3[j)��G�S\�D��M@�i�f���W߾�� yFTF�)�dl���ףU��rc�M����sJw��q�pGU{��mjq2?Ӹ~!�� ��`p/2L���,��� EpK@�%�+U���e�򺦔�e!�vCc/�J�B�fm>R�����@�k��ϼ�䰢z��ٹG�O�Ĉ����nnWd7�EIB[h�~e��>��鉓�7u�O��RL4��1:�[�Tl�%�֊:�K���6&?V/!7	��n��E4?���a�lK��BY�<���:�{kS�P�p>G[�.h�nH̅aз���$p=+���m�Y���XB��+$�p nK�8L���M�%x��83ؑJ�߽��RI��\���\ЂͭUI7W�N�\�OV���׭`�}���u�`�7U�߽iv��p�t�x�`G3Q�CZ�۬���y�#R�yLP�`,SD���z�if���t`�ܺ�r"��=�Rfe}-��E^�Ҧ��(��KM��x3�}"!|-���f�4@�B���Ƶ	�zl�Rd��R�Ц֪�g�%���h�斍��u�We��Hg�l�m2�X����J�e`Ph�Y,�ߍ�ﮦ�	��C;�"����>�)m����#���.Q�dh������-hA^3�76�{�����p����9ʒ'4:��8�K�)<4�yٔ���ĵ�2�e�5���u���m�\���nt�_����%�M�t��w�B��ͥ�q�/cu$R�l�׆��8L�-�w|�����½��5^y8��*�go��<6�xѲb���\���#�3\�&l�wdM�+.F�P��D]���Z�϶O�쨡w��9������Qgfz��m����}����ީ ���L�e�d�m�7nE�����l��ui��/�}�xj���9!�+�s7V<\���;�,�3���:7�jw ��d�$Ω�P��ԄV�mT:��!ω[>�{�tV_��,�q�:��6�H7�e���-��Y��E����?�����+�D�t���h��4&x���|�`��,u�`�%D�u
�κ�Aˋ��U��VTq�h�ѩ�,��m�)���J�H�W�hQŊ�!,��>ڵ���=y'�E�9{�W0�S�1�YU�-����b�F�V	���%D�o�=ͮ��":��
�Ț4z�ڮ�vw�ڛ��5����h�L9ؠC�,T�M!%\��/?hU,hA�n�b�K7mJޞ3!�&�2h�E`�"�e^�nQ�>Z��    Ց�"�:ͮ;wmQj� �34w�mn��a(0Þ�(+!.��L�NFۮ�%4�,����1��w�J�q[�G��Y"���G�����Y{g>(p�;�FV�'��]�����(�ڊ������Fݦ��]�3�6�6-K�_'/3HB~��+��YW�h(8*�V��Na����K��uu���DδvcG�'+�$���j��F[�h�wV�<�7VLl<�}�g���h�Z-Ю͞>0����z<�친�N�)�8�}�a��T]#�ou���ڒ\=��
g�ƶ,�޵�Z �7�*�2~V�JR����@�t�܄�۷n��^�CR����Ki����Y"�=Z˱�1��mYR�ת��<H7�X
>Ӂrc��ǳ�Hׯ��a|�
�i�t��]����b���+�\�$��~
���]���i�bf��pG� Bch����p��Hm#��i6h�%2a���L��S��F2w�Q��-���e�RA�n-!/��5��Lot��i�~"��I^�v�f�!��7]GSA�e(��»�/��m��l�P��F��N K�*�9�/{�E�O0�	��������Y��jw On��F��G��K?T���D����vl穇��K\���%���=-��Rr	vW �h��,��b'�l�lg-E(>|��7_��;�A� ���Rz�	���l�T��W��_\?k�V�)�1O�zW�,�HHl�Ƕ���_K��T�ڡ���pA0j4�К��@Y���M5�&��~fƖJd�u0�p�Y��4-v��cEyZ��΃��+�::�����F�3ZV�8tf���|���5S��hcy�+��g�aB��]6�W�5��U�-�
�Y��C��MF�h�
L����x�:=�q�������?o~�l�(��MF��e[l���6��	M�X��J�i#�r;G~�91���껆�Nל���i��V�����G%^9-�)m*��x�]G&r�������`ͺ8>�n��h���L��w&.��"}�@;&��J�}(��u<
���d}�W��as��8�P���7�3?Jξ��{L��&z*hNhǤ+�>�Fr�whG�kPc>?e)-�#�\hL�*�
W:H ����u���<3�+���@a��UD=ܫū~4�d$�}�x�3����6�e L�f�yD����t�{`#C����~W�y��m��W�wq����g��*��g�?Z}�[�?�NR�U���$�.��T����,�G{P���$�!��W�)͸���\{���.&�y�N"v7�����HYv�ti��}L�u��w&�9LJ�I��(�n!|�[�'��N<3f<��Le�p4{���{��������n>���A���1���c�OV���f�+��"+����4�Ң�=�a4R���.W/��L�Ő���ئf�?coA�w�-p�6�~)?L�m�����_�՟�����߃Y��>��͇���r{~��?����ғ~�d�_|x���=��,��	���y7�.:h�	��;tfǸ<o$lV��jF��=k�cx�/��ҤLind��A�n�[�Ȫ ���׊��h_G2�^��o�o��_�d�b�5p�u��2�S[i�����#���p�x��<>K�>PdG�ǽ�{dVQ�_�m�E�	�WKIp��+�*��O�A����ǑJ�/z\.h�(� ��F�P�p�[ÍH�a��ͱv�p����G?ys �4$�^���2�g?;x���$�2�Ǧ��Z�v�FC�e��.�%8�����Hf��W�)��Q��P5���H�~W5U�������)��#a�e(�9��]TQU����O<|��2�w��zݣ���8���s�)��������` 6M���o����M)�*��.ȑ[�8�9 �~�t7�=�+�J�F�0��ľ����<Fi�;�*lYeg=v�o�0=yu̎Qu5�����Y�3�Z���(���g8�cA� �����=4_]���z^z8������v�������cV���f�ci:��c"�3Fn��ud�^�j�����%�$!W��6�獇S�9g�－Z�ˑ��-$'���]�� '��|s�������iJ8����|i�2�O|�C�o0@�#7h)U���{wYų���`�w4t���v[���A�$�-ԍ����U��HѷVca.G>�[�m&`�q�����Gn);�#o�n~l%_��b�<�`1���ÁyjVS��_�#y�U�1���H,�ZN���57R�#�Ԣu${�����6s��UL�5+%��;�)O�1R?��63(��'Yf�(������%�����t�
T�S��%���I,)m�%ZQ�?�y��d��k�p���ww?����"=��n��p��:�^�>2�j���.�9jv�hf,`
� �т��z�T�����̲o\��}��,a��?h�7o��Y�܉�Q���<��ZЩWFc�����Hz�#t4�̎��Ƒ^܀���:�s�w{#IX[�������$X�/�n��+��.*B%u�h�*dG�"����lG���X���h����ٳlaY�6�Ѥ�$��t����+Z�W7L��]Т���Q�����^o^R0ؔ$�7,���@�E:=�{,^�����8�A"�����ڴ}ok�x�&nf�z}�c��h,���i��CT�a�Ř�Iy4S�^L�﷛���~3�%-�Q�0H`��e%Κ��m�[Q�frP~��'��5����
h��nj�}d�,8N�8l޹m��y,�u���+�`V�;�[*�Ȋ`M����灅:���4rt��ha��<��]�-3�'j5ԁ�(=o����2r�G{�w��J�KA�c�s�rg�����~xGF��)������w�97�I�6�.�9K��I{@��y+�93",-t�^��$�nls�m�Ʊ�sp�%l�7��@}tN����h��aڽ���.�U�ȩ�lmP���K?�f���a��±�0��4�d��ؐ'�tu�ܖd��4S8�/^[j�Ma�é0׼�ؤS�ꁖ�u6:���vsw��̵��g\������ԙ�$��В��tѯhI䬉�8D�np��X"��(�@������aZ�h��
���3�[O7�}��Vqr��nt�_?�)�C�{v4K��N:*�Yz�W���zm���y�ބ��H?fu�י����D�����>ZmXt-��|���^�ʔ�*'?�����
�N����[���/x���ڛS	� p�?!��M8�w�r��Q
�J:2%U�Z�4�o����#�K�2d�SyZ�l���:}������Q�v��t��E�Ybz��sb�e��A�(����n��O�E�f��2i��?ׇ�������_}3+�?ׯ�N��7o>��?H��5b�ٯ����B�0���y��I�����]z�ǻM��<��$�U'z�3�\T&s[7�T�>�G~�]���g�}MI�\���A���ڴ�&��K�~L?��P[��?t2�tu~L�n�{��A��0���ď���H��IO~�^��(��0w��K*�Ir}�H)��xL��"�Xx��u�cz��<G�k�i��u���M*͍���p�PJ��Q�^FɊW���֘��<4A�ek�� !�Ƚ��xɘ{IF��|h�J�j'p�tg���j�!RՉ��	� ��\-�v�|�@re�z���4�#��;�6#ܦ���63�?K����h�uL^X�ʟ���8+����iY఻�Ϙ�o$��~sA�]������?}��ɽ�w��uwܼq�A��6��{���/����{�䅈�D��{�]��^M(��%z&�(��\�~���w#��y�Q��ɳR�x�4I�gb;V�Vt��}UÍ���F!�g�n�(��|I<=�y��25r��<ik<�L�'|L��7�o<�ں�(a�`\�H�RS�zo�ެ<��0�!网me��dϰOg���n"������\�q�&J<��\��G��^���5E)⍍M�<-�Z�(�-��<3��[��=rd�    �|y]HW�h��Ù(`"��T�o�w>}yI5E������ܺ}�D��3�}<u�2��L?(6�˿�O_pLSO��|#�X���x*�g�*��c��+����P���s���˵ϗX^r��w.݇XM�X�I�N�� �B�,��<'`^����<������QTB���^�A.V����q4(+����a����;F���*�)fkL�7F7��*N9��@Xq��)�*$��<R�|^�<z�
�Q˳���ƚ�E��@p��ٜ}�q��Ch=��ᆆ�ŏ0L8�񌒙��C0m�Qޏ��Lk��|�G�oX��U��i��s+j�(�d�D�^�wޥ���E9\��t�>�N#һe3�q�n��ݏ�������v=p�?��e͒뙕�1���T�۔��W�	U;ܦX�Hv�� i�܊������7��s$��e���Y/�"e,5�q�ѲH5In�ݴQ4T����"�p����#���*#ϖćw��{O��y?�
��]'ad�)�=筊a������XT�V�\�dBlK�yN�m��>.Y.nb�V^�6�~�K�˙%���޽C|o~��)��"����lBS�_eb�n��+�X�����j*vw�ԙ��Tm�5�Wi���i�6�?~�cY{f�%���L3^�����7�/�WaĖ��x��2��X��n������p������i7z���2� �h�ڍ�$7Vk<����k2�a�^�Ԭa"�:�Qf�8Q�v�[�����tEԿ���9i����%1Ӑ�_/��f>�Cn�k�:EUV�U��Yg&>E��|sь��D?���$���j���ܡ��,B�U���8�xTdHS�N�0׏�[�(^&��0�ɠ�/�8�Y��9XJ}���\�z�b��G�|7XCz��s��1����mp���Y�M2���4G�`.��5�bz���2�+���*��ٖ9�GRMl������/p̼d��"�4��©u�D5nD4r���pl�,rߴ��t�O�߭�Ǔ�+���/~������㯱��Je K���-}~�r���.�/��?�~`���I{���Nx�F0N̆!�ֿ�y�y>�'�f�G����zyF����^�t_w�������7��2���,zґY�ԗ���c�u��o�pxR����"�����ǌ`V���J�M#1��FQ�+I��`�YF&�2S�N�dޔd=K��I�������b.M���w��ޓhln���E�B��-y�����e���l��W���b.���*^2J�y�揾����)dY�Z�_�;�^���P/������A>�$]ѓ.�0\h��+.��ws��_P7/�����A����F�UV8�����c<�w�c>\-��X����	�}mb��qN�9�&�~�,ff
x?�=���+P��l�	z��Y����S�b}���{�U�ui��Lw*������εm?�FEأ2���g8��|��ҽW��¦-���(��
�{�����n�Ll�M�kd&�G�7A9��Y`vhn�u����[L�-���M4r���R�3l��ƴ��!,�\�]��"
�B�F�gU��wNa7���	w���x�s�IId�{�ZHI�7B���6H(4���
$�L�J7fQ}��g���7-y|
�,:P̘�@����3F�4A��m� ڭ3�=�,���<P���U��X�M�{��蝅�)?)f��Iqsg����L�Vi��L�
q-�1�8Q�RTI��$*�����O�d�̔tĻ��n�b���G�U���R�t	����Jn"{H�V�d	}��jf�wԪ��{�����1��]V�͌���g�I.ޘ�t��g<Uʙ1�xÆ��1Κ�hL��u����B#�&_�uq��b˺���d�N,Z�bȯ��5�寕�x�4�U��ƣ��pl�Ԗ/�X����̳e�K�cލ���x��N��J�;j�����I��`jÕ�c����wt°d�᫼�?��4u:kS(1P2�CIO�H��.xS����_��ԏ���W�����|�'o�H��~t�Vֱ, �6x ���Y��G��:�ڝ>��qUm��Q�U��|�r��}7�(�Ϧ�;r׿.O��&�p�{�N��|��Z�̋3�-�`w�9���9f�y<��Ȧ[�nC����mc3��Ȅ�<�N�hl��Pq��S{��Im�1؂���}fN&�&�"�g�p���,��| �{�k*��wO]i�odU�����d'-���>�B�'w��Γ>}���R�I��E�dw�K�(��t+b�+Pk2\�<p]��
�"��F�B�h�pJ.����| ����a�EI�tG;w� |!s;O[ڲs{g���qѢ�|����.��19'�qO]ǋj��^$��=ոeXҤħ�Hw4s{����ժI*�A�ܔc��b�hV�Z��=��7Ğg��ד��2)�S�u0��r��R�PQ���ٗ�2)n��[$�x�g\ד�oSM�չ�y|�9#��[
�tSm�3)�z����<��-pt��xe�m�����KKj?�X
iGr��4X�T�l�qM)����4��:�i	��=���?�*��S��U�-۱�}0�I�'a^!�Y.�kmˬ�������K�����R�ͮy-34�V���å�0O�<}cy�v��p�&R_�V�Eɶ���N�w��Hֈ�y��
&��Ԃr(�me9Ϧ��ʌr���DX�Z�����?���֬EM��ͻ���.����dw9�v��^�p��C��\ք-A��<�p�g��+	"6q�y�G��_��n�K��椼潙m��m�]���Q� {a��PG�V4��nUIjy��Ћ�PI�.9E�.��K��،A��]���M���(h��=؇hS;y(�A��.܋��l�N�D���Af8�;z�v�������v��������%�!��Ф�l����9I�_�hh�L=w�}���8A;H)˃3Н�E����ɋ���Z�s�h']�ƞ2�C�F˪ˑ	WC�{���ЭpP ��*7*���ԭ�9Ձ%e���'�JR�`����v�pМ�˭�l��>�p`6��=�$rَ�-#�}����	G���4�����#��O_�|IAvR�'��'�Ԝ�UpM���WS���J��!��N*3���-�W�o���̼w�B�zЗ���Y�	�j������͚3}���E�a������h
��ִ?n�=7N7eʌ~��МƖl9I��O"@z�)h��1��3�^h���J���^hUz���pB3�녪]P,jZ�	
��:I��J��&��U�	�%��9O��s�No������)u@#�۴oO�M6���QtXR��)$�Q�FL"�/�It=g�w�M�J�n�U�F���b��*9�[��{q,hF����D�g�>+UG����ZO�팙e�E�J��q���~��J}�B/b)e�3?�dM�<n���HyG]�?�=�.|�R�I�2x[��'�۳Z�m����̉{ڏgEg���녒\ɑ�#�~��.~aM,��?�\�r �x��qCPd��5�X��t�<��p���Y�ij�?���3;�O�t��\���ė'py.�f�V�m��y�P4h������2��^���{F6��H�8G�E=�Jڼr��eQE����ֹk6�:c,^�3e;H�Pj3E�V=�x6�G�@�<�4��k��MA���s��䕈1I��5������$z(N"q4�Gp땉͹�,�;HɬJ�p����:�p�#i|r>	n\d���M+;*��N��n�LB)Ȃ����5\P̛ܒ�o�����U���^�-y�+ �hS �������s���o��A��-�����ӑ2N�S���@�����/	�;��E+�s풿�w뛮���q�P���M��etE_%��Ιwc��6�hI���{���~�g�k�ϴ*D���:����ϊ&����Xփ[{Eo����I[�tU<��^��J��j�R{��'��s�=���gw|�n⫯��30qϵ��7�\���8�G�K*f�	fՔ9;u�y�����k���J)='��-�y!�a��8c��80�N�Em���=r�-�	�h��[f�{~3�    �$6r�+���s�2%�H&[��\r?"�כ��e���#�`St7llX�V>�%1��hײ����n�����&�]����je� �	�{b�XiG�֍%�vcL�����z	��IjV��{Z�u�߁�Z��kOy8�űL�UYqF�Ju[R��L�2���m����{�k, �dܩ7��n>�ʯ����;#�1�<$}�������hs[���q��W�ڴ���2��Jgk���Y]r�����p؞���z��t�h$i@�X[�aW7y�/GF�^���^�f`�M^�:Nv�|����U-x�OE_@�ae��M؞��+��6ʿZ���J�r�5�k�l�p|M6FM-�.Eҫ�Z�jyWwK�_~�t������h���+[�BRf-u4�{F3E�bQ��[��:��K��Ywy�^�V����F�Jf��T'�ձ��c�#�f������`Q���d3�]~�W�i����UwI�^� qa�1�Q��3��j;sԙ�.�+��ȚO���.eԫ�`qV3��1���ZR�n�;7�s�*O�����2�bL�q������vj�$�Qw�_�?y�ha����c��D��=9ʀ�K�*4�VB�ر��<C�IXZw����� �
��u��d�>gr�q�Alq�������"��k�W����4��y��0����.�׸NvMĎf�[��C}�ግ�gb��$���1Zb.F�xݥ�z�� �}�������0%RS|��R���p����i-�x����~3��d|�+S�}ǉ7�I[�Ui���c�X' E�T[�dĬ��k~��~(����q���D��M�R��d�_�
���$�a[�����E<f�M9����=X�;v���U�OrF_}�a�Q������O���*5ߍ�c���R4���T5_O�����>�,��ٍϾ���ZR���,P�hEW0��Y�st��8.���ȍ�5��ݾq�7=��0S��vw��ŬP�]�/*�YU�k���a�Q�{Ϻ�mLRW0���z����5v<����lO^TR5��O�wkq&��BY�~?���Z�� �>���	��;��5~��Ub�u[���EE�=8�"]jMw�Rl�<�沄S�4b�=,ك������$�+�����	*��Ⱥj������|8�,���:T#�}W���t[��]��:3�B�u�-���Mb�Jb�Sm�n����T�I?OQnmv���_�j"U�'��95&����v�Q�xŵ��,j+��U]�c�
E��lQ4�S��9�CgykQ쉐R���:�����)C7G��m�w~7أ��׻P4wʝ�9���T�hAGg�騍��4f�2�X٥�h��5jWpx:��Op�ϳz�ʹ�O�̯ge�;I�*��b!�9{k�@�sy����%b7����������~x���7��E��贴�3\}jAq�ym.����"���2������62��/�b0Q�K�S�<���m�w�ǖ����{��ޮr�NM�p[EF��h~�\�́Up�yC+^e�8Wf}o�3��ᖄ���jG�V�&^�PZ^���h�#i58R����߄���?�
��Γg����.��?�{�4w��ދ����.�e��!x/�_.�Y�b�����]������<�eu�i����[S(X��B:{IA�A�L��^5������z��/Q�&�Ah�r��[��8���y��Ϥ�RSaf��/��%%�M)Wf���?���mCa�^�����{��&*�OAi0*�-ڧXb4�:�:���~�L<�f�մ��%Fjr�d�-�O�ȳg?1�T{���3����LY�����
k��0�?n�N\����A�hΫGY�����o�J5:�/�T�a�J�
��hv����3�}�*���Xj�K�r5����B��એ��w�
^���b�5dn��)+���v��m�)�h�|+���ƲS.�hm������S�^k5�yD�-;�-����4ֵ�L�����i�w#Y&`��2�C���v���@��S���ܾ��/�9�E5T�M�[��|ui�l�Qs��k�ɣ�\�Y��hA�ME�]ق���HP�n�D��K�@k����̃�%p�"���gV%T����E��(���i���i��4�tQH5�$���3f� ;��S�ܯ��2��i�:ǌ�6ڎc����9I�_7��)�C ǐ�n���8����R�J���n%�}��Y�&f-�Nh�n\7���eq��&ڝV����6�ފ���5�x2mkPj�Z�=�����
ث�o�]M��4t�>���a��a_<��9��Ծ�������9co���wM9!��z�A�3���Q�����2B�,��n:;7�A�_uFk�]=.�
��T���݈
�M}�ޒON�Q���M�	� -�3����7���\�X`����.&H��V�*�k2�>R�*��e��+7��V4~�#��֦�#��F�J��#�U�G�k:�*����g:����jn����8�0�(�����[��̣�:��_mn��YA�O�2G��]���ǥ��umb$	ݒ�&3���A^& ����Ѻ��'E���B��dj��bZ�S�@5ϑ���
e͕��&N��~��HdC:���R1t�R�|�5%�*N<�%�]�{cdo�,�G
l��a��#Z�|�%j��y��=��2�b�Ew��e��%N��y�5A�.�)�v�$�x^�m�"9[&�(�����"	G�	�:�܃ˎ�䞵:>̌!x!�e﵂#��"�g�#>0;sk.ɞ�YPyR�i��0��jգl���([��@]��2�M�#��@��&�m<i�CqsT��SP�1vj1��˖?��lT��
�]V�W�y� �bգ�u8#�1fTp�	�)�yj�TDM<� .h�y�닜����Ϡ�0���n)����c��V��;Z%��U���v��[%�Zl���\�JV4�#N������$G]��m-#Ϸ&���7:�p����VR���6X�0�~�R[M��_r��;�'�ԭv���3�l;��7��wǤ��K��_���w��y6gbwŠk���Ǣ��rT��	n\?�p"o�6��"�(.c�1C>x7��<�Bq��q���)+�������t7uѩ����"W�H�'6\ݭq�=��e��Ԥ�{w��XA��	�bYiJ��)��hjxwh��J�<A�)Y?#��4K�l������ $����H�9�̖�I#�}9yN,��ɒn�~3�,�i�0	��J��M�ݝwE��^B��&7��~7kl�p�R�,�@m����n|ǔ��ܠO�4�q)W�Js(ކM_b��E��]�
�S	7a�xA��HE�/o�L}� Ovh�Pt̉��a@�@~��㩷�]ƯW�!漐:�����.ZM�Cy͈6����<uNk4��wY�^�|�# $Bt,݄�0~�.pL���2��ߡ��>��Wd(�p��>�yk:s�ɗ��`M\�;�ƾI�p
��2 /%@�k��&��ֽ
�`�{nA�M�r��w|�	.�w{��܍�v�7u�NxZ�]��WTd��+��B09�y릴4(ͅ\�9.a��LS�]��I[T ��0A0�	}/�x�E�S��r���iV�21&	2�~h��
����m*z���'��T��CۻÑK�-��6~k/h����q~7g�up0s�]E9��nK�6�n��t��4�b�`�6���G����� ����G���ܖ�-����)�bq������P���yK��H6o�*�w�g��Ѡ���8oc���%oŜ��?a����;|7�lw�_����<.��b�.��`�8wd�rW4��wPx���Z��3K�2�znx��AB� ,V�n|�	����U���oo����2:��hǠ8�R��Ho�t���A�f/�ݔ���UP1p���J�ƺg��:�34�T�1�'6� ��t%�(�("s���:�4��(��tǌ���X]�|ό�uhl%�̰:y����-yɲ��I���(�l`;�    es[�<#�jd�-k�#�>���<�&�c�r�ҝn��<}<��{G�I�����剥�wu\z/p�;!P���:^���L�r��;�W8cYL�W_�rX�(�K���PAp�
����#�5@�S�7{)Ф�`5�H��t�~��V�I�o|Ou���[r"�&��ϗ	Zkc�%�{J�>ْ�o���U���+��7�0��.Ä��nS��Ǟ�!�H�?�g(>��i.��
��=:����3=݉���֚'P�n���G8�e1���)D���?�I�1CR�I�v���pYeN��΍�����L�hQ�w�m
�+��!d�n�=A^�p����R6L��pUΠ\�3�hqc�
��A^�x�$b�-��� ���;9�.�n<]�"~�8T��Goܷ���OL=E����5ؒ
�����`Ml�T�D%��ò�	�=7�Wf2x��PBKQp�Zp����g��c|�)c��;�T�2�f�q�����(�)6˸@��(!7�my:C�
7���1v�#��v��O��M����#�B�-e�G�+�.v�vǺ2���N����>7�EI:}����l>�2.����$�biM���[������b7�%C�rcbȤ
R�e4����[m��b(�X�I^G�@��ƕp���+�̎e���B�k�5-c����LP���n��Kp|)*�٢�Ȧ�,���u���v��^�Xpƴ ��n�w\go��E^"C�a�a�;�s(K��M�ۃx�T�$Ю'`w���xT�W���y�M����j��[�I���3�����+��s��M}.�l�dH5���e5~λ�8?�m�{��x�p�ޑ/V���-9ϻ~0g��YV|� ��9�3\5��H!Ec)�+�jYf�i�*����}�'BD����K��ݼW��E�SܘFE��)E��\'������F{����:�o��+��US}Gt�p�r�JY�w��'��"J�¶N��q�ײ�QmwL�H��D���<R天��91���+�K�ga����1���av��ty��~fb�Ki�w��
�FC�)�0�~��o�x�)�d!.M��7I����G���8�
��w�u|�`�(�)��ũg��&��b��S��5&��.'�綨b�Kˤm��{9O9Ag9�����+Ut��f6���� ��BPE53�Pc�J)�6�R���^�ɏ&h�6G�u�]���w�|l2KE�U��j^G�W���[#o�'�Ƌ���Ӽv��Kx�3�Of�����%��$g��W�mڹ�]lWZ�<R2?@Y���Aӡ���"���v\a�NLK�Z���F2��hre��V>���5��<Re	$�2�o�tf[��I������� u�%\b�dS�V�G����s�!���l�Nk�cW6�x�o�tZ�xj1hV���xc���㉐�|�?��t�F橢D�x���@���=C�9ڏq�ѵ;�3�C�ǲi�k��sd�xq�P�ÊƞC�%����<���x%�Z�x*I�]��;�,�8\�Z�7�mW�2e�?n��9�:,�օ��=��:�EMq�q�8�F�ؔ$o��m�Vd~Β"0��̝�x�.���v+�{f7S�P6e-��]wSw^|1~.�I�D�%��,/W[�8&�<��N%�1���F���tmZ�FX�x=��O�J�ѭw�x�К�0��y�k�p1Ml�If<�_[��W�"��]�l9�.$)��]/8���л�h�@x)�h7�B���];�-I�gV1+(�/"�v���p0���� ���D�3!=v�B��Yշ�������R�Ne��O|N�����E۹\S��@c��θ�&��p�ļ�M�T~�����:93ж���'�\2�P�3�8p�(ᖊ��2FN��.���� �9%L��1��J�/ODO���K�9E�鲏�147��@%/aj��T`8jk06�2�����-Qm�W/���!0�����T{{4����4�+�����FvM=+�d%��	n�(aYU�lM!���A�_��Z?�Cs>��2�4e����8��.��gdJ�H׋{���7��	f1W�uy����W�|��o������~��x�[����S���-���W����O�$�#E�v�?qvDF��ʶ�^�T\Y�[��.��2�徃�9R���oa��e��s�>�ҙ�6M<s=�"�bۻ�R�Ro����L��s���pf���M���F
ތ%�iv�Ff?B��4���2�v����4(hW�,�P�w9�@��Af	hH%V�Vh}
��<]2�H�tۋp#9˒o���*`�8��uqZU�A��/��_�Ҵ"\y�e�޲���=#�T�ձ'7�[fD��7�8G�QI�J��?����4��������H�Z#��Y�yg/b#�$g��	';b���2����bi[C��H����3�bz�0��yڪ���M�sd�P��_��jF$O5g��+8��rk<���>1RƱf_:�n���l<�
��_��}���@��,:�s�k�Y�6�x��Û'�{����^oz�z�E��G������SH��~��鋒�"M�%Q�?Î����*N�d�C.��3A����"O�����mh���Fp�8P֍��@��V�|v�ݗ{��92C����.���{7HভS{N���I�(�FN��>���v���;4|¡Pj%��~�W�����ͣ�Vs�*_���^���Y�y�T��Ж��˷oۻ�ʦ�F���|\fS���&��L�7�m��=uv��*���a���)�z��SkY�� [ݛ��ϭe9��g	�I*K��;�ד�(�0��p���f��p����mB�2�C���2�I��F3�'��)����ոv;������'�`7�.��S�n��\o�O�Gz:\A"C���ȓ�9*r曤���,)>��]��pO�N,f�τ������h�Ԓ�J�i��Kᆂ�B�9�1�w�.�Ҏ��FS��.=P�i�9yK��nv�e����h���	����y�ڎ\��ZK�>���rF-��<]#=y��X4�+�������(:�CB.VD��^W�BFo�� N1�WhvjW(��w��4ln5�o �NW��ۺþy"�N,0��Va��]���/�B��c�}d�Q���O}c�Xe�§v����U%j��t�	9��	�a��rv�E6�����ԛ<�=�twx�r�#I*��6��a�ȩCw�,��'�S
�9bS�������N��+����0{�A�ۮP�eJ���)d
��̖� R�S/�N�ѴV	�?L	7T5WT@�t^�!�C��'y8;e_�"�v˥L�K���@�i�(�x��.��^�uQ�~z�r�N�^���v�w�sͼ�ȳ�,oq~�W�>���p젪{d71Y��L��MDx˒S{Ѧi�v�P�8raʒ��xhXA�_x��3_���)d��x���͎.ϟ�T9�2pwL��Y�X�[���/��D)�	8��m�ӭ
"6�sǌ4���8�&a�y
��{U��ʒb��Ȑ>�'�icZ
�[�Jmvg ��8�h�aQ{G��k�����	U�l8X�ɖ��:}�k�)�_��N��0j����c�s���D�$�fD�e)��(�!{W�*��uw�K{��G�V)�.�TH�4BDM��'2!��cc��
}�b����|���w2���kFkIZ�6�3�f���e����H�ys��婱__%#�N��73OF���O��p��n��.~���C\1*��볃�%�ܛx�?�yW�?�3ԟ��rG��EM?~	?G����sD�9�����Y[e��iM �L��4*2_��K�zL�髰�N.�^��2��þ����0v��3�'�2��prr��%n��}kh�S3R��8�gr�b�*ͬ��Y�'���REY�4�7���^�p��k�9��8�N9�r?M��C��3�S��Q@�՜p	jxһ����x��:e�ѭ��R)����Z�EC�ԆN�@��b�;.q��0�����8��,�{M��z�} �  �P�gvF���t�]>�@C-�rvu�(j��t���6���N�C��:s�R����j�n��	f^��$�^�R��1Zf"^�.E�;��Oa�Q��C��7y�X�y��Xw8�z������׽��ݖ�m��K����%��C`�A�dM��X�Ka�(�&���H��Y��m+�N�WI�#av�u�Y�c�[8����^w4�b���+B�'d��ٻX�.C�K�4Z<�5O��W )bB���j.������%Z����Gء����%	|�&#	l+)�����t�Y�z����R��7�����C'���=��`�oI؉G��&���v��qfm��Z��N��QUݚ���j�lK�hrD�)d��3p"T�#g�y�+
�e�U!RQ����5}WJ��@#G<�HEB]����bߺ�8���\��?
*�ǯ�4>"p����h�$�� .��.�S:��M',�>2���̲���zI�7h	�����^�y;;*b"Y��2��z$�B3K�䂠�z���$E4�o��S>��)�(�:vvHz���6f;�3_�{M�������rW8	�����Wo���ʜ��Ƕ�
��W����.���H�D��yl�ыA��1�J�5�#�Q�[4����N��}�R��<�\]F�=W����9���Z��hyh�5
�W�봋�-���}	��͒����.��p���B]Pu
�vd�4:�ES^��m���@�V���hmۃ�X%m�:3Ѯ��^k|��<�����3�G�y�u;OB���^��ޢ27h�l�=����>������\Q�^��	��5
g�����������2���٥h��#8x��/Ѻ K�I\.��f�bgd�.5�-���}���Ѻ����"�R':(�����Z�{h�;*�.�:o'����= �UÓ��7���uˉ�Y�R`e���h�VZ5j�����>2���"DߪS_�*Е2�u"�̑�d�
z��e���M� ΎӒ�/�^#�̍�9Ǿ�"��৶��A��z-Fy���ЂN�F` mv��0��َ(�(Pm꒵��g��
�o�/i5]m��Z��ک˨�;�2��
m�z��������c�:/u�B�/~񻯿��o���a�?�������Q��#�ßX��Ǐ����>~�}������������M��C+$��%�O��4c�%d���7T	1J4�O �ԡ����L�I��������6r}$�F��,H��!��ٞ?� �����O�v�O8��m�K��;� ������{Ƨ0����v~�{t'f"[��6�?ܽ�G2vł�@��K��`f�if�w��ʎ_1��Ղ�"�X�!�͖I�
*Ru�LS<b�hȭ��6=�����ܥ���^N��Z��Ͻ/�#YpT��9|��t��M!(�z]�^�N�5Bv�kH!n�|��5�#wh^%��u!�����A�l�X��4*��9T��H ��PщA�꤬���+����J�gBY��n"���O�SA��B�#N#�v(S��H�r�'�=���gu
%��|��b���;��9W��u57��ڦ���yi[L��ĲP��c	&��!ݷzim��ׅN�P�^�z�}�B-#�p���	W��-l5P/F��)2.424[���$�1[Do�Q�V'������־��V���ZDU�Pȡ����`ȵ(�ϐ"iK/����?���Hy���YݢU����yuN����]����K��G/=��Q��D���'���'�� {�C��1c�Î�ɶ��~49��
�T�i�B�%+"#mVtE�\��y�љ/�C_�b2c���h�$4�rZ��e�$Y͉���d�Ń��؋ �;��S9r$����0ҽ�4�TSK�yu0�¾�{�����Ń?V�7
Mv8^m��ɑ��K�����5f��s��{)�6ۜZ��h���;gJrﳝ&Y�},9Q��y˲O8H��5`�u��d��p1RN8�ڲ��4Hn2+,�<`�W�(*B!e��B5�捀��)S�`�I�vYFWk���ȑ��n�L��|�JM�!6���m+��<XFAvΉ�S�l���������$D���~>�^�S���S��yyk7pf���HIj%����/��?"��W      v   A  x���K�"1E�al���8�"ެ-��u�M5��'�B��8'7u�)��󛈴0q���\��.�G�̃lp��aъ��ߠ>�*kp�bߡ1��f�_��"Mk�3��W�_Q�A\��S/q����ǐ^��K+}��VU_P��{MRſ��)�E1��A�񳽲�lԪrW���U]��RX�(,߱>�+�����mR����q�^xW(�'ֆA�iɊQV�g]��jmBi��ʩWV�L9H�g�l��Q�n��**�_��z���e�Q�*�,ء�Uoe�,N�'�������ⱨV��ʪ��텝c�is��ʪ�=kL���b�WZ}�I�U��&ؕVXA���J�Yi��^�ō���5<��ݨz�l�Y�zY*q(R�i�f���ef:V�"+�>��p���z���
l��"5d#�Qt��[�B-x��-z,��c��٬��c^Ņc���@ҵ$�9�]���-����H��`��8���n�ʫg�_�g�aq�1q�j�O6��
o>��=����+�X����v�眕ML�˫��=��k���������F`�bǴ�m�>_7�
��A�z:�� ���W      x      x������ � �      z      x��}[�-�u���Ẉ��F�K��G�!�< ��!HL�CF e�FKE:HB�Bʌ����S�.���=�Ou��s�48���֪�U� �U�! \a@~7����xCq�J�W�!���������{��������}��?������������V�}��?������?�������߼�ś�o��_ۇ����D?����럿��;��o�#��o����}���ΧWt��p��x���t��J�P�
������r�ta(�Sކvl:�ӑ�t@P��W�Cɩ&XD�?�n����H�nCO	!FH���@��p���R�9.!d|�B��F��;B�����?�����</�|������/F���*��э#�i�Wz�5�&�恋��"�zH�5���P(�=����n������Mӓ$�%�lm�Y����T.e��G�QL�	x(�Dog�Y`B��:n�p�A%b~4ΠϜ[0�&�ƪLL���c	30|e��!3S���9Cib0��z�PS��%�R�=��la*א�4q��@U�Qt`TQ�%�Y��
���B&5`d?�
og������30���D�3��:��L3�$� Xk	o_�{�P�֢l�m�I�lA7��S�a)��!C��,��/�$�@�H�\�PU����{?��侻�Z٠�|P$d�0����A��!�\��-P)��=��R�&�D4)�D�� �2�-��1�W��j���)o����о���i�|�߼�KA�_�t�ՇʳumG�:�*>����>�Ԁ�e� W�Gp��w@M0UFn�0��U~a�,�����=���k���g�ݽ��[�o�����k�[лXLN7�e g���C
�C�L�wV��A�}����ŁsYy�ԌJ��u9�h��T߃T@��}1�
��Վ���X�������|eL��2�+[�������W=�t�)Uϡ�|)���L�7�!�M�)շkVs�.�d�PE�n"���w�\����"�M�jQ} [���j`P�PB«��~9�貘o]��Č��a?/�(��|?�f9#�@UL�e�����"ѳ����~(�~UZ6���	Q��l,~1Ph pV��H��v�@onD��k�C�6զ x~$@V�Q5`i����H��
�F+BpH1������IVC8!j�Y"��9��R�����wĹ ��0Z�B��.���j!�E�E#Y�P�߫gJ��(^��<Ⱥ�T�:�pT��pe����7Q���c��a��3/.����	�y����;��!�_�c��5����/EPۚ��� �,q�N\�8j��>��N�����&R5~r�k�b��G��$J4q,إ�a���>�\h!��s�x
��C��V9�c~j���A�Jk�&�[8
�W�4�a1�A�����y@ʈ�U��|��V�%���:`ф��v8S�jҬ�� �r���[U�Q�}��I��6�4X�Β�:��qpwË&!FvN;��-V4��s�jd�si�{G�Z�i@��L�
�Qh��ᇪ���
����Vկ�&u�]����?x
.��ug��b�h��G�S�4���KU;�����g�oCy�8�7#�	�h�~j����И�PD�9�U������b�d6P�s;�1�l��),���PC5�h�Ѝ5
�Y�]�uM�*q�  yD<��i���e��(�`͝u9��n��p����(jFG��>W�ܪ�����/X_��5��3l������lX-��A��Bq	4��沰�G���JI���p���f/���<A@?D[��,�1 $+v�DX����3՘%�<ŗBJ~xUxH9��])l�� 5�}�ZPrD���«n��j6r�����0��<p�k��n��68�8faM�;�΢�A�S]荾W�[e�ØP@G1�~IE�y68�{IQ%3�S��kt�1O�RY���BHm1�3���*>��P1�W/�xM' �1�nPl�X�+���C�$���!�1�̠*X���=h3�m�}���P�IY���t&���4�CG��P1\>/a�1�@6Oj̴5�<}d���C��-`���s�[��0�.���ļ3B5c��U�殄�pћ�tv�
:T!rB�)B D�~�����ĭ����!G����O�w�E�$$����	�	ф�����嬇i�'iyR�Ђ�Ga!�8���p���i����P���xڅ�4Y=�1Օ!�ih]2��r�3��Ѥ�A�j�+C���T�582T͊^o�= �!0@Z���m����G�M�X��:��g�Hf|V���*J�\�j��l����#}�L����Q�U���/|i�ܓ���@L�E��\�������.?��A>`�?�_�V�^�*Nt��
�I=�����:�r��hj��W�#1�w�Aߤr�i(U���r������0!���.Y��l7}j<�+��G��������;A�+!j�aY���Mv�����Ð�a#M��m�c<p�xjQ������RP���Vz2�\
����b��f��w'�v�5�q������_��S*�����u�ԃ�����AJ)������R[����"]��`��Ѐ!P�G\z���+�Z0Y�L�[WI��h�sȱ�qI��ԑ�t!�`u�Cp aL4q�Qt���ٵ{�½�#��Ύ��M���;Q�Q��=�������;��3�De���5]ɥY�X=�#%�R�wŖy%�\�f�*�ӣ%�Gj�n���\Wf�6/���# �nb
�Mr\a�G&6 b��,�x�'G� �4��2��M�e�,Fu�?�,S�1��sKTU�9TfAXU'�G�s	�҃i8����ؗdVA�B��.�ghȭ(9�J���F��9>��*KEh@lҴۘق�5�5�c���۝��s��w�9ɇ_M9�o�:[�h��8�v.X�8>@�k��K}��;IҎ���VRYH���#yLo�	�)�3���B@�[�Gф�ZM�ZEoQF�+[�B���Ǟ9>b�CG(�>Bt��S͕���+�F�VG�zɋ]����ZO""FĜ�j�'��?St;���(�����}>�B�>N�P�R��
J%b~��#�G4�܀as�F�G4Q�K���7(1�b���|0�iTj�$�4(/��uN/
O棃��5���ȥ�x�;m�$L�B'[�Hk����>	ω,6�ռ�jR� �b�xw{��$ZH9�5,�s[�V��X�DLJ"�|���#([�ף�'�x>k�Kϵv$g?����M�̢�H�v I"��o�Y4�GA�H+�������jmE���v�a�!�X�Zl���8������J���t��v3
��$�c�%�2���T���gQ���4���n�m��Q׌S���L��j�5�F=�kj;���ը�s�_�ZM�(�%����������,���M��}�7�����S�I�=��+㒘�N�1�*�{���b�yqoS��=@d�:�g���fy�c��>�*�sH=f̽w@K�	��eI�L�����{��n����'1��E�L$�������+� ���]�������$���t��H��5�<��XH�zh2�\tۂ�dv��8Zs� @��x��4^h�`��5f;Bb������Q��+4YH���ԁ�%��,j�B�`��j�(yFdE'�[�Q�UevG������>Hf
��n��+,��9�S�('����0�y����`���"�{F���֓�������!ѣt'��c5i@�"`�����'ȿ��6i@�0HC�7�똶�v;+����~���<��w,�>�NZK/�A��˦�,��0l�I�����1Ij�J�!ʆg���Ǔ˼�|�Ƈ4������K���Inn��~� w�ū�Sƌ�^icA{��Ӓ��Ș1/���g[_e1�{���ʮqh���H��[�=#O�m���C����\�j����.B̙����M�A$��*���� �dZ�+q    �c��ݦ�2b���uv�t��q�	+�:DYP�菱�&�i���l
�3\��]��ˊc�X�_�wp�c�[�I����0dmP�Z�?��`�a�q�C367[�t�n�����r�]H�/���	�w�*7�Ų\�����ZkZ�jm��,ks,�M8�cV�Y�U�.n󔬼���a�aL�e�J�1�Y�4�s�a�����I�e����m��S;0����k����zR7�)�� m�����fB��v�k�{󯭀���}�}9�Χ�'(�!ѻ��δ�ol���e��4��t?Zf�'�$Ob^K8ɒ���6>�
�A�.:���G��f=B*}��,A#�Cf̲7�hsG�o��м:>�KUa���=�rU����^������V��΄�,\��*oCW�橽�[P��CHT������a����M�ƾ��6fQ�B�p�#�z>L�(�T��K�u�&=��͚e����y�;;���C��b�,KJ�����ևֆ����v��%2� 
X���im�h�)YH�v�)�R I�H(%�Ȫ��g�����.5jҔ�G�=O��Y��@���HK�����Y�t�p�j�Ȕִ�� �~r�k�Vj���'�e:� �I�U�.�`����A�W����=��i�a/��k<c�9Mb�4D���_\�.�$�e��l6qW=D�]�|"k�����ߏ�i�!`B�����D����FF��1eUw=��]l����l@#x�{�|������"����g��&Wh�|NQ�ڳ�#&XGԥ�$��?δ��BM^}r���g��f%@�ݑ�cr���֚�`!�X���7&Z@6�O�&z�х2Ʋ&�-�z�Y"�/���y�r�X�X�R]6����4�a�Z�M�����jǟd#!��J�?��l����Qr�E(C�p7�e�Lrd��iXsk�homJȹc���OІ�P���9Kn*±�f lp�c��u�����U;��S���l����*�K�Z��������)Y>�'��$�v���8��C5�rM�,RV��2KV��q��Q�p�n������t}���?�`r�Ǚ��YP�J��A�ʏ�i:N��(�8�\۷@I��f��|���{��e�{P6��דK5�F�joڬ)6Б;w_A��d�u�oE���5#�[ߢ1����хyP	��fXɔ3�2�*;Q�`&��i�n'�5	F*ԡ&Zܟ���l�N@����Y��BO��� �V���=��vxʒ��aZ����<�	cl����Wh�6�$k����.xbs�@������8G]�V�J�{W������ɗ��M�W�����,�6�CCm���G/vTB	)���qBqq��L��c*�Sg�'_^k�p�ٴ$yyl^�A=ibR��$�_�^��r\�q��r�������I2����^N�^���ڂ�����;�/�:�#ㆻ⩗G��ʆlezi^��.��s�v/�'_^ �{�.~9�Q����3�x`�ܑz���x��5�~���Qh_��_�|(�_�'_k�t����~� ۗk��R
r�OL[�"i4��W�T)D?��Yx����!Y��@l��ah���r�
RKV�T9��c��#�\g�<�Cm��\$%���
�9�5^QeF��[��Tz�G?C��˯6^���z�M�_�j����!KʪH����>9C��g�ܺ����x|����*=݀��Ap� �%�h8+aJk�ȗ�ޮT 5�]I{3�1�<���3���1��>@����'=�j	N�H���5�UJXb����o���2�������I�B������a�]r\ąg���u�[���^!��֘|Z��˺4d�6]���e�ϐ��-Y�5�)��f�S�ܩ@�!K�:�!���)8]� hɊ�M�P�l�gD����-YVt� ��L��DV��,�ݥ����(	���DYP4� $Ԣ�g@֣kk�u
�1:S68�w��~1�5�-c�%���?��{��ɵ��X�rE�� l��Q��`��BE{�w��'An�'qŢ�:O��I\�v��â2nLju=�������W�LΥj#ȧ�w�]��g��)M�zC&�x\b�/1]çܒe�Ƶ ?����d��O�!KQ<�i���u�nL'!T���!dO	���bSx�Zr?�U)��;��D9ȣ���3*��FH��b�R��"#v��I��曻k:�]zQ�h���v�K����v~k�w6|w���K�vI���o,'���'Pbm��ut��W�p2���1������dġ��,�)�r���"������nleh��J��:�s�Ŧ�����GU�NWX>��{�������ӊ�׿��I'0���b�}����i
<������| �qc 9�ӆj��)O2��OaY�J=�����4gF���x�vj<6_�A[�>m��l��� ���I��?�a#���  $q����s*'�v����&�F�^��j+8�����'u+$f^طbR[�u�!^��Mp�uLqk�)]�,7pG����tLwF#��?�ѳLo'y^f��'A�����!z���$��O֚"�;V�%%�'*AC	t
�ҭu<Q�h���[c���g��@9@G)�Cgz? l�C1�n�����o�!���j�r��0��᷹;"K����~��d�O!��n8vn�:��1����{9�C�=6���X����S����Ɋ���{8�� �#�ϯ�۾��m�y���x����P�Qp1���}w���rw����#½w缭�^��Gɚa�iK�}�λ,z���S_�օ��e��pwA�c�';ZXbqCf}��TE�+�gu�R�1AhI��㤍�#���e�GM�G*�q��崽�PU�)̡��ь21����Wх��(��g�_�0��~sh�1�b���68Oea��rF�M�r�<SC������ᗘ�P�-?q��dY59�Z�G��R��-ϱ!K�NՁ�
c��s�Qe}h&gX[���dy��T�0�t���I�GA='�<��s��ڔB�E\4��޸�[48��J�d�+�_���-\[�U�2D#~7��+"���$����x0���E���JuA"�*/׮=H��d�]�v�����v���UĖ+�n���	��ZO�i�q�1sv�: ��5�h��r�/(�X 9 jX�%(	�����`��I�Dy���[��A�-��� ��5�� T�Z �|�\b��:owp ��b�@�[�/�r C�PCpuɨ�u�w1�о_�Z!���Y�w)�� V�m��ѽ�, .��dSߵ�U��: .��:5^�P�f�D� ��V
PU��`��S�nq.�B(C��W����N�E��Ck0R�`)�U0� �>4)�@�V�-�S�v���C��n9�f�ecu��^�N�%��C��9��s�{���IU���bW!��?Nv ��D}�:�o``��հ��IJ� ��rX:z) ���� �>���pA8I$-������: .'I�# ]���n'�# ��϶���J@�`E1
:"Lg��� ���6MD��6��b�[1�6�)Phc�����\���3 W��
����2� l^P Lq۫��f�2� �#@�V!��[��倧�i��K�o96 ld�~[9�%緜Z �,�vm[xq�-��T�6���f����rid�Dı��: .	�� <V�	7V����6� �f��3���� �� T���\{汞�~�����:A�jik���/��Vj�&*��M/4���d�ECI��������Am�.w��{(�x�6�r0��|8f���e�����Q�11
�C^�z[9-3O����#Z��`��A�Ëu��r��u \�� @�Y���� � L��.�s��7��c�	 b�6}l[��K�n� �����U0�%n��f�6_��)6 �΁}�z����0��g�g��Z����a�B�Q��6��?Ub ��� �M�������0��5��8h]��p9�C�~+x��� �  �^��r0C�ZYA���) �� `%�@¢m���r0S mLj�zc��� `�gK���l�u \�� 1$F����p9�S ټ�T����[ E�t�ɶ \� �6�!-\���\ �����6��f��%� ���Xz������@@4B�	!�m�쒰`����.��A����P���23��QvIX��:1�rn���%� �<�"l�!�.	Kj���j�X#+.	Kn�8^,n������:~[s�l,��K�2���Q�(�ycaqIXC [Z6l8���B�~k���ʶ�4�� �� 0��\7N�*.+� �fi�l��O���- ��\7��U56 �6�B�����궦 Y�N*yc��?����TJ�G�Ķ \��ȖG){d㠩���V�BT��lMs`6�
BV� ��x��= Xsi+�O[ > �fS!��� ��9�6S�8�|? �Y�ȅ6���� �dY	�����z?��8�t�́������C�C��u � l�(�t�]Y�����6Z��� ������O�8�h��6�(&�"����rwsoq��e[?q
�r� j�&C��,v�c9� l�p�5�w�\�X &&�i��c9�c�� �P��zK p,ql\��)��:q�cA� �GyƸm*k�c9��WY��M۞A+*A�F��t��vi��QTr;�B1�=�FO10����ؿ�ɓ�9b��qU6��<�z�X�*~l��dە.�x(k����������7����X�尓���bcw�Ґ�qRD�����Ȣ!DʸoP��Qs�	�c���k Y�ʶ q�i6�@��q��4��7K�2d��É)v��Ƭ�������'��}��l�&-|�/h��O^���jl\���ӆ���v��0����Y�����qTHYܬ��p�����k�'���O٣��O��t`�4����j�J�����������su�*8�wt�«�J��n��j��:�#��"HX���BG}����C�۰h�j	�	$�~O��:��/�3�	�������� 9b�Ŵ�n��#0�l�ҩS��4�28���:��8�\8�L=���Z�A�<Sl١ݔa��9ُ�?P���4n'C��߭�����#���U��b!�$j�P8��N��"ɆdRH?"�~t�_�;W�����xd�ID�-b���{�6	뤄<����e!�^��Y"KE;MD�h"�Ő��(���X�d"B8]��_�& yX�����n���8�l��T+��@u�_^� �0򶜟M��v������T��:Id��{���1j��yI�f�� ��`Q�s��nDo��
ՇƮ�3HY!��Ϙ|):JP3�m��|�/���׻���x?�i뿔�}1�ƒ�7ƽ6�~b����a��~}],�Ǭ,��o��oce����J�٨�u~~LŌ�e�Æ�g|֬a����]"ÊM|h������o��������E���w����d�      |     x��PAJ�P]����&����]y	w� 2�`p����Rd\��W3o����ٸ�ʕ�@�{��<r- VXW�CD���kPY�lT^U�T�T�*��yT��l��N�ր��\,bwp����'���1R�Y�ܨ|��
�#KS�Vy�yj�<!ԩ��:�ʳ�<�Q��]r�i���V�`p_`S���u�;�el�9�!����s�	�I��|����N���K`B�!#�mR�פx$�P�s!��;�e�Ǳ���2˲X`      ~     x��X]n�@~�O��������x��W����h)?�P�����BmU��V]�f���8&N�;�?G���vvf����qx��������5Gx�h�Ț��R��MD�Q/�$�fך� �ܚKk>�匾 ��N���Ў5?���%�?)�|� "u�m��֬#2v�ΚkDϭٳ�C����5�l��mì[���~���;'�~y�
g���:c2(6�?��6���В��E7Ƹ��_��.�<�������&����l!�Α`��G�3gQ�^�<Egn���E x���c7RC`	�@q@���!w*�8���~_s%��\q�����{��+��Z���_8T��Z��"�U���лCێ<-����,MYL��L�2XYYɗ]!1����W�1�Liq��TA���1DƺDo
��n���!��Ah.cR	&��u�ҹҌƒ$B��l~hV�P^��~��w��/>)W5�sKdmA������F.q�	�=�8�S8��rB�an��w��+���b�O������}�i�ZX�URQ��4��3JyHI^)�H�A�4�uGy�x���r��=_&��s�df��%󨤢���5�7�K)�K�b����Mks�.oˋ���g�*��6%=�F�U=�kJ%UHi��N'�N�u2DAC
������[E$m{�{��cq��)� C��{�6G'��iDR��<f)$.��[J�Ka�m>x<��C{R��\�����$���|�\}�Oߴc�������v�O�:-&5�H�t�x�a�����      �   �   x��ѱ
�@���{����w�;�ڥ�t�ܗq�	Dt����ɣ�Z:\J�@�� �7�d���I���;!>
���Fا�H�];ι5��]�|U��ai��:f��;ڒY/��� ���(�1���(���(���(���Oc�>I}	/�������>�ݢ�l��:f����3[/��� ���(�1���(���(���(���Ow4�yYd�      �   �  x����J1�u�)��%�df�Mw.

BƂ�"�ҢUԅ"*
�ۜG19e�z�������O М�O6'�F�`�đ�w�c�w?%^J���c���7�#��XE@�ܥ�Ah�jȕ5���P����UFZ|K���K�ĩ�'�N���͇��$�H|5}��3����2÷��E���q�a.���8O��eR����-#'�յ2F2_�w�:o��G��<%>�>f�_��T��f`\���j�>�Z݆���S��(z��h��i��\c�S��Z���zh�S-{4��_��=��.Q>%ݐs%y��2\�k�Q�u�e����>��ʱ\����M�Z�t�}��Ck�׶����ll��Y�����K���",�,ò(�_w�Kq      �     x��Y�n7>��B���-����!�
�@�<�����V��0*AZ'�w�f��Yr��D��­� �E�����R'���`�<�޾iF� E�-#�g�P�����m].�r	��'�9�۸��q]N��{F�)3|Z�T��.��)�Ǻ:�˷(`�o�D����^��
���+��=�Mp��_���v��@����;D�GD16��X�cY�DqC$�"%�3J��$f!�-ĭ�~GLV�s4��@/�}*l��X�(y�Y���X�REB�V 4&	���o4���*�B�?8;;��u�z������v^��KD�z�
e~��[�f����
���o���5̂�	��z�(sC�,a' Faq���N3d����<Tt���'F-`[`L߀d�صQ���G �p^�Y�0.��
�p�FV���0�¡-݂+|F���D`R*Dp`A���0�m7l�~�;C$ӎ�c��F�r��(�<��z@y� R�"�	 ��.����a0��L��Nx��g�=᝗�V��~"Lj�M�ON ��o �вg�D������F�GTi�9�i�
	"�A�QF����A��l�6<��ZKD֐�i�����p���`;�/����>�4J��z&Ӎ�f��[�����4ĺ���N.�,���97E�%� ������!é�P�&0��R�-f`�����g���`J����͆E��_�p�L�Ya��fR�ܸ��	�`��gR�j�r�4��<�5C�qdﲪU�	�ؘ���S��Zta�+~�M��0�'��p�26�NPv�˲=���~�N�EJ&B�W����w;8�SE[K��4�ו�A�ԞͶ״ˠ�~�b�6<��1�= a�
[}�p��u��[i�O+�i�m�УS���������φ���!{���b�z1�A56�}�� �M+�����x{���8����	��&y��bv�� ���"u��ऐ�>�5/�K>�о����#l�i?�gU/|�~�w�7��~ĝ��0�2��30n�ɭ#6��:��%~2Y�-tN�Qf#/�=j��*�#5	D�N֢����cO	!c#�$Ռ�bQCƝB��$��(�w<<�u]�r���V �fN{LW�!��|�C��~�?�|���6eR$x� �]��k?�<�]�k�R�� F�=�%ܵ��-����򩹳[���}g��w2n	=&<7։�w��?���]�En�#�D� ED���.w#������8 ��Z�>�S1�ȠrՃ��`0���      �   "  x���;��0�k�.7�Γ��mҥ� �2�r� �v�"HGGٱ^��&[�Aa>��������lWp�٫���u�[������������.���.����M���}��F�|�|@܃�[�Ƨ$)�59��c�=�8�?bq�?�:���*h��,��k8�2fP���z��F+h!x�XA=Z�B��hң�h8�#�����zn !1�����h�Mn@�4O�,_�����h�D[�54�EH�. G��N��k|Cָ�k�"SP*��,�
ʱ�7�AM����h�`�sm�iu���I�`{��i�`�3��\`ц>�S�cd�j������e���o��A}�ڢ4)�y�(0�
ż��Z׿;`�H�ٵ�\��]�zd�Ikd���Y\(�cX�-41	`Z�m4 �"l������a�D�\@�q�z�A�H�'��l<?��W�H{�&���zN:/�=Cy[��y���� 6��{ �8�P�� �()/�i�"���R�JQC*b�~r�{jv��+���s      �   	  x��]Ko�>�~��~?x�%�%� 	�W��ٔSV ���d�2!X� ���h�o�����{vzv�8��%)�W���_=�����1��W��3��L1��g\.����c���U�pu�h�\�.?[5g���嗫��U��Us�j~Z5�����9]5����Ūy�O"��B�_����_�D���ӂ	���p{��Kέ6|����Z��~�L�EH�#�R�(�o����a���� `��?,6�b�j_�=��;�z���Lm��5c�X��|!a�"�� a)��ɫUӠLq�_�.�B9��rx�Ϗ��tKH�k�4�)h����2��$��"j<d��#�T1x�mZ����?=G�O�~�$�]>D��W����G|d�-�Us�����������˨��T������*�]jυr]%uvGlW̟���Dm� �Gy��OW�_����M�ÕU3�4f��&~|�ٓ��q"�������/o���o�.��Y~�-���L��_����4�|[W�Gͭ�x$ ����M"<����I����#�A�>Ec�B<]#�<D���z�zz��i��~ۓ��1�u�f����W1��IM�,(�Qf�Mt�8x�׸#?	v�`�|�6�5J4C����}�L~4H�2h�9!��O]�Oy���W���6_@�<�o��9��#������K�xx��C���t�D�f�L�&�ݻ���.�.A�O�l��j�8)L� 0�	Z��eJ�T��c��'Y&�(.ʸ�E��C�7��|���y��߿�\�H������m�RK�%��P�� o��fJ�6��n -0L�f��>FW.=���9r�e|�N8n/��Ñ�f̂�ig�? ~5�M뚛>˙��:���%>�sa[�����]�% �M��`?���������o	 ��������h�p���D~"����N@��G����s��ն% ̔�`�3b~����#�ya�T��H�����j���]t�m��8c��@"���%މNR�m{՚��q�Es���\��bh�
�Z2�w���yDbĴ��z��@ Ձ�K�5�IyK{�(Ȕ4�>/�Г����d�ߐ�j�a�1��U�Ttխ�/��HK����s�W�*I�I"���Mc��k�,�e���Lp�5���&$=�H�f�-_#�n���Y�k��jY�s�-��V^���=���0Wg��bۮG`���R^7 ��w�Ԣ�B�H��cm�E��B�sT�f˲��^r7��}�ْ	o@��;V�S)��/�ё�rHz|�����4;
����������1����;��Y��KLւ��/,z��/��SZ��vr@��!���Hԩ��_����4�`]�V�O8W]5�!�"D ��#j8��w�w��!5�~�n���f��T&m�0��y࿦J������Y�r� �<FW���ﺘ�wJ��i�n1�4b���[։@!:O-���KQ�.�d_��_d[�[l�$���~%#JǽV�QJk��A��$i�����0�z*j	4�Dp8��g &ae�R�D ��թ��}>E~�}t�k�޺�;k˨'A=8%a���_�M+�E��lJ �r;�V�>�e��S��<�f���1R�= <y��@ۺA��$�M����.���ؼ\���7��R.%�ڪ@E|��!:CCVVB(�,6���ɋ�_�����9E�[$ s���5���WO�����63g��[7���u�D5kH���l�<'Ug�->y�������?~0��iE��(�D�G��&��������O?��2TǼ��t" ��Ԭ�������)Ƒ1� C��L��#�y_�c���aM/q�g�M��y� �q��������x y�(xO$��ë4 ��/���sRx�i�>Y�H�P>�ws�Ù�6����mTr90��jw� �Dk>�f��z1q��B�S�^��2h���:�d���I�ZPV�LQ�)����r��E5���>[h�]Y�`�1f)�a��D��*�]ȕ\�c�[�
��g�Vx�a���p��3�I6�P�A�%3�Y0c��GEܦdG��,-��Gd\s�uCg�����Ҥ9vc�*}�Dl������<��j�/����M/�n����эq�CD�q�b��f�D���g�	%�<�D�O@��U(�у�wr&y� ����h"�Lբ����H%��o]됀%�ކ��jߑ�D�8���fK "'��� ��R��z��% N�3������]��q�Q� �2mW-S��v�[f�WĀ]�31��/w���=ظn&�p!	���v���fl��w��ǊS�D��qY�1��������f�Q�B�3Z�ߊ�y�;ucN��X+��v��e���W��?{�=�=��a���3ʇi��Ti��ؐ��"gz����B�It������R�3�� bz+�+ꊦ�����9h�����Ɯ���Ֆ�wܹz0���9q�A�Jřf5�+��H&���й�aK�r��å=S����f�;Ao��9����4��LR#���d�if<�������{�c��K�.I�D�]{��h�13�hf�\7ĕ"֛�%�y�)ל�%�$��v�z}
7،[Oo��2�N!?�eUF��o_M�*kWe�8�)
���a�ݬh���}��ΦͽZT��ʵ�IL�)QT����-W�R�UH�oȖ��x�X9�Es�]6�^�oT�蹴���~�Ν���=����1F	���=f�����4�iY�McUfg���A��,ߓP-\���w��(%�`CGJ���X.s5孬�?�X�		:�7�k�i�,�����;ۃ�ì�8xa��Ex��k�}V ����1cm5����J��Z)�\����x����ѓ�{�̂��l�B�D#���Lk"�LP)�o�v �Qi��5��QY��+�s�:�U�u��IK ��aw�+��"F{C͋�^nE����y����B��LQ�B}Ɇ��|�2%Gm�44WR�	ߘkMf��.-DY�%eB� �B��0���6���D ��\oxG+��7c<�E��D ���l`U;����Y�*��S�� �N�Vg�IpK
|�W�.!ϴ��YI��C~���� ,���dg"�LR���ew�P#�����o�${���>���N�H3�"9 䉷�^���9�IA�K��h{aӃ؞�xY,N[˨��D �'�P�\�T�7|�曥a�{j�/hX�uow�gHR2�_%�D��߲�2 m����& @̛m{�� �0�" �η�\4<�,xw�HA$ xt�pkǬ�V,-�R�%���������XxEp� ��Yo��no�Z����9��5�Ν���MI�H�%�9q��FN��֪���Р% 0c�˷wW���Q�h�R�^�Q�3��@��&�٣��ƍ���6Jd���Բ����׀R-�����J�!�
��Xߺɛm�+�	n�-��Be��z�n2�/��"$�I/~���D?�_��,����K���L���Q�ɬ�V$�n_�p��L-����+	4#�_�z���< ��4O l����V�����|��1F��)� ��*��_]%�R��G�8��'�  M�����e��*;�߀��X�
��r��n�sy;�������;:��|��zF�zM�YuEa��n��0���+���+������SJV��A�xH�+�p
�V�i%1U�w'Aj1}L�PVR7s�9^p���������?X|��      �      x������ � �      �   b  x��Z�R�F>�S���Ҍ��s� ��ab�
�����6$@QS�vI�ѣd���d	�=c$�,�$y���L����;�#����;I�O�$~J�?%�Y?'��$��ۛ�6>H�?'�8�{zp|MN��3=�C�9�����]T�F��A�$SV��+�S.�/��=�}h�TnՈ�j@�5���u�[���	�m�K#��6���k5x� j�ȃE�k`#�}��kp������Y% �%�t;N�l�Q!�
�"��^���Z��(���i�zk�����l�
>t�4Ƥ͡@�@}��h�le�꠼�F"Ƌ:b��ډ�At��ݛ�<M-�9����h!O�K?������2�<������!��1�$�Sn��xb���P�o��PVpP=`D�ܒ�^���������I-����in�DG]���h��ܛ��҂��ҭr�c�U��mK�4���W<�
�h����#}5e�ۻ�P/�S�E]��m3��fx��y����[����9+W���o����e���p�V|{J���2��խ~�'����Ceh�:��p�o1gkB� ��"Dv��ZӶ��E�A ˘�
���~��+��z*$��q�f�QV��);��BS�̗�4�+�GV��j����u����ɧC�llи)o�8)Z��n+)�S���#��dyuɦI>Ö�%D�բӐs`.х�"m����D��B�gs�]�-���s��z�g��֓�At�8f�ݩ��њ�}�3����4W�Cq�/��~F*G�6���d�ʾ j�l){���u��`a_��*ŝ�~��\pĂK� �AhA��)�扶��.v��J6��#J�/�=>0�38皖t��-��;/��}�G�s�`a�S��UtT�cS��+�#��I����42���+��=5[��)k�W�ЄӒ'*삲���^��=WFyYm�T&�T��s����]6h(��]�*�+}�/�V�e�<`.�Y-���'�8�T,�V�g����&�\"�J:uЯa�_��IQ�z������K�HYb���F��_?P{�Y�Vzt� 5T�f�����8�S���_��e������@6r�1����1�H��YV�p?�E�̙GY4#�%Ӟŕ�%�z`������s'$��\:(D�ʀ�9�T	N�EN9G�k.d!#�2`�9�-�Ix����O<0�[L��GίJ}P�+�sԵ�)+��_�Z3�uұz��f�Mk�l�Bvw|�|����\�3�	�pܳ����貎R�C>Ǚ�%��\rkL�;t�^�3G��HDH:���4%�x�q ��:��6������S����TV�Ϗ�~U)�QgZN�ӈ���B^�.���}��J�~%���V.��8n�8�> �̴��ؘʄ��ڣPv�?��K�k��ڀ>1���a
���y�e��}fJԪ��RQ��V�=�&l�Q�r�������:�Ќ�L�]Nߚ��:jЉ2�q�l^���R�U���R�4l�a �6�!`mY�a��Ҁ:0�mv ����P��хU�5!�I�+M��z��1�;�8j��܈�۠C�ֹ�2
1����s�Z$�	[0	Q޲gp��.�8�R�C$���F�HBtM����6:D]ȭ��!� ��F�ȇ�&� j�mt�B(���!�Xp��Z8�y;����mhuH��^ဃ6������ Z���5�� 0Xk�y��� ���[4�1�z��6,���!�*[�� hg�mJ?P4�� ����!@&�u>vy}�����>�i��A��d��<��懽W:k��AE�Zg^���*
�gS�[��������      �     x���K��@���)r�z�k�00�a��]��#ɡ��NO�NU`�I���y�<L��p� q�b��n� /l#�y�W�?�~����׏?��q���pE� u᎐*�,x?`g9s|����̝���Z��l�%���tH����=?u�V�"��.��.-��t�"��wr�t(]0�*���7�I�4x�8y��D���]kR�u�X>�~�BHE������uK�E΢`ќ"�s�<�ȟ)��ȑ"?H��SSkEW)jt"���]�։���j���@��j��f� v��9i�b%X<5��<��A+�c)�t�5��N�cN�¥��Bg<�~�zű
�1�B��aD&���qn�Q�y��]���lD��.��n��0Wj���|Hq���TB#	����H""9��d��"e���x�%���B�.(���]�ԩ���.�y$ד*< i{�v�/�Y���� ^)�M�
6qA����Z����{�/�ew_��	A+�v"�����@�6��y$���	��#������      �   i  x���_J�@Ɵ�S�;���!��[�=�0 4�>٢U��R�`r�9����m�Ma	v��7�7�����bze�ȹe�cZ0�1=0�3]%�Qr�)�Q�*=D; (їXdlnM[5��3+�,�9��O�y/�{y�1p&���4�����1M�S��.�Ι�zQ
t�ƨZPS��⦃��uވ�E�m[0��r���6S�'�O�r���C�#�Π��fPP�KE[�"�n��)��ͺ�˼����m�r[`��n)���J̞25�t�T�qu4��O�'{�:~G�.�)u�!*�(1[J�����GV��/}S����*��z㔓t���ۥXA�/����8K��s䴨      �      x������ � �      �   Q  x���I��&EǏU����h��<���������#�T��X��o���W/?���Þ�����/�)�T=4-���X���R�C��U :�u�tF�z�B� �������AJ������W F댲�$����1tF�t��(��� �m,���@��; c�F٭#�>���;����ڟ��7Z?Du��|�H�8��N�K]�q�f t���Tg��rŕ����N�:�淺
@�nmt����J;�6w[��s�K�nm����oi�A|�������Y��ӧ�ҁز<{�7 c��f��;6q��
�(�q6��Cĺ�0�W.�tH��w ƺ}��2�p�ٯ�X�� ����� t-��!�~ɟ�����6�C�V�������9Y)1�_sg�M��wd
8~���!��c`l�v���Ϸ�c�ȝq1����[c`�θ�u�`B!����<K�_��t*a'�v�|��ڡ}�d�R��t�F'�s��e�T���꤮ϒV�㉟�A���V'������-�\���V����V��7]�J�kE�vd�'��*�-�nu��ێ�⑂�(+[mu�����~�?IJ���-|O���Z5)��r�O������ݛ�G=�1�3��6�:�����V�T}�u�b]��K�w�����p�t7�4�`��ke����N3������+�Z�r	gx�<��3��C�f���t����鈉���j�K8V�=�|���>\+Y�]�POt�r��o���z������vw�������cx�U��d��y�E*�� w��{Q��"���J�|��pWi?KX8�ǔ�kE�%|L��#KoO��FX�c	����Rn�1F��� t-�R��Ⲓ�i��: ��i:_�t:����j�a| 0�����[���UG`�綮�0��^fu2��C4��46C�:�TJ��}x ��N�k]ʻ��vG��2��?���c@W�#}��\:����D��+ c�����qb�l��+gj1��?�{dg�p܄�
�X�7̒K�j��p�ɬ� �u"A�c�w2E叀�K�
��{T���F�0�̌߀��ؐ�7$a���7*	�w���Ja����:�a��3�1�ѥ��:��(�l�M��=F��6N��� ��:Z��T����U :�F����q@�>��z���tP�4x�C�^�- c�f0+`҇[I���	*(�`̝�6��h��G�c��9�/!1����	�e�y3�D!nA/r@�ם����|�g�@�K�� :"�b���X���?
m�e��*�%ݘ���S���@�n��� ][��ԅ�̍���"׀��p��hτ      �   �  x��W�nE}���� �����7L,�qO+Y��("��� N�l�"YĲD�ӟBu�m/��"�pFV�<��>u�T����2��Y� �0��i�hİ���8�Wq�0��8�.���������}'�İ'�1��d;�_����b�+|� ?��$���	�ğ��}YZ�^+�;��7o��b8���%c�N�*��d�C^�����>�=�`����wp�7�p�C!u�>�P�( �p��&`�O˝��^Ǚ4ֳ�2Au�����m�g�C�4�|�����;�-ᚖ�6-ކ1�V=��ɼ0�� ����><��u/	�q6܄��,�X{Cӳd1��;�}��~�BS\��+w,��f`ܴ�����HZk���{>#r��%}��<� (�2��L8���A��d�ġ�	}D�Ec��S_B�в0�N�j!X����o�:�bk���5*iG$Ǳ��e��jj�bi�*���xm��A���?��I���~'�pv�s���*��p��v��o(�s���x>�<3��\(�E+�h2�e%71<�����+���e�t�;a�S�U�U�'W�B�Bw>ϵ�תD��J�Md'8qi�!����k'�4�UQR
�@=�Y�"ڭ����L�-Wh�U���izm1q��h��)���8���ڹ$�ULyS��0U��#�_Hí5f����8t��L�����m�C�Q�k���:�}�Qx��s�<e�(�-eg��|Y�9�⊻nb�e-�*���.W�rt�'|!�[��rӕ�[�V�O��DH_[��}eKCX�Z I�=�-҅��郠�]��H�}�%�ir(�>M)�&ss��]5���4v��oGه��g��F�{��ZU�EYO�
ϊPsZR�ǋ�>9�ܞ�'/T+����Inx`�vUVG���+}�������[!fZp	ୟ+�����9X�\ԠU���:!������WVjw!�:�q�����I�:��[��"�Ԋ��F�I���%�º�z,���\+ma��{Z����tD=M�G��1u*�n�޶(�*��y!7F;e.�E�f�Sr��}J��
�S�X=�%T��K᝔�!g�hs�&ʘ�o��|}9&ە��U6!�+y�H/�����Z}�٣m�Jk7��`]_��q���D�}�Мvs�'G����J9ǬY�ξ(�6�T8��h���z���(      �   3  x��RKN�0];��,d'NE����P�ԂX� �(*���Ʒ��`?א(���"ь���{3��JU�R���T3}2�Ř���-ӎi��� �� {��δq�O��ذ�dj�� ڢ�t�S�jt
�k����
-�'�&I�r�����ՈW��g��A��hV�2h�VF��`6���1�F�E�����VR)|{5f*5F�=� v m %��G�[0k8�_����e���߀�:/%�Z�]jݾ������Ɛ�~@�Pۡ��!�:~�"l�o۷��5�;��X��ڹ�/��(I�_Đ�=      �   s   x�]�A�0��+����8vI�[H�y�UPU���;� �T��TQU'`\9YtQ<lO[�D�߫J��>��V�0����K����x��o?�a[��W�^z7��k�9�$r      �   �   x�����0Dki
/ �Y"]
����� ��
yՁ�� �HmN$��M ���c<�W�3bxN�9��Vk"�i}���o�\Ξ�ad_���k�|P��O�n�Z��*����ք1�s)8_�R��+	���!*m�J֚s~��G[      �   K   x��4000�4257�4202�50�52S00�#���B,C���u�Y�Y��Y�Xp����!W� �      �   ?  x���͊�@���S�<���fn�b�(䐰�@|��&�����*�D�x���A�swU���h�>������3T���͝��=Ӟ�g�Ѫ��Q��{~�|>�c��"�����S߿�������|�r�~�=�/�y�y�N�z���Z����,��d  @���X)�(!Y,7e @P�/20�B�� K7,K�R����Ƀ���"��`0��r&�Lڀ���(�#�G��ն@*{��P,J^��@suP���	ҵ��=s����(C�P����몡������zdL����"C`��G���W��ħ*�rʪ�u Ӧ8 �f��Ы��4��!����Q�֌**D7	%d�U/+��'b��RI�92\P$��=�7t�^)��Q�LR]:��� ��{8�f���+�,�[����hs�xW0��#n&��(f���XM��%���az*����||;�@���F�j���o�@���k/���EX���]/����;V�%��=4����8��	:C���Wj��x�%�̼a�DBn�q���*��d֘ژ�a������x      �   �   x�m�I
�@D��)<������0*B\���	q@%��6u���B�i*?U�^�O|3�1�5� 2�.�3��� �ٞ��y��+cK��t��tA�FĉaH�\+�I�2<�XmE�3�H��,�w/�B8gE.�&ʚ-�ҬEåVԬ,�h�Xz���j��Ǜ��Cl������ܞ(��3��G���KMLl%�j3�i]uY�+���qx_k�rt݆s�_�A�      �      x��[Ko#�>S�b�Z@+J��������rY;�Ā���-��vH��eRki)B�MY������OI�WU=�C6I=9SU]]�n��W���|:�O'���|:�����f>kͧ���`>=������z�Wm�t��C�Tͧ������t��
�'�AA�i
��W����Ϟ)��z����75}b K(��E`���HL/��s���a�5pU`i
#́V���>��j{z_�P�`� Ԏ��>��s|�����)DDᵂ�C��_�~��痠Ԭ��`Jx�+�Yo�,���M"~�M���YFљΧ���7x{
��c��ES�������rh���@� ���rmA���x3{yBa�������0X�?�^��m@V��� 5^�C���E��^��省MHS&5�����FԶ49G�mu���� �T~@7�J����)C�en�}��gL�{r��i>&��2��"��g�W���`���qRG��3�g3Y�aư�¢����۟�`�D!�#�83pv�0Z���1b ��K�ĸ`��zE�O�7p��(�����>�w8��^�a�㸯�BL<���}�Ǉ���pc�����{|x�����:�7�����=����8>	�)�t��׃��M�q׺Xr�޽BA�A(�� tC�2��|P�9�n";�w����b���m��h�D~�D��F'�QT}���[j#~��+��6��F��6�����R҉IH� �Uz$��[���}ĝ<���ĝl ��/���N�m@z��,�t���<��<��̣���.���s����A5�^�2;d,ŀ>`�������+��ڄz��QU���aE$I{�B�KD�UU�G�'��)�4L�Eї��%������ޫ��GD'}l��I���Y&�ѨG��%7�G�ɤ�4������U��F���%{^��2��B_�ST�k�`��i��a���ՠ 1"û��?��-MZ����r�4�`��'_���GL������H�R�+쨍�=����Y�az��g�l��X����/�������PJf�J��juF�9���2�1S#F\A�!��0�/b�l��]H�Lx�&j�v2���b/d9�@p ;��K����b��5���N�,�S<SX�
�jC�7Xq �	z>�x�@���G�tm��*�z�Al�f�	Ɯ*�+9:�yݢ$"���*�����Z�o�4��I�ۯD%�[��@�/<K��)�W�7���.�ݞ�f~Ef
��=��-2 }��}�S�&nZW̒��� �>6#C�H��}n�]�9J-�`Z>���%�����
~Z�`����'����4�q�!��_3)��HT����UOL/<��erY���<͡�!``b����}ȁ>�[�t)�5%HO%zD�x��iy }�(��:�7�1��@�ԅ(��kD�;w������ͻ �>�n��.�L�����r��]�C]|Y�:�S؎�OE�'P�)��u>s:��d��XvZ
�'��Ad����;]��Q��@K���V�0�zfȤD�F�#���t�Iҹ�0�R��n4Wu�:#H��\R�ؐ�L��v
84�HI}nP�+�:)m
��)�^�a�W�W�c�F�}+�%�5q)�Gq�6�R6�	'��P��3ڦ.�(0�'�lHq���̱dr�zvV�Q��D���r:����ސdW��]�%ϝ��W'ĹB��ǄҊd�1;�`q<G�y.l'7%5)�g��e�J�@��T���hs8�3ؖ�|��?�9pLn��OA�L���)HJW�Wu��So�&)љ �[��c���B!�*��6�eێ�;�e�`�S��]��_r�߰��D��^��+����v�`fG�J��э�k�=���j���!����+���bW���5qQVFͫ��hB�I���0�f�;��GeCz�Y�"䭬rn�-�Uw�e����ܢ��R��%���\>s�����J[�6�޶*�L�6��p�y�#�&�B�y��(��c�adQE��1��>�}�\��2İO��"X��������a��E��%���[��)�ˇ��}"��D^����#����9�����|V��D(/\���3���ҳ̔��r���%��`�;cc���U��:ʼ6׷���$�wc�IC�_u��W�(�`���y�d�c��꘩yCW[J-�2�ޚ��՝�� ;�9a�h��G���hZ�)ќ��ԽY�!�,2��j�����X9��ي9@S���6VW����A��nȎ�U�0W���5��_[�4A+��V������dWD|en�1��+��V�ŋ`�2�"�L��b/.,�4i�w�l��X����_�Y�����<x&��9��>�!���/��3L����G��u�r9Z!�g��1��Ғ��s��"���䓏>	>e|6�U9G�|���~���/�a<o�*5���?��m��`��s��:��6���GR�w�H6�[4�����J�ӧ���鷌�!�;�-�\3��.+q�&<����?`
���:��r�s��
�����#����9ƨB8�R/<�����XY�����T.�Y�	z�ehe��ԟ�)��Ԓ��ٓ/�~�]P�������~g`
��eQ�t�����������{�cy�4'��ߥ�6�jMF��Rh�}C]C�g��=o�aǨe���=�(xs�><��#����/���?���޶����2�k�S�)�{��i��`�OT���'G�G�|j�Y��̈�Wp�\�X��L�3ȥf���z,��9=���so�"��H��C����JK:��K0��\�erd���C%�ڝu�?�\�QE��.��|{l�K���Ex��[��	I��%&��Z��`�r��+�SX�n�H��i\�a�JW5A�҅R	I���Tp��br�򺈩�vA>LqU�V��xv-�XG{j^=]��Py!�;#I�Ś�X,G��B#�ށ��%�㠵բ����H4e���<���d�!w�ӆ$5�4�8��G"��oI,�-�+���P�Չ5��A^[w�E7M�C�>vl��i{�0b�v�����[�'u�5���h���7�w�J`��妓���k�rY���H�ےp��zK���׶�]aU�ē]A_{`_��V2������cfr�<}!�<u�Bo���}�B�L�M�[l'�{#���+1�5�.֟i�og�3�)�:�|�7�g����!��uzݒAµ�K7S�Wof��vC��i�ƫb�ܺX`�FN��5B`4 /�ƍ� 2�rtK8�e<����[��>�Ո6��Ft��jD�[�hݯ(@��Ȩ�,	��t.��?Pq�*X3�R�b��27�qE߲\>:mI�l�@���K�4����&Δ����;������ٯ8w5��m�ƌr���᲻���F�����ndx����]�F�����n�B����e�H���(��z�K'�4d��4��mINPj��nu@[723�d6ᗊo`Ū���"k*�e����ç
��DNm��[F���۵N�r��k-Z��wLQ�C���O23���24�-�z��)Ng�E^�>�&7��<iz��\����{�x��d� �Zș���5�tY���V*��\{c9���r����,���4�v��t%i�Ӹ���aii�.����;�}�{Kn T��~�-�u��HsÇ����U�����~
�3��A���I����]�8+��%��k2v��� �cE�/X嘦73���e,�"a�Um�;D�F!D���xN:�WYeQVe��'�z�#kE���UC���^��<���\��Gڋ9E$��iێ>o��U�S�Xߟ
q�@��^s0wf�6�͕�SB&�}b�~�>��U�����	�0���K��J8!��2xz&iǾ/���J5I)"���1}`horqoJ�J7vI�����4}�,r�&G�=�9+�!J���ԫӓ2^�}n�<�R�wn�Q�=�+�y�J�6豄[w����'�+�kѝ��U��k�����L�2���� E   5�l{G��$��_ŭN;(*��=Mum��U���0�x�P6��j/d�M����nmm��ȯU      �   �  x��TKn�0]ǧ�D��86��;�=APP%�k*�*QT�R!���6s��a5�6�#�3�y���"Q\؋�'��a��Cx���a���L�B�r�������ڵJ$�y��mnZ�w��d2��^$ݫH�I�W����PQ�!V#jo3��n���pY��Ʌ)��:�2O"�$��!u����I�֗.�����3��H�*�
"�(�=��HnX!��3RyM!;�����	���ޚ"��4��F�hͥҡ(+<��!|-ٺ�3c�R.d��=D��XT˄:Ͱ�.���#Y��c�u�	VҴO��o���[��8���2�� =�2��=�t�������y�gf�F�
��,N&0����S�O֬�U�L��{Nc�kqAE4�FEAS+=���?�▼�&�ͅ�����2�~ >$�      �   Y  x��UMk\7]k~������i���RZR��M�)]Ĥ^t���I[�k1N���`p0�v�h��~J�Λ�������A��H��{�G��Ȩ�2[剘˒(�%�����_��G�OK>)���x�u�I�c�e�a�0�ڑ�����o��<�NK~Q�E��K>+����ěg��*��%g��.���?J~�S��W�����C��=�a5v�i�ĎM�}2Q;&�
��Cܫ�/�����3��UF��>O�˟=�p��� |�FP�zN�h�9^w5�����'d1"�@�QEc0/�-�dy-��w8v�Sb�<o+t�Ů̟��t9r��,oF56�$���:n}��%?�Wp����l��f�¦ ��m"�x�α�a�ג?@R�3$c�L+�,o-^[�a\XL�	�f�V!�#��	�C��u^ ͺ�����^�Gt�|�i�?C6)_g|H��7цUXM��f-��}��}-��΢eK�Я���=*ъ��})I�;�J�j�8ؕ�d���}w�do��1F6�WdY�,�
�b^,���!��,�)�hl���fwU��qZ�Cv �b�.
�Y�$�Ǝ�!Y�mσ�5���cQ�nէ��?B�\(�!�Ӟb���CG@z�"�M�}r1����u8��M�-�JP+7��h��V���v	�����x
�yW�
XO!��3 ]1��Qz}ȵy�t^������z��	�o��=����TC;A�� �O��'
:�}\y��%�Y佴Rx�h������zx���P�@nRKڈ�z�^��x�x� B�re\A�-
H1ko��U��������������M���X��眺�o�E�4���d���.�      �   �  x���͊A�ϓ��d���| ���}a���=�7AP�M?�սa��$lf&3	�4��Q���wn ��Wz�&����>�o9���6���y�&�O9���K#���՗��Ws��[aY���.��||������z��ӯ����}S�g��k^��Hv;�-r$�FZ�/�/�ƺ浮���bwu�1�٢��(�����a{jl� � rh� �f1���5��#����``]�*��8�p�p�8�WP��Y r�"r��;�U�� ��Į��'ǿ����m�F���ȚD
��DT1��)gh��Ф�o5!��n��<�/��+��V�����,�x#��BgKl�V��hEL4���}��8� z�^��Pz v�{��L-������5)��x�_��YЀ�-���8�0̋���O��y�����-b$(baC��Q,��2�R �����-<z_Xdl�"VK��A���eOVfR�0و���X�y�/D���@��^i�� ''�bb?3�:
��y�'��]��@Ƈv�rhg.�v,��S�VN��GY���z,����g��X�T։�e^��P�$�/0��T,m�����W�<^ھN�,ڇϰ�X�#X�$�^;���,���CN?���9�=,�]CF�+�[o����@9�|Q:n�;��|���nn��f��2��      �     x����j�@���S��KI�wH�P�^�0�U��!�Ai4(ξ�<Jg�dK�E{��;�?�L��(������L�L{���)g�ؽC��[��0m�NLL�`�Q/�o�L]z
Ċh�!6�R��S��zm�����r�D������K-�;��7Xn�+�
�e�'�C3�M3��*)s��ծZ,���ڮ]�
��o,��
?�
��6���L������7�����}�.P�׳�nal����X�V�R��e���¥Oa� ;8��      �      x������ � �      �   i  x�ŗ�j�@����D����nnz�%����o�h �zj��4M)=�B[(��}=Jg?d˒,
N��RF������� �}� �TRJ�AZq	R\�@)���	���M~7�WM�ofsׄ�t�uw^W�	ߚ�	�۳t�Ϫjo������Z�d) �_t?3�Y,�K*}b�*�5,�%-4�
�\�Á�X�W�s)F���B��&W��4�Q62LG�P	�«狫Փ"Z��:���2"eD�J�T���P��(#�%���Ψ� ��e���3�F��$F���r U� ���\��'�sе�l�ɑ�2��|j��9�5z9�'�-����� �V��%����(#���;#Ϩq:�TR�~B4���i��	�Q&􉐩��u�/����2�HYe41�x�s����6��@���ƙ�E�=#6�{>7aÎ��ڢ	���s�V\ŉ�>>P��[�.��D�D�hɶ�$�6%�!e�1��Gnf YpZ��2Z�N&3���ƨ�c+p9�P�Z��IϷ�E���6�#����.�V��?�;�9ǐjמ`_y�"��Aq9�����=]뾁<T�6�
q������_)���nt�@���u8Į���7ey�#���l�X~�фz��yK����D��vU��6�S��IG>��RL2�Fe����E�rմB�K��ӎ���j �CJ�,u�V$_WGJ����JT����ܣ�-�+�_�T*t����×4kn���d���!����P��\n}�^t�	�w-�x���_��ӞC����N� )��4��씽̊v�D��c�;t�O��4�<֌�@{��ݬݽ�=G��*�#�^�m��Ɛ;0��S�[��Mb�|k찉��'7��j6�����      �   �  x����Q�PEc��m �����C����$@NDK7.��,�ڲ�!>3�̻�55��}8~Ǘ��y8���MlҨ!*6��H#��ہ�#���������1��0WԚf
e����e�b��a� �A0�7,Z�F'ԉ��&ȿ
uǰ��UF)^�g�����`&��a�`{--.}�!d�a�����K_gT+TR�D!�|��֥kG�+���(�K!��b�@���n=�hx�Jf�G��k���%��)*��Ɛ����-�)P2�"������J�m�J���J��8P��;�V���V,(P2��"l��"��R�D��m_�rE%�H_1S�d܅�w�*��b�uUq�@ɺϊ��N!A~3�N�}Q�E�!^�m��N֭eL�{���V���O������fQ�      �      x�͝[�%�qǟg?E�-e�%/���gc�m0�����{��,�YB��-䕌�$�@X K2��6�Q�u���әu�4��`����EUeFF�uY���g}���_���g�~���W�_?����폾��3
$���WQ�C�?KP��}��������e!>�Ɨ��|~u�ޫ�?���/^���������;��EC��J��x����_tyt�q)E�V�G<���BZ3	��ݯQ�B��|�b��r�Yu��F��kR��HHRP��"��b���KK
��d���?YCq�q�$�dE��1x�Ɠx��h"p�m-�5��9���X*�������O�n�tw�/������������Ww�?��_]]����_��~�+_Œ�o<��H�M0[�Z�ˡ o�ĳ�#�=�m/�|�����?���'￾��������������������}(�U�k-�*3E�g\��U���0W�@HJd�}Y_�W��3��2~�[��P����İn�
}�O�R(��}�}�8+�2�i$�Y��,����v��ʹ�g��,2�M�,)�P��<��������n����m��F�]�ǻ7������gw�?o���w�������/�����j������?J+;ߌ�#�D��f��W�f��7M�����j��?h���uo?�׻7?n�E�Å��H15�����K?�2�c������5�}�U����\ٙqe���`eW��z(?<â��j��?������=�&נ��)�*�26/ u�"f����m0���i�8�F���^]r�\w�6з��)�n�RdH�^��b�e��?i�]]l�̼ѡj��k)K�:��K���>�K�1�a}�m��l���Y���ϒ=�u�Wi�V�u�*G��%ڡ �*C�#O�_��h�(����xD�eYb��2���b���Ve�a*v̆�?�:s3-�l�%��š��l�E]2�f��"��J���~	���\	�*ōD_1~,p��֫44%��s�νm/�מ�C��啶���;� [�Uw^{r�n�i�T)��wiv����¯�^�X��l�3���,���~�@Z8��-8Z/����}�H�v���:�����D�{�bV ���.}%T;tq pF�e	�~��yBJ��J�ᇈm�춠�ƏK0K��Ő ��C�)ш�����;]Y�Y�Ĕ{^��0l����a��f����}�X��.�B�xf.���Ny[��3���1�րb�[Y<@�)�#��
��<��3���ѹ�?���m�,��cb�������g��ƀπD���`��'6��B5�±�g(iɚ'����g���MXS�	[f��� ��^l�ö��&6�����'N%�%��,�|R\j�����������+0-QK�x�
+n��^ǰ�H�p�����Wvk^4h���Dĭ���R�8�f�@X�I���bZ&�~o�G��%r�
+��
�l�.f��Fğ0b��5�ۂ�2����ӷ�*ɽ�9D�p��R
-���Ts��a�G��A�h���ņ?��H��Z���Lq�l&;#��0]��q�>O�Jl#�̄o��KM�pIW��`y���T�Fb�T�2��CV�`j���@`��X�䉽=Nkٓ�"yB�C��[��wS�v�+$�=ʏ`k�Z���Y��_�c�ޤ�g�]َ֚�*�Q�GO��<7�<�1ך'&fO{p��d�l�
ǎ�������	26���i���=SZ(H/������0N�?��3|:k����%������$�U ���0;0H��9b�~��"��Of���h���ʻ!�kcu�Cj�p���Ox4{5�1�;oh�G@9�߄9$��$��3��E5+�Fugّ�kb	%<1!R�V�e�/m[gf�P��>� p�7`˴�f�(1�R	8�x���R��pȬ�|M��]��<�)�T�0��p����0�#3�߅S�8Z3]Ri�3�O�7T�=���5�y	F��G$jNK�����1:z$wW�9RJ��9��(�)E�2|�ڛGM[�)<ʺ{	:�yF�I��ͺs	f����Q]�jx�S}�Ң���-s�P��v!GK��M�����o}/�H������Y��è�#R���J��"u��=:xX�C���ǈ
?��O%fQ6�$��G���k�J.�]咖'��t.@O%v&�����������}򂥠$xܚ���
�Qb�$ے&��q�[UD�9�N5Fb�G�]�	�,ڌ�H�	���>1�~��E8�݀خ^�b�%�	�Ӝe�7�q;�{�������\G�R��\U�ub�W��r�k	K	Q����o_������ �;�Y�������)3�ƴ�I�m>�Hf$N��g�)Wx+R��X4\�m��z鑤u"��sQq��,�t	v]UX��0�8"�Ek�pL�vIy��7������]s0�>��{�il��Yz$���h�sV��au#L+0�������������&��v����o��1��>&q3>�s��~�Ft�V㹳���ծ#80�;�c+v��obg:�E���xD��Tb�ڔ��xD�%r ���/�cRʑf��������
��.؅8��	����n���; EZbl�&�WM��^��H;q�#�dqu���[�ߎ$X!�v3K�nd3�Oٯ�گ�������������.�mՠ%�2h����)�x���/��P49�T�U�f+��t���"��g��H�:��>�`ĵ�V���!9M$�	�1�ȵĉ+�1��J�p	�1��X�\��#<���N�S$E�!P~j�0Eu@��RIx�sSG�����8i�%p$����G�tX�8"�E����B'�I�&�itX�8�%֘��#�� �HZ�-�tX�8&�����a��dھ�u��/uNbR�Kt؉nD��"��5�� |��Fʬ^���ĉb5�\�HL��R�z�o+,قZ�{�,SM4q�ԝ�'���Q�@���:����4L�}�w/��a-_	��Н		Nb��-��|ݙ�f�{&f1��3Ϥ�v�Ԋޒ�Xx2����f�	�y�:�<�d�'��_wfWܓ��߂��4Ҿ�@jI��4��ҝn�)�%�h����'������i��=��S���v���I^�&��tg�ɁT<pk�.�.V6���s�;݃�$��n.��ރ��Qr� A*��8�8xwz��m�(
&ҡw�G�P��������fV�"��$w�¤aW��¬5��b�����/O<�"<.,5�����$/b�3Wߌ舵�[�q��wBt���Qw~��=�%���\y�M��tQ�H���\������i�st��c@����R�y��Ut�uI��o���湍@�F�-�$hW��ϥ�Ff��H�m����Ou��6"���Ĺ;�ds���M<��VR!��Ꝺk'��2��_��Ե.��̨Uy��欍H�J6�<�D<⨞ޏb���#�.JfJL�=DAH��A<���X\��ZQ�䉆b:H�"b�xHF��$6��d�0YrLJ+n��a��G�`;��O��^�Dkt=^חv��$�hGee��*���<r�F����A�TŨ�j������Y~x:L7����a0q)v����Ҹi� F��f�	��i7�����W�L<��k���A�q��S�q�h�Rb\E�����	&mzW�o<�ƽ�0/.]�g L���sVXi�T',Ұ��cRk�Od�>�N��)ʯ�|���qN�~c��:��1���vt%�qj�9l�kSz��_�
T���4;M���0�X��!�o�Zw?a��S�~�:�[��"�ч�d��%��v	���l���a7-����H��C�@2k4���o4�����߅����iV�H�CJ��l�H���H�0� ��R��Y�����˒��yy�}N�+..�.��#���;1�r�a�ў.�t����#�s��&�a�x�Kͼ���u���U����6��Ǉ�[�ح�K3~�-�8	7NC
 �  ���Lڱ$�\8(E������]Y��A|_�J[���F]�Z��������{��GZ�U�^���5t6��'�/��_����l��
�z��=������D2s��_�*L/�g�B���w���ݾS�3���8!�z2�u�t�7���i�\h뻁Z;���1�1tR!f%w���VA����ڒ�'�2�VA�ɪw!�N4;�gmZ��\���O������w� 2͏R�i�+uL�) s�$�0ɥv<�sR 6�I��ޤ(���9) #�$E��X�S/�`J
dxCm�bk`e�l�� ���bk3��0c�5p�],g�@:�Iai�Ы��Z�')<a�(u�KsR@��$�O6�)~���~.��.�:�9) �}.�ƪ�.sR �GJQĶyǆ���Gr.���{��sR��v�$��O$Ō� ��J���\2'Ō�hR�b���.*�*�\
���ډ,LHA)�:I��-5Q�CȜ�e�L
!� [:��礘ѝm~i�=�ߔ3�3�L�±3&fN��Y<:�؛>���l=.��,:�^礀uglS�����#gJ
Xw�I��s�b�d$�I�εd$��͎�xJ�qtoC�6t�GK?��iR�{�[���tbVsR�{���ݵ�}���;��Z���v�n椀�{�m�0Bʝz�9)�="�d��$��蝒bܐ�9sr��'�>�V)�ܖz}|礀w�Q
���4^���N=JQ"q'�bN
x��WU�6_�inE���*~+�>j�5�48R�z��[Y�<��oM
х3�N��))�H�IѲf| �,�>�π�B��	PQ�Z��h@�=���:s(p�����D5�#һ�\bvQ���,U�=�a[b�=ƫk���V8�݀�&'���!O��
'S���m�^�����4�sX&�!����0Q�k����vs��6h�2��@�9)0���<BK\�bF�]M���J�)\D#�7�>)S)�) �V>_�Ί�ђ��N_����}m>\{��K�^~�X�ǥh��m��(��מ�S�')Ly����aM�P��y�^�.��lJb:_��Ch�p��&7�=6���(6on�N\�6`���G��}y�1)��G�8�#�ז;1���S���N�Q�%R�Od�B�dW)��މ��8t�ʇ�
��*3�TG�P��G�-^�w�6 ��J���*�=��b��������#�y�4�C�ǟ���������U,��k{c�����ߵ���t��/�>}y/imf]�0O^\��S#y�\��n^�ӧ���{��"|o�w����E<��B���_����x�@o� h�1�5���w���������n�{��7/�Z>�Ϛ��陯��O�Oq/��^oJ�x�*�O
`��F^�>�:�cav�'S��^�e�_��{��'��M7݁f�S��^��q]B��Xc�$�]�A��=O�:(B{o��'���6i�,��6�I�!��\�'�OB)��3d�x^�Yg�(d��ud\.)�e�DX�=��ɐ;�t��P�/���N��}�m�v���=1U�! Ѹq�6�+n�$��:D�S�p ��9��do��.��+EM���M��� b����AO��fa����R�*\U��V���O)+���L��4��3n��_���z ���N����'�v�</"_$��;(����IB�OCB�%O@iu)����z����U�B�h�@	�{�DfҞ#-�r.���Y��Q
O�3���q�,�r�N(�XM�	E3lD��L*�`�M��Q�s��]�h�JZ;&��M��9EC��'C����W)|s",>wrp�˄^�����~�W"u8�fX��8g�5�ͤY4W��	4������ք�v}J�m�������O��#[�L��r�ף�_~�.��}5�'�����qҞ��#I�eK�V�$	\$틧8�\��l��&�iOc�3�z��X&�]U�'R�s@9�	�8|bx7D{Bw&<��@N����[��zw���ہ��բ]4L(,�3��Dj=�� �	w�uY�yQ�w������#aM��Ɍ��Ps`�-����M��x�@~�
�f���؁U>ɞ�@1c=۱+-|e`l��O�Z�fW��z�a҆�V�7(Bv,���u�[����5�����V��-j&���x�"둴eG��eb�=+]R�~A�x^#�h�vN�&�p�-})�I�	�f��׸��q��k�K%xt�S�$�0��|^$�_{��]��3��3���"1	�Uk��Þ���V�扅ܭ��܀%�ةm����)/칡��[kMa�G�<3g����Z�3EuB9i���R�9i8~�th����q���\̜T�lI�z�K.��5�'�R�)�▪�Gs��aw���ࡎ4r�#����=~{�J��6�b4O�caH��-����!�L��=�ٛ��G�M�ɇ�%<G�A�Ǥ���Ԗ�E��I���9Ю��N����@�+o�o�� ��m����N@3K�NX(��:��5.�J�P� ���˖?QCʝ�����ܗ0y3]wZ���G|������**���K@�%��l0/�I�W�u��j$Ozk-���`�}ML�a�EO��6��C y�gQ\�)�$�0%/����JqPKZԔwK���n���D��|_4�T��Ğ ���;5�O1��WVP���%Q������@��(͖>Q�� !�i�Ҝ�����=�~}�Z\Z<�f���;H���p��x��[��Ζ��^ሟ��1Z�w(�q����/T����������͢\�U�+��<vZlh����sT:G�%�}����� z�u��ƺ���pc��&�+�#m��<H��xn=�<ڍ]��coc���}�����0�x䉫~7�a��O<�uִU9�A!8�U�f�&ѭ����R��.'k�Z��iuA+'��<��o��t�X�@����P���^I���B'����Li�0��� ���\&��6;g2�@L��xm/�A�74h�A���&[)-X��t�\"!��3�g��23K��j��q؛��˶�2��y�B�l��2��C<te�qQi���!8��޷)� �ͤ�>1j�x��6�73�<`��xe-bW�J������Z�O����g@ݫ���w��3!�V�O��{���>�P{�\.��Y��>l������>���f�/1Dx�����7w�w_~���7��~��?|v�%�vɕc�m�%$�!S3
sڌ��<�l#SvF���i��ſ�v�=����/���W~��K�!Q������~���W7�yR���u+#b��S<�E��zB�Xw�'jU�i+f:����(�EF5n9�c�+�=���U;�у1SO���y�������S;�xk:�W+༞ι�k6w�H�ᖩ�p�--kj��k�)��zn��|�!	U8�Y*y��j�orC:6�����d/����}��S����U��ޤ�!��Z�Y����	?�e���c��H^�AM�t\��x��d�}��~f��uA������������ޟwa>��6���?�\s[0��&����r��n	�>�j�� ���'�����l�[�G^�di�����=}���a�u���3�.y`f���nb��.x���ꗘ'l���0j�����nHr��u;#��8��Y�u�G�OG�[5���Ͽ���|�Cot�%�P��y���V�lF8��I�wJ�';�Bo<�%��km�{J��:��F��kS��,I�����Ի`խM��c�}�#���Ro�6oc��ǟ���/?{��K��K�zx+��h�>0'[yv(m��F�ލ��\��q�(*|.]��E{3�"{֦]�#�vJ7Z:X���
W����B�<���r��)�K�k�C��'�m]�F��=��e�a�G��ȩ��k�EJL��톅+���i�Mθ����z���=#Ã���Q����7�w�y���J�      �   H  x����jA�ϳO1/�������-x� r���!����gEDL!�}�~�{f�{v{�.d����������C p�s~W�	�c��_By�$���8�� ����Ӿ$�$?.8=jK�U�@Р x��W�My�����_��W�?���
�*❧G�C^�w�0����|�#�IF3��|��|w�h��n�M���ͫ��{r�-N8��E�)ׁ��YU�Xp�S>̙����u������	B4��mS�q�V��Na�:�?B�-��#T��.��2dAV��f2;��%2ՁHq}7d3��X��u�Ir1ؗte,��.��Tz�RE*%�Ĩ"[�yG�jb���}��7�)V�M�?�����ܐ~o]�$���o�͢�#�ݯ�y�6���Ӳ#-�U�/���J`�\����8;yq���p��3_LC[��ԿR3����u�|)̧j\��\�Y�$N����`��n�Sڨ0*���ޫ2gfV��m���=ڞd
ſ�u�Vqݧ�F����T�{@�h�B�r@q!d�L<��|BZ<��w�)������a��Qz�Ӻ��щ��!�x{�x��Q�t�Ň�����YN{z��Rq�c��6��f�@f+0��ςу�͈�v���]��f��^(�m��m��hT�2�劾��IE�/R�b����ɽ�@�T�TuVO�9��+�����Ǿ�Y%��ݽ�B�cwsQ5�9����e�,68,�q��S��r�T|V�}�����RW[�㏪M��UyX��w�e�L���[v�ң�4J�f���C
�C؀V�tM?P5P)��ܪ�G�-�j9�4���0>��S�Z��P�      �   �  x��VMoE=���9�ö�������P���-�FA 1�W�#$��c�8DQ�F�"����?���u{���{�gz�߫z��jnI	�il�'�릙�O��Y��� c�-�(}� ,j���$���r��7�����T'�R�Q�)T9FBŨlD/����KTޚ�~N�t��˜�YL�+
���FQ�0��À�l͋os�)/��zE���1�*��)�5IPi�AF ALj��;O3�`���o�⛜��G�)u�!�Nxu3���4�pC������j�L�N?�u�����Z�Aj7ޙv�;����/f;c�8�D�p���]'Qtw�nHuTR�%�c�@��� /vsz���8�79�ʃ�x������yq��������E�t�Os�-�?sz�oO�Z4�7�?�pV�
�d��n�(������H5��c�=��i��T�v#�$��"YLY�m��X��s��0D#���<f�V٨�c[Ĩ%Ռ��i3�l-��]��6B��F�u0�n�y�}yއ[A�W�p��j��Uv��Y
ޮ�$��_���YF�4�8��?ST5-p!��n��W �;���k����c�سbS���F���˪X
�_��?甸`�����p��_-Z���*�\��ת��{��|�����5p�\Y�˥����".O<����p9%t����*�>W^?�+UF�%��c��2��w܏~`�ď~��~z����1���B�oZT}�����]ay���x��y�������,�%���8)�k�]�=b!�N\��r�����N:ጂ�ˌ8�VЏ�=��?|f��l+J�$�j)Pi-��<VJ�kIz��������K\AH����C�F0��D�F�h��      �   '  x��RQN�P���1�X�.�b�V�O�(Q0$���f���<J��i�ۙ��}��Z'v�uD�%��pC�n�r���x"fĄ��CW�1b�#�=�'��(��DY)Y�y�q���iCĒ�8TA+�f���\��26�ǉ�w��ݒ����4��E�^͹�Ƃ���T�6����j���E��7��R���Zt��}��>1�F߂X'm��Ȇ�p�*eҝ��S����#��63m�L��b�u|�SE�	&�_5�-�~��/�D�e������c��l�ܸ��q�$� �       �   
  x��\]nG~O��(ک���� �{�� �� �])Y�AE0��a��F����lu5g�&5M�!٤[����{z�*?ʊ�$�(2謚~S�wU�T�V�eU�^��V�\�Uӯ��*?U��쫿�1z@y=ʝ�{5��q�r�GU���q,(�D[D�H�U�?�Ac3�J���+��M��8s��{+���K>��O��Ŵ�d��
6�[ȕ���팛	a�4�J\��'ԯ�zb�Iݙ?�N��AV��x��lIK2�(�r_��Y��XMG2�y��-�eKilg
;�.�[�<����+�ml+�׷q-��}͗�c�y#����S0��[1g$?��%��z��֙����|>��J�Q��y/�X�[4q$�\���Y�k�\w�7sB���y���9���w�;��V���v���7��A5F2�n(��.����<��s��I��Q������R�:�|�/���CRR�a�O��D+P��h�I�
H\�,~�2{6&���ȿ�ז V���>H?˝��(�3���Y-�[�"xD2�9fr���o���u���Mj-s�ʆ��
�>*6To�|o�-�������؎:xM�*��{t����u�L�?���zyL)�qi���M]��쮾6�[-��n, ��������l�"x@�v����As����χ�]�W-��[�}��DS�\���W�Q��E�u��p����Z��*��������m73F3D`wd�<Uӱ�ˀWy�m��b(��D��P���'�M\�� �J{Ք�i:�u�6��^�N��雾��	�#�%T�osFαE���g��)�C�MT��ڋ�}�"�ڋ�;�(�ڋ�_h
����Vݫ)k�^X�W���|�T(�)�,�b�@>w�����"��N|�_�Q���YW���-=~YC�$hs���5��:8�[�1����mm�	�Gw����
�>_��V�����U0E��qt�)�*�" QL�U��^ĭ4L)�@�^A[ZS
�<�wWS
�:N���)���PS
1�US
�/ޢRL)���[��]L)���[�;�*��LvY��
�ΐ������i�O���_U0�L�#��i q�o5�X�`�D����QT�4b����f\�eE�SJ�$�y%8���KD?��ߺ�|mIl���D-����&��&pO.z����j���KI���^�b#�L��Ix71��~4�V�Y����(Y����ݢ�o�\ۈ�)�|a�}��?�{��a�Ɍ�U:�z�뒘�e�JDO)��;7uQ�A����d{m�g&�� w�4�V��G�hK�WKֻK�#zJ����c�����$�m���3[s��S��u��I1�g��X��_�d�V^B�{�s��.���������n�~u��i�{�`�G	_��v��W�N]�~��f���4�'�{z5���d�@�4[R�;��7�ey��pv�������������:[׼���:������� ���d�g!�M�od��l��P6������5���R��ݞ/x����:��Y�:ݥ�?�0���em�or��,��mű��ی����wO��
٠�Ŵ'ٴru����]T���}X�S�� c���~��fJ�}�)�n/���gz��]��g�f��J�Y�*�~����l��[���	��|�� ι��,��cK�Ι��g(yc�β 3�P��ȝ-~JJޘ S��d����{��� xNk�)1o�:��))�/$oL�oy|�yc
��*����Ș�A�g��)P;�s���1���)�:/��S�m�|ޘc:��1�+��~��1C,Q�g�}���!xyct.��z�π�Ū�f��>�s}�u�g@�"�Bn�]�0�(±���wֹ�]��������
!�}�a��`����?�0�p��`���m	W����BQ�,�hs�����BѲ�f}�`�h���@����s{	��:��mG+���.BQ�6fI�;�C���1�����A�D�;�sѪ��K�;2�0d�@�;x;��~s��>w��a��TP�A���i��H��G����$D]��pwt}�`+��l%�(��)ԙ!ek�h�p}��Q!?�JO���}��l!�l�����-%n�&�>wVV��4i��[	[�^�9�6�>wVRn�6����
L,$L,�uگ���Bj12j,<l��)/�[S�?�~>2|*/�_A��T��X��_A���t�6hY��O
	O�C]�<�~���W�`{!�b���4X_H�A�ۯ��SC:y��
L8$L8�O8�~�2�5��+hp�P�͉�+h��neQ�_A����h�Gɇ�W�`����'��~^�}D�����`�!��\�j��"�?%%o����>o;����$�F02Q���7����֬si��"梗�7�ǈ�7�&o7%n|_y#�(�A�g��`��y����Fp�pk��!2LC�`�!��s�y#��(ɏ.o�%+���7�Ǉ��춯�\:���	"o���`0�?��V       �   �  x����J1��ӧ�<��v/��O��Bߠ/�"h��
�� ��ӷ�Gq2��f뱭��0	I�+�]�{w�F;��]���EW�-�(�=��������!��ڪ�B�Lf�6�ْRK���B�~����Y<�F+74��m�iq�)��[������%�x� �TAg��t��J܊��<�u��j�j$�_�b��^?��+��U,]���ʪ���H�JF����n*!cؔ�f���Oe%{j/�lLZ�4]{�%�Omq��Ӟp{�N��b����+.��SqC����k���8i)�3j/(~��EgƝC�m~�-�3��/̯�5�3(�{�v��ۈ����������T�`U�c^���E�^�����y폜9��x]���ꖧ��у�#b�)�qn����z�)�������S���s�j���-h�~���2�	i�_2��fR��d`,w���V��;đ      �   �  x��Xͮ5^�O�M�w���.��[�*�us�/�\��V���BHE,��p�Ə��q��d<�L����h��g������� �T,m�I��y���e��isKm�~�'����1c�]�\�o�R�>���R���%=��������i)���B��V����x ���'GP.O1t���������%S�̻Y�Z ͘���K���YS%,�Kf�R�h�S� �FM%�k2U�L����Y�c�OR�#ſS�6Ż��K�v�y�T�X��#�2SvŘ�<���0��P\��Q�'=�#Ep��q����Ŋ����� �V��g�����a�g_��Z��\ҶZ7F�`�P�.��9�e7r]�[.^U6B��RՍ�����bs�َ�zT��tS�#�q).Q
-4I�p dK��	j"h�4N��6D�ܽ/L�oD�z�"8/��P�I=M6�0Ц(��"��e��8���	6T�.����,���G�����笝	�u��6�FH�`f�Y�r���W� �\n�*SYaj��D��zpr�Q��L�{��/�3Pu�=J�P%���=y}�%^ǨM`�Q��#�Sub���8���|��i��VT���N��(��r(y�;%�<����\�����Ü_/�&��0cNW��8��yK׋)��рU;����|�@#�׶����9]�ۊP[�;�rՁ���m ;P��
a��ތ)TP%��sD���y6�^&�\�?pV��91���T+�U��t
�ܛ+0(?����?ϩ@�ګQ�Pҷ0��N���)�'�8�6#�T���q��b�����j�Շ(���"	�x�X�I�P.)������M0J"4V�S'�C���	�e��W�@�e0JUI�Q.))��u�k�6�A�ߒn}X��B��k ��m�X�=�N�y�B��]�F;'���Kʪ`r��(wh]��%�eP�>Ne�o<'TU�=�6���|�0g      �   �  x�͙�nE�ϻO�G��q�W̍Wn�r���H$����	) 	�����̣PU=�ήw֞h�deiǳ;�����>ڰ�)� �F��,�{�w��i���w����E�mߝ�����e��7_�������p�	�����]�x�������,�}���e}�1���K߽�����&Q�{���I({��BhR��dHڍD%8�����C���_���B�4>�p-�A���@IM����bh	@�D��>آMZ�&�)-VZ�^��gĵ��)nl�[�&g,��M���V9�V��+�̊#�.��s_��hO��4���6�&a*���@�
�y&]�*�	��

�`C!
��j�)_ň�-�b{e%��(�������տ򋷦���O�=��g��{���,�����O��\���
�в�@� ,X��?8y���%D�W>Dy����-�QE5�Ӭ�:�iO���Rnr�a��-hyiGk�L8A��P�SCT4'8y�.��sɣ%���`Hm(M⌔L�k��\d��)k+�e��V�5�2m�2��-c��4�{�V8�5�yࣣ��D��ȹŬ�,j���t(�����ы\Hڨ4�H�32�*��?�L㎺�jݝ�=�Z���2�	�yݽ4��;m�}E�ܚ9��3�V�3�<md_�vJd�m�8�
,w���o�)�v��+喨&�u��� qݛ�w�SR�DZ����1��4뱴,��8t�T�K�aVFeebfQb\�lDm�c��y#�s�g�]�4)d�gHk0͎�+5|gK:���_��P�Z�ysc>�LS����zw����u����?��x��?�~����wB�l�sL�"<�^�a�^�F�p�At'��9	Z�� ��x&:�!t ��"K��8���Y�=Dþ�W��Bl%h'aI��l%�}�⑽��S���X�"�c�60�9�v��Am�5�����J���k�r�X<S���ޚyu,�y3?����g�����Π��"hB	��X�j{B�ǉu��~L�\ϵ9qw���@Z�6��r�nL	��J(��+���՗?��}Qkj���w��׿��Ss�}��p���cw���6��=�����~�?�%\~�^��g~}ZeX^([M.���S+��4�5��e��ȗ+�y�h�._�]CC��Z'p�rFpSy� ^Q��0?hA�q-O��V%�c�5�O��.u�x�7?��al�CE�h)��DHI���@ݑ�"┣^_����&��s�*񑌒��%U? UQJW�F�J��*3T�d@ڣHҊ�UU�R57�昦����Z&��i��h�ۧ
Ɏjp���Lɚk�8�e w/l����,H��"t�����&zO��=1�ǲ��)U�����8B4�Ě�$#��y)b�����h-�zm�x��@�����~�%l��	�7O����5��h��4^���2!SK�ډ�vB�LBE�&1�?�ZS��,�x{�	;m��d"��(���B1y��,���̷��      �   d  x��KkA��=�b�@���~�ջ���X��%��Հ�� �EŃ"8�7�S��ݸ���N��˰3�V?���נW � ���XW?��C]������z[W_�	�� *xgd�Rd� �E���o�?-z�[�'���;���	�G�]u[Fa�f��\S�ϵs�^m݌ה @�.��׺z�6�>=�;2����&қLE�u����5/m�܊<gF�/�+�#�:(��*PԉR��Ln�׆�U1�&��YdT8��f�t�B1� N��W��M]��O_�շ1�����m�l�@���9��[{:�-p�dC� &���ao�=(���o��qd�O����LN._&1E�r�db���پ�x�`�h�~�`{�60�x&7Si�3~u���̍��5'��2X#���U��ku-�B��b���|����,�	՛���o��Y��ls��$+vL�:0v���N��~��Њ������S�$����������e�-�[y���k�KK�g���B�mu��<z؝Sgʁԅ��g�gh.m̨O�aM�=��fc�0�_+��i�\�D7W.#�[��� ��hYo��1%ۜ��Ϥ�&��*B��g��ь��7OF�3Қ$kR�qyӣڼL�i��G�	u�m�4�]���CQ�C�s*iϸ�5l3������=[~�/�D]�1b�U5���[x�ݱ�ت� �
ֹ4�d�:����\�n�`���sfF���xH[�ژ"���	AF&�~!(Ɋa�}n��%Pm6�F���a��#������t���[���,d����ܕ��YI��pg^K�\�H�K��g����[y�e�f9+[      �      x��}K�Ǖ��+�f �a�����h�΋�z�Z~�g���j��_�F[jB��nJ �@�EYӗ��%�)�DfV�22�*+��r�.��[7�;'N�w�҄�a��{Dݣl�!�|����n_��}��I����xu����^�>�0I6��?�-'o�|�������e��������d����/�[�4��*��m%��Z��~���s�0��ի�/6������?��(��RLr9ATy4���N6�{���s��������n�|u�_�n�o��$^�#�#�=LX�P�n*���L��XxLB:n�4�L�4� <f/X�R<�8�@&�ɋd���VSdy�:���� a�ܭ� bH
I�x�2X.��\8B3�\^ݾ�~׫��W|3^>�^���O�6>���1�w�O����oSH͍CL�-q��Kk#DK�yɒ�ʕ/E���'�p��K˿�)K��"5R� ��"�[[�ʥ�ʝy~�ٽ���f9���-���DY=�:��~ǡ��[��g��T)|��O��*A9�b+hg��F�_�c�z��{�^��~���1,X5���7ߛ��h��`��c.�������>x��~�?�%���w����x{�5����#�~�"�)A��wBRbEAF�2��<�Ax� �@3�1g1Ɛ*�c��ǔ�SJ��n���&�&D*��[�UTA��{�{����'����G���n�)3hOe�!J{�����Y�|RG����#�$[�:+��1lEꬊ��c�B��{	�<3���\����^�ކ��b(���Ԗ�q�T����yE�)�6s��/��-J�N+�*X�)u�A��c���f��7��ɫ�W��lz�j�`��@"j�LY��C�_�Ca��-`X��v�I,�L< /A�I���(u�й��@Qtܶ�ݞƄb�T�� �\ DB�Rf�C�"↪-e[�;��i���������Gg��_Z�F�<����/�+�HU,��$:&���_��� �p�r(9�<����@�z�T4�q��e�q�3�Ak����?����-1����L��4�e��晈��&��]��v��K�-��/����i�`���_ЂI�؅��Mr���Pb�p��߃@9�)/ c๹���\zY�P���( ,�$���т��V"]C�f�	�j�`b�Cŭ�@��
��-��1��Ʉ�������O�,�N"-���e�y	Q�_	�}C�"�*nc���?Q�=E)~����4��R�@Z۽�����$��S1�:���c	��[NZ�n3���0-\;���	ӵ/"X|[p��
�Q�6F�`�R���g����QYZ�S����V���櫙������(�!NP��}��Qtڱ[������{��:l�a2�9S� ,C՜�S�y�`��T1�FJ�c��Lw.hҝ��W�F:8��n�'�/ʤ3J��FU�atA4�-�n+E�����\�H��4^�������%����f�;]�(�G�V��Ђ�����-")������<�Rٶ!SB.`Gf��J!�2Ҿ#��ꩂz�!ɱ.+Z�=ʣ%9�>�I/����ː;��i|�һϨh�̫�T�N��&���}���R��i)��r3�C!۝V���{�2�AE�Wp ��sܖ<�	�l�p�q>V��s��t���� !% �W-E �V�-�s�og��}�#�V��˫c�@�([�h*`��5����;7ݩXK�ΖZB��.n��J=�tK40[Xf. XέI
�s�{ �ڲ��[��^O�P��(4|l�;��`�ʎ��Tsэ�Ĭ��(h����s��=�c!fp����૥������S�{�����PJ �Х�OD�2��:ܬ��h+��|��9��
Y�%�S�g�^��[�:I8�"����I)
j;?�!�bg|y��2��H(Q�B�8��|�_#}��	��vDn��,3)Z)��lbiNB�W�~�y ���Y�bK-</�ٖ�P�l`��lW���7��+8���K�_�^�I��Z-H�rN/hY��g����𐣘9�	G�%;�m�k���-8�Ö㱮�N'��0�����]��vs��� e���l������������\8��+x&p��Ât4E���Y�;���Ϩ���5f�$w9i��_������zx�0i�����2�	+U,}e��*֑℮A��>1ܒ�����yQ3����4��u�l:)P��f��ml篸�s���d�^��?�*��$���K�u�vT�ikH�M��&��v�8+z��o�ea�Mf/�I� 붔.��iK�J���3�Ħ!d�K� �����E��v�D��f3����t�,�=EL*���"z�I��� C�:N/h2e�"@�s]ȭ�4�Br� )�?�SB�haҊ��- �`����s��9V剽\�Ry,�X�hئ}	 �Ċ���z���?!�d�G�~��Ct�����@�����3������%�L�hhט�������:r��&�������uV�x_�Q	�p�T���iϬ��}��mN�U�J�SU�2+^�/hAN�&�
]+i�ص����U��-�_��f�(�Q��5S;E	CS���J���+
�p�v(M��
4��+x�"���D�B!3nW�i�pAd�ޑ�6��dǖ6.���\��BB q\J�Y�l��{�$}��=���m���C��=��Ȫ)͕����k�Peڒ8ԣ�}2t��?pb�����O�Ek��6�,�"�S��@�y ��~�/��[��ʗ�������o��6rB��	n/�F:�ZLq��j�'L��)=xq��f꧓mzgf��21�"r���v���F� �Lw�pki�|Մ�UǪ��]#i�R��
�['�3u��TJY�2*:� �=����ML���j�<}F����(J8���O�>��|<`�3�������gܦ	n���đO�6��٣�0L��!�6D)Q%��bۆc"�J�l�a�ȪX�-c[):EM��h&��9(u	��+Ӽ[%�JY�!�kC,!0!�"�rH��	nxhSz'��ƿo�����W�` X-�b�bL3��� �-םтh] 9��z�v�m�fh5�����q?��Uqu�����:�	U��g`�$�:�x��4XWS�P��g���bМK��F�_��k����<)/<��.T��S��In<,�9��O}CD"��,�2�n
T��¢�p ��`�!��HE�N��X(�����T�
Tx� C �1���I�@M�Vl�Mb�n D�_%�c����[��p���n)Q?dF��=���5�Jsdc�ؘ��1�i��^?������~!U�n���ÿ�������p6�G+D����WP�qݏ���d~�Q���#F�RN$��ήN�3\E��?�t&3Id��#z�C=�盃����h�|����w��irj��{� �R�O?�dT��[�1]b=(����1[�u'��(�V�`v,@h�5DEL�S|������6CN6Z�'7O�u���͓���I[��fnƥT��r�z��o>}vY��y"��\I6A�24w�9j��&H'a��Km��R��bn.מ���t-����	`I��3I�R)kӂ�A\�"�G��k��E����<0��!NI�4E�T���q�؀a�1�3�2���-��;��QÙN=0��T�,��:��K���(uL�71����f&�Y��i�.�����d�p=K���c�E;5�Q��E�}GA���F����{I��:AlE��Z@����~��v�P�J����<�Ԕ�[�;A��۴"���Z��fh8u�*nJІT��M��
G��!�2�<e7��]d��c<��&�v�e$8Y��m��g��D���W��<ެ�/��Ϗ^�|��.��>��A#��f�V�U�,��А�d�r!r|#js����.�jT�F"ϵ�yN�A�ld��%�    C*k-���� _DU�}TEd�G��b�e`)���c�h�S,��������l"��$g\8�H�<�m&o1���2Q���zjG,����*�b a�qJ�{@8c��a-�Ǘ��I8p�`T�CQqV�l��Y;��if��D1R����S�'����0�F���>Y+��''�>��+�𯆮���Ia]P��;j4�&Jb/�8Ha?�ZAF��J�u7���D�ߎQ/|��`݀���ͽ�;ݾz��灴|���3x@�$����#���;���[f �����R�6�La�{��eO�?ǟ�dx�����g��#�S^ �BvwLQ���Z�N�M{���v��k FK��h�����B{90BE,��	���	��,�����k����0�o��"�g���-�2xU�ͩ�̕��iܕ�#�ψ��(Q���n�\Ђ���/_���;۔z)h�w�_Ф��c�xߵK	�+{�������A��*c|�-���� �G���o���>y��+��>�X������Ǯ6�)`z/�=�@%#̂b'����қ���c�y_j~A@|��������@^KԘ\�ؚ2�����m��Ժ6�����<���!i6^ʎ��4�BsMOjT3*<���`+V��֚����	�Ns[;�^O�{���G�Z�����.�����W�����5tpq�sMU��e�)9��,�ʙ$zm�MP���K&%Ϧ3�4��,Ppf�[4�!X�-@�0�9�>[�攴SVL^RL4	���A4.
���Z�!�rRvλ�&�������~h��!rЎ�EMlF�o��!��nIG�'�&��^w􏢠�s�B 8!H')�F�_�&t~y
bV
�MG?(4�c��[� ���gҾ�M�ˌt �������,^�Ej�:����Ѱ�����%1�$�����n�C0
s)i�bS����3�	4��] 6��ihǝ����{��G��,cP"�������;9�&���D�V!���:���/hY�<�[�~C����/}���7=x�w?��?~��������:K���3z|���lo�C��\��=J3KS�'O�QQ���`
\�H�Q��'˨�i ���8�M]9�9�������o�����9��b�i#������ o#+Ml��T�v�ct�ڂ���}$� �� H*�ڨ
u+!�Wu	�V���iG���<_2���ktA�"��$�4�gz4lto��Cl�Ė8KBr��g	�����*|�V�Mٕ8���;���Э�0��3�9�AL�s/�\b�-XtH���[i�ƴԊIr�њ(��*�c*`������t��TT���G�
Y��~��y���:�V�
J�zU����K-f��/�UG�'y}�o���Y�U�t��T)�X�S�^�J#�[�i�9�I�'�e�@9t����$�YA��OB��7��'E2(7IGx�����ճ�x�Y�X��t���p�	~���W���?o��K�>N�G^ھT��&�#���ǲz��]��	����f��^���O.c�I@p�i�,�e �
�O���)[�))�����ߺ]H���k!�[H���Ĥ��T�`ۅDFv&����^6�?�B�G��'?}���O~��я��'?z�S(�.�׆[�)�
���ic�ϩ�ܓ9dd�E���{�Q0`K�y���S��Y��r	s,c�2�e��_�<&����VGx}���`E�9t\k���?[
c���*E='�W��T0�qU��i�o��
w�{.�fS��K"c�$��v�f�a�I$�<�_	�G�x���:���������&�$����O7TA$��N8�#~̌����d����v�E�^�q��S��J���G����~�3��g^���`�̡�A�N(����QQ�{N��}�Gf|�_\8�2^Xo�'śБ���㿡bz<�Y$�����o>|��hG}oz��*=@�#<��$]!���������5���V���w��$��3��sR
�b��S�Y�O��\
J�����'��c�|�a4�������o��������_�8������w�ǈ�Q��;�<�q�6�]%�'���x����>v��x��W��/n�}�ǻ!��W���O:Q�G��گ� �gXR*�v��������*�^}w�g�}����a��_o�U�z����H'�����L�;ݜ\�������ݛ���+��w��$�R����V�U���Y�G�y��;���>BqQ�Qe��yB���\� S��*`�Iw������ -t�H8�F9!)�Z!� zfC`��w >�m
��׏���sg�=0Lv����uONe�"t��2��|���	�g/����:�dSŮ�X'��m�ߩ���J�x-ٽ]&{�i�-�X ��[�;��nbq+R�^oP���=]�=E��@d�֙Q(�V�_%���Z/��s5�Aju�i����+�Ϗq����!l���zt���8���J����c�����޽ܲ=�@W�tK��*�(\��N�~M���g���[�#���O��~����~�ʳƕ���З������|�8��儆/H�=�2����(�����I�w�s�jЉ Zs��F�C���uH����6𩱔��@kjY�+S��A���:8�e�M����6<��H;�՝PVj�L� mH��0�[��#�}���V��� �`���E&�	u�`E3j�{�"��tiQ��.��e_���}�~�S�p���#c�Ǫ�pΊ�β�D8�G$c%��C8�|������rC3�c��FO���`�0#Z���C�d$B�B�����@n��O���r0�%�%�C���H^��?�#R��� �D�;�͘a�,��i��3%�%�wokLO�k���u�Q��*q�)�8�_�ԜZ�v���������ZԂE�q��U�=i� _�Z�Up�ۃ� ���ZQt��̿���D�V�LL?��m`�J�JrR+x�^+z&�Vg R��W\*&s #�$�<�B
�������d�Y��.���`~��·vb��;�}I#R����(m��IS�_��-�i4=����S2 �Mw�&�'[�,���+���w�R��`��QSd�:h�&��4��ȉ�sG�8g�����h�8f/h`���`�%����&�vi��*G��H�:���Y�U�??�j�
�@��*�p�T�c�M^8s��
"�&{쌊�Q4!�(ZD��b��4�,���e��"I�Uc����E"K�'�0�Mt�mR����خ%���2$�T�)#h��3*�Z�d�ȡ�n��~�<�
�~���&R2����Xr�	cɐ`˙0

+��݁0�f/h���D%��M̖��G���Ɛ!��(NɫtF�N��d�櫾V;,��0�P� �?�j���������5�}���I I_V�r+pa|�T9�h"qF��ڈ錊��w���ء����O��I�>��)>R?g���Q�.	J�5.G�$����rf������+2��%$�&��~�!7-q��k׃��F�/�nрٹ[�:+�5,���ז��!�P�(s�A>�^���=�1� s!Kp�F��2E�4�"��D$�poS��X�?��ϝI�vF�o{�( 
9! �
��JGYs�Uj�eT���\J-	��l��$a������N�"�)�Ŵ���x�:� (8�i9�[��&�� �\���_c�/�"�)~'��@��>��J��E	�wP�4�Ktg5�6st��� J�m�ˈQ���b�R�E�n�#���
c<�%:C���/LxL��0U��*.Ln�!r�[v�M�;@��$�i��	�%2����&P�}���[}Џ~;.�6�J�i�e�i��-��Y-D�b�T����gj�əd@+G�J�1�x៶���x�U�k8g�'��2*�@��HG�M
щ�^KϚң(�8%==�7�7��$�weⓅi+G�L�������/�|��    �ǨW�&�
m�f�$T|�B�l����S^`JJc'멦0F#7,�}��by��_��g?�E?�-�̪���F���tZiE2�"�Z�|ǿ�@I��Q��`b`fy!�Q��v-����Z3��rcU��-X[i����T�\�$Q�S1�j��4(��� [2���p���V�����I;zq�2�o����C���G��{�]��a��	<!�!��'���W�E/�D��^��*����q�cř�&�a���$K�3p���\oz��!��|�w����s_[-�$�=����4�?�6d�u`��W�x�q�w~���CU:��(�����>[N1�%������iH����a������O����C������~�����,���0Eg����m\�{��w��V6�X�Yc��_Ɠ侍Y�x�$�<�����L���Z✧8���V�{�LŪ(���쎣~�qRB;�`6��c�<s1	1����l<�j���K�N*\��(1	r'pk��-��d�9���G�<rv�����G���l�	qdP��Q(К�������4��S|B"���cE壱�SB�`� %v�>3�G��1����ܟ���K+�WWV�\V$>��J'I�	0r���}���v�݉J�Ϩ�x��y`_�q��G�L��9Ǖ�q�@5u�%?>u�b�p��g��'�_#.S��k��*�sFFT��ݝ�3R��M��Ө.�5��9gg6�lͩ�tO2&�w��&l��3��ǟ��ȡ���h��ԡ���	hs*j1A&m�8�����F����~�+J��'�@��W@��u˕��)OL����#@���^��K��������89��\(+90KJ��-�T9,�����J�-��P���X��<���E��x�����ܺ�-~q�_/d<��4I��T�-��N���F�5�W��0�X�����WQ�L@�w"��`�0:��<�'�MC�wu��GV�¯-���(s��tËv�qN�U9�F��"3�)���ET4$$Y(���ʂs<��4ڽ�E���)�=ir�C�hTF5l,4K\��vD��T<P21�v��4�S���6?{�~~X8�J�8cΑ�aɨ�Q⦀h8I�h��*�!�ڜ)i!�"��HE��IQ@���Pi�C����`���V�L���;�4�R�*$�5+A&�ш��'�1����Pm�z�oG�|�b��~(5��x�q���v>�=Y�����mr��jk�������ӳ�����=�����b���_b�:\�t����E��{f���H��-8��v�p��s	C��W�3���H����*�k���ZRX�����q�`&�T�ǉ�:2��p�8�^�h,j����q�tR&�9�c^G-y�|�7}���o�sg8�5�"��R���Q�mƸg��ǯ-����T搆�S�@��۷e<$2�����!|V��d���M1�&�Z9A`���}GȊA'��(�����R|������Ӊ��2���Ni�&Csj�o���H��9^���o+U9���<κU���X�=��v$
�)b�Ȏ�J��ͤ��Ͽ[h{�ٟ�a��q/�aԎv��)Ds"����E8���M��_���T�8��ɭ�����!��"�s�ц\XJ��4� �:G���T9*Dz4fF�9M#���b{�Pmj�����χPM� 0�%g@�Cx��D�����ֺtz�f�X���vX�}�`3�lA�#��[�l�g,����sd��`��X��n?F"K/�i4��������q���Aw�:�tZ�R�'$V�=�c7-9����c5݇�7��vw����������8��)�����P��(�'�N�%��Au|��F��]�<0���Y�2<�=���^���~����ʇz�!&�	�~^�@H�9*�s竤| ���~�S���=�z�`�L��ovӍ�_wc`LV���������.Zr�'\y��s/�u��.���Z�0D��e�3���
l�*gV�-zͬ���B��YF8�N3K�d
��R��lL���r�E��n��0Z4�^�6�6�ç�V���X䘃5++���8⁓Ӯ���)-����
��uX��OW��xq��&����|��c�*d���Xٹ7�dI"&%��	�S�]��ɜ�T�WL��p��a�T���FM��S1Z;�CZ�! �g_�?$��o��A��k6�N�Fvrj������
��eSU��Z�hp�
Z�Jbp�*H#�V���� ��qc�c�o�䙿Μ�%6UBˇfA��t���(�lVΦ#^�n�����d�O'T�$�&3 NQ���rȄ�D�~/G'�ە�o'�!�s��ԜZ�!��	�Ӥ��P��r刚�+��PFe[jB�����q���\6��cY�bɮ`㦳&:��L����@-	�I�s'�˕#Z-�c�6) ��أ�҂��	V�
�k�c�?�SvI�{z��ǟG\l�ܜr&DiJ89gᩋCPBz��9��I������7�W��!\�0�P�02�8ўI5�^��5J��>c��(�5-S�K�;�w�챷�+w�'��g�q�'��Ek�e���瑭)���6�/�� �ÅR��P(���� BI�B��g�����@˵��@O=�����%/;����
��D�|_�X2��u��ɥ2$���~�>|�f<ٰa"^]2�`��l��$��x��������s��_M8E�ҙ@n�f��$]��X��4,�`F�ܕ�rW��|�|�Z��e��d�(������Z�Y��>��L
rIO��+��.����k�GmI�ʩ�_��*�1�.��62���&(�\��l�դ�bǬb2<@�L)uo�6�7�Ɗ�s�	�{���� �u��o�j����K��${4����	���M φ�c
F�+!���gTtgoө��um���r��zⵞh��Z��՞BM0k���ۡ�n=_S�%KM�J�Y
�c���^�v{�����E}_Q�����Q���s���}������{®ݫ��;]��z"7��C���F-��
��J"N�$6:'�(��	1�:��_ml_L��z\�j�(tSI)$/�"���?L��tQ�=nC�T�i���i'�7�%��u�"�!b�<�JHFSv%��rWN�)�
ۣr�g#��5��L?'�
~��΁%��*f�Բ���'��O���S�7�[N:&���K�T?�Կ?H�1�6~��W����W�D��B�/�u�my�%�R_� �Y�'�Vh)���yҺ]}=p)���
Z,�V@�T,��g�f:*���`[Un���pN�����ӾH��{�n6��G7CU��	��?x,�^��s<�S��?��E�[��;����+7��'��PB�,P�2l��z�]�����S�,��Z��c����Dg��[!9M��x���_"|��j��� �OB��mF�Ԍp�p����M����3��#]o�Z2{����07�m�q�X��:"P�N2q��2�n�0��0��xk��ଘ�Ca��s?�ڷhC�
����|v�?�-��n��{P�6�`��d��bs;ƌ�EF���&��i0�e͡ˈ����hC�b���5�+�`�	|m������v��kN� |[��ǲ��u�57���5Gc3��b�a!��`qq��|�Y�|��̃��#�(����֚O�s���?����Uz��8}>)�Y�����2�p�}0S�=��k�&���(�`����`�ō}��`9N ��� 6��x���l��O�w2, ��u�wx�p!g.���s�Eԩ��ྱ(���z-��`'�j(u��VRhV�q�@���Y�o���24a��Ī�l:�M� |B�w���67���N��/+W���.���8{N3naٳ�̄X̕�=�p�ْ¡	�*kY��
w��
W���X�!C����}O}��t�⬣�T8O�UHl]J�]z��u$
T�I�N�/�P�G0>WK%�0�.���,�-�^>|�hnFB�[�Y�7    �u'L�8�#�*saGM��`�W%|���=�.��pq�+<z��-��\��L�B��E�h�����ӜqT {(y��������*]wd�	(8̬3Dq��v)�b��R˭�?��P��� ��Y�V�h^�;v�֥���=�kM�P�U�Qd C�@��=�0�&mIҮkC(��]�m��nF))j������T��*\x��8�4�aP��ʕL f�1��=�޲;|��'�O̰�ێ�t���i��G��}������=�s�kg�@���qr�8�c_�v�
�u���d�l
4H-0e~p�]E`�3���:�Ճ���!������^�1�k`
5l�jA�ӔJ�~X�1~8�E_z~h�З�������v�;�'���6<]�H��C��^�Ɯ	��-��M�/��.�����w��B,⻰@�'��%�,����5,��+R��a_�/�����v��2k�����5�$���0k"���I2{��di��d3�s�X��p#�)�T<ȅ6a��:�X
{���ù98���?�U��ͨ�Y2�s:ɼT8�U,�tU4Ù��ԙ������C �F�Q<�L�Q�S���.Te�JF�T��˨�2U�2Ѿc�q:���.
��x�tΠ��f &TܿE�%'�T���Đm��$[��}ϖ�~5���[:�7�+Dꎥ�fU(����b�ƚ�}����X\���=XyCc�$���:�r*�c@P>Ѓgo���|?��&#�<�$�p�bh��³ʮ&�P�:���&�*F!4�ɠ$�����$꫒D��B<ka�z�( hI$'�ݐS�(��`}H�?`���I��"�59<2I��F�^�h���˩l��;"��Q�v�u:|�$���p䔋�
b4h��!���®!vz��2�ʣӸ�T$;�����}��>��k���&|9N��JR��r�a����tw%�c[�ts"Ũ�.�ʝ�\s����lw���qU�A��DѪ��~�}ޫg�PJ��k��WO����ء�w�K]�hq,�p[�fD�T�j x�O��4�j:�
�::n^��s�nWp%�@J��Q�s(nBD�?�7^77_�$�������; ���/�'�3�Gӕ���=���{$;Q1��5=#���&��c�M���w��]���(q����NQ��K����Q���{�m3G�.��C&�|R�ˌ�r;b�1� Q!5��>�3�a,�����-FM���#D�ق5*�*��3a;��NT9��D@ś�G���.���IadN��U>��hb_'��g�����ߝO?���K�:#�a	g3�H���?��]i ��u���Ѣw��`���'�8�-�NSk�K�R
�yQ��q�̅�4=Z�Z�=��������?p���$�S�B����ҹ~j͎8�R�����Χ�@��ӄ2^����Tű;)vR�0#m�8i���W��q.K��;�k�I<\w�
cU.puI�Ƃ�PM�hq��1�rRQ��6~�;�E�G�lǕ��7�A��k�J���<N�����9����Y;�W%��q��k9U4�&�B�G8ݛ�h��ZJ��*�v,bt�H+�N'�	#���| bͶЄz�f�=tWODx/Z�N�%�s���ώK��V��z�M����+�١>$?Q_�ݓ3�'˴;0�釶�8��c���������b
؝���	8�N:ÕI��s� G�'Ď�0����&wcH"1{�|�`�EM6-_w>��%��Z�e�
�a:ݣy������k"�&�Z�찆�죦N�NZ?>5,�2!:ńJ
sj�T�$ɜ�	C��,��R���*ec���n���.�4d�j��l��c��pH�x�k���Q2[��ܡD�8aNe;K��aF��g��D��KN�.i��ym��;_R�Y���d���	w�?�.x�0��'��a:��.,!�R�av����GI�%A{��g�a�c#� Z>�y��V�g�7��^C��1��ޣ�&a鑎*�����9n"t�S�[��E��OX|w@�`�y��7��x�Ή�s��,����N�d`QQ�'�J3*��Z�:}��qKU���e�/h�]VaG��V::��h[�N6PV|р��,�nU��T��w���~wCY�~��A��a7���*¯�@5V���P�ܣ|�Px.��`�x'��`���|d�*u��^j9y��[�m��$U0x��8�Y�6 -ڐ���l�U���1ڹV����+�_\�o�xc��D��g��qRpƄ�����I�z�T�V�2:��Hm@Z�^3g�1DM2r ����!�܊9��oN���ҧ'�¸t=cNqN?���RJm@����C�2��=�'��{�QN7�2ѓ�����R��2M��=ϯ�!-�����~�PMӕ�K�{��jN�v�6 �>zN,���r �w��G���q�(0�- ��EF�u.��+��B��T�p:A���+�wAǟ�D�=��u8�Wv��r�iˠo|��6�}XJ�9i�Et#��!Ɂ���='!j"(_>�w��J
���fF���@ԍ �Q��A��nr���k<4��!`�x4�Aw�oE�������g݆�C�_�������B�i�e�WJp�p����M$a��PӖ��/hZ5n��� ��;Oq����%���v���&HF^%�6Uߖ����ן0�F��1d&�2.�))��&Lio��9ᕡ�օ�fC���)aƨ6��j�?�%hG(S��4ԁ1{A�^Rյ{��&�E��Y(�gr�{6e��Z�NS)X��-R8��8�ߺ`��hY� [��4-,+Rg��s2����1	j�x`���|�l$�x�(�þ�߿t@oh?���C��������Z�հ������3��M8I�N�uBp���T9l���[T��Z}�[��s+{AgO(�xֽ� �գ��{n�����)�9z�"���5��bD��U2��xÇ�&cl����1\+<��R��yF�\��6dL��W��a�Fd�� vQ��e��"A��L�*W��j*xJ�4�����$��[��j��>lE���Gh��Ko�*.���9Ԗc�p<=�@�с����u\���`��[K8�<�P���C�/L�q!���Z�}̈����&\lQ.	�@� �V]�|KM��yQS~A�JbQ�;=|�4lm��Ω�����h����"(���d�S�%�
ԠLQ&m�t�vf���2y����?~v�͹�� Y'$q����pb1�"na͉�,/�ژz�.*�;.����s��R�z ���jl~$0b�����ŝ�ˊi���LbK`��mYY�����=/z�=�@(q�G]@��!�0��Ɲf9q��P���8���?h�t!�H��P��>e�&O�n�w�O/1�c%�q;)��)�����o��/�	N�S�?ųA�dU���xV�>�q��Pjv�����ڽ(*�g�D-�R!"0� c��A��ʥLU�	�Juj?�z1���D�S���������L��Ý�el.�U�s����@~L�A��D
��/?���߃$���� �d�1"��T+R�M�6y\Z�H��~�$��*��6#�[��$�w}⇗KP����Y��ل�
n��`���ӄDpm*����wH�1'�ƃ'\�h��Ljb8_��'CJ�!���%@� P�!<5�2*警1��Y���!{Y��ÉNvJ�^׵�'�iD����q|0$98�
�)�H L�0���	I `�u�\�e_""cJ��x�*-Y�b���ر<�9�YX�`���h�烄�^.�ՙ�P10�＿���A���	���|���ݐ����0�f�⚁ZB(�-1- "�LƲ}�(&XF�j-Mdއ�N��-ph,6<5����t�	Rڂ"j�̘���J�K���#w>�̠+1N����Ld���8=pK�4j�������V�_�Z�3��(3M��_
�ׂ5'QP��3=+�Z��[�:*-��RBKr^�� 1/    �_
'�&z-�ȃ/V�Î2Is=�P�{B���"�`�
�r���]A��'�����	���:�e�D\4;"�
��-��S1{�4�*ƅ�b*	u�Af�^zym���ʏ��Z��1gl�YǴQ*�s&���t���
�*�����:����Q:������Z�Ф�~g8�����Y�I�}Q�t�$�VD���T�4��('s����q����[�)�#�ʗI׼�lf&�_������	���OT���_�VF�<��q��V�琔���Z�%�u2����^;����Z�?x�,5*��'��KC �[qm�-���ak��� ��ʂqQ�N�S�X@9�|L	�ύ��@�(���I��Z] �$ -_1��ױ������WBd�؉��>h��\}n��XCi�����a/9���봓���g�: %5�q�J�bbm���gd�&{o�2s��N��� �$��
{�Tܱ���,��,eo}�YƋ�zV<z�קw����LB�7LR�Q+
�O�"�T�~u�~�e��)-�Ր�e�w�=������"j�Ib�Ii�wPa__�
��]+x�O��;Ա�w�Mu�*���LN�������|�m�&��}�aiJxRQ�B-^�9�j
�b��S��W�.raL��Pw?���!`FY�-�嬊�UV�&V�Eʩ�Ũ��?���C�0I��~�R�&��bH䢫�M���s��g����.����=���ԔVBH�o��g9�+*�������}�_�1p��˥G��qz��g��
�Y�)/�+��"E�b��e�//\e���]�u�R'��VxR�<�M<����W�-dރn 	,��DXRŐ	����.ɜ���|����3Z)Q�q"��&���.��5��q�ś?��g�*�<�Π��XfXa�DT<}��uΔI���\���{C�)e��Zξ����r8�2gYH�����巟?����{^�X ?+�`�s☺��xI��[B�Dc��̹I�Uca20����*�h�� ����Ƥ)��ZYO���zA'a��o�7�g�W�i�6�Xf�
�&C�Uu��D��C�3d�`��
gd+E�-�# Vر_ �Cj���NɭI�[��$Re��	1q�?z�(��m�Y'����Q
�ɤ��@��z��B���+��|������:q
�E��(�6��j�sm��+��
6#ܖ<s�	6P��yǉ�46$Ԋ�k6�DNOϝ�(�'��:!�Mu�QFh�1!��װf
��r���A%p���R췈Z�d�Q�t@Ʋ&B1�����0���7�1�M�O�@y�Z+� eˢ�J��ɨ���RX6���ꙮ��k��J�q�ς����Ŵ_HaI�n�v��D�A�m�e$��ɨU&M����]�2�֊06s!La�
�UvM��šW��¢v�VlA2H9c$ɪj�7f���]O|!	.ȵ��äN�Ma/��U�L
�UW�rּa��?s6wot�>�p:zǌ%��E�iG(�ݚ�P�+*�w�ȵ�p8���:�UH�Յ�_���m8_��N(�m	�2�q��ZJ��h2�P,彦PB=1�K�epv����J�I��K�U���.����)C	�rk;ijP�D�0�Cd
xF�rk2�p�0��yw����	0�:��P��tj��
ătmV^�m2�NX�A�(՝`&�
�Ī�O�}<ה����:��z;+4OKm2j�5��5�ո�y�N �A�.1ptΛ�Z�m \c_{_��o�	 0�҄R�`#G�*oڪv#��-�����Ϸ�a?��2O�$�*G&��P�	�i��,H���ϡl�]$�c&�����){��W��f�_����(s�"��yYuB�.�Iϟ��u�ɛ�HH���/��ә�L1��j	uڝ�m��g��8�ig���y�2K��U�6��9�S)��>�<Z��[�`��T��"je����
{�	ΐ��g�3�N$@�4.��6��ɨ�x��!r�LF����c�%��O�_�|�+��?��܏���w} �����O| <��3}�(Y#XǝJ,�ƐXY�{�1\Z.)z���ٱN`O�a����4�Q+�n���r��+0ד���N��1B�4i"$-��ur�ȴ�8��o��z��Ll����p��K�F�]Qp�ubrKp�����h�¡�(CqF�u�F��j�NdA���Tv\3���	��3�4~z-mh����rĬMp�[�^�<�B�HB5O��S���^��ґRf�����?c��Ь�-�VtX9����9$W`&�~{>�;��U���LK�2j�m]���[��:�?[��a��v��Z�D[��q��i�ZhW]bY�(�y�lL�y�x�9�m��5�@E�"~��C�2�L�a�\��:9�M��S���K�aG��v�u�p��Ry'��4K+'�iD�"p�����X�-�8KUwL�V�e�
kVw�W0�|�߬�}��4�F��'�
#�X03y�dq��
�����<{�q���Zc��:�#&�
{�����ů�ѷ���
s��cF�4՘Q+�i+�_��;m�~�!��[�0x(;ƭΧ�$�
�ڪ�O��|6n��F���'rl���IhNM9�|�����S���x�j��2�����Q+�jp} 5��N@��n��4b5�V84	(F#������ԖQ�ka�3�R�4{�d�Z�)ifx7�ɮ pXsX
Td�Rb���k/yһ�v�؀�S��5�.�Q+|�3C ��>Tc׉(��dG�Щ%�Q+���³��6WT��5֊@�tTB����Za�d$ �ԯ͗��L�82�����$:=C%�����j26P��+;�K�2��&T��^Q+��9B�R}� �s|��MG6�3�֮�����̹�Y�DF��fs�'��WX�Ul�_�f+��kj���	�"�m��˶��D�x5V�<>�̓y",�RB��'&]�b0��+�!��6K$����hU��}�~'���\��@�<o���$�i5�kE�W���k��ßC?��&/3���'���q!�3QRl��f6=k9�Nt�K��_g}����T��2ĤC�S�t}�tɋu��y�V��P̖��M�a	�ֲ����&v�kKR���?\��q���e�R9�gI�bN�l**�˵.�ľZ��U�U$	(�T`%��]�[�
xAՅ�BP�q�SE�f��<򋎋�a�"6	��T^a�-0A�����*�F���fĊ^���[��.�c��/�ԊR���k�/0�kFlm�`⭒�%��s*.
�i����aQ��8y�<\���vہ�䈧�
Gx�#��_�n!H9/��%�)��
/-7��d�1t�A?F��!sF&�=�qKo�����D��6j�X)�.�|svH��_*���+ �in���Ңc��2W�\�+F�-�J!��bW�ԗ��� �p�3;.�[�V�t"���+��cv�q��N�t^Ikh����ƫ4<P�3�eK��9mvKK۴�%��
�dFX�n��������p�vnja	���t��	'ȫ)�dI�̿Vf���QAҳrr*fbX9Q&ӸB9�	�Ӳ�9Q$:uiwM�q���wF�g"*EX\Ice+��IQ�B� ,�~���k`�W��A�^���OY�M���$_�)`I�Mg���tF�̗ɨ��u��8��	q6��yr�*��Xh*��W����o���O\�M�%���Q�}3�J�n�"�y��1�賍�d�7�~S��op�7��E�[�kw�o@8�fS�
��*̡��pc��'����n����[�_��O����F
x�';�1�=�^P�Q|9�E��z9{�7����ҏ���֑���5r$���/��0:���!���'$y�#|�����I{"'��s�j��>{A'E�I��K�-�݂�-�]�ט���7��B���w6�r4+�/�/(^�-���ވ�G���$�� E?B��X��<�^І����C���H>�����	e5b�;� s  9a�9<�}�hc vJ��c/w�R5��ZpgAb�)*�߆23h���a�{�w>�*��=8�SH`��Xf�[Ѿ�$�j�9<���`��]?i�*J����#�7�@Q�{Pi���2��`����v������{?��<����)>���Θq*K�k���6�7���_�_�㫒�_�ݏ���������̵Qk��C��C�`cC�-̧2��<wFE���#3���Ïz�U�d�����t�N��=d�,�����Ȣ%��L7H{>���aE����:��U�|=�5���or��{T%�&RZσ��y���SRw���T&8X��D��T\���Đ���h��9�K��%����}3��~�@|=(�����p�G:�a�����Tv��7��b S��?��]V�_вJ)�`�t�K�v������^\\��L;��Zx(�������0��0���P�,����L%�P�&`������,s��o%Ȯ���p{ژ�2kb�����O����R�sJ�trA`�0�7�tN��#�_�� ��y藯������ky�����v$˵���R�S
5�zs1�N	�u�Ak��Z��߽���օO      �   5   x�000��L-�5 1c��� #Nה��rƜ�E�e�X�c���� Ϗr      �      x������ � �      �      x��]K�,�u^�~�, n��g��U8���/��c[���2�M"۹J\I0���<w{����,V�lvw�z�����{g�]�;�</~��M������W��y|�������>>|���_<>�x|������оs��uc�w�/4H�}ȷ�q���A�̿(@��3�{�W�Ϳz|������?��ƽ헏_?��'��կ�������yϛW�棟���>��)35��<bc"�)����/�q=�,�P���GZ5/���H�ݻ�)�aq�/����wt	���7&����:+��Ӱ�4\� !�u	=>����{�Ѿ�Ʌ�i���'JB;=3��<��%�[=�d��h���wq�'m8i���#K�F�T��wY��������u��~��?��O�S��������g��'wv�Ɔ�ߊ�����ԕ�x�Վv�^C�#H�]���:�g4 oi���5T@�K
a�#�U`Z�^������k��X������G�U`up M�ӏ:z܂�3T�;�E{�7�E/M�(L��h
�R���\S엵ƅ�N�)��˜��^SF� �"���[�)tהg�)��-�E����~A�
tH1��u��:�]z���y���! ���G~V�~zWp�Ýe��u�}��b~�4�'��[���{���S^g���JX
�YJ��(�vO�=�'
��Ҍ4��z4�~*�bL�	�<&�P�S1N̈́�`�r	�~�"��<�G� ���D�ґ�K�,�i�(0�T��%+�9K�����	��@�
p?ՠ�Ryz�,��>&I�pf�< �Db2ș�	H�ʒĴ�
�@�1W,�,�L`�ka�>v�,\OVR�t�d|rL�����)_8��#ogY���3O_����u���3}̓ޚ�f���ӯ��������>�s���q���8��]����>���������3����ᕳck������_��H��
����A���U���2e�����{?z�� @���^�Q-p/�8)�"1��<������@�� �Ty�����s��ا����}��ϡ�96?�𚅔F��4�����ӫ3{�����������q����×N��o��B�wW�g�Ŀ����b�3*{O�(�|�Ӄ[��4�v�̮ϯ?|�)�W�{�c8�v��/�;����H�Ϳ?v�{���`p�̇]��N��l�߸��ov&�g�)��~�g�p���{��}H��.����o��������W6r���S���ǽ����A�6�o��IE�=n�,�P<�κQ��g?��Z2%	J�S�ڧ�!I�S�>%����hJ��o�;�OI8�5��o��s��6>`f�_�I���[���}﾿��D)��~�0���/��J�F�k�����hʉȥ",���K%����F[�=���� T��{�gRb@�NX/�Ƨ�K�xy~%�7y�fR$�)�d�d9�R��
�)�4T��<�r�ly9��P����#/�F�+�{�J�Ka�x)��(E�����Sx�%�@�'��Q4R���oϵ����\�����s��1����KgD��Y-���Dw��o�'��_�W�i���Xs��m�!��G�}|T^D�|�3�3z�.<��%𝲶����D��f?;a��,kL�ڬ��L��πa=���d��#�22�=�9��V������N�<~޼��V�C7XȅUoNl�����ni��k>�W-�v��# _	'�=$���g�W���m��Z�D�cy�!�m��y�X!4�gr�@��FO���g��m1LC����>=Q�y���I!ͫ:��������'&���@(�-C�L��U\�!��$�W=�/(R��sin��,�����"\*�]T\��W"�q�Җ��n���V;��"T����Z	נ0�S�<vyL�< 
5�{0�$�4�����oǃ�n9JF��*�{fc�I��R�[*������i9�����ymFAn����
��j-��&����XM�YQ��\�t���]kcIL����b���� ��&R�q�"C8�cyp�p�XC������m@`��Uu1�<�X7�R]�7���v���Q��+�j�]ʓ%J�!�ZiWH�w��!-���J	W,�=[S�.*�1���T�o�8����P4��� ���=�~
B���I��=2{IBS�ҕ��m�����Nl�):��U�C�gʡ��5�XI1ߞaVR�Gr�Łk�'�����[f��X���<�J���P��5 ��h?1�ܓ;��Zk�B F"���#K�/�Cq�>[�<��N�X���e���$乓w��ݽ@�P}E�Ƚ�� Z��LQҗ�Ȓ��@��:�����G ��d$�n��;ۯ���m�Q�t&��y8���j~��K��@)�TG��,�6��nW��|���d܀-/掑.�E���]����\��+��J��G#{ "�0HE�H�?�S���\�R|�¾�ݛ���n���j=�&2u
�ʻ�j����n|�L��d�W�}�"����Ju��\A��CI����y�ڴ��B+��qd,��T�������8�fZ���F�=|�s�����>z�`�j���F�Iݴ��G�;��UX�.��8�SإK�K���F�vcc�*��b�sbg����"7�Vq�z�?�u�����p��6��V���r�U�X)�2Rx�E+��ۓ������}�l�lOF���bO��n�mN�`8ɔ������}F�}�mzɟm�$�p�D��Km����5cG��v��:n#��Ր(5%Q�	6L�8��U �A�I��`z2�@@iuÈ�*#�<-���W]���Q]�kT,\vD����Y��^\��7fw��W�{�@8%(�!�F4m�I94�joR�15N߶��6M������{U$�XMy����,�D����V�U֋aJ��S2�S����5�> �,t����gD0BK��{ZD�yZ
.�	;�8D��$lZg�!�敭w���_�6���K_���vM=�@�h!��bP�'����!�{���<��_8좀)��3�0S~�w~|G�?x�p�鶑���6ǿ�:��.�!q��S80Pa��l2�gVC�@a�g.`¥�=����P
��@H���L��G� ��Q�s��p�A,�c�| �u�˩�{{��SNxh#����1��!( ��C���m��p���*��]+�H(/�y��#��P@(� �Q��jHd Q�~���5�t��M�룅U �d(:5��f!CK�Ì���[�i�8!����nnz�*s4~�I�S��/*/�?���ty��q�FN<ʮ��$G��}��Ah�����|q~���7��T�qI�Ȭ$�a3��r�zt��]���FI�Q�I��Ԣ�j_A�
_���3k8&(�[��N�]|�#�r,��o=�����~���P��vNCD�|�hτx�MYUz��o��v��(3�}DHK%����}��lÃ�O�Ѝ����P&@Z# �8�D��o�ۍ����[6V8�8�2�p��[�ܶ����J,mE�s� =�ϴ�C6���հYt03d�,���-�_��{Ʀ�2$M�*a_a�ov	��W��I���2P.�XY�= ����=nq��Z��[3V�֚����g���"º��p������u�'l�֪)/��t1cD���1{��Q��زfI
Ln���wF���{�\�+r]���o��q=������;A<_�^�b�����o�v�r���}�$�R٫�o^�3A\�ߘ�!����^<r�y���.��U�z��k�����?%l7�i��
���� <�}2T ��p��:�����=����3$;sO0��w�U�p�
Cb��0wy�S�8w�8�<�1�W�`�@�娢��v��Ľ���GY�CQl{$i�tg1�"�m���R�t�>�@!�sB�#���X.?ϭ� +  o�ú�G�`�]�c��1o��⨍{M�S�|Z,��GF�B����C�Ľ�aE�������bJ�|��"�8LA��'�8׭>�#0_Z'À���b�6����^�l�+��4���$������1�w���.�YC-��kY$w+�$5L��T�%�<-�F�G��.���r���MS�FHP!*����}��r�-���m�z�I����3�����rH�4�L�h��.��,�T���zD��]{g��n(�(���9����j"�:���@�;�Q@{�f'E�R�/��:e!Qc<��n��|�"O���=�b���{��=�Ogē>ܞZZ�N2SkHj�y^s�tn6��x�I�g�������w��N�p�=U���	+�IX����
�k$�p�k��o��6~�钉�. ��$1�b�鸰��R���b�s��U"�Z�ȳB�"?Np�yu\�!��6!��LY���j��1}���?�K�@���J�=�1&�F�Wc�t�P�l�ɞe�e|�FpP����a�`��[U�KS��W� �q��bޚ*N �G�ࡴϐ?��sa�p��&�X:A�����M��ye�m������32�{ ^�S~@A��ib{R���:ڕ q�Eޣ�ڡ�5Q4� ىݵn�Xw�j%�I)�׶�+�Y�P�u��Fh����3�`�� IR�,���)��󳟀�i�����~���gZƬ��gE���&�=�+���A/2e�|I-���E�Z�'zƣ+����F��w�Gv2f���#բ�"˧o{�@��r "���讼�0VS�MW!�,%QN�1��l,�Պ�6���K��=����8�
N�p+5ZTs����Ra~wN܂�(������mE�����UT�u�{ew"�)���Z�?��Ϊ�
H)r�s"�Lak��Y��#�m�F���P�Q#IŬ`O�<�n܀T����;q�Ð\�di��?].�L�ܵl붒cC�P�x�uh�q�M.�
3!��V"�m�m���v9�͛@�20.J��]�v���ٔދp,m��6��\�[�su�B�:_o�3��{(ͺ� �f2T��ܭ����@���� ��Q@>�D2ȫz�&�����hL�_A�R�9�<X+�������pD�����#��P@(�D��f��"Q�p֐!�UH��ѩ=�S��R�Ѳ��I�3!��,dPM�qw�+"�<-DAX�x�o���M����B���G$<�+���&f!
G9��O�O�Ή��{�{IAt��5,�m=��4%��4�Hy���D�)�6�ve*+�=ޫ�^(��a�*�i��+���%����I�W�=�`����8�7�����n�!k��TV�G��\Ez��t�&�
�&k$�յUC82����<�[+�i*QI���p�)F��mϔ@.N��p��\�D"Nu[�V��t��ɐ���n&��J(�+�(�TE�$��w �S�6 3gsU6��K\�x� ��j/2%�M�B��5#C? �{��D�U��ܹ
��jF-2�WsSfR�Y��rVɼ?��,��@����O4홍E���m�'yې��%q}[������-���5h��ő�V���K�N�M�Hw:�:���D��(�/��emi��Z��օ��0rP)}N��t�@?b�m[׎���Ӯq����KSi�f!�o����z�w��F����+h�W����M���	%22S���؎����	�#7Q~��y�f;����ܜ��h�ki������rsb7W8t��7Ǐ�R<�p��ц�����V�_����cE���H�z�]Q�u��[���?#���^��>b��̈�f���gGJƩ;x8����l�a�<�J��2�D�7�R�o�I���L����ñ���%����7�P�%O{,j��V�K^�bq��T�DJ �@���R(�i[}H��"E��BBT�a��"��Ɲ�a�AE8(7FG�#O.��a�`C����Eb2A��/"��B��t/اh#�Γ@$�YZbD�X
ra鑚F��h%hю'3�3�
4M�H�fO��j@��X�Y>��pd�ΰ����gB9��6B�;U�<D�iTZm@�m?�X�t��_�������bcT�}�� �b}/ �Q�dy�"��ڷ2�5��_�5���� ��B%	�7��%f$p͓�9�p��/��ᴵ�q\C3�b�˫Y>�̾�������A�8JGɽ݄�h���u~Dtܱ�>�C�A~�s������G�&TC��2�=o�[)�h��;Pg�\������=���J����]�1��������( ���Z*�0N�$Ջ	%ɤj��94fA�+�zb*���T:y�3����|�E���;�k]d
�C��sh����BA�t����sX 3�ׅ�tb��<�y^*ˆn�0ca��?y^���l���cb�:�Dܬ��j�Y�m?\���b��C��A����i�Ʉ ���8j�=�v���N���%̇n�1C�%�6�>�l�zu�{���ͥÊ�Z2H�(��������^�x�j�I�* :	�KZ#ڮa�H�_Z�/��(�<���.;g�8i��\ǪJI�ڡ*��Xr��
��2���A*7=O��W�4U4�:,�9(�����2I�yr
��J`z������PpeƉH�ܶ�]7�0+d\%'d���Ü�4NV*��L��6��7������)�_-P@������<V��m�i-*S���C�$���i=�Y�P\@�S�87��G�����6.mXI�P����3a���$�&$l�Wy?�����vBAB�6�*�tz��ᒊq �h�ʓ�	ِFOI�D(�p>Wg�H�B�Ku�Q�3�/ð�B1%�Oà04�6�D�)��aS�$�P�,�'0OaXrkP���^�*O]����T�}���-�+]4��	""���.h͓����6{lkJm�~�����ՒG�cS����h�ӻt��n�n���=�Y��DBW�3ށk����n�/GJ��B�`�i8%���wU�Nմa��j�Cy�Q5�Z������\u*G��C��qN"c[ӫUn�G��<�nh m=�F�NL����OĳO�:���l�?LZ��x'��	�`fh�U�6�xx��wE�Ҥ������wMzV��u�;#.m�_<��>�.iC�h�v�q`D�Б��#N���G��͔e\��9ё�����^���;r�y�>���g��3�W䑉���fO'$F��9=PA�~4O�OϘ�f��������������M%Ge��^�Ⱦ��x�c)��q�ȏ����Jc\�����]�^�TE�m���?#���J��2B��>�nX�n�;6ȣ?cQ�J�`Z{�E���♱�M'WGJF��"�|�eB��/���A{��p�@[�D�W��mV.b���m�e�)��8�x���G\,>�m:q��Jz����^80��tl6+i�헤0%4�w�*�/PD�yb
�n�eH�*q���|�����Ri�V5b��f'A���'AE4$��|�$��4�ʤi5j�~{(�K�lW�x,�},]�����6����@T�W�i��� /�=�E�oL���R�$2���1���mM.,+��W8�u�T�8�Q�x�u�;�ϡ�s�0D��%Y��YXR��pGcr� �Y�����xa�6�D��Ȝ���Έ�SK�T?�>3��؆�ߩ�%f�M��=�2�a	�����3�ֱ� rm�k�4tk�$V��S<9���YS�3�r��`�bg�)F1L?-o�O�N�x����߽o��{g_���3��չzS���!�6�r�s>��fp�M��o��Q�k�$��I`��采��z�����      �   �  x��͎�6���S��3�������r�!��@R �{[H�s�"-P��zH���k�D��!)��D��n,�Z�DKZ.��p8�8"��R
�ǟ������S*�\����ˑn]=~-��Z�um��˕H"2�t�,
�ŗq�
�C��Z���+����L�Kn@�X����!��7����T���Yzz��B���#;�JJ�'��C��2��gi�=�H�{�����P&��-PȡA#�-+C��W`P,*T�R�Sv��I��n�#�Pd�,�)2�P��"��E�{Щ]|T:����dJ�?m	��޴���~A��q_E����~�\��ԯ�����Kˤ�J����+���*X��VN>��o�D.�z��J�����%�
M�D6��w���PJ.�vA ����e�'���ufT6)��ek�%�M���_6��M�AҢ�m-�}��Æ֚Eb8��)��v���$�qV�V�+,VT�t��be��y�cu�<=b1{mr�6��M�1ކ�B�6܂h+ 6��<��I�� t9��3����a���
�Td��C4	�ݗ��I�q��e	�Y�N��u��vo�U���T-�c9�6G!}�U���)�;���*q��/�q�O�5��!�Y�l�C3B��	 Cy��	�^%I9�qt�F$t���)�b��l��� L�5#2N�H����,T���`(��J#�[�;�o5-)+��+X6��M�w���� tU�����k�c�K)AԦ����M�[��*��)���dɀv�=x��B��K��}ɺ�d'�ʙ�9B���@>�YJ���[?�V��n\T�Б��h�YF�N3b-=�m���	�UU��9prA:y��|j2��H�)Eɞ���n�sP�7ޘn��L���M���&ݩ���q<�4�ǃ������V��˪��H< �g�a<h6ϡ�Yv&�6r甀��pzDv��`x`���ϾҾtr0=��1?	�<,T��<�O/������̸b�`�50vw?}D��"\�倃pt�l��dV<�(QH�$R31:�4Y=�G��@�Ɉ/ε��M�\�xnk�m8� W��zنcbT�U�J�ڌ尓P��r���BPn|N�Y��:�5+���`�O�;���&�����h ���q<ި��j&�#�ǹ07f��@�_��q����Oʹ�p�-G�1/��!8X�.5)mƇ9OB5ˑ���>c9�,�T���ȏ{��^��^Y���-G�1��-����5q�4�2U�OB5ˑ�Ê�x�k�,�T�����X�`����q�|�3��@�1a݊�������WϟL�@{hmUaU��5P�b�$�'�,��d�-�X��y�6��oNڀ�=������ I�q�i<�9m6��ǎC�9w��=�[%N��Tl���m�i�x�܂\�1������1�����M�O
l�?��}�{g��q�O+��ej��{�c����p�ʸo�{��/��W�دb|�(�O1�Q�������.�8�5K|"����<~s�rm+e/�0� wq��Ȃʌ�9;+�<���djc���#�-ݚ��:��֒��)~1�3Q��>;S{�*֥�ڒ�M�v��������R�$��<97kr�
��%$���͋Dr��w��|��U�ü��Va��1+1̩��f`�6Kx�m��%��ft�x�f�4���V{C�Ж��R6|��.J<u��m��|7��j�S���@6O��p?����M � �{2z�CX���mt�'� ��%f�b��-q#xs#�G}oiD4G-�l��,����v~����,����G�"����V����� �����~/~.8��Ť`O���e��t]�@�=q���=��+�J�pŜ8��%�x\.�� ���      �   n  x�͔MJ�@���)z%���7Pg`f9�10G\)Q��"h��m�(v�����,�����*�ut2�e�N�&bz`zdzej�ޘJ�g�n���Ji�����t�Ta�K���w�<d�Q���j�S_M��P0L�������2���<<~�&fTT3�ژQ-P��j�F5
q\�A�������m�m����f����b��F$>�����l�?6e{˭��P�/]������`�������-Ղ~��>���d�t:�d�ZQ�8"2�iEϓ�Ƞ�5u	��	\N�4���W�)�����oW�H�oJ>��Bz�.+t��5�����N��Y�D'N�6fVxӉ7�i�� �+B      �   �  x��Vmn1�mN�Dx�$\��T�_4�*T�"�V(�vE�)RH�꽍��ٳ;��	!c{��?s��s[
y��O�2��t9�j�˱VɉV�Zm�z�*�g�ˉY��X\}2�֥��D�"�,�6�qs�R�{����Xv֌,��XpWt��[�
�<"�'ե�6F�bf�Ȇv��}��F���D�K�l-�?�f�Fe�u&΂X+���r�,(���nM��a�xŷ�(�~��L�f�џ��}9��3�gJ%��1i��H�[�`�#8&�]~;aX`��["ۜ�w!.����!����߂�W��l(���J��d�X�k�4����S~�i�	˻/�AY �1�ǎ�X崲��P�ʶ���}�w(� ?s�z�ξQj��)����՛�ʰ,���-��b�`�q�V�fVh���CT#��m�b3����|2��y�Ͻ$��"s=��;BgIݨ���p-a��5::[��3"!6�����K�+d���U��`�?�'��	��J���K���\7��LȠs[{N����0�s!�Vğ&�}�����\��#�a�4���ǧ�2�8���М���t�'oMϧ�NI_Ƞ=���ަG�� �ۓ���z��1��3j�����=�5�af�J�j� ����F*���9�H��#��sc�`I㑵wiBY��f��M�J�=s�������T�{���kF2djo������}#�:":�4� ]�9��Kȹc�Oǳ]��Z�W��g      �   =  x��T�N�@=�_�#\Z�PU�����8 �D=�6�uRE�(
!����짰�fg�6A��2�μ���yӃ��#CsC+C��;C�sC��f�2���}n����Ci��yΛ�'$I�P1��� ��-���2͏�5�f�= ;�񣶶y99��)�GQ������u�$ ���%f�I�8�ha��>H#L��\ce�Pj��1�� ��3���;7���k�o���ja�`�]�s��Zg�8��9�Q���Y&{_����VsG(_�	
�(1����>C�
M������p�;�F��k1�����A�B�^��fHK�'ZU���`�����t�2�Ў0v�1ҙ��8� m���l�>۶��(�8~�=�5#|�5�&�X���}:~�e����3���0�za���v��R�Z��|X�����xY"V ��.�Y�Bm� ;>ɖ��]�5Y�{��P�1�[��">cs��F��4�q���y�O�kߩn�_�c�UP��*�t������/W�/?Ü�eٽ�4���3,�_$aem�Urx����q?���      �   A   x�330042 �;Z��x�cӃ��vt=���`Ǫ;�>رLn���2j1�h����� �o!0      o   �  x���=n�0�z��3�_���.���*'H� M� t�=J�h��e
X,?��I�Ot�ܖ���m�u[~�����=~(�����|���]^_�$_�  ^$~F|N�y��ɔ�����;�'�+���:k�ґMc��B;��4��yf�0'�G�!����Nd�]zK��qZ\�I�$���hM�Ӡu�YєűKG���:inl�up�I' �j�?�A����h��֥#:��p��Yp�A&s��KW:���X�#Z���>����Iٻt�A��6�<�<M`��Z�]�X�m�~���K���A�h3t�]�3�'וA*�>z��b�t˹z��i�cm��4�������y���}�X�m/��i- U~�=�f�\;\�m���qF�d��YWi�'��6d�.�JӉ6;�	�{��}�͎h�4��6����_�"��-lޠwiЃw�^���r�KG�X�u+e?��c�Ui�'�f�^]�Ҝ`�r�T+����ҠO���H�z��=�fQ)9A��18a���\���ާA��Y��Q�a�WiЃm��cy;4i���;g�Ԛ�.]il3� ]�Í�J�k�rh^_�t���ܾTLkz�=�f�fM�Y�ӠGڌ2��A�K���M�OW�m�^�� ����      �   @   x�5�1�0��~�M*>��@w�����Nx�k�{
!�Ў�fN�^5ְfiZ�U��F�'�      �   ;  x����m�0��9E���H�����[��t�f��R�A��ZԀO����������q��O�,*4YA�^�����c�|$:r9V���4Kx ��\�
;H�dn'x,�Fʹ�N�)Gn�
y�^��-���-	���w�Ï��.5W�!�V(\��׉sUOL��;��E�z[��{`U�>��
�{�bb4��
D}yt|���{Ƿ�@��"6�'r{�9$U���h���*������ͽ/keMF�yS�������؟9��A��$���H{����eFa�kj����'E���J�0��ě
� _ڵP�      �   !  x����n�0�g�)�"�S��[:�%(��@���=Ҕ#QB���%
���G�����!�cQg?e'\�Vu�� �# �&�#JQ*=�$k �{�����+S�ّ;��8R�`�T�p��!!O�Z�=o�ԁvGq�k~vq3?�#b!(=�ɠd?j,����_�;�;�;q�h�ƶI�눷�B�`��ż�c^�VO��][�p�PM����z��r��˩��η�@���;Eev��|9�<@ʓ�Ž�/ow�^���?__�!��Ʀ��X^��#�R�v[Q�b��8�Q*t�J;�u��zH�s�0*ً�"\=
%�1��R����_V�;J\����@)o��Ri�����v��J1xdY�7l��m߽M)�>I�6�%w�������W�A�m�#��x�H�V���±���cO�)�P��;��atJ�G���V"���}D���!��c����4YE~�&8Y���d|N5��k��Z���rnY7N��f�����k8n3�k�~GZC�_v틂ceu ����,����p�ԙm�      �      x���[�������n���J�~�F��J���;��aH01���t�&�HƇ����?��9��;�?��������?���?�Ԅ7M<5�M�9�=�[�Լ���4޽i��S�4�}T�]�Zp!���?����ߜ}�	��ھ̵����ŧҿ>��oWv(�}�M�����\�����,x��
�\Ꟃ�,x�
��}9K���p�L�d
%���d<KfV2��g���Q������7埜klg>K�������l�Yr�G�2N6�?�S�{���ח�?.�~���,����ds��9�~��L�.%��gw��]�U2����,��J�k�����m�� E�_�~C���D����Y��k�\�k�Y��k��r�J��еdu)���d9K��)�k�O�z�,�d.��E�Β��l���g�GSx)�|�[٣;>Z�k��s�S�_%WC�-�{j���<�Ox�?q�?эj�l�g�}����湿%�Yr_��dM=�i�b>K�+���-��챜���(��-ɟ?Yϒ��c%G��ߟ�Β��c%KK�O����ϛT����~������_9��w��uqx�v�Q��ۥ-u�M�'�R�N%�%w�f�Lu�:K����"��*Xg��'����7�YrWW������O%�bߟq����SG��{UK9Kn�,g���[�S	F}z���7�љ)��iJ;K��ͣdk��)Y?)���FɜfÐFS����͉%GS���m�,�?[+�GW�O�قX����4�#O���Q2��q�/1�?���Ē-���Ʒ|�|9ۣd�1��*�h%������U,b����Bi�Z����=|
��3�6F��B�&�(Yc=��ڟ�Rwg�G�p-�ji:���B�����Ҹ�e�gۃX��?%�ߌgɗ����Η�'*=�%}џ�yT��m�F����o��Q⟋��Ypw9W���U�dv�A���%whWI߳��7�V������q���k۵���h*op��=����?vk���
�0*�n$|��Q�[��趔j�ZN�G��R��Z����p=z�y�b��{�q����bs�k|-�ƿ����5������Կ̵���TB�RAp������-4��.��sM�++�z��Y��1�6�F��9�>[qqWInsm�++]L}��&0�.���9�a:ky3��[(��2Cd��\������]zw9o;�p��R�B�}z�_v��te#���]ͺ	�5���P�VF��E��$wv�L`\���N���=��&�s=���J���(�js�y���\���H��P=�g�{
̵������59�5�\U�)8�ɟ����1y
)�������	�@][ȅ��!0�t����>*�S`���}��;�S`���{4ڏ���/ɢ'2���)���D��������kM-�f��|I��}��z?~��g�Rӻ��?�5�>� 8~;�5�f&��|�4z����Y��X7�A;��m��{u��Ql?�_8�(ڦ�ʽ��l�b�<z��)����4zg�	��;�c���6�ُ�.8ζ#˼y�w+�{�}
����)
�)�r�l8�p�ғɵ=�6���ͩ��ˮ5^�y����+c�M������k���v�½���l��j�ܸ���n8� چR=�� gO�{�S*���l8�$ږc�� g�E�ۣ+��l�f;r3F��HY:�p������cYR�E�q�~Ԅ���֦!�{����g�������� \���(;���`��K�x=~�λ͙|7�><���!8��+�홱� �h;"�)�C I��a�����U��;e{ ����t��s�h�s��ff# 1aхg't# 1aq�S��B�$l��R�d/B��m�<:�*01��q��Y�L Q���1�� !���O��! �,ڎ��r ���ť( ��������D�1�}L�o��E�����!�)����5�AHj��d�]`�%e,D�%�YL Q���wv�& ��ڶH�[ Bm����r �h9=��0 Tնח�� 4�6��2z�# �.��T;�\�� d'����7٫��O������e7Mg3%�7��1Ȍ�yʍ �Y���>�ħ� ێ�K�m{v��6C$��_�(�C M��Qy\�� �f[\t�er�*0�2�Ȧ�(�ٜ�	B��m
��<��m����z
�m�����Ԅ� g�D�R�s|��l�h[����&��Ѷ��ζ�������*�U��m�m��1����k������!0�Rh��17;ۖE��[�p����ͥ* ���_�+�&��'}�qp�]���۳d.���N��ٞ�p��m�����!���`�mmG3R���F�v��D)@H�m�A��͢m���A{
p�E�Mn>[��\�h:�l�dO��\�]��Y����y�0��e�sP��s���&���k��8ٖ۬q�6a�|:J��&�f���u��[ T�vN��@h�m�>0��8�Ӕ����	�11!؎�Ea�������nۼ�M�cb�nVf�J��+�=�E�::j���kCRu��\���V�Fi1?�8O��6ֽL����4��Cp4�=gնE:�g@(�m�6:ck@������� �����g��) �.�F�� 'ڦܟ�]��P�h;ΆN��� � ږ�� Bm��0�
v AL�|+�N�� Ĕ�q�G �ͻr�T�tY�o�?�E��?�AMø�P�C M���lk9�����wۘ�3O�A�������|�S`l�G�7�G=x
�M�|�U�?��S Q�����w $�v4��! ���66Æ� Č57�F �����si�F b�Z����x
 ALY7*z��ㆠ]2�h���.q׏�z��c��߹^�6Kw7�F�vt�/l��f�]��e2�*8ꁭ�l}z�l� BmGo�m��* �*ږ�6Es9M4m�u��* �.ڎV�mR�*0���mZ�L`l��w[,�\`���\}�O�
 A�X�B��	 �1�,������ �h��{{�r Bm�ϴޚ �h;jO��D����)�S ]��.eZ�L`�m����oO�AH^����^�F`Rm�O|�͟@��mN�j�) 1e��Ͳͧ Ĕ��3e�9���d�9�C��! �*ڶ�YF� Am{��~�S ]�y3�}
Bv���Ō��!{�6��6�T��hL Q���ӵ& �$ڎ]�a@Ȣm��.x1 �)K��U2 �)Ke���) qm�\-E�/ ��6%��s��)0ŉ��K�P�j۞��n��6��[q BmC{}C�*8 X�$LSy����m�DӒ�	�\�h;lZ���-��==W�?��E��#�{
 �h��m�X� ����>7C� ���!m���@�m,|�����4=Ers�A�b����i5�.���V���	 ALٸM9:f@�������Қpp�Y�m!=��Oζ���>��=�dU���>�� �)�����{�]@袭��9O�| �hb"�1��!�,�`;�1�1�| �ls�׬�@��m7+A R�F��[� ���07t�}6@�R6J�"y��� �l������S �����]�=�6�mm}��_;[�D�0�� ��.���m	��	����:��=�E�7{$<��D���s��S Y���6�& �"���L)�C U�m>������l.:��� ����S�l�Ab��=�ox
BS\�%EO�A����$�z�|��)��F�6�YM0�6���yڂ� �,������ BmS���@��m��< Bm�{�Ѷ BWmK{�P���D۹,��=!zѶc51����w��ǁ@�Xtu�b�) 1c�?v�z����O��k �x�͗4�?��R)68��ܞ�m8�z�Rj�[�g��m�m���} B?m�o��v[N����
���Q�ok[����l�'r+5��� gDۘ[f�M����me�ŕ��mmk��    �� g�IYټݰJ�_�炎�^�^8�rھ�̧�\�P_�_���m�Wl�@h��K�=J�z��x+��v�6�l2�&��=��NƷR5N���g ضZ���푲�7�ݫ��:�'��7��ݙp[��l�iH�^j�-v�
`���3���~�K ����T����w+��Ѷ�DO�s�zd,�]��;7+s�������L�i�;�U�7�v�o�v�v~�+�j�M`���mf�F���5�����m��U�V���68V��%�l�f[|�/9�
p�G�Ҷz�Y'S���W����V��ͧ��\K�x�Y�
`[4�R��� �i��еTi���V��m�m��Sagk�푲�v����ws�_����	�l����ؒg+��=�w��K�Rs��Qm�q�A4�=<ۯ� �O��C���4_��8פ��R}d\M�sͧ-;�2�N�%�&��Ѷ���ٚ g[�m`���Z���M��m��|����l�f�b�%����v&,��iM9n��L��a׀����	�����_��
p�Q��?n����~	p�g��{#2J݇x��8�,Z�|���V𯽶|y+����}�;����|y'��A�S	Ul31�v�C�! �����x��Z̭ .��V*��&m[ tѶ�|�m!;�v~4��rm!_ފg'�s��W�
B�m{�� B�lC��w��@83X����ٚ �h����V E���yG�. �3e�U�82DvsX@h�mw>R�C ]�Ma�P�&�� �3ed��Y�Ϸ�
B�m���K`J�lG4C`5��p����=��D� �h;ZSE Y�-�}ꌭ	 �2�R|�5��PE��z$z�� �f[C����p�,:Vj���7Չ��~7����zͶ����	A=3F��1�����8Dʹ�p_Q� Am㨔,�&8�#5���ZW��q.�!���={�I�g�����z�-����l[2���{h��� �x�!ݷ��
 ��gK{Dl#8 �cm�p��?o8�!8/�mN�w`��B8n"�ٖ1���ۍ �x�5޷��
 !�g[�}	�V jʺ���F j�FO-��� Ĕ5��3�@S�|L��@S��m���C`���qGɴ&�� x/ڦ��n#���,%����ٖ18b�	`�ĳ����	�6�g;�ز���-�ٶ�#ȍ ��jg;�F�"�aڴs�/)\01c}p{�l7#Č�R�s�s�}�#��Q�=l�yt�6�|1]c�����.ZqJ�]d+ W1]�#~�!�m϶�'�`� l�t��%�BZ�%�mS�v���m��\�.����=�G��6:�lCl�B8vɢt��%�N����&,��%�R��\�q���V [)e�TWZ��I)�j꼂�J)�����ǭ �L�)�R=v2�[ت)������u����蹚��&�!��H�~	�l��6�����qMR/q��O^n@�s�1�a� ��K����28��ų��%A R/q������@��ٶ�Yn��@ �G��"5� 1_cd�)W�,�k��,_&0Y�%�R�E�Ƙ g+��f�"�m�f;F���c
x#��x�0wvk4�J��TI9Q�C [�J��N������0�d0���a���X�L�K&���Ot����q3-b?1�p=u+�V�{X���c�F��w�8j%�&�يw��YK��Z��x���.�	 �1V{b.�c# �*��t�Pn+��vѶ�y*��5��]U�F�vD3������,�\:�*& �~`$��% ���]l���,;�h�����,�z_h+0M�d�=�Sg@/Yq�O�9 ��*saK�	@/We� 0 ]�\%w�dl	B/�|u�N�� ��5�&Dm �����������V�����/XMs��w�� :��R*�1 \.�=������F ]�m.
���H��޿ձ9l ��m�er�Ķp}�Bm�;q�\ ����\
=�C ����9�� ����m�w�!��sI�TM`�x�zv��5 ���h�L ���	B�.Y�c��6�A�.�(F���%0Q�`�TbO�p �hZJ���� Am�訽��%0�	Uf�G��<�_�p����!�7��
�u���&w�\s+ ���Bz+, �	{���S���w��p����sC!r_X�p�L�sCCj{�e֋����o@(�m�K�	 ���5�Fq	BQ/� G��,�A(�%���ʍ� ��m��d� �x����"�`@/������ȍ� T��6����*^���ڴ%0U�din^��`@/ٸ��)E�\��E�� ��v~o��rL`�x��g�&0M�`95��q	B/X.t
e	 A�d���.T[�A藌�.K�>���%0�ij;F��7��Гf�\�d�� Bm�wY3 T�6�H-�!9�1����e�2���E�7�!9��P��}Ǎ �K����5��@�D�2(v�L`�x�F.�㥞��x����p$͗� x邍R���g�� ]�:�?m���� ]�Qj�9��%0A�d�T��a�� ^0��Z� ^�9�{�� ��z�R){2�[@�m���`	B/���_{a�xonj���J�Y*����6��}��m������F�2UE��c԰ B;m��ȵTu�<���!qQ�=56�f������'��I��v�U\���W'�s�k�H�g�)�����G`��>��鄥	 A�dit,��& �x�R{l��&�򘟲,���!0M\����[�Ah�ڤ�2�/ ���F0�c��� ��>cx��J*�.^����ww�
B/Y����������8�C �%�؄� A�d�����6�q�%��v���6�s�%�����q�9���`& �J%}�% ����#��/X��g�����N��8n�x�Zu] �x���Ffm� ����P� ^��G���	��%/�pq�ڣ1�A���EmS+ta�	 ���%�º& �&ڶ�� 0���<��+}�yB�.�|ƚy�u	B�.�|�3�-. Hˈ���~ Hˈ�S�|���V`�/�0[�R��L`�����M�,�AH�B���u���] �%��e�`�� ��x�����K6��V�`��,^��{y%m	B/YH�m��� ^�Pz"��% 1ec$��\�	B/��Su�@g	B/Y���V`��:e���f�� -'��CS&/5, Hˉ��P��"�%0�E�Tg���!��r�Q#���*^�Q���& �^v&��%0�	
j[{�i	B/��q(}�yB/�|��p# �n���M �%˭���� Č�OI��p7]\�5��%/&0]�`���,&0]�`#?<�& qu]�9�%/& ���>-3����	ɉ����z�}����R�V��8���[�0��1��Hzͅv�L`.�ιmǆ�\`.ωm�q�;�lw	�e�9��>��� �t�F�슣�= H���m��!H����S�!��.���p� �r�1Ya�  -%�OX����[HK�>OX�iY}��K5:k�oxm J+��O����� �u`�B�7�� �e�3~�ϠM b�
%�i�% �r���&q �ML�s"� �:}e3�K b�c��w+0I\��f��� \���msl��%0I\�2_��-�	 !����
f@���*�Sf@Ȣm.�l��� .{�w��! qqN�m��� ���n� �k~rY�,�l�͘� d1e�w����F`���2����% 1e�7�z	 AL�u2��� ���Hǁ@�X�>wA b�J��� ����j!+'� Čչ��L`�����_�����;�]P�||�/��ڏ�4�6��#��q;�c2�0��ҳ{����˾��ݶ�͓�� �h[���F �}/�� ������ �h;    ���B�� �f�ǘ���n�pY]��Գ}��=n7 4Ѷ�^ޯ� B�l�Z��[��A藌�W�Q�4��xl�{�6������B�m�|e# �K�X��ݻǸ|# ��َ���3�[ d�vn&�ؚ Δ=�[_K��V!�� BmK��E6@h�mq1���p��r�O�1Ҥ�5�BtΉ��i8�9��!:�5ۊ�*���h��Ô��%?��� j�m4��ǘ �h;n֏�f6@83����S��V�� B�l{�߹�. �*���yglM ���_��9��I� �h;ޏ'8�A�N���c�~#0���cF�Z�'�X��<n|M{� j��%�ǜ�F  g�#�?�ư�0d�6��{�]@(�m��Da	�KF��.h�ǅ�y�X��Qa�A�.�m�l�����.8�����c���-%Lv� h�mq���o@�E�6j� 0����ctq�l�>t��6�-��3�A�]~���zv�& �(����	 A�X�!߆�[ ����A b�F��6 ���ohL b��`� �)�%�ln��)���G�V�[�1X��Y�����_�~C��mNv��.�mmk�FT�;Ym{��*�۹�|��v��*0�l���h�#�=!�6縀 DѶ|��
 !���a[e* ���V߃" �"��h3 �)×��a 6_���  Ą���Y*0 QLX��ȸ�� D1a-yl�O!�	k��M* 1a��/ �	�c�� ����7� Ą�\gL b�zY�%� Ĕ����
 AJٜ$�6.������Rs��;�%0钲���{��*0)�������(��ʢ�@�4[�q AmcK�� BmG7(���% �*�֎mҨ �h;�(�B8��5��5��]%���h�<v���Ō��2�`&0Y�X���5& 1e3���� �,�%��&� Ĕ�!��8��%a�r* 1c�e��C@ f,����& 1ci�WYCc�PČ���
B3����e���K�zo0 ����|ǁ@L�F�W\ �$�]�}�'{�����{���8T�t����@�4�⃧��	����1�~�Au�i�7��E���,�D�>zج50 DͶ�̻& �$ڎ.6��� Ą���Ij{ ALX�-fV�L b�j���	 ����{H��1 �k�G��8n����{���	A3�F��Z�&f��.ve�� f�ϯ��Zk@36�?K�/ ���>��c�Z �����]J ����淮I�� ���Y*��>�9�pf,�R)����8�;�v���=�{Ѷ��ޏ:���ϏG��� Bm�3^��S I�M�}���AMKz�� PDӖI/� @�l��:k h�m�<�& 1ao'����|�u,�S���@�����z,����5O�� � �|�of��T�@��ˑU/ ���X}��! 1c���?� f,���Q* 1ciԞ�>�) 1c��ON�A�b�R-�vc��Ŕ�^B��A�bʲ/�}�� �%e�dr,��y�) �$���ck@Ȣm���~�AM{���S U�W#ғ54�v>���� �h�;��:�ƃ���Y�5�A�����N�q�\Vxp���;��	�@LXM��?-?@ &��L�7�q �U[)�co �ܜ'�. 1a-���0� ���6�}�$� Ą�R�����(&����j��ńu7�Rv�&0Q��|���8�	����gN�	�� Č�x�e@�2��d��) �K��?J�PH�k	 �����D��k	 ���5��~ɖ� \Vxp۞X[�pY�AmG���^���
nK!�v	 !��yna�] I��5��ӝ@Ȣ��"1ˋ	 �h���Lf� Ĕͷ �gpČ�%��� 1a��Dn�K` ����>�x,�!�b�bp��q�)0YLX�}�8��C�B��	�@�Wl�$j{�@�Wr��]& 1_)�B�K b��.Vd��� &,������S b�R+��� 1c���u7���@g�P��ʿS`.�;���eVL Q��.��e@H�mwd���@�5��G���& �"��uF�� Am� �>Y@h�mu%S�C ]��5��(s
�e������PŌ�S�����*fl��Y@3Vk/dZu	 A�X�H� Ĕ͝3�d& 1es�$ ALY+.U��4 �)kmd��@S��Y(��Ĕ������S`����|"�TK`���Q�seq0 �)�-�Fm H)?㷱�� 2��g������ �h�Rz�� BmKʤ_@h�mK��� �f�]b�K`.k<����_��n�2�*�!���থ��Y� �h�J.�]�% ��َ�)���qĄ�P�@ &l�+L�� Ą�RA/ �	|.|	 AL�\�I��Kp@NLX������VЂ�����XjQ� f,��I�k	 A�Xr�$v�L b�R�ޚ Ĕ���LY@S��#ϵqČ�1������\v�x�^&���mý���&�6����tͶ��o�gm�:�6�p���V`�ms��5�A�A��5
� Bm{�m�;I3maT�j Ȣm�5 (�m	�z� Č�Q\���, ��8�[ ���>���[��!hb����%����	�յ�Ț�41a}~���� %,���.��� el�
����v	 A��(5nS�Y�q �6
��:Ep�@JX�#8G��% )ay��F��^�� ���R��%0]��(�����[�A藌�+�s��n��D�ښ�� Bm{i���! ����cflM Y�M�7VL E�ҩ[@��m��쨷��4۹𬱖���E�|gy1�!:'�f�.{+8 �{��m�M0�!:1e��@k�	 AL�hL�gL b�R(���5 �)K���8�K5���& 1c�G�*\ 3���,b�q 6Z<ڂ���5'7��� x1_�v��*� /�+�Vȸq	�@LW����� �t�ᛧdM �t�z^r��O Bmk�5�\ U�N� B�l븓d��0 t�v���=�!8�6_��!0���u�y�!Ѷ�H�a& ��ٶP�ָK I�M����	 ALY+)�N�	 ALYks �)�ۃp �)��{2��� �������(��:��&0QLY՝L�,�A�b�z�2�)ce~D���s]����?�2��H��DU'�����o�[~�6k�� ��^l�ö��������@H07��w�n h�m��݇���.��~��ˆ� {N�ݴ{�������>��G	6C`Oʿ�΍�Y%0 D�6�����F b�r�R� A�W�
� ������sn��@ 櫄�4��8 ���׾��M  b���ao?y�VZ��!8 4'&���iLp@hNLX���� Ą���3 �	����7�6@�$��Y�~��& �"ڎ��^�M U���1h�nc@h�m�=��� �h�Sy|�p#0މ�s1�	&0ދ���Kz��� ���v3�"� �h;�#��`@H�mv��٬� Ĕ�����{ �)��g�@�R��&��� �����i��_@�R6�?m��5��� )e������� )e�����{�]���}�?����� �l�J�E; R�滧�m  %l�{I����/�z��|�4D��.T�6x:j\ h�m���1�� �h[��:�!:�v���3�A�^��=>>h��4��*�, D�v~o��5 $�6gұ�q Ȣim����  &l��� ����͘s�	K1?��� ����c{|�x#0ILXCnҗY��Ą������ $1ay���ؚ Ą��=�	& 1a9U�ǁ@LX���o@ f,�E��Y �d�5"eܨ�  �&�fg{r t�v�^�=�!;Ͷ��X=    8���E�ц����D�2z�	� ���u�Ț �h����@Ț�[=?2� BmG�O�� ČZ�3& 1cm���=� f��.�A(bƺo��[�"���x_I��"���fl� Ĕ��<m�M b�F�	d�r	 AJY����, H)�b͏/�o� �,��sya	 ᒲ��(US���@�m�W��� T��z�����A�^�������Ѷ��%3 DѶv�P Bm��
@Țm�5��� Bmc��ǁ����$2�[ 3jf�% 1ca���o����;Õ����&fl~ך�w�� 41c����%3 ��5~9�C b�b��: �����})�V b�R����1c)�@� ���T[7�@p�7�!�	7�A���`��{����ʃچ�hn�p]�AmS&υp�hZ{�@�D�1�ɬ�2dͶ�#+R� �h\���1 T�6'��84Ѵ�W@��@LX-^��ĄUO��s� Н��:�;v7��;1]��s�u+  1_���<�� �|�q�#��K b�Z��I6 �����'��% 1_c����� &���V&- �	�5ݗo����7��e*OF�K`�+<���B�{��ڦ�I3��Eۖ2��, $�ֻ����% �,چ�:�% �"ږq��PE��#�$- 4ѶwO�@/ t�6���T�� �,�J���!b���]��qĄ�ZY��  &l�ғ��% 1a��Y ����~��Z@�##}1_�46Q�@ �+�Rh#c �\e��� D1_)T���!����^�*s��ݪ�V��"�.5J����β8[�u�2�x+y�r	>�l�J�K�9���~����T�����і ./K��v9J�oO��5�!HN�M���!0ɋ��5����D��v�b� �f;�^������VUL [B	)��w^��ؖ��b�ޚ�ؖ$��+���E�1�"o�. Ͷ�q�gL U����Y�5 4�6�� Bm�_ ��u�7j�RH��!0׽ޘms�%v3�!���Fm�H�  1c-��$�V b�Z	�lp�� f���V K bƺ�_& 1ccmzĄ���pe	�@LX����z`C�Č�V|��AhR��ϸ��o�I�s�F^�_@�2V痴�� ���R���ǁ@J�(4.i� ����ì�?�@pI�{�?J��v$[@h�mN��ƶ@�m��l�����9D
���no�v���줷���M�u<� �h[�'��% �$ڎq�C Y���>E�@(������o	 AL�k�6�� �l�����	 AL��Q�����Brb�Fn�o4l��Ĕ�_��FgKp@HNL��&���� �,��hSc@S�j�d��% 1e��v�vn@S�}�o^� ���C ;�- �)��5�ޚ Ĕ��*�Sq	�S�{k�U0�˞odlT燾}dm�	�e�7n;ڽ, !��9U��� Bmkd�/ dͶ:|� ���c G�& �*�&� ���Dۂ��p t�v�hL`.��Q��/�� 1e�\<mjL`����a3�	& 1e-�B�[ ���6.	�� Ĕ����E� Ĕ���U0 ��������� Ĕ�R؎�K b�zK�Q��� D)em�A�-�q�D)cm�@��%0Q�X�K9r{o� ���Rs�Em Hkc���e\ ���R��× �hۚ��-� B�l�d��84�4$�%�% �.ڎ�C�ė�\r��X3���ێ@���~�c�. ����/Ē�� Bmc���� Č�\�;Z\ b�b-��2 ��_u%��. �)]�H��K b�������Ŕ�/-�9�%0YL��h�	BS��`�L�, �)���[ �����@�� �,��{�f	 ALY�{��	 ALYn��V bʊ��\ G�Ҝ�xmIb�F|��7ǻЂ����S`l��W��jx_Ks
����nJ|�� �h�2�:�) �$ږ����:Y4m��?�=@P4���}�� �h�YI�] M�M�-=vǁ@��b�3�!�b�R��}r��*&l�"}�>��	�/Zq �	�鱙�V b�r�� A�Xn�V� A��l�i3 �+��r �+)Њp����R��&fl�p{=�#�ČU�����S`���1����N ��ɵ�ؚ Č��lH�� f�6G�ZN �m)�n�) 1c���&�[ �k��W�� ���������� t1e��_[�.�l����S`�����S��%c���p��_& �$���N�[dѶb? . �"���߇�� �b[�/��6�@h���"� �h��}�������mk���Sp@�΋��uz�u
���{4�\ R���@�e�@�R6�����@�R6�92r�q �26�ι��4� ���1�z�V\�@LXmi� Ą�\��4�)0^L�� <.�A�b�Bo�����ńE��_m�
`+&l.�~�z
�VLX���b�V �b�b-��˗ Č��9yA bƒ��c�� Ĕ���alM b�RN�}��)0ALY���BS6~a%�K`����r�~}���ѧ��+mO �	������ ��WN �	˭7E �����h�=�AM�n��� AmSmd&|	At�m�����S`�m[asK`b�l��d-�) �(چ� $�v4y�֚ �h[{|o�PDۖȷIO ��"��& 1e-�����S b��O����!Hb��и��u7 ILXk�M�,�Hbº�l�j	�@LX'/��0 ����K��  �kv�h}5 ��O|�����5�����{�]���5��2n�q����Y�G��8n �����.��Ud�� d)]�T����l� K�j?~~�� ���Q�w��f	 AJ�({$ۖ ���E��8�d& )a��3�- �	ε��TO �	�ɔ� ���0���W�O�A(b�F�����ap]�A��9�C` �+;�m��}�) �����%)A I�����AM�p�}�) �"�V�.�: U4,ҍ[ h�mr���� �h;���O�� \WvP�9�A���*&,�g��l�A�b�R��}�S b��"dnn	 ALX㚼�� Č�[s�L b�J*�C3 ����}|� �����ǁ@�X�.VkM`����:�B��V�X-ݾ�F�������K`l���6z*��k@3�B%/G�@3��M���� f������� f�;�( ���|�� �����?�C`���^JK�ޚ� t1e����N�A�R��g�hǁ@�X�����~�) )c�T��'\ ���_�>G�d�S E�m����x
 �j��y҆�84�4��8Nt�6�N�S��@P��:��h9H{���h;����	庮����{3��5��K#��% �$ڎ�&Y(�� f,�����+� Č��cQ� f,�� �)�>��K b��\����!�b��
2������PY�`C�Ō�2y�� f,����% 1cs��jf	`+f,���d-�	�V�X*��5�K �b�R��}�S b��s�� Č�P���
BS�}D�!�)˥D��u	BS6C�6�& 1e�WɈl	 AL����}��S b�J� �)+�� S?K b�Js��ٴ� ��t�z� �%e��W���Ế��Ɩɴ����j�+��Z�p]�Am��| Bm{a� - $�vt���{� �h;WqQ�C E�͙�3�q ��i���@�D�Φ�q Ąu���>� �	�1T�&i	A��2F�!�	�G0 �	��l�\�	 AIXr?n���N (	���ʯN (	���yofN (��j$�O (��F�����)����Qj~��=����f%e�T�dU�)    0�YI�,�]{�C����l����T}
 AI�,�z}�) 1e�-���Y� Ĕ������S b��\��*�	 ALY#���t� Ĕ�ϧ��ם@S]�Dt+0ELY��S`�����kŏㆠ��7~v��� pI�{ld��:���4���?� @m���50�6�X��! �*ڎQ��B�S M��lY�) �.����~�:n��<X��Kz>�Cp]�Am��f���:j�S��0 ���\S綇 Č��V�7 ����S�� ���2w�cgk@3V�VL b��~Pﳠ� Č�ѿ�5���)�s{fk��Ĕ��*m�M`������}^��VLY-s���S6�ҖYkk�S�\!� O �)�kY([ ���6�T﫩N �)kc@�m �)k-�i�S`����ye��.����Mv�&0]LYO��l����>�~E b�F��ј ����q���<� el�
.���8�pf�}��,�\$�% �&����w�9��E����k���P/k=�mo���,��:��z�2I��e����Ӫb@��m�5z�� �h;ʐ�� Bm{&�F�@(�m��� �,̽z[ ����#�� ���P#��/�A�b�B�ds�S`���q&d��S`���8W"�zk@S6�ޢM�	 ALY���Η Ĕ�;��Y@S�<�j��S6f�C�����4B��W�) [1e������)0ALY�c9� �,��ܴ��󃘯<����8� ?_�W..������ʵ�/��@�5:A���- ��*�%ZL b�J��� �|���) 1_���fm�� D1_cx��b&0�u�ˌR��w�50�A���එm^p
 !��yt���@H��袐��% �,�vG6>�P4�F���a ����b��Y @mSm�� @mKMd�j	�e��m#Bl�g��ĄuW؜��$&��Ǖ,a& 1acp�i�5 �	륐��N �	�_z� ���0�"�v�@�R6J�ai ���R)������Q��N���d)c��H<�=��2~�wdc�S`d���Q*�L	,���R�F���_�Yǁ@JX��_�ݷOH	?�{�Z�) 1a!�W�� ALX�d�d�@LW+z�L  b�Bw�t>�� 1_эa1�5�A(b��ܓ���]�P�|�}���;� �k���q
 ALXl�l}x
 �0V�co��@(����@��m�d��S M���<l�q �i�6�&0�U�6{�P	�e���.��dK`.�<�����0� �h;"T��! �$ڶ��;� Č�ѭx�� ���2�}���� f��1� f��B�{1c��B{^&0M�X�*�(��41c5��0�=��à����S b�Ɲ���]@36�>�/lŌ5GFbv\�|�*Y��*櫥�ք/ ��j%���tO �	k��^�	B֝c���� t1a=8�?0�A�b�zd��@�sck�� Ą��&��w
 ALظO�N H)��k)�LP- H)������D� ������Ln�K gʎ���R����f	�����V�.��v��n�=���)8 ��
n;F��!� Bm�+䥃% �$���f����E���7s^ǁ�h�an4��",TіnE
�������3K b�B!#;l ���0�����O��b����,uZ��|�PȜ������Z�c	�@L�|�}��S b�ƽ?���|
 A�Wr��ŏK b�RHl�~	 A��\��j�q�b��UfC�%0�ALX�u?���1a��B�&0ALX����3 �˙���� fl"e�@3�ǝ�G� Č����=����2�W�\M b����� 3Vƈ�}_�S`�������� D1c�����)0Q�X�_�cL ����>WŐ�ܖ �h[c ��% �,��@�:�P4�ѕHd�� Bmc �_:��D���eN tѶ:z{<����n�z'[B,�!�����s�Y��CO�כ ?_LWO#;� ?_LW��Q� �t��ȮY� �t��6/ H���o�9�@�ҕ�ά��'. H�JsgV�A�)0Y�W�[��.��,�k
��^{
A�2�>;���%����Q*�H�dY��26J�4�%YK �R��Ϝ�%#�% 1c!�H�`K b��&�d�v	 A�X(��	�% 1c�96S����G�jf	BS�|YL`���ϗa[ �������9b���ZkM b�b��}��S b��wa�2�% �#cyغ�m�����e��s}^�� �f;��ώ�S ]�-e��ܧ� �ꎏ��ջ��n7��[���vn�@m�A���m�|c� �i�hGV���\)��O $�6�͖?O dѶ�B�. �����K)?��\�� Bmǐ�yox
 ���m�2� �2v2��B?�9�6��~��E��|��y
B�����1�	��� �h�7oK=�AM��)�� .{oL���|^�) �"��y��) �*����ܞ@83��\J��ytM ]�-�?�uO�A�N�-·�괧� �3cϱѵ���6�	&0=���E���5�꾰5 )�������r�� �h[}��]�P4�47D�z�i�Ҏ�rج[~
������v]�@�Ls���Q�
�VwD��8JU�ٮ�)8��}�-><Wa<�����n�}y�� ���KCz��a��) ������}�* �,��PiE1 \��е1�z��� Bms�|�) �&���/:<�p���s���(O�A�N������ x���9�[���O�A��R���Ӧ� �h;��۠�* �����9 ����Q���;[ B�l�k���% �*ڎ���I�S g��:G���!m� B�l�\��.�	Bp�m��t!�� \�ղ+�]��3D�o�p��Z�m�����) ����m����M ���v��U�沍�M Y�/]��ǁ����]T��ಣ⮮�TtsO�� `�X����I��p ����T����� \����zr}�ާ� \��Bm��E�� \��Bm{�O������t)5F�~۱�	 �}�Z�r� �����z+ύ͟@`;�_J����A�S U��~���S l��K����*��@�v-����cdM`��j���z�1�!�~���6��]��� \�𠶩����O �����Zr�u_O ���.�Fg���e@`;\Kez� ����L�����g{�Pp?n���q�x�6˵P	��u?��1v-�ky.�
�u�f;?�� ��u��c1��_<_�x
�u��.?W;=� [|-���Σ�@��=_K���]� {�|)�h�^��S ���T���vp
�1CXʰ�{�������>��!��1.n_���1�w���mǆ���#�6�� /��f���=�� g[Dۚn�S{ζ��s#��]��m�-;�6߾8�.��z{�f/��=c
��9� ����Y	���[��8�5h�}�Ad�j�km�Ҋ�]��=3+��m�ӽ g�E��2�&��Ѷ��(�C�����|���3{ζ��sI�{��8�.��VIk�v����Σ���z�GA7�����S`gk�1�����Go��v	p�A�-�Op���1�w��c�~�f�]r�\M Y����?��S E�M����� �h[�	9. �&��o�>�ŧ �f\̌�q�� 9'%�����q� 9'�+���h��???ٜ�`Z�j �Z��8@ �+��0& 1_q^�G;� �����a. 1_�ȴ�5 ���ojy� ���4F��/&,�<��&0��1Z*���<�D�R@E�1�M�֚ �f���@Ȣm�+j@(�mr�6�& �*����=��D�ڳg�	 �����Nob&0�i��7�ٚ� 1csoyڛ1�Ab�F�"���) 1e��Y3 �)�D+�	 ALY�6�� ����S�s�� ���q��sX� �   ���Z�O��@SV熬�l�A�b��g���Ŕ���7�%�� �K�X�[.��{�@��m-�Q� �h�sp,�& ��َ������PD��"���PE�|��/ �&�� t�6��[�NS=!9�v�P��YZ���h�k|��=!I)����~�p����z��& )cs���H�f	�@��(5����{
 A��ܳݷ�Vǁ@J�(�}"}�% )a���=Y ����<�u,�A�b�B��� d1a���@!��ń���IX@�d콅����LF9K I�g�
 !���%2��PD۹:�p ������Rf@h����*�.��Ru=��8�6�Nn�K`�m��{�{�A(A��N�MZ@3�G��ٚ Č�3!�{1a9a��@ &,�Q+YpM b�rK��sM b��}��q VBbg�9l?���*iܤYhM`?���*%�$@�UZ�M�	 ALW�}�z��3Y���Z&�ۧ�� Ȣm"�v?����{ڗ5 TѶ�~	�= �4��F) Bm�?�V��9�v�2���� 4/ڎ!1�\&0-��s�Iv�2 DѶ�Ͳ�� ĄuߜgL b��ܥ�51& 1e=�N��, �)뵖��& 1es1Da5�� �l.4�,�x7]��\fR��7 ]J�\dR��K	�ۿ6_�@ %ln���Z�% )as���Ip� .	{��s����L{ �v�kdlM U���г=��D��xq	 �k���w>��������k�	֟lsdc�%8 ���n[cN쒙 �h�c&O� �f}$��8b�bdS�8 b�b�1�������&�GK  b�拕υ�O��J޳�aK`���}"��� x1_��D&S�� x1_���p� A�Wv�V��8��ʡf�Vb	�@�WN� ����/Z���|}�) �*ڶ���@�4��#=�% �.ڎX���	�e]�M��G�!����%��-K`.�:�m��\ Q���d	� BmC��� BmS(4b& 1c�c-�	 A�Xm����8�	k��R����b�Z�<YZ��QLWK>��o�|��o���!��j�;~�� �|��;�ۚ �|u�:Y��� �����@��s��� ¹�m��'��z?���4z����V M�-���S� ��������B:���C�-U�+��n!yѶ�R�ٚ� ��ٶ���@8��슴To_�� !���Z�L Y����� � �����U*�ȼ�~=U3m>�v4������Կ_���/���ԭT/��h+0���m��6��Vt|��#��lM`lEGyC���s�V��_@��m���[ $�v�P�KZ�@ȧ�;�<��?k�
 ������ � �f\�$Kp@v�i���o���y_>�����
�n9�����{<��b��n9������8Dݴ H�m�54[�Ӗ_�t�zk/ �"ۖ  �ʶ�}�P�	��] B�m���
Bv���K���`���l��J���~�_��Q�A�[�bkk� �l��:P $ٶ�`�
 !˶�;�
 ���˥� �l�\�l�~ 4�6f�6�۹]��g�\`l�b[2�d�A(r�2>?O��)�ؓ�
 ANY�+�T r�
�Q �)+_�mYo��r���%N�# ���~!� A�mm� B�mS�z�T'�f��l�+
���m[Q�A�-�K�@���m/���d���w dݶ�F���?��o��?�*g�b֔
 A�X�v{���c�36�� 0MNY�����Ah���jYӗ�RMgG��6;�~}�u���m���%ٶ�/����eٶ�/���enE���l��A�*۶/7� �l�3o���Gh]�m.�K���t����G`����+��l�gB�r��^� 䔵��� �����-��AB�S�R�-�G ��}��9�8|�Pu�/�� �ɶ�������-�.��/w^��s�ms_ζ�'�yݶ~�����)� �b�d* ���v�%e $���-��u��Ղ���Ҍ� �����6��:��S����q �3�4s����ɮ/�����K�\`����x�\��悙��6�ݶD�,~�e��x�� B�m��>@Ȳm�2���E��_"��BPu�/�� �h��u� �l����!0��4��^D����񏼙9� �	.�C j�F)�a>��&ln�D{_� ԄW���!�@��?�����f��      �   @  x���;��0��s���
|K�!� �vi�I�ܿ%����`}C�'9~ \py��$o�o$O��R�$*���o�G�_F%���BwgȺ^���D�|eODX��*r�(��^E;����X�*C��3���v� ��~�܅D�KQ*p��e/R�$�����;����JZ9G[��G'��|�0�0��{\۟/�T,%s)4��〠y��!1��n��E.���K"�nì#��ur��- ����1���� ��cO�\�RD�8��� �<�D�`0�Z�oA���r�6���eOY�&�O�It�x�:J����=�1��	����`��]�b�YBl�ȟ����~W,����>([��!�Bm5J��u,������Ͽ)��C��o4ǁֹ��)��Q�	��J*mjC0�?;��ҏ֯]󾈹�G��a��N1y�I�IӐ���%����!O36K�̓�����d6� u��J�[�CB��ϳ%l���t�y��l7YD�*C^g�J�W�m��!���dl|>tE`��l7���{���^��P� ��3=��!���      �      x���K��(��ە��	�	�G��GT�������N5ʟV��`s��s��?�����?��'�@�]����>�>����R~��g\���������IU��_�a(&7��>)��+��\�qj�!%��ށK�.M?4�WȈ����o�Pj�)�w��LSSiJ�������շ�j2�gȔ��!�ǅ�cz�vV�f���;p���4��ι���!�������r7�e䍢ս���+{l�!���c�8�8E��99RE���&]l���~2�&J�������~�-6��o��/6Q�%T-} �~5����6< p���*JL��3�3��>
��\�o�����p����i���2�I�'��4��ӏST1cb>I�/ ��Q�:�� ��4E���o��d�pK�Q���,u�pK��bR��[Z��4��1�gg X�MQ�L��dJE�O��;�(�WrUe��4�)�un�BM�WpK���XQ��w��c�O�����St��S{�ĭ�v�E�(�:i��`O�Q����\�T�St��gL�>��p��(��V�����W�dm�TM8�6E�ܚ#�( ��wF��[�jc���Ec���t���QO� �ka��N?Esn��$ N���5�>�� ���'�s[_)��*�~����W���d8�b����x�>W����I������Z N�MQ5��\��MQɲ;��*�Q��~�J��7&���!� ,���QwL��i-��\QI���k����C�ylS��(Mѭ19F�kX4M�-�gL��`���~��~S����<-F�ZVE��4�WO���j�g���6�h/�C�?�_��8�W�a�W;����	��m��niP�ɧO�}j�	}
��[���)��M+�-��i��	( ni����ԶIl��Y���"��v�[Z����4G� ���DSH�owv���G=mð��|��~�ڃ�!�W��)C���[�`Q����\�7Ow�E���b�e��P�����w�E�[KC���X���ƌ=�`�GEmc�������E���4�|����C�ykJ� �h����Ϙ�� �V�h
m����W��6%�^�
���l�~��:�d�S��L���~��=���}9��Q��r5������xH�	�h��k�~�伽�ٯ�$�$���yW��4E��c��}��l�!�����)�Ƥ�՞ pK�Q�"mp ��r5Ui@��?ȟ�N��c�o�p��9�(��[� \-m~��11��� pK�Q�o��ǆ�-�St�ܯ�Li��-%�h)��, ��4E��Z�c��2�-�6�^�Z;���J��vN��eG�Q������(ڜ/r�_ ���D��}��?�N�MU-��9��Y� \�{獪�v�-v�2��`T�#f{�% p N�����c<L(_  �j�D�8���}��T��y�jMi�V�x p�U��h p�Uc�ۣ�Wme��V����{Q�^�Dr˛H`��DN�|�T<�w �ިZr�U`_��DN
-A-�e+%hk���NM �JS���P�7�"��&�j�m @[�T-ZPN5ຎ��fM� ����,�뺃����ʺ��M��h���O� ���	�jh��w���Y85�Q�� �����S���{hk��Zg�q�����Q���;��r]���ˣ��ۗ�:'��s��#�sx"������W�˃t�j���)����:Uՠ�C3 hk����N���p[� E��ފc��O����� ��OP�*)A�[���}���YBX�� �8U��z��}� h+UStQk+ �5ݪ�iA��7@[�M5�Z�� ��+��qU�`��	�/�j[�� �Z���'9���v�ͨ�w�usu8>H��۰y���^W;�m��-�\�q�h+WV:���~�}�Hm] �5�Tc_@7�����T�z�J%�m�� ښl���_��
 m�SUꭿA�R� m-F�>���@[�TՂrqQ��@[�M����M��|��R������p[�LŻj��8�, ������*D�ϵM�����oP�CD�] �Q�h}�"p`�V��k�9��� ښ-�����-;����
���A}�_�m����T��Ts��V��,ͯ�]�e7�z�-�E�_���w�4�ஶ ��OW��:��A�{�� ����J9mkw@[�TU�j-i�� m%�j���m� �5ݪ���+h<M҆  �5�Tk_���[ ��2U���[>�Z[��u�j��=_��,  P�����3��JZ.|�5��E.Jey~��G�!�' UoT-�{v��c�z��
ʽZ¡� ����$O m%�j+�i���+��`U-��F�0�� �F��Gs  (6՚ݶ ޯ#�:5������4�:�oFM�1k]	���ΨZi�[��묫��_h�;�s�� ;P�Q5�T���hS�}ߨXtp`�U<w����>ǝ����dT�[�| �M5����80��t���8�x p��Tc�?�� ��Y[��+�Ow�'�mmΨ�����  nk�6U/�4 po�Gmi]L}�,Zo�Ѧ�zmo�b�dTM�g�� ��Y[�U��g �M�/�C��
 �j��V�O pm��"���ۥ���P�Mɵw 4�j�ݢ��|�M�����z���a��|��{P��C�^�릺pݨ��:�E D�j���)8@S5�h+��:�OF��B;�z�?�T��;i����*NW�:��up�o#�V �@��k_=�j��v�WU��sI#��?�>�7$"��|àZc�տ�S|�]5wү�J ���F�i/A�j�\�8��-����������?8���6V�A�	�2��Fž+S� �/6�~�wIS���Tպ���W�Y�@3����V؁�l�}zsES��G]m��3��㣪� ;�Q��V�� D�j���T���G]��x>��m�8�l�~���Zo d�j$ﵶ���:O�=(����զ�!%�wl�ͨ��V �@�������J��\7�DoS�}�`؁��㱗�+ 80kk_�<�J�G 8@6Ur��9��@2�R7K ������,*9DU�8Pl�}�SUU p�U�H�" p`�ֶ.�
�	*�`��T�듇�
� oT��������-�tr����,p �T�ۖx���ɨ9�-h�
 ��T�Ӥw �g�j�qۺ�ב1jRY��� �u�,vzPM�h�@�ͦ�|��;�$gT�}e�|� ��(�G�����t�0>x���� v�O`��fZ
Hב4j��a% ȟ��z�{��_o����M���> 8����¶ 8P��f[�i�p���jTMyh" p�U[N�|- � ��(��ܞA�o#��gn��ިZ�m�c	 ;��M������ 8�� �A9R>�zp�l�����& p U�T� p�Q[Z��o�j[�ŦCʤvp�U�[�� xԖ6��u�`�3��M��V �@�FՖ֯� ;Pfmm;�gP_Dפ��ѨZ�k�� � �T��D�� ���-L��r\�%p �T�)֨� p�Ui;� p`�ֶ��
�}�h� 4�j��m	��Ψ:��i�`ꬭm��j}w�= �@F����u������`�����sW�??J���n �'�j���8�m��'�I��u�?�j�i}����a�ud_m���5Q ȾU�ze�~��U������ZOm+�@�6՘�?����F;��ޑ ��>�ۃ�8�'���Gwٚ�ȟl���_Vx�@������e{�y�n��3h����; �Q���7��զ��dUk*_G�mj�1)��]� \�G>}aPm����\�G>}�z�loI�r ��"|=w	ʱn�$ D�j��F� � Uc�}m�p�QY���*i�����lS%��>c� (F՜�i� xT�V�����6� ��fT���� v�;���Љ6H �~�־�{�¾��v��j����; �Q���3�" fm�Sr*� H6��bHZm�٨J��� h  �W p�k��w�>4�.����E T�j_��_8Ќ�5բ� ;�s�g��A�Z�o�H��9�w�R���"��ƫj�ۯ? #p Nճm�8��7�" Ȧ\.I�_ HF�>f�� �@����؃����y��Ŧ���/ T�j+/���Gmi	��#���`�3����`����>��`⣶��Aկ�,8m�9�3��  �j�q;�& p�Q[ZSJLMY �����)�3�����Zl�5TR�J �UsY��%�u��a��A�����+ v��Q����v������O_�h���4kk���7��3�/ D��w��Y7 Ȩ���/; fm�ϲ�A-��[7 �M5��R�7 �Q���f 80kk���ݶ�/�8Ќ���_v 9�j�O���v g1�/�7����󓾙H�-�"� �b��Vj~��0�ѨZ�/�%p���֔�[\�� HFվ�[�." �Q�ߕ��V�@���TƏ��t7 �Qu�ڹ;o 4�������8�!|��;ȇR�`�7��@�3M`r0��߷�, ����0~��<�n �Q5w����@���>�y�8�--��x,�� �Q�����8Pm��w��ב���������"��gT-%:mn��oSM�����s�e�U�FU���? ������  ��M5������VUPcR��y ��Fպ=%�_l�e���u��x�~3��'�_�=�'���Qu���aT=ο:�*E_O+�'���{-�)}|WR�Y؁l���s~" �Qu�ΡD� x��:q��S<8�l�9nOqD d�j��k����Z�r�����<E T�jC~�@3��T��+ v�=jK8�3�E�g��U{�I�- �@6��?��� xԖf[K~�� �dTmۗD $��8շ <j�<}��Q��ف�Ŧ�[��T�@5�R+�Lxp`��i��A�V���\��<����U�w�r�����[8�ܟ�� =�c��WPt}u���ѨJe�j����;�%�����ב��ɻ�^����בCy�Z 䟍���j ����w��wMq�Z 8�x�%��R��Z �M5��>I7�`���T�z�Q��x��5%��!�w�����h�� ��7�KP��B���Z���Pr�&��ɨ���"\ 8p|c���/��r�����{_��Y8P���i�6^�������c��u��yC3-��~D8��YU��3_����m�wL��Fu� ��u��M;m �?U[NY�J p����;��>h4U p���x	�Y7 8�-�j.�'�E �/A��/SE �/A�ֿ�v �?���q�/� ;�o�� J�O� ;�o���z���+ �o���z�&q� p���x	���yn� 8�-^��^G��w��1!�z^@���]�ԫ1G����]��r>N��u�|S�3~�P|�� �?�/A��UU8��ܿM��wp׏N�O��@m��`(�T��M|W���hS-~|i�������5(��}&Q�@2��_�S�a d�j��Ҭ� ��ݣ��FWU ��jSm.��  8Ќ�}4� �8�1�����A����0�� ;�S��u�-�!�'��ƻj�uN� ��*9%���{Β8@F�>y�� �ɨ�c�| �T=Lt=(��q�PO �j��ܹ�n T��w�7�e ��z�i|�;��e��Ψ:~=��[7�doS��Q���������"҇���)�?~�\�$�ב�j��}G�?�U���ב=�U=k�v���H� ��V����_̪���^ �����ׯ_��s      �   �  x��X�N�F�6O��{�Jm��BH�[)����ű�c'�^-�U�����-�݀VT $`Y�y?J眱O<8?�JQ�p���}�l��U-�~���q�*����0�n��/q����8����QGGZ��P*��ڳ�G,�"��Etñ��G���n�a�6�f��K~ۇ/~����O}���8:���8:��~�ݐm�CC�tℚI�6¤v�A�n�\p�> ��p����h�_�o�Q-�19��SW�;��e;T�����{��E�����8�!���>><M��}�F>�����l����ٶ;����j�����Y�\�M�0ݱ�P�"v� >�zc^.kJ���'t�|q�k�mjljc,+�㵧H[��n1��x���6&,��e�U�aRn'�uH����l����γ�9�<y�'iE�t����Pw,�k�x����Yi�qh��py�<m�J�ġ\*�p	�i<�>�-�k�,�I}������ںWB��S�%8���΅�D	;���x�7�]���m�bۑ!���T�?�p�L@�>��Eu�ЂȽ�!��u)��t(��aF�"��|"�=(Br�_������h�WsȈMuu:Tp_vR\�	���\��7m��|'1�q�R�YDEm^�:a�$� �MT����$��NҚ`3�	
	��E��jWs�� �atD�f19��1�J���j����d�5ڲ��p�1�73���u�a�}�QY��%���������X�&O�=Y��N�>gU)�x�{D2_�zaؑ���i���Z�N�d��E���b&]�F���$�=��>�'Оw��|�L'T��r|�w�O$�/���Ї�7��66i(Ƙ4��0'u��Ne-_�e�SL*�)���"I@&QP��ҖmH�/��.��x
a�C��[��rb�x�Q�';�z �R]V��8�wZg'N���iw���+#a#Eո�i��I�	�(��A�e�eϖ�������pZ+L��lT$>������U���C���wJMv�t?b��yb�u�,vޫ�h��2�ȓ�#ŀo0O�ꪦ����z,Z�4]���[���~�^�LF��6�������mc��	Z��3׶����Ə�TU����}%�Z�qw%f��'�E��}�ʸ�BI�������LC>K�M���,�6�l��p}�����
D
���~���m��y3�M��:mw����=K��6?��O݀��]���G�級�^���+���`�
���`SF�Z&/+�����!@��-z������R�Ime�^���k��`i'��6��H�P7m�b������m�s58�]��L[� V⇟�t\_+�����ߨr:�ǫ�'>eA���z�4KSq�(��x	�R�R�r�j=A��l�
�y	�i�#�J/[��6�
>EK~Y0~Uy�ϖ�"l�      �      x������ � �      �   R  x��W�N1=;���!?�%�1�"�V=Tm 5HU�(A� ���o�S�y�K%$�C㽬���7�7N4Ӫ��q{��|�����#,�9�����N8�b]�.�󜛏��6yq��)6sz�o��r�L��,�[c��ߏS�V�Q�\0,0,0ܶN0h[	����F�# #�xg�o��-��w����&;
�ӳՎ��ܭ6z+�O��� o8=p�%�6�>��ؕ��8��1�\���+�`��8݉��"�AhV҆w��D*�R�$��	en}��B��_b�#�f8C{o����µ�ޮ^���%_�S靀��_���g-��!/^�eR (����� >��x膳;���!NgA0���y�g��%�ɢ��B�ޫ�Ϝ���n�3�PA��f�]u��Z�2a��i��d}+s�Bf�~؀�z	��炢Z�~๠��|x.�s�_�s����n<�D0����h�[�\vSuى�TozZ�z�����=�e7��;�)v-z>�ګ�J�DhTT���*�/yU<[�L�ΐ-�-�$BI��V[,B+��@j@~Tqo�0��Bu�7���`Ps      �   �  x��T]j�@~�Sx�B��<�5�iR���CLŤ���hlBgo3G��7�j�Ж�,�8����:]L/LӁiʔb�3�L5S�T0�l�x-�|2�fX���	9���'�Ɲ��Ă/���;y��-�
P{�ع����z��^�hÔA�I��-��L�����K�6-Ҟ�A�Lŝ &���~7�P۳o�z�Lճ�����O\�J:2́��\�9�
�'�`I�P)�Y�L��9@6ld X!g�
�HP�	l�2U�k����>�xt��]g��i�NK�m�����G���u��%�w��J��=���E}�f;�CfTF�3�`�,��5F��=&uwS �����~��0@h0�io�&@�D��|�������q�\E�&we1L�[��u���n�}W���^��
���R��YW�nVm�����]c�}ӻ�N.�0�J
|      �   �  x��VAn�@<�+��l�!�\��1�c�qX��I�#�d)fA�f�����f����B��Lwuuu��^���*�j�U���j��\Wc']=��~��ΘZu�@�Zku�j������Vg�l�j��c�2tŁ>Λh���S����*Ȧ���S A��qݹ�z����y��L�O&D2��}[�w�XS��{�{riC��������a�x�t���6��ȏ0
,����`/t�7�P �=��D��d� �E�)�(�"-��O�1+)�2�
T찾�.��[5
����רF��,��������䔉y(�וt 5t�z�Z9]��x3��u��]�E��fx#�S���=
d�H�u�5��fƖ��cDI��_2A�89B�!b����L�/�_b[f����=����1�|����>�E**�EISƃ혅C�R�;M|�W����ܕX�0��U�.4� ��	�uB�����Q��J%j��^5FP�%Z��UWC��Tt�1O��#ܘ�W��<m��i�Y�-�^	Dv�]�^L�08ÅxJdL�}�t�O\AU&�p9�ٙ�`�~�q��u��5�&�14�ܙG��#�{ӄ{��un�sY����ڙ6��7��WZ0���R�Fjk��N��3йm8��Iͫ�TN�[Z
�r��N�<�!���Sx(Sc� �'����@~��Y��ZM.�7��c����Ж]�)Cܲ	�������"      �   �  x��UMoQ]ï�KMZ�����.4&�dS&���$P#�F*0D�bJѾ�7���y󆙖 Q��޽�sϽ-Z���36I1��VgRxRt��%���RLI1����k��[>N��@|(�{)~���G8�!2EV��rpNp}���L��SW�4���c)��@�=T��XEu>#���K�ԋ�e٩��tQ�s=G]nɠ�z����}C�ǔB��O)ι8�Y)����R��H�#ߧ�b̷��>��]�s�_+T��]�$]W�u	5���YV��o�_��A� �R|���X�&}Nk�����ykǲ,��aW=(�>�	؎�r`��]j��\��72"�#}z�u��+jʪ���t@���G��ݓw�:��;��� �G��N6z�O}�`K�r�B�Rh��W+��,_���^�q�������b+\����}\h�7_�
m�Ј͸����G=����)��֌��	��[��	��=}[-ӓ���J�V���ѫ7�j��eC(��v3x%�Y  *��?#����ir�5`�{Ӏ�s�0�pp�0Ak��"Gs@|����C>Ƴ������Y�+=E��L�>C!���6�9��m����po��Y���*ʮ�<RC:|���<���&&j��T�W�7��C<]$f>���B
a�v�;�����֬��A�(��v�K-7�r/�C��5\��� �x�.��@tD��|�#yc\��;=��~Z"-e����%��      �   7  x��T�J�@��>�OP�M�c� ��cU����~$R�E���ʝ��<��9�A�5Q�R��=g�̜�(�T���a1�LK���	�;���{���i��H.T�L�rY.\2�~����ӓ��h��7c����+����@��q�p���� ����Q�I]��� ё���.��C�)$��#�x	�������
�)SQ��e/�y�J��Ӆ�)������]o\c����%a1�ӁS�.��M�Jˌzj�|[]KұMj�&w$^v6_��
��O�_Ü%<y��k�W�d#-�Fm��\ج	ۆ�B��R� �-�0�p�2�.eY�D�ڪ�=㋝�=�;�nS,�/��a�f�U,�r�"R�m��-݂�(��8��S͍+��R8��7��u��̵�uͱV�_��sW��ıY�p�)66w��F���O�+�
5�'���ͼ	��H�������S��͏c��6������ǜXff�͜����� �lc�ᴕ�7n�-�s�nKS Ӷ>�'�$��_��]�w;�q醒!�A�F� �ԍ��~������      �   �  x��X]n�F~�O�I�9E_���X�P�n��d�r!XR9rĊ�,o�G��7��,I�I 0rw~���f����v���Ysk�ʚ�6��fl�5�5Kk�5Sk>Z�`�Κ�5w2��z�K�����}rNbbCL��5[kH@Ϛ''&����s�@>���t�ʚG�&=�6Y�p?�?��+�rogN�;@�I�������C�2-!����N���ē�wx2�Ql��c��ι9�g/8@�^Z��+w��!�b���G|R�]��a:���i�$>��o���*��쵨�
�c���Gl���pk~G̖A����!�;du��py�S�g{I�=­�/k�;�f�/�� ����݊Q"��I�?5��a%��-���܉��b�*d������p:��M:�W�C��j+0�W�POBz(��>^�p�b�����d\s�"8w�#I�2t������NI����>�G�c�����6�XNE�P
��ίC��\�"w��>A�	3��P�9J��[[\�F1)
FpX�[�v+Q��:q���[�@����x�3`�\��SDT%P����m���G�SH`Ry���(V�������]n��p5KeUR_q��NX�9S��B-��È�O`�J�](���oR����Dl� ��ƚ)�G����+X�Ix�[����g�)Z�!+:\X��E�pʞ��I=J��@_B����VP|�C�]�٭W���W���E:c�R5ۆ`U�����^6g�T�g��;I�*g���k�6+�N� ���}�Gu^3h ���
�'9���R��1#�&m�Ҡ�8�N�=N1��E�%b.�b�+�E\����`FPm;�m1�G!l\O#���D&�ѓR�2�X]��}��;:�m�� �)��Te��'dyR��G�e1��9����ħ�s'��l�H�0��,�,o�i���e�r���Y-S�Ӕ�"C�/�������Up%��nu���4@<Ch���R8CD�kK�����Jě3Ǟ�/��O	����O�q��6���6���mL���'�}����=Ix&X)�W������V��C�`J���E�cZ��N��� �2�j�x�}|ھ��mX�`�	�C����=�$8445t!�WF��h�~�o_��2O����~��Ԩ�������� t�Kθc���X6���8ū��!�����/2��++���	K��Vd䫍g��p�x�`?�_ʞ����c�C��$��7�{���j_��7��Z�D4x�v��y뻕�ȍ �21!7"S_��Dzuk�ڱ�L�}7�_jt+U�(�pfq}]�VG��4�d�^4|�ү�Ԕ�SHI1�P���'�}҈=�֗����3�d�cX>҅�S5QV��t��&�.%���L�ƪ���]��.���I�D}nzeR9T׌`J�Gԥ7->?@=���uHX�[#�rk[5h(a ��\%Y�)zyf�Ejc('�Hl	�n@|��&�����9��n����cm%ʤi��%��߆y�D��o�Q�S�O��]>�(7������K&�zm&\����̓v�Ο��g<���RsT�2�ߗ��J�zڝ��I�����f2�Nղɭl�F�5t�-��6:����kS�.x!_��N1�����U��_�f�7��4���H���ݛ����I��]      �   �  x��Vmn�@���D`�U��3��Z�AT�Z(8�P1B4 K1e}�=Jw���kCd)R���1��͛��~�c���ѩ����+S�`\L�]�����5����+�zk������iws��ފ=�7:�c�2Q��@��:EKO8n�
�����?S��(�~��;���z���Sw`S	�S	�
��`���� �H~�N �H.]�g���/��e:ps�������!��C�v�&��{��{�Á��mT'#j�Vf���d�b�(E�&�J��pȮ���Р��#�p�6��
ZE8�ݮT�{�Yz)�_�c�n,.��iUٔ� h @[%8I���qfkA��͋ȋ�*O?Ϥ}���+NXR�S8�2���4���3��J�ۄ�˃��W��<�<l������Y]�9���~��V��{9;΃P����RŨY���Lb���i-ĝ\;
��U�!t�h�%��X� #K�E8����}e�.�vb0�?X)��
�V5�Pc.�d�	>3W(�Ġ�B��ѯw�A}u�G��n?�-���U�x���M9�/O#�k#����*bQ����.4먣vԑ�Xb���_�k�Ò��"V�,:a���ڻ��V�F2?�g��؆�W��F�uѝ��p�OZ0��McQ���ǉ�Sso�s��X$��*<"�S�ք�bm�9��0.�!���K�LMA���^�D��p�s�e�t�F�@��#���hJ��Sn��W���w�n�?e���      �   �  x��TQN�@�.��	H[�����al!�E�B!�� �No3Gq�uw�X0$M����{���� B�)fZ3����ջ˴b�"�`j1�0M�6H��g���)��	�L�7k0���Yrv��cz��//��W?+y��
|�0r��H���_Bj���x�{���'�6���k ���&�'g׊�ô�e:A�L(�F�v�>��+?�Z�dOA`O�5۱x3�Ð5�6"���'�о��c'~����M��a��5j[sc�'�[(�:Ft;l�,T+w31*a9�wm� �Sq;J���#�2�0�1��o|g�m`Bn%��G��ҍ�ȡ�Yv����H�>�6���["Ŏf����XN!�b����ޭ�c��(�����G��́Wt��[��~!��}@��C��M��x�o�A��S3)&�b���Eޡ���� k{�8�	JŐ3���Y��'�.N��5�7��9�XV�bYs���^.�J��X��      �     x��W]n�F~�N�&)�}I}���dP�h�����+СA V�dy�=Jg��Y�.)%~(`��r�3�7����۫8�o�H�{)��"�B�#~7R4R�R���K����eR������3)*�G��B�|t������U<~Gf2����l�q#�[l�3��I�����}��5,d�@ά�oK� �O5��:Dl}wRr'�h��5v�h�	���F�gG��z~�I:�<��:��X�S�ҶSە�F���>��GE�T]dj��sr���} ��e'}6&���р�y��kР���v�S�>%�B������.T����Y3>G��u@�����ϲ'�o��l�Lʇ>%��ȱ���I��9�/�=5j���(�����Å�ߣ�A%���/\?�$_�Ckq�pr�WN,��.�G�����z^��Yg�8��?��h��bVa�#^�LJ�-��Dk5�Cm#������ȥ#��b���K_2�ϐ��w�+O�B��c�j�~�fs��ୖW���K�Rp=C��w�����L�rk��?-!QX���>m�T`\���oe*���HT���6����H�#!��g&��BP�� ����ʼA��Q���>
��@G�d��=��
�7���r]�=d�x4A�jf���X^��T�����;OX�Ξ��6�o	���eȶ/�7%B��0R�o�p8a�%�,�;ij�����[�=R�Ƥ�'@��lϫ9Z�9S���Π��͹��|���z�!ذE`ϝ�s|M��aI),i��u����{���]/W�N�}�-?@����b��ɠ��o^�+IAr����&��i<�"�Ng]�2�9�l睳n&	���ЏK��6�'2�O30T}�|����
�q�ƹ��w�(�q;�@���B��{Dǁ隂���R9����׭��N4��*���#��������@�����fۚ�B���s�#�p�������&-%��ȉ�ݞ>2�[�h�����n���:����YUr%xm���2�0V=
'D���ˁ�٭lM7_F��׾(2F�h�8mz54����d�G�z0��_GרG����pmpJ��
��n�����X����=�mg���L��B�����GM��U���5M+��/��k+�a5ˀ�"�b�|�T�Ʃ&����5xO�{r���5�����hʊ��{��+\T� �<<@�C��W�������w��B">�����R�l�r�a#����������}����h(Y�Og�'y}��L��FW݈�����}=�y3��t~��      �     x��X�n�6}v�B��KjSv>�(P�m?&�
��v�m7�+{��2�$6�&�w��~J�C5�Xr�>��aH9s�̅Cv��EWt��sJ���Q2Sr�䋒��_*)���T��W�w���oJ~R����%w���7�:Vr��Tr��$P{��^�g̸7��z�2����_��%��虒_0m��WLI0��Es�U���{NО1mp��1��XcJf^ͬ!�,V?���=4X�פǢ��>�ْvk̇eu�k�v���g����i�{�=K�*b�B�J���>���sC��N��*�xւ�������Ё )����-(���D� ��z��9b�'�X�J�{���GA=>��	��8��H�1����	x������� (t�Đ�"?F$<"@�}ѳ�[���&�6�n�:�sZ�+���'�F�L/nT��&�|`!vD�j��:�\"�%z����!�n`m}�{3�|a���d:��`7�<-������3h���b�]�'X[QB�!�x�ǲ=5;Z����s,{�����s�s<h#����
��<�F� >���rSHD�1d���.�S͐z&"��l�]L����n�u�L\�fӹ@[.f�wG�ܶ�OX1V�Xa=�a !s+�y�(����R�����1�H�����k`L�`L�W���	s�f���Φ]�I���=�^aN�U����G�������Ymj(��X�mMsl��P��D�� ��;3�߃ƌ�aF;�l֛�
Y��@��+$� �!��f�p�^�^>�"$��š�3�EmavUj���j�ʓ(/�w0y�R,��-�'l������-l���!��%���uJ������"p�����6'642F�\�9��r[!:-�`��C�z��q��[S&:0�� <4��4��̨5U�������|%���G H\��=v�d����L�ϒ�.3�obJ��	��Ȑ�E�a���5ny]�⮙�m�!�̼G�<�P䏂��LHh���Ŷ��®!����mP�$'5�c�I�T��]��y0`0cd��,�"?�ys�z�2��v�)^���<��Sq�q�-@�2¸Mˏ���h*˹ܪtMg����0b%�rPv%�� 繁j耪%���l��5QP)@%�bԊ��}��"Z����v˝�}E�R����+�?�����Ճ�����[��s#>9z�����l_?���Ʌ�ɽ�|;��z��p	ƥ�<Y�ӚҬ�,bKW��D����f�Ы�u#�Á���vH�nΖ���lg�3�'%�ˈ����7�-�Q>CIh��-g�F;]�x�B\(��](�[�ny�mRX  @4�[e<��򕡂0/X|3�$�N�*Y����}�4o������ۊR��>��ſ�eA;���u�c�4�9�@�A歄c�K�[]B^ꪏm�ݝ�����Z�"���Ja�If�f���0g�W���o`��(��n ��9�����91��MR�`�|xQ��=t�!�	j-�,�т3d�� ;�������?F�s      �   e   x�}ʡ�0EQ�:@��ii�� A�p5$h��J��Q@!QW�+�}�Z��ط�.�g���T[��J�1�Ep$b ��·�%�m����JT��5�2�<O�      �   �   x��P[JA�vN�	d�G$w�0F����	���@6F��M%�5�Dtُ��b5��Ue��=1&���#�%j�@G�l��y��)ӄ�A�ֿ'^��"v���}t?�oDcc����(��]�Ѳ��hC|x��/�l��)�g��_o�uQ^�W�w�]����������u�9���,X��	��z�u�����Jh����@'���zYD�Rw�7#�\�'�eRўJ������G�      �      x������ � �      �     x����J�@�י���n�ۅo�tQ�.�"WBRpiE���RA�A���ϼ�y'g��pw�|s�L�DJwA�t'DATt�DNL��=�%qG�դ�8#މS�ěfǪ��W3%��Ar�a��pp��K�z^i���f-��e�>W�!�H3��p�?Sͺ�6����Yn�ݦq#%S��<�x��R��jw;m����^�u鷘���$7jw]�%.��6ވZq7ä��c���M+Pt(񵒕Lj����Ա�qd���'�Z�о���'Z��ƘONN      �   �  x��Z�n�>��B/�AW�7O��\���m�1i��-$ecoq��:FrHv����0l8Y +k����QRU���L�h���� g��_uW}�Uw���d28�}o0� 8�������(~�E��"�ٷ��1]��y�}�|y<_dgx�����.�,���E��E�r���_��|��"��"{��~N@h�������In!H��zW�]�w��D�N�r}��M�{[�L���l4]^"y��q���冾]d�����l=�D����{4��u�^��/����Q��.�0=mzF��������'���J�w��d>�����T� @�:��l��ڌ=e�_/�� Q���V=���ׁ���N8���& �66٣{��zqG�x��s.#p`R#ё\�P9����+��u�av z���H1T|0}��]��ꂽ)߬�:U�BH��u���Pi�B��%��ߞ��Q_C�|X��5~�^ /x�@�9g�]c
L��]�P��M0�Ƴ�t0?���[�'"O
�\B�9K��ߡOS���pG&Ip%v�ı��J��W�m�gq6�z�T
{���o�:/�=�zʥD �v�aJ;�f���;h�y����c�#��:"O�Ρ*�8� ��)�h#���^
/������N��ἁH-N��k��&t����l���8G�����*S�3OI�g䏧Ԩ{�Ͷ���:���pN`48��Wl�xF�؂BW�Q�y��l��L;ǔ��wء{�U�&�
��;B�[��۰]2�FBR�JzӁ[J���A�	O��'�͠�k2?/Ξ0fr����I�\�2\^��#O9o]ÂJ~tw8��ɪ���w�a� �D�8��ˁ��ؔSU��w���M�ſ�ٰ���z�4D����+�<2��+����m%6�
J��Ǧ�@v�P1(��d2=|8���G��!i�
�(4D�T����N���ѣ_�Y�!U����k���qc�������P2��L����F(��.5`�i�zkBT��Rk=�j]p�1-���� �W�YL��{��l�.��3D�+Ӛ�\��l��5�P�)!�����[U.�G�Ѱ�+�l{p����:�'��;�xq��לSN��_r�cJ7٫.�\�`�3�Vz':$��h2diiQy)���C9�#E�\�N&��W�`p?��{Re��A�n�C>e�Q��X���1���F��
�k�eQ��L�k��ޢ��]�vy����l=)]��Jp$��I��ƻx����E�N��D�f2/��^�8��^���Qb������=�R����x��۠gu�cd��к|=�.wP/3��%�|kr��V_X�{���(�tUC"U��a����!E�K@LYJ�}�X��#��K�1��\�u�l
�H���B�d��=�Vf��93�1N��	��Bd<�%�W�\(ڱ�j}�� ��jT+&:�H��� �R�k�#e�T-��Z�Jp�N�
r,�3��x��D�=�a��ӗ�Z�*��P��2EzCi �w9x� O�Nd�M;��Cl��>��r�����6 *������-C�ֱ\��`�����`j�
&F����)����rU"�"������$�6�ak4��������H~«��b�Gк`C;�*^��b�,'�����C��%��&Hh�_5��d�!̕%�2A��,�
�8�H��he[NZ�1�~؆=�>���J�0Tk)k}���UʅHΥ{ޣ(Pk�1�vU�%��4��4e\��ۅG�/�	b�P���Jc��	�ʃI��y&$`�C>����KT�X�t1����!B��>�jօu8�{�B��B1��Z�j�������rZ��<d�[�h+9��_:�Z�����iw�V@�7}�Z�&���ф3�k4A�d05X��P��)�?�Pc�|�?�3�:�쐀м��� S��)\۠���7���������U>���@y͸i�߰)���	O�)#�ٛ���U��0� �^j콱h�,t0$�M0N�d
W�.��vIg�����)�W%�g�O�j4��yq("!B�7�CC"mm�&d�8�&�E��\=\��O�~W�4L�0t�b��ϸ�8Il�??A�qOs0�ߣ���Q��P����+q��8.}��!�D�X�ch�HҚ�?8�iN%(��	Jj�.�1���%����ܪ��О�O%8���4��	�x"jEd9�����2�q���[E�k4]������a�\C`` ��z�"�A�R)���DL�'�2L���g��|Bs����U��5H�ӣ�ƶ(+����+́�9��*Sh(�R\t���ˠ�̄dv4L�������d:x4���G_����:!�9'��	�O�Q%Zw�R�Ob҇�Z��}�N��(�2�.Sg�"Cf�;�x^>9^)	�a�\�h+�/t�&S�U���P����ge��/?�CV�oE�L�i�z�&�&����p4YJ�o���9��R\3�</=叏?��a�2�3��$����Ni_U�X���7j|����t{n�22�D��4a�~߻���*��ooQ_����ROaq� �o�ħ�������:��'W�n8\<I�Q*�K��p�4�$����_��ϦŶ1���vc[4-Ӂ�PBn�4l)T{�Kk��c�\(�4`�^��>���r������VQ,���+����X§�h+R�u�7�5�3�����q�p����4Q6g�}���k����4�>�/X'���qXVX*+��t��x�+���C�=�<��N�-]�ֲo��9۶Uzؕ�(���8N��R�4m�u�乶}�Zo[���-0d�u����A�Bϧ��w��ճ�����c�,+����>Ul�ў*��#��Q�;pn�a����j��L���!ȁ4P[JTFJ�`�/�+W���
O      �   Z  x�͙�n�F������5s��W�7�����!EY`E�Ym6 �J[�ыPXZц(
��ThP���G�3�׻v�T�����;?s~���I��t����!����kW����$�$�?���d&��Iv0Ɏ&���s��o'�K���]e������H$B�R2�]�/���%�	`3\��T�A�L�'�����	�<�d��ψ?�$0�d�Φ�9��Z���@̦d�̸���-!��'�C�|M*�O�t1��'�Ά�	7�nx�sA���t��8\&�&R��?hy���L��L~U��q0k�mw�J@%���ce��%4^��������A�R}c�·�C�nĐ.�<V�u�#(1D�1�1�wZ��|���1F����h-0@��K����VJ|A�J6�F��R=������.�5�D�Xs44�`l��1�����0�a�?z�P޵�݀K�U� ���x4��n��uGE
����ҿy��ll���8e
d���h��`<&��6�����'��g�a~�1gZ)�.�%��h-���!%`���k�B2Q��?����|aYc�˜%�(<6����Z��Xet�7��"�P4�hzYD��=^&�\*<���CBz�&"�~ֵpJ�*�(ȿ��cJ������ь�Ę$�o/���c��K�G
��l�&GN7�z}Y�8�ɷh�������.�m#n�_�_-�{볐��10.\��u��OvQ�9��@$��VZ�l� ��c}��_`�����5s� +9V����a�' �?("�5��I�e�>>q,����t+���s�V5�T�鼿.{��O�� J��3����O
��i���t��rg�g7���f|}{�����c��H��Np�WrT3��U�BE
0qk��P��Sz> T������~|ww4����t�m��E�]�M�|jP~Jձm��j6_��ρ��f�p{����qz�C�z�D��U��:"�����I_ѵO!���j���>�dY������7<�u�] �4k>����:�ćŐy�Z�!������{!=������p� P��vmeu��p�-�cu�/�?��p�[3��ǿ9gԦ�@�[���K+3,x�o���R�ӎб`'�v�J�e���r�.ӷ��.]�4֫.v{��ƂA���K����ts�󵊍(���V�(�Na��
2op`fs�y����u�(�ʹ?������#��yC��k�hT|�	jwtg4��;���TM��̶*��F_��{�`{X�F��^�A9�B�h�-)pL5�*qvx���*��0E����G)��P��Wz�[��t"<Ϧ�o�G9�n_W�/�[�R�����+�d���rh:lm_��;���<��f\��c��
��t{�l.�l~L>,���v�4v_������*��o}.�*�P�5zzd�ѽ�8��K��|�ԟ�znw���n�����z�qfہ�|p����0���v�^��#�a���iȑe�y3���;b�q�O0��\a��b��hTX����iF�'�>��똀���=l�{�A�$b�5���  ����J�,B��|P�\H���=�O�^���B�.?��Q�����%�c��.��3Hc�l�������q�2�9�.��J�M��sF�v)��G���T��j�W�1u��b��_踒�0:B�+cZ;�. �&��^��g�tNw��`��r+ϭ��;�m��J:�]���\�/�� ́�$�c	1VP7���2Y�����\gZ�q8a%_S��!ˋ��&qvJh�. �ҵxii�?*5,!      �   2   x�+K,1�4���WI��*�9�U��6�4Q"0ۘ�\��b���� z�      �     x��нn� ����@��Z�]*9�.U�Rَ�ӏ�}���.��OwH?]����:ON�}w�A�(s5=9RJ�"�E	��F���v��Fx���m��z{���&��1�x�a�%A�b��\"��_���!|d54S�*��5}�`��N)�c�,d. ���h�������:�g�n�|M[q&�O�2]�<j�ŻFo��u���,���ai��	,8BY����,�u���:�gr
�b�"\�R������H�,�]���      �   �   x�u���0kj
-@�OI��!�ŕ�L���H`�H V���-"�THE���(2����h�����������uC��1/,G�������Y�l��+:�ZDE<i�_Й�Sl�vG���o�vؘ�I�_�5�ޜ4�      �      x������ � �     