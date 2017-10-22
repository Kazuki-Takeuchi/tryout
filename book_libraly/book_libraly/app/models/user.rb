class User < ApplicationRecord
  validates :name, :department, presence: true
end
