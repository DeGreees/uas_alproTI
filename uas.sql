/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     18/06/2021 14:42:27                          */
/*==============================================================*/


alter table ADMIN 
   drop foreign key FK_ADMIN_TERDIRI3_ORANG;

alter table AMBIL_KULIAH 
   drop foreign key FK_AMBIL_KU_AMBIL_KUL_MAHASISW;

alter table AMBIL_KULIAH 
   drop foreign key FK_AMBIL_KU_AMBIL_KUL_MATA_KUL;

alter table DOSEN 
   drop foreign key FK_DOSEN_TERDIRI_ORANG;

alter table MAHASISWA 
   drop foreign key FK_MAHASISW_TERDIRI2_ORANG;


alter table ADMIN 
   drop foreign key FK_ADMIN_TERDIRI3_ORANG;

drop table if exists ADMIN;


alter table AMBIL_KULIAH 
   drop foreign key FK_AMBIL_KU_AMBIL_KUL_MAHASISW;

alter table AMBIL_KULIAH 
   drop foreign key FK_AMBIL_KU_AMBIL_KUL_MATA_KUL;

drop table if exists AMBIL_KULIAH;


alter table DOSEN 
   drop foreign key FK_DOSEN_TERDIRI_ORANG;

drop table if exists DOSEN;


alter table MAHASISWA 
   drop foreign key FK_MAHASISW_TERDIRI2_ORANG;

drop table if exists MAHASISWA;

drop table if exists MATA_KULIAH;

drop table if exists ORANG;

/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN
(
   NOKRP                varchar(20) not null  comment '',
   primary key (NOKRP)
);

/*==============================================================*/
/* Table: AMBIL_KULIAH                                          */
/*==============================================================*/
create table AMBIL_KULIAH
(
   NOKRP                varchar(20) not null  comment '',
   KODE_MK              varchar(8) not null  comment '',
   NILAI                int  comment '',
   primary key (NOKRP, KODE_MK)
);

/*==============================================================*/
/* Table: DOSEN                                                 */
/*==============================================================*/
create table DOSEN
(
   NOKRP                varchar(20) not null  comment '',
   NIK                  varchar(15)  comment '',
   primary key (NOKRP)
);

/*==============================================================*/
/* Table: MAHASISWA                                             */
/*==============================================================*/
create table MAHASISWA
(
   NOKRP                varchar(20) not null  comment '',
   PRODI                varchar(20)  comment '',
   primary key (NOKRP)
);

/*==============================================================*/
/* Table: MATA_KULIAH                                           */
/*==============================================================*/
create table MATA_KULIAH
(
   KODE_MK              varchar(8) not null  comment '',
   NAMA_MK              varchar(25) not null  comment '',
   SEMESTER             int not null  comment '',
   SKS                  int not null  comment '',
   primary key (KODE_MK)
);

/*==============================================================*/
/* Table: ORANG                                                 */
/*==============================================================*/
create table ORANG
(
   NOKRP                varchar(20) not null  comment '',
   NAMA                 varchar(30)  comment '',
   JENIS_KELAMIN        varchar(15)  comment '',
   TGL_LAHIR            date  comment '',
   NOTELP               varchar(11)  comment '',
   ALAMAT               text  comment '',
   PASSWORD             varchar(20)  comment '',
   primary key (NOKRP)
);

alter table ADMIN add constraint FK_ADMIN_TERDIRI3_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

alter table AMBIL_KULIAH add constraint FK_AMBIL_KU_AMBIL_KUL_MAHASISW foreign key (NOKRP)
      references MAHASISWA (NOKRP) on delete restrict on update restrict;

alter table AMBIL_KULIAH add constraint FK_AMBIL_KU_AMBIL_KUL_MATA_KUL foreign key (KODE_MK)
      references MATA_KULIAH (KODE_MK) on delete restrict on update restrict;

alter table DOSEN add constraint FK_DOSEN_TERDIRI_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

alter table MAHASISWA add constraint FK_MAHASISW_TERDIRI2_ORANG foreign key (NOKRP)
      references ORANG (NOKRP) on delete restrict on update restrict;

