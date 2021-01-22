class UserActivitySerializer < ActiveModel::Serializer
belongs_to :activity, optional: true
belongs_to :user
has_many :journal_entries

attributes :id, :activity_name, :user_id, :activity_id
end




# didn't think I need this serializer but it turns out I can't access activity.name without it!
