-- Last Badge [pkg1p#ent42x]
create table "LAST_BADGE" (
   "OID"  integer  not null,
   "NICKNAME"  varchar(255),
   "AREA"  varchar(255),
   "TITLE"  varchar(255),
   "DATE"  date,
   "IMAGE"  varchar(255),
   "WROWNERID"  integer,
  primary key ("OID")
);


-- Presences [pkg4x#ent1h]
create table "PRESENCES" (
   "OID"  integer  not null,
   "USEROID"  integer,
   "DESCRIPTION"  varchar(255),
   "TIMESTAMP"  timestamp,
   "WROWNERID"  integer,
  primary key ("OID")
);


