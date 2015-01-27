class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :message, null: false
      t.date :due_date
      t.integer :priority, default: 1

      t.timestamps null: false
    end
  end
end