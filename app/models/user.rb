class User < ApplicationRecord
  has_many :user_activities, dependent: :destroy
  has_many :journal_entries, dependent: :destroy
  has_many :activities, through: :user_activities
  has_secure_password

  validates :name, presence: true, uniqueness: true
  validates :email_address, presence: true
  validates :city, presence: true
  validates :password, presence: true
end
