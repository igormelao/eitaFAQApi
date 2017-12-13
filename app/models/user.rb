class User < ApplicationRecord
  acts_as_token_authenticatable

  has_many :questions, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
