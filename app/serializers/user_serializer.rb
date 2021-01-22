class UserSerializer < ActiveModel::Serializer
  has_many :user_activities
  has_many :journal_entries
  attributes :id, :name, :city, :email_address, :password
end
