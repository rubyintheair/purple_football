class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :teams, dependent: :destroy
  has_many :teammates, through: :teams
end

class Team < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  belongs_to :teammate, class_name: "User"
end