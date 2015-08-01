create table userinfos (
  pid                 integer  primary key autoincrement,
  user_displayname    text,
  password_encrypted  text,
  created_at,
  updated_at
);
