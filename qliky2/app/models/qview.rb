class Qview < ActiveRecord::Base

#各viewは、いくつかのユーザをコールできる。
#各viewは、いくつかのdatasetをコールできる。
#各viewは、ユーザの所属組織情報をコールできる。

  has_many :qusers
  has_many :qdatasets, through: :qusers
  has_many :qorganizations, through: :qusers

end
