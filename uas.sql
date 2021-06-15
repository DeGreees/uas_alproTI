/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     15/06/2021 17:06:39                          */
/*==============================================================*/



/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN
(
   NOKRP                varchar(20) not null  comment '',
   NAMA                 varchar(30)  comment '',
   primary key (NOKRP)
);

/*==============================================================*/
/* Table: DOSEN                                                 */
/*==============================================================*/
create table DOSEN
(
   NOKRP                varchar(20) not null  comment '',
   NAMA                 varchar(30)  comment '',
   NIK                  varchar(15)  comment '',
   JENIS_KELAMIN        varchar(15)  comment '',
   primary key (NOKRP)
);

/*==============================================================*/
/* Table: MAHASISWA                                             */
/*==============================================================*/
create table MAHASISWA
(
   NOKRP                varchar(20) not null  comment '',
   NAMA                 varchar(30)  comment '',
   PRODI                varchar(20)  comment '',
   JENIS_KELAMIN        varchar(15)  comment '',
   primary key (NOKRP)
);

/*==============================================================*/
/* Table: ORANG                                                 */
/*==============================================================*/
create table ORANG
(
   NOKRP                varchar(20) not null  comment '',
   NAMA                 varchar(30)  comment '',
   PRODI                varchar(20)  comment '',
   JENIS_KELAMIN        varchar(15)  comment '',
   TGL_LAHIR            date  comment '',
   NOTELP               varchar(11)  comment '',
   ALAMAT               text  comment '',
   USER_NAME            int  comment '',
   PASSWORD             varchar(20)  comment '',
   primary key (NOKRP)
);

alter table ADMIN add constraint FK_ADMIN_TERDIRI3_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

alter table DOSEN add constraint FK_DOSEN_TERDIRI_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

alter table MAHASISWA add constraint FK_MAHASISW_TERDIRI2_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

