class OwnedDataset < ActiveRecord::Base
  belongs_to :user
end
