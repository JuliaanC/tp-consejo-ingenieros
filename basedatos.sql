/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     20/04/2017 19:52:32                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__ANALISIS') then
				alter table ANALISIS_MANOOBRA
							delete foreign key FK_ANALISIS_ANALISIS__ANALISIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__MANO_DE_') then
				alter table ANALISIS_MANOOBRA
							delete foreign key FK_ANALISIS_ANALISIS__MANO_DE_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__ANALISIS') then
				alter table ANALISIS_MANOOBRAFUERA
							delete foreign key FK_ANALISIS_ANALISIS__ANALISIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__MANO_DE_') then
				alter table ANALISIS_MANOOBRAFUERA
							delete foreign key FK_ANALISIS_ANALISIS__MANO_DE_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__ANALISIS') then
				alter table ANALISIS_RECURSOS
							delete foreign key FK_ANALISIS_ANALISIS__ANALISIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__RECURSOS') then
				alter table ANALISIS_RECURSOS
							delete foreign key FK_ANALISIS_ANALISIS__RECURSOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROYECTO_PROYECTO__PROYECTO') then
				alter table PROYECTO_ANALISIS
							delete foreign key FK_PROYECTO_PROYECTO__PROYECTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROYECTO_PROYECTO__ANALISIS') then
				alter table PROYECTO_ANALISIS
							delete foreign key FK_PROYECTO_PROYECTO__ANALISIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RECURSOS_RECURSOS__RECURSOS') then
				alter table RECURSOS_PROVEEDORES
							delete foreign key FK_RECURSOS_RECURSOS__RECURSOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RECURSOS_RECURSOS__PROVEEDO') then
				alter table RECURSOS_PROVEEDORES
							delete foreign key FK_RECURSOS_RECURSOS__PROVEEDO
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_MANOOBRA2_FK'
					and t.table_name='ANALISIS_MANOOBRA'
) then
			drop index ANALISIS_MANOOBRA.ANALISIS_MANOOBRA2_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_MANOOBRA_FK'
					and t.table_name='ANALISIS_MANOOBRA'
) then
			drop index ANALISIS_MANOOBRA.ANALISIS_MANOOBRA_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_MANOOBRA_PK'
					and t.table_name='ANALISIS_MANOOBRA'
) then
			drop index ANALISIS_MANOOBRA.ANALISIS_MANOOBRA_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='ANALISIS_MANOOBRA'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table ANALISIS_MANOOBRA
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_MANOOBRAFUERA2_FK'
					and t.table_name='ANALISIS_MANOOBRAFUERA'
) then
			drop index ANALISIS_MANOOBRAFUERA.ANALISIS_MANOOBRAFUERA2_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_MANOOBRAFUERA_FK'
					and t.table_name='ANALISIS_MANOOBRAFUERA'
) then
			drop index ANALISIS_MANOOBRAFUERA.ANALISIS_MANOOBRAFUERA_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_MANOOBRAFUERA_PK'
					and t.table_name='ANALISIS_MANOOBRAFUERA'
) then
			drop index ANALISIS_MANOOBRAFUERA.ANALISIS_MANOOBRAFUERA_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='ANALISIS_MANOOBRAFUERA'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table ANALISIS_MANOOBRAFUERA
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_PROYECTO_PK'
					and t.table_name='ANALISIS_PROYECTO'
) then
			drop index ANALISIS_PROYECTO.ANALISIS_PROYECTO_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='ANALISIS_PROYECTO'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table ANALISIS_PROYECTO
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_RECURSOS2_FK'
					and t.table_name='ANALISIS_RECURSOS'
) then
			drop index ANALISIS_RECURSOS.ANALISIS_RECURSOS2_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_RECURSOS_FK'
					and t.table_name='ANALISIS_RECURSOS'
) then
			drop index ANALISIS_RECURSOS.ANALISIS_RECURSOS_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='ANALISIS_RECURSOS_PK'
					and t.table_name='ANALISIS_RECURSOS'
) then
			drop index ANALISIS_RECURSOS.ANALISIS_RECURSOS_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='ANALISIS_RECURSOS'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table ANALISIS_RECURSOS
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='MANO_DE_OBRA_PK'
					and t.table_name='MANO_DE_OBRA'
) then
			drop index MANO_DE_OBRA.MANO_DE_OBRA_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='MANO_DE_OBRA'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table MANO_DE_OBRA
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='MANO_DE_OBRA_FUERA_PK'
					and t.table_name='MANO_DE_OBRA_FUERA'
) then
			drop index MANO_DE_OBRA_FUERA.MANO_DE_OBRA_FUERA_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='MANO_DE_OBRA_FUERA'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table MANO_DE_OBRA_FUERA
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='PROVEEDORES_PK'
					and t.table_name='PROVEEDORES'
) then
			drop index PROVEEDORES.PROVEEDORES_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='PROVEEDORES'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table PROVEEDORES
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='PROYECTO_PK'
					and t.table_name='PROYECTO'
) then
			drop index PROYECTO.PROYECTO_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='PROYECTO'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table PROYECTO
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='PROYECTO_ANALISIS2_FK'
					and t.table_name='PROYECTO_ANALISIS'
) then
			drop index PROYECTO_ANALISIS.PROYECTO_ANALISIS2_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='PROYECTO_ANALISIS_FK'
					and t.table_name='PROYECTO_ANALISIS'
) then
			drop index PROYECTO_ANALISIS.PROYECTO_ANALISIS_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='PROYECTO_ANALISIS_PK'
					and t.table_name='PROYECTO_ANALISIS'
) then
			drop index PROYECTO_ANALISIS.PROYECTO_ANALISIS_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='PROYECTO_ANALISIS'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table PROYECTO_ANALISIS
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='RECURSOS_PK'
					and t.table_name='RECURSOS'
) then
			drop index RECURSOS.RECURSOS_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='RECURSOS'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table RECURSOS
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='RECURSOS_PROVEEDORES2_FK'
					and t.table_name='RECURSOS_PROVEEDORES'
) then
			drop index RECURSOS_PROVEEDORES.RECURSOS_PROVEEDORES2_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='RECURSOS_PROVEEDORES_FK'
					and t.table_name='RECURSOS_PROVEEDORES'
) then
			drop index RECURSOS_PROVEEDORES.RECURSOS_PROVEEDORES_FK
