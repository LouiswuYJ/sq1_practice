class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :name
      t.date :birthday
      t.string :address

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :confirmation_token, unique: true
  end
end
