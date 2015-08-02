class OwnedDataset < ActiveRecord::Base
  belongs_to :user

  validares :title, presence: {messages: "データ名を入力してください"}

end
