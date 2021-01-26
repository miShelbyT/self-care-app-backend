class JournalEntry < ApplicationRecord
  belongs_to :user
  belongs_to :user_activity

  validates :date, presence: true
  validates :length_of_time, presence: true
  validates :comments, presence: true

end
