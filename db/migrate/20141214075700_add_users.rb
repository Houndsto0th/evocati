class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :character
      t.string :server
      t.string :email
      t.string :rank
    end
  end
end