end if;

if exists(
			select 1 from sys.sysindex i, sys.systable t
			where i.table_id=t.table_id 
					and i.index_name='RECURSOS_PROVEEDORES_PK'
					and t.table_name='RECURSOS_PROVEEDORES'
) then
			drop index RECURSOS_PROVEEDORES.RECURSOS_PROVEEDORES_PK
end if;

if exists(
			select 1 from sys.systable 
			where table_name='RECURSOS_PROVEEDORES'
					and table_type in ('BASE', 'GBL TEMP')
) then
				drop table RECURSOS_PROVEEDORES
end if;

/*==============================================================*/
/* Table: ANALISIS_MANOOBRA                                     */
/*==============================================================*/
create table ANALISIS_MANOOBRA 
(
			ID_ANALISIS          integer                        not null,
			ID_MANOOBRA          integer                        not null,
			constraint PK_ANALISIS_MANOOBRA primary key clustered (ID_ANALISIS, ID_MANOOBRA)
);

/*==============================================================*/
/* Index: ANALISIS_MANOOBRA_PK                                  */
/*==============================================================*/
create unique clustered index ANALISIS_MANOOBRA_PK on ANALISIS_MANOOBRA (
ID_ANALISIS ASC,
ID_MANOOBRA ASC
);

/*==============================================================*/
/* Index: ANALISIS_MANOOBRA_FK                                  */
/*==============================================================*/
create index ANALISIS_MANOOBRA_FK on ANALISIS_MANOOBRA (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: ANALISIS_MANOOBRA2_FK                                 */
/*==============================================================*/
create index ANALISIS_MANOOBRA2_FK on ANALISIS_MANOOBRA (
ID_MANOOBRA ASC
);

/*==============================================================*/
/* Table: ANALISIS_MANOOBRAFUERA                                */
/*==============================================================*/
create table ANALISIS_MANOOBRAFUERA 
(
			ID_ANALISIS          integer                        not null,
			ID_MANOOBRACLAN      integer                        not null,
			constraint PK_ANALISIS_MANOOBRAFUERA primary key clustered (ID_ANALISIS, ID_MANOOBRACLAN)
);

/*==============================================================*/
/* Index: ANALISIS_MANOOBRAFUERA_PK                             */
/*==============================================================*/
create unique clustered index ANALISIS_MANOOBRAFUERA_PK on ANALISIS_MANOOBRAFUERA (
ID_ANALISIS ASC,
ID_MANOOBRACLAN ASC
);

/*==============================================================*/
/* Index: ANALISIS_MANOOBRAFUERA_FK                             */
/*==============================================================*/
create index ANALISIS_MANOOBRAFUERA_FK on ANALISIS_MANOOBRAFUERA (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: ANALISIS_MANOOBRAFUERA2_FK                            */
/*==============================================================*/
create index ANALISIS_MANOOBRAFUERA2_FK on ANALISIS_MANOOBRAFUERA (
ID_MANOOBRACLAN ASC
);

/*==============================================================*/
/* Table: ANALISIS_PROYECTO                                     */
/*==============================================================*/
create table ANALISIS_PROYECTO 
(
			ID_ANALISIS          integer                        not null,
			RENDIMIENTO_RECURSOS integer                        null,
			RENDIMIENTOS_PROYECTO integer                        null,
			constraint PK_ANALISIS_PROYECTO primary key (ID_ANALISIS)
);

/*==============================================================*/
/* Index: ANALISIS_PROYECTO_PK                                  */
/*==============================================================*/
create unique index ANALISIS_PROYECTO_PK on ANALISIS_PROYECTO (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Table: ANALISIS_RECURSOS                                     */
/*==============================================================*/
create table ANALISIS_RECURSOS 
(
			ID_ANALISIS          integer                        not null,
			ID_RECURSOS          integer                        not null,
			constraint PK_ANALISIS_RECURSOS primary key clustered (ID_ANALISIS, ID_RECURSOS)
);

/*==============================================================*/
/* Index: ANALISIS_RECURSOS_PK                                  */
/*==============================================================*/
create unique clustered index ANALISIS_RECURSOS_PK on ANALISIS_RECURSOS (
ID_ANALISIS ASC,
ID_RECURSOS ASC
);

/*==============================================================*/
/* Index: ANALISIS_RECURSOS_FK                                  */
/*==============================================================*/
create index ANALISIS_RECURSOS_FK on ANALISIS_RECURSOS (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: ANALISIS_RECURSOS2_FK                                 */
/*==============================================================*/
create index ANALISIS_RECURSOS2_FK on ANALISIS_RECURSOS (
ID_RECURSOS ASC
);

/*==============================================================*/
/* Table: MANO_DE_OBRA                                          */
/*==============================================================*/
create table MANO_DE_OBRA 
(
			ID_MANOOBRA          integer                        not null,
			PRECIO               real                           null,
			constraint PK_MANO_DE_OBRA primary key (ID_MANOOBRA)
);

/*==============================================================*/
/* Index: MANO_DE_OBRA_PK                                       */
/*==============================================================*/
create unique index MANO_DE_OBRA_PK on MANO_DE_OBRA (
ID_MANOOBRA ASC
);

/*==============================================================*/
/* Table: MANO_DE_OBRA_FUERA                                    */
/*==============================================================*/
create table MANO_DE_OBRA_FUERA 
(
			ID_MANOOBRACLAN      integer                        not null,
			constraint PK_MANO_DE_OBRA_FUERA primary key (ID_MANOOBRACLAN)
);

/*==============================================================*/
/* Index: MANO_DE_OBRA_FUERA_PK                                 */
/*==============================================================*/
create unique index MANO_DE_OBRA_FUERA_PK on MANO_DE_OBRA_FUERA (
ID_MANOOBRACLAN ASC
);

/*==============================================================*/
/* Table: PROVEEDORES                                           */
/*==============================================================*/
create table PROVEEDORES 
(
			ID_PROVEDOR          integer                        not null,
			DESCUENTO_PROVE      smallint                       null,
			constraint PK_PROVEEDORES primary key (ID_PROVEDOR)
);

/*==============================================================*/
/* Index: PROVEEDORES_PK                                        */
/*==============================================================*/
create unique index PROVEEDORES_PK on PROVEEDORES (
ID_PROVEDOR ASC
);

/*==============================================================*/
/* Table: PROYECTO                                              */
/*==============================================================*/
create table PROYECTO 
(
			ID_PROYECTO          integer                        not null,
			TITULO_PROYECTO      char(60)                       null,
			PLANILLA_PROYECTO    char(10)                       null,
			constraint PK_PROYECTO primary key (ID_PROYECTO)
);

/*==============================================================*/
/* Index: PROYECTO_PK                                           */
/*==============================================================*/
create unique index PROYECTO_PK on PROYECTO (
ID_PROYECTO ASC
);

/*==============================================================*/
/* Table: PROYECTO_ANALISIS                                     */
/*==============================================================*/
create table PROYECTO_ANALISIS 
(
			ID_PROYECTO          integer                        not null,
			ID_ANALISIS          integer                        not null,
			constraint PK_PROYECTO_ANALISIS primary key clustered (ID_PROYECTO, ID_ANALISIS)
);

/*==============================================================*/
/* Index: PROYECTO_ANALISIS_PK                                  */
/*==============================================================*/
create unique clustered index PROYECTO_ANALISIS_PK on PROYECTO_ANALISIS (
ID_PROYECTO ASC,
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: PROYECTO_ANALISIS_FK                                  */
/*==============================================================*/
create index PROYECTO_ANALISIS_FK on PROYECTO_ANALISIS (
ID_PROYECTO ASC
);

/*==============================================================*/
/* Index: PROYECTO_ANALISIS2_FK                                 */
/*==============================================================*/
create index PROYECTO_ANALISIS2_FK on PROYECTO_ANALISIS (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Table: RECURSOS                                              */
/*==============================================================*/
create table RECURSOS 
(
			ID_RECURSOS          integer                        not null,
			DESC_REC             smallint                       null,
			UNI_RECUR            smallint                       null,
			RECURSO              char(120)                      null,
			FECHA_RECU           timestamp                      null,
			constraint PK_RECURSOS primary key (ID_RECURSOS)
);

/*==============================================================*/
/* Index: RECURSOS_PK                                           */
/*==============================================================*/
create unique index RECURSOS_PK on RECURSOS (
ID_RECURSOS ASC
);

/*==============================================================*/
/* Table: RECURSOS_PROVEEDORES                                  */
/*==============================================================*/
create table RECURSOS_PROVEEDORES 
(
			ID_RECURSOS          integer                        not null,
			ID_PROVEDOR          integer                        not null,
			constraint PK_RECURSOS_PROVEEDORES primary key clustered (ID_RECURSOS, ID_PROVEDOR)
);

/*==============================================================*/
/* Index: RECURSOS_PROVEEDORES_PK                               */
/*==============================================================*/
create unique clustered index RECURSOS_PROVEEDORES_PK on RECURSOS_PROVEEDORES (
ID_RECURSOS ASC,
ID_PROVEDOR ASC
);

/*==============================================================*/
/* Index: RECURSOS_PROVEEDORES_FK                               */
/*==============================================================*/
create index RECURSOS_PROVEEDORES_FK on RECURSOS_PROVEEDORES (
ID_RECURSOS ASC
);

/*==============================================================*/
/* Index: RECURSOS_PROVEEDORES2_FK                              */
/*==============================================================*/
create index RECURSOS_PROVEEDORES2_FK on RECURSOS_PROVEEDORES (
ID_PROVEDOR ASC
);

alter table ANALISIS_MANOOBRA
			add constraint FK_ANALISIS_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
						references ANALISIS_PROYECTO (ID_ANALISIS)
						on update restrict
						on delete restrict;

alter table ANALISIS_MANOOBRA
			add constraint FK_ANALISIS_ANALISIS__MANO_DE_ foreign key (ID_MANOOBRA)
						references MANO_DE_OBRA (ID_MANOOBRA)
						on update restrict
						on delete restrict;

alter table ANALISIS_MANOOBRAFUERA
			add constraint FK_ANALISIS_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
						references ANALISIS_PROYECTO (ID_ANALISIS)
						on update restrict
						on delete restrict;

alter table ANALISIS_MANOOBRAFUERA
			add constraint FK_ANALISIS_ANALISIS__MANO_DE_ foreign key (ID_MANOOBRACLAN)
						references MANO_DE_OBRA_FUERA (ID_MANOOBRACLAN)
						on update restrict
						on delete restrict;

alter table ANALISIS_RECURSOS
			add constraint FK_ANALISIS_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
						references ANALISIS_PROYECTO (ID_ANALISIS)
						on update restrict
						on delete restrict;

alter table ANALISIS_RECURSOS
			add constraint FK_ANALISIS_ANALISIS__RECURSOS foreign key (ID_RECURSOS)
						references RECURSOS (ID_RECURSOS)
						on update restrict
						on delete restrict;

alter table PROYECTO_ANALISIS
			add constraint FK_PROYECTO_PROYECTO__PROYECTO foreign key (ID_PROYECTO)
						references PROYECTO (ID_PROYECTO)
						on update restrict
						on delete restrict;

alter table PROYECTO_ANALISIS
			add constraint FK_PROYECTO_PROYECTO__ANALISIS foreign key (ID_ANALISIS)
						references ANALISIS_PROYECTO (ID_ANALISIS)
						on update restrict
						on delete restrict;

alter table RECURSOS_PROVEEDORES
			add constraint FK_RECURSOS_RECURSOS__RECURSOS foreign key (ID_RECURSOS)
						references RECURSOS (ID_RECURSOS)
						on update restrict
						on delete restrict;

alter table RECURSOS_PROVEEDORES
			add constraint FK_RECURSOS_RECURSOS__PROVEEDO foreign key (ID_PROVEDOR)
						references PROVEEDORES (ID_PROVEDOR)
						on update restrict
						on delete restrict;

