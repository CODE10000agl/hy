class Task < ActiveRecord::Base
  belongs_to :project
  validates :title,
      presence: {	message: "入力してください"},
      length:   {	minimum: 2,  too_short: "3文字以上にしてください",
                  maximum: 101, too_long: "100文字以下にしてください"}

  scope :unfinished, -> { where(done: false)}
end
