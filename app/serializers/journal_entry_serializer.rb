class JournalEntrySerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :user_activity

  attributes :id, :user_id, :user_activity_id, :date, :length_of_time, :comments
end
