class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :city
      t.string :email_address

      t.timestamps
    end
  end
end
