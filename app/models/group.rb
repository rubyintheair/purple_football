class Group < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  belongs_to :teammate, class_name: "User"
end
