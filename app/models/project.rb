class Project < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :title, presence: { massage: "入力してください"}
end
