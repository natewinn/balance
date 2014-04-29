class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :payee
      t.integer :amount
      t.datetime :date
      t.boolean :reconciled
      t.string :location
      t.integer :budget_id
      t.integer :user_id

      t.timestamps
    end
  end
end
