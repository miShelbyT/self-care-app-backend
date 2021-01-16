class Activity < ApplicationRecord
  has_many :user_activities
  has_many :journal_entries, through: :user_activities
end
