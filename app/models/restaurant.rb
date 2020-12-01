class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :name, uniqueness: true
end
