class Qorganization < ActiveRecord::Base

  #各organizationは、いくつかのユーザをコールできる。
  #各organizationは、いくつかのdatasetをコールできる。

  has_many: qusers
  has_many: qdatasets, through: qusers

end
