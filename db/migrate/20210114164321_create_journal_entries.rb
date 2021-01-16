class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :user_activity, null: false, foreign_key: true
      t.date :date
      t.integer :length_of_time
      t.string :comments

      t.timestamps
    end
  end
end
