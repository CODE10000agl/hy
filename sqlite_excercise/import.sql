create table user_infos (
  id_mstr  integer  primary key,
  pid      text     UNIQUE,
  usrName  text,
  pw       text,
  created_at,
  updated_at
);
