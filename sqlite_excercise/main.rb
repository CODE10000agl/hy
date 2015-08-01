require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter"   =>  "sqlite3" ,
  "database"  =>  "./cstmrdb.db"
)

class Userinfo < ActiveRecord::Base #table...userinfos
end

  post_userinfo = Userinfo.new(
    :user_displayname   =>  "user name 1",
    :password_encrypted =>  "hogehoge"
  )

  post_userinfo2 = Userinfo.new do |posact|
    posact.user_displayname   = "user name 2"
    posact.password_encrypted = "hogeeeee"
  end

  post_userinfo.save
  post_userinfo2.save

  Userinfo.create(
    :user_displayname => "user name 3",
    :password_encrypted => "hogge"
  )


  #TODO: next time, you should make: usrName -> user_displayname
  #TODO: next time, you should make: pw -> password_encrypted


p Userinfo.all

p "The last user added was #{Userinfo.last.user_displayname}"

p Userinfo.find_by_pid("2")
p Userinfo.find_by_user_displayname_and_password_encrypted("user name 3", "hoge")
