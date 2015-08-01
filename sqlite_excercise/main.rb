require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter"   =>  "sqlite3" ,
  "database"  =>  "./cstmrdb.db"
)

class User_info < ActiveRecord::Base #table...user_infos
end

  insertion = User_info.new(:usrName => "user name 1", :pw =>"hogehoge" )
  insertion.save

p User_info.all
