class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :category_id
      t.integer :value
      t.datetime :start_date
      t.datetime :end_date
      t.integer :account_id

      t.timestamps
    end
  end
end
