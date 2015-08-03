class Qdataset < ActiveRecord::Base

  #各datasetは、ユーザに紐付いている。

  belongs_to:   quser


end
