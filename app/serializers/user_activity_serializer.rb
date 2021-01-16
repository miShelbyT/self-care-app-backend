class UserActivitySerializer < ActiveModel::Serializer
belongs_to :activity
belongs_to :user
has_many :journal_entries

attributes :id
end
