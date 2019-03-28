class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :task_id
      t.date :date_of_order
      t.date :due_date
      t.integer :total_price

      t.timestamps
    end
  end
end
