class AddUrlToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :url, :string
  end
end
