class Project < ActiveRecord::Base
	has_many :tasks
	validates :title,
			presence: {	message: "入力してください"},
			length:   {	minimum: 3,  too_short: "4文字以上にしてください",
									maximum: 10, too_long: "11文字以下にしてください"}
end
