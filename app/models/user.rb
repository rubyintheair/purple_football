class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :groups, dependent: :destroy
  has_many :teammates, through: :groups
end
