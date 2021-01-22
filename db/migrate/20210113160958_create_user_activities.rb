class CreateUserActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :user_activities do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :activity, foreign_key: true
      t.string :activity_name

      t.timestamps
    end
  end
end
