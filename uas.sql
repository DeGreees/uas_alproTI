/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     16/06/2021 13:43:50                          */
/*==============================================================*/


alter table ADMIN 
   drop foreign key FK_ADMIN_TERDIRI3_ORANG;

alter table DOSEN 
   drop foreign key FK_DOSEN_TERDIRI_ORANG;

alter table MAHASISWA 
   drop foreign key FK_MAHASISW_TERDIRI2_ORANG;


alter table ADMIN 
   drop foreign key FK_ADMIN_TERDIRI3_ORANG;

drop table if exists ADMIN;


alter table DOSEN 
   drop foreign key FK_DOSEN_TERDIRI_ORANG;

drop table if exists DOSEN;


alter table MAHASISWA 
   drop foreign key FK_MAHASISW_TERDIRI2_ORANG;

drop table if exists MAHASISWA;

drop table if exists ORANG;

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
   PASSWORD             varchar(20)  comment '',
   primary key (NOKRP)
);

alter table ADMIN add constraint FK_ADMIN_TERDIRI3_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

alter table DOSEN add constraint FK_DOSEN_TERDIRI_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

alter table MAHASISWA add constraint FK_MAHASISW_TERDIRI2_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

