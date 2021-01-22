class UserActivity < ApplicationRecord
  belongs_to :user
  belongs_to :activity, optional: true
  has_many :journal_entries, dependent: :destroy
end
