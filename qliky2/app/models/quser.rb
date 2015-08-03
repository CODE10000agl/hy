class Quser < ActiveRecord::Base

  #各userは、あるorganizationに所属紐付いている。
  #各viewは、いくつかのdatasetをコールできる。
  #各viewは、ユーザの所属組織情報をコールできる。

  belongs_to: qorganization
  has_many:   qdatasets
  has_many:   qviews

  validates :displayname,
      presence: { message: "Please input unique one.　重複しています。" },
      length:   { minimum: 3,  too_short: "4文字以上にしてください" }

end
