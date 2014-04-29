class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.boolean :email_verified
      t.boolean :subscription
      t.string :currency
      t.integer :account_id

      t.timestamps
    end
  end
end
