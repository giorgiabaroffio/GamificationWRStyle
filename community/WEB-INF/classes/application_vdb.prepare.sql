-- Notification LeaderBoards [pkg4x#ent27x]
create table "NOTIFICATION_LEADERBOARDS" (
   "OID"  integer  not null,
   "LEADERBOARDS"  clob,
  primary key ("OID")
);


-- Notification Monthly [pkg4x#ent28x]
create table "NOTIFICATION_MONTHLY" (
   "USER_OID"  integer  not null,
   "OVERALL_POSITION"  integer,
   "OVERALL_PARTICIPATION"  integer,
   "SEVEN_DAYS_POSITION"  integer,
   "SEVEN_DAYS_PARTICIPATION"  integer,
   "FIRST_NAME"  varchar(255),
   "EMAIL"  varchar(255),
   "MONTHLY_POINTS"  integer,
   "PHOTO"  varchar(255),
  primary key ("USER_OID")
);


