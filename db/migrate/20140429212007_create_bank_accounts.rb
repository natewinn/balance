class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.string :type
      t.integer :balance
      t.integer :account_id

      t.timestamps
    end
  end
end
