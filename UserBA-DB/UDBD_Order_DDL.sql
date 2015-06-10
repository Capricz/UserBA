alter table "Order"
   drop constraint FK_ORDER_REFERENCE_USER;

alter table "Order"
   drop constraint FK_ORDER_REFERENCE_PRODUCT;

drop table "Order" cascade constraints;

drop table "Product" cascade constraints;

drop table "User" cascade constraints;

/*==============================================================*/
/* Table: "Order"                                               */
/*==============================================================*/
create table "Order" 
(
   "order_id"           Integer              not null,
   "create_by"          Integer,
   "create_date"        date,
   "user_id"            Interger             not null,
   "product_id"         Integer              not null,
   constraint PK_ORDER primary key ("order_id")
);

/*==============================================================*/
/* Table: "Product"                                             */
/*==============================================================*/
create table "Product" 
(
   "product_id"         Integer              not null,
   "product_name"       varchar2(200),
   "product_line"       varchar2(200),
   "price"              number(18,2),
   "type"               varchar2(2),
   "status_fg"          varchar2(2),
   constraint PK_PRODUCT primary key ("product_id")
);

/*==============================================================*/
/* Table: "User"                                                */
/*==============================================================*/
create table "User" 
(
   "user_id"            Interger             not null,
   "userName"           varchar2(100),
   "password"           varchar2(100),
   "customer_type"      varchar2(20),
   constraint PK_USER primary key ("user_id")
);

alter table "Order"
   add constraint FK_ORDER_REFERENCE_USER foreign key ("user_id")
      references "User" ("user_id");

alter table "Order"
   add constraint FK_ORDER_REFERENCE_PRODUCT foreign key ("product_id")
      references "Product" ("product_id");
