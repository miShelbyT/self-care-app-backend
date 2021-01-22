class ActivitySerializer < ActiveModel::Serializer
  has_many :user_activities
  has_many :journal_entries, through: :user_activities

  attributes :id, :name, :category, :benefits, :url
end
