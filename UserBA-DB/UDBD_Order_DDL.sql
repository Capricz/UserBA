drop table Product cascade constraints;

drop table Product_Order cascade constraints;

drop table UBA_User cascade constraints;

/*==============================================================*/
/* Table: Product                                             */
/*==============================================================*/
create table Product 
(
   product_id         Integer              not null,
   product_name       varchar2(200),
   product_line       varchar2(200),
   price              number(18,2),
   type               varchar2(2),
   status_fg          varchar2(2),
   constraint PK_PRODUCT primary key (product_id)
);

/*==============================================================*/
/* Table: Product_Order                                       */
/*==============================================================*/
create table Product_Order 
(
   order_id           Integer              not null,
   user_id            Integer              not null,
   product_id         Integer              not null,
   create_by          Integer,
   create_date        date,
   constraint PK_PRODUCT_ORDER primary key (order_id)
);

/*==============================================================*/
/* Table: UBAD_User                                           */
/*==============================================================*/
create table UBA_User 
(
   user_id            Integer              not null,
   userName           varchar2(100),
   password           varchar2(100),
   customer_type      varchar2(20),
   constraint PK_UBA_USER primary key (user_id)
);

alter table Product_Order
   add constraint FK_PRODUCT__REFERENCE_UBAD_USE foreign key (user_id)
      references UBA_User (user_id);

alter table Product_Order
   add constraint FK_PRODUCT__REFERENCE_PRODUCT foreign key (product_id)
      references Product (product_id);

