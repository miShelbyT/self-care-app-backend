class UserActivity < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :journal_entries
end
